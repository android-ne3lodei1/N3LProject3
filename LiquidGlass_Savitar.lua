-- Liquid-Glass Menu (Savitar-style) standalone module
-- Usage:
--   local LG = loadstring(game:HttpGet(url))()
--   LG.Enable() / LG.Disable() / LG.Toggle(bool)
--   LG.SetConfig({ ... })

local Players = game:GetService("Players")
local Lighting = game:GetService("Lighting")
local TweenService = game:GetService("TweenService")
local Debris = game:GetService("Debris")
local UserInputService = game:GetService("UserInputService")
local GuiService = game:GetService("GuiService")
local TeleportService = game:GetService("TeleportService")

local LocalPlayer = Players.LocalPlayer

local liquidEnabled = false
local Config = {
	Blur = "full", -- "full" | "inside" | "off"
	Rejoin = true,
	RejoinPos = "top", -- "top" | "bottomleft"
	Logo = true,
	SideText = "", -- custom text top-left, right of logo
	RotateIcons = true,
	RotateStars = false,
	LogoId = "rbxassetid://125209698949144",
	GlassTransparency = 0.76,
	HoverGlowAlpha = 0.85,
	MaxBlurSize = 25,
	BorderTransparency = 0.35,
	CornerRadius = UDim.new(0, 32),
	MeltDuration = 1.4,
	GhostVFXAlpha = 0.95,
	GlassColor = Color3.fromRGB(255, 255, 255),
}

local styled = {}
local conns = {}
local created = {}
local blurEffect = nil
local insideBlurFrame = nil
local proxyFrame = nil
local menuRef = nil
local menuGuiRef = nil
local styledSet = {}
local sideTextLabel = nil

local PROTECTED_KW = {
	"color", "picker", "palette", "slider", "hue", "hex", "rainbow", "rgb",
	"darkness", "lightness", "hsv", "gradient", "rejoin", "rj", "black", "dark",
	"logo", "close", "exit",
}

local function disconnectAll()
	for _, c in ipairs(conns) do
		pcall(function()
			c:Disconnect()
		end)
	end
	table.clear(conns)
end

local function trackConn(c)
	if c then
		table.insert(conns, c)
	end
	return c
end

local function isProtected(obj)
	if not obj then
		return true
	end
	local function chk(name)
		local n = string.lower(tostring(name or ""))
		for _, kw in ipairs(PROTECTED_KW) do
			if string.find(n, kw, 1, true) then
				return true
			end
		end
		return false
	end
	if chk(obj.Name) then
		return true
	end
	local p = obj.Parent
	local hops = 0
	while p and hops < 4 do
		if p:IsA("GuiObject") or p:IsA("Folder") then
			if chk(p.Name) then
				return true
			end
		end
		p = p.Parent
		hops = hops + 1
	end
	return obj:IsA("TextBox")
end

local function saveProp(obj)
	if styled[obj] then
		return styled[obj]
	end
	local data = {
		bgc = obj:IsA("GuiObject") and obj.BackgroundColor3 or nil,
		bgt = obj:IsA("GuiObject") and obj.BackgroundTransparency or nil,
		rot = obj:IsA("GuiObject") and obj.Rotation or nil,
		border = obj:IsA("GuiObject") and obj.BorderSizePixel or nil,
	}
	if obj:IsA("TextLabel") or obj:IsA("TextButton") or obj:IsA("TextBox") then
		data.tc = obj.TextColor3
		data.ts = obj.TextSize
		data.font = obj.Font
		data.text = obj.Text
	end
	if obj:IsA("ImageLabel") or obj:IsA("ImageButton") then
		data.img = obj.Image
		data.imgc = obj.ImageColor3
		data.imgt = obj.ImageTransparency
	end
	local corner = obj:FindFirstChildOfClass("UICorner")
	if corner then
		data.cornerRadius = corner.CornerRadius
		data.hadCorner = true
	end
	local stroke = obj:FindFirstChildOfClass("UIStroke")
	if stroke then
		data.hadStroke = true
		data.strokeColor = stroke.Color
		data.strokeThick = stroke.Thickness
		data.strokeTrans = stroke.Transparency
		data.strokeName = stroke.Name
	end
	local scale = obj:FindFirstChildOfClass("UIScale")
	if scale then
		data.hadScale = true
		data.scale = scale.Scale
	end
	styled[obj] = data
	return data
end

local function melt(parent, mousePos)
	if not parent or not parent:IsA("GuiObject") then
		return
	end
	local frame = Instance.new("Frame")
	frame.BackgroundColor3 = Color3.new(1, 1, 1)
	frame.BackgroundTransparency = Config.GhostVFXAlpha
	frame.AnchorPoint = Vector2.new(0.5, 0.5)
	local ap = parent.AbsolutePosition
	local inset = GuiService:GetGuiInset()
	frame.Position = UDim2.fromOffset(mousePos.X - ap.X, mousePos.Y - inset.Y - ap.Y)
	frame.Size = UDim2.fromOffset(0, 0)
	frame.ZIndex = 5000
	local c = Instance.new("UICorner")
	c.CornerRadius = UDim.new(1, 0)
	c.Parent = frame
	frame.Parent = parent
	TweenService:Create(frame, TweenInfo.new(Config.MeltDuration, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
		Size = UDim2.fromOffset(800, 800),
		BackgroundTransparency = 1,
	}):Play()
	Debris:AddItem(frame, Config.MeltDuration)
end

local function findPreviewNear(star)
	local parent = star.Parent
	if not parent then
		return nil
	end
	local best, bestDist = nil, math.huge
	local starPos = star.AbsolutePosition + star.AbsoluteSize * 0.5
	for _, d in ipairs(parent:GetDescendants()) do
		if (d:IsA("ImageLabel") or d:IsA("ImageButton")) and d ~= star then
			local n = string.lower(d.Name)
			if not (string.find(n, "star") or string.find(n, "fav") or string.find(n, "favorite")) then
				if d.Image and d.Image ~= "" then
					local pos = d.AbsolutePosition + d.AbsoluteSize * 0.5
					local dist = (pos - starPos).Magnitude
					if dist < bestDist then
						bestDist = dist
						best = d
					end
				end
			end
		end
	end
	for _, d in ipairs(parent:GetChildren()) do
		if (d:IsA("ImageLabel") or d:IsA("ImageButton")) and d ~= star then
			local n = string.lower(d.Name)
			if not (string.find(n, "star") or string.find(n, "fav")) then
				if d.Image and d.Image ~= "" then
					return d
				end
			end
		end
	end
	return best
end

local function styleStar(star)
	if styledSet[star] then
		return
	end
	styledSet[star] = true
	saveProp(star)
	if star:IsA("GuiObject") then
		star.BackgroundTransparency = 1
		star.BorderSizePixel = 0
	end

	local preview = findPreviewNear(star)
	if preview then
		saveProp(preview)
	end

	local tweenIn = TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
	local tweenOut = TweenInfo.new(0.15, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)

	trackConn(star.MouseEnter:Connect(function()
		if not liquidEnabled then
			return
		end
		if Config.RotateStars then
			TweenService:Create(star, tweenIn, { Rotation = 15 }):Play()
		end
		if Config.RotateIcons and preview and preview.Parent then
			TweenService:Create(preview, tweenIn, { Rotation = 15 }):Play()
		end
	end))
	trackConn(star.MouseLeave:Connect(function()
		if not liquidEnabled then
			return
		end
		if Config.RotateStars then
			TweenService:Create(star, tweenIn, { Rotation = 0 }):Play()
		end
		if Config.RotateIcons and preview and preview.Parent then
			TweenService:Create(preview, tweenIn, { Rotation = 0 }):Play()
		end
	end))

	if star:IsA("GuiButton") then
		local scale = star:FindFirstChildOfClass("UIScale")
		if not scale then
			scale = Instance.new("UIScale")
			scale.Parent = star
			table.insert(created, scale)
		end
		trackConn(star.MouseButton1Down:Connect(function()
			if not liquidEnabled then
				return
			end
			TweenService:Create(scale, tweenOut, { Scale = 0.8 }):Play()
		end))
		trackConn(star.MouseButton1Up:Connect(function()
			if not liquidEnabled then
				return
			end
			TweenService:Create(scale, tweenIn, { Scale = 1.2 }):Play()
			task.wait(0.15)
			TweenService:Create(scale, tweenIn, { Scale = 1 }):Play()
		end))
	end
end

local function styleObject(obj)
	if not obj or not obj:IsA("GuiObject") then
		return
	end
	if styledSet[obj] then
		return
	end

	local name = string.lower(obj.Name)

	if string.find(name, "star") or string.find(name, "favorite") or string.find(name, "fav") then
		styleStar(obj)
		return
	end

	if isProtected(obj) then
		return
	end

	styledSet[obj] = true
	saveProp(obj)

	if obj:IsA("Frame") or obj:IsA("ScrollingFrame") then
		obj.BackgroundTransparency = 1
		obj.BorderSizePixel = 0
	elseif obj:IsA("TextLabel") or obj:IsA("TextButton") then
		obj.BackgroundTransparency = 1
	end

	local corner = obj:FindFirstChildOfClass("UICorner")
	if not corner then
		corner = Instance.new("UICorner")
		corner.Parent = obj
		table.insert(created, corner)
		local data = styled[obj]
		if data then
			data.cornerCreated = true
		end
	end
	corner.CornerRadius = UDim.new(0, 16)

	if obj:IsA("TextButton") or obj:IsA("ImageButton") then
		local glow = obj:FindFirstChild("LiquidGlow")
		if not glow then
			glow = Instance.new("UIStroke")
			glow.Name = "LiquidGlow"
			glow.Thickness = 0
			glow.Color = Color3.new(1, 1, 1)
			glow.Transparency = 0.5
			glow.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			glow.Parent = obj
			table.insert(created, glow)
			local data = styled[obj]
			if data then
				data.glowCreated = true
			end
		end
		local scale = obj:FindFirstChildOfClass("UIScale")
		if not scale then
			scale = Instance.new("UIScale")
			scale.Parent = obj
			table.insert(created, scale)
			local data = styled[obj]
			if data then
				data.scaleCreated = true
			end
		end
		local isText = obj:IsA("TextButton")
		local baseSize = isText and obj.TextSize or 14
		local baseColor = isText and obj.TextColor3 or Color3.new(1, 1, 1)

		trackConn(obj.MouseEnter:Connect(function()
			if not liquidEnabled then
				return
			end
			obj:SetAttribute("FTAP_Hovering", true)
			TweenService:Create(obj, TweenInfo.new(0.35), {
				BackgroundTransparency = Config.HoverGlowAlpha,
				BackgroundColor3 = Color3.fromRGB(230, 240, 255),
			}):Play()
			TweenService:Create(glow, TweenInfo.new(0.35), { Thickness = 2.4 }):Play()
			TweenService:Create(scale, TweenInfo.new(0.35, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Scale = 1.05 }):Play()
			if isText then
				TweenService:Create(obj, TweenInfo.new(0.3), {
					TextSize = baseSize + 2,
					TextColor3 = Color3.fromRGB(150, 200, 255),
				}):Play()
			end
		end))
		trackConn(obj.MouseLeave:Connect(function()
			if not liquidEnabled then
				return
			end
			TweenService:Create(obj, TweenInfo.new(0.35), {
				BackgroundTransparency = 1,
				BackgroundColor3 = Config.GlassColor,
			}):Play()
			TweenService:Create(glow, TweenInfo.new(0.35), { Thickness = 0 }):Play()
			TweenService:Create(scale, TweenInfo.new(0.35, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Scale = 1 }):Play()
			if isText then
				TweenService:Create(obj, TweenInfo.new(0.3), {
					TextSize = baseSize,
					TextColor3 = baseColor,
				}):Play()
			end
			obj:SetAttribute("FTAP_Hovering", false)
		end))
		trackConn(obj.MouseButton1Down:Connect(function()
			if not liquidEnabled then
				return
			end
			if obj.Name ~= "RejoinButton" then
				TweenService:Create(scale, TweenInfo.new(0.15, Enum.EasingStyle.Sine), { Scale = 0.93 }):Play()
			end
			melt(obj, UserInputService:GetMouseLocation())
		end))
		trackConn(obj.MouseButton1Up:Connect(function()
			if not liquidEnabled then
				return
			end
			if obj.Name ~= "RejoinButton" then
				TweenService:Create(scale, TweenInfo.new(0.35, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Scale = 1.05 }):Play()
			end
		end))
	end
end

local function clearInsideBlur()
	if insideBlurFrame then
		pcall(function()
			insideBlurFrame:Destroy()
		end)
		insideBlurFrame = nil
	end
end

local function applyInsideBlur(menu)
	clearInsideBlur()
	if not menu then
		return
	end
	-- Frosted glass overlay INSIDE the menu (semi-transparent white + slight noise feel)
	local f = Instance.new("Frame")
	f.Name = "LiquidInsideBlur"
	f.BackgroundColor3 = Color3.fromRGB(200, 220, 255)
	f.BackgroundTransparency = 0.55
	f.BorderSizePixel = 0
	f.Size = UDim2.fromScale(1, 1)
	f.Position = UDim2.fromScale(0.5, 0.5)
	f.AnchorPoint = Vector2.new(0.5, 0.5)
	f.ZIndex = -1
	f.Parent = menu
	local c = Instance.new("UICorner")
	c.CornerRadius = Config.CornerRadius
	c.Parent = f
	-- soft gradient for "blur" look
	local g = Instance.new("UIGradient")
	g.Color = ColorSequence.new({
		ColorSequenceKeypoint.new(0, Color3.fromRGB(180, 210, 255)),
		ColorSequenceKeypoint.new(0.5, Color3.fromRGB(220, 230, 255)),
		ColorSequenceKeypoint.new(1, Color3.fromRGB(180, 210, 255)),
	})
	g.Transparency = NumberSequence.new({
		NumberSequenceKeypoint.new(0, 0.15),
		NumberSequenceKeypoint.new(0.5, 0.35),
		NumberSequenceKeypoint.new(1, 0.15),
	})
	g.Rotation = 25
	g.Parent = f
	insideBlurFrame = f
	table.insert(created, f)
end

local function applyBlur(on, menu)
	if Config.Blur == "full" and on then
		clearInsideBlur()
		local b = Lighting:FindFirstChild("Nucleus_World_Blur")
		if not b then
			b = Instance.new("BlurEffect")
			b.Name = "Nucleus_World_Blur"
			b.Size = 0
			b.Parent = Lighting
		end
		blurEffect = b
		TweenService:Create(b, TweenInfo.new(0.3, Enum.EasingStyle.Sine), { Size = Config.MaxBlurSize }):Play()
	elseif Config.Blur == "inside" and on then
		if blurEffect then
			TweenService:Create(blurEffect, TweenInfo.new(0.3), { Size = 0 }):Play()
		end
		applyInsideBlur(menu)
	else
		clearInsideBlur()
		if blurEffect then
			TweenService:Create(blurEffect, TweenInfo.new(0.3), { Size = 0 }):Play()
		end
	end
end

local function removeLogo(menu)
	local logo = menu:FindFirstChild("SavitarCustomLogo")
	if logo then
		logo:Destroy()
	end
end

local function applyLogo(menu)
	removeLogo(menu)
	if not Config.Logo then
		return
	end
	local img = Instance.new("ImageLabel")
	img.Name = "SavitarCustomLogo"
	img.BackgroundTransparency = 1
	img.Size = UDim2.fromOffset(56, 56)
	img.Position = UDim2.new(0, 14, 0, 12)
	img.Image = Config.LogoId
	img.ZIndex = 50
	img.Parent = menu
	table.insert(created, img)
end

local function removeSideText(menu)
	local t = menu and menu:FindFirstChild("LiquidSideText")
	if t then
		t:Destroy()
	end
	sideTextLabel = nil
end

local function applySideText(menu)
	removeSideText(menu)
	local text = tostring(Config.SideText or "")
	if text == "" then
		return
	end
	local label = Instance.new("TextLabel")
	label.Name = "LiquidSideText"
	label.BackgroundTransparency = 1
	label.Size = UDim2.fromOffset(280, 40)
	-- right of logo (logo ~56px at x=14)
	local xOff = Config.Logo and 78 or 14
	label.Position = UDim2.new(0, xOff, 0, 18)
	label.Font = Enum.Font.GothamBold
	label.TextSize = 22
	label.TextColor3 = Color3.fromRGB(255, 255, 255)
	label.TextXAlignment = Enum.TextXAlignment.Left
	label.TextYAlignment = Enum.TextYAlignment.Center
	label.TextStrokeTransparency = 0.5
	label.Text = text
	label.ZIndex = 50
	label.Parent = menu
	sideTextLabel = label
	table.insert(created, label)
end

local function removeRejoin(menu)
	local c = menu:FindFirstChild("RejoinContainer")
	if c then
		c:Destroy()
	end
end

local function applyRejoin(menu)
	removeRejoin(menu)
	if not Config.Rejoin then
		return
	end

	local holder = Instance.new("Frame")
	holder.Name = "RejoinContainer"
	holder.BackgroundTransparency = 1
	holder.Size = UDim2.fromOffset(100, 34)
	holder.ZIndex = 50
	holder.Parent = menu
	table.insert(created, holder)

	if Config.RejoinPos == "bottomleft" then
		holder.Position = UDim2.new(0, 14, 1, -48)
		holder.AnchorPoint = Vector2.new(0, 0)
	else
		-- top near close (right side, under/near X)
		holder.Position = UDim2.new(1, -110, 0, 12)
		holder.AnchorPoint = Vector2.new(0, 0)
	end

	local btn = Instance.new("TextButton")
	btn.Name = "RejoinButton"
	btn.Size = UDim2.fromOffset(96, 32)
	btn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	btn.BackgroundTransparency = 1
	btn.Text = "REJOIN"
	btn.TextColor3 = Color3.new(1, 1, 1)
	btn.TextSize = 14
	btn.Font = Enum.Font.GothamBold
	btn.ZIndex = 51
	btn.Parent = holder
	local corner = Instance.new("UICorner")
	corner.CornerRadius = UDim.new(0, 12)
	corner.Parent = btn
	local stroke = Instance.new("UIStroke")
	stroke.Thickness = 2
	stroke.Color = Color3.new(1, 1, 1)
	stroke.Transparency = 0.4
	stroke.Parent = btn
	local scale = Instance.new("UIScale")
	scale.Parent = btn

	local arming = false
	trackConn(btn.MouseButton1Click:Connect(function()
		if not arming then
			arming = true
			btn.Text = "REJOIN?"
			TweenService:Create(btn, TweenInfo.new(0.3), {
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 0.5,
			}):Play()
			TweenService:Create(scale, TweenInfo.new(0.15, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Scale = 1.15 }):Play()
			task.wait(0.15)
			TweenService:Create(scale, TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Scale = 1 }):Play()
			task.delay(2.5, function()
				if arming then
					arming = false
					btn.Text = "REJOIN"
					TweenService:Create(btn, TweenInfo.new(0.3), {
						BackgroundColor3 = Color3.fromRGB(255, 255, 255),
						BackgroundTransparency = 1,
					}):Play()
				end
			end)
		else
			btn.Text = "WAIT..."
			TweenService:Create(scale, TweenInfo.new(0.15, Enum.EasingStyle.Sine), { Scale = 1.1 }):Play()
			pcall(function()
				LocalPlayer:Kick("\nRejoining...")
				task.wait()
				TeleportService:Teleport(game.PlaceId, LocalPlayer)
			end)
		end
	end))
	styleObject(btn)
end

local function restoreAll()
	disconnectAll()
	clearInsideBlur()

	for obj, data in pairs(styled) do
		pcall(function()
			if not obj or not obj.Parent then
				return
			end
			if data.bgc then
				obj.BackgroundColor3 = data.bgc
			end
			if data.bgt ~= nil then
				obj.BackgroundTransparency = data.bgt
			end
			if data.rot ~= nil then
				obj.Rotation = data.rot
			end
			if data.border ~= nil then
				obj.BorderSizePixel = data.border
			end
			if data.tc then
				obj.TextColor3 = data.tc
			end
			if data.ts then
				obj.TextSize = data.ts
			end
			if data.font then
				obj.Font = data.font
			end
			if data.img then
				obj.Image = data.img
			end
			if data.imgc then
				obj.ImageColor3 = data.imgc
			end
			if data.imgt ~= nil then
				obj.ImageTransparency = data.imgt
			end
			local corner = obj:FindFirstChildOfClass("UICorner")
			if corner then
				if data.cornerCreated then
					corner:Destroy()
				elseif data.cornerRadius then
					corner.CornerRadius = data.cornerRadius
				end
			end
			local glow = obj:FindFirstChild("LiquidGlow")
			if glow and data.glowCreated then
				glow:Destroy()
			end
			local scale = obj:FindFirstChildOfClass("UIScale")
			if scale and data.scaleCreated then
				scale:Destroy()
			elseif scale and data.scale then
				scale.Scale = data.scale
			end
			if obj:GetAttribute("FTAP_Hovering") ~= nil then
				obj:SetAttribute("FTAP_Hovering", nil)
			end
		end)
	end
	table.clear(styled)
	table.clear(styledSet)

	for _, inst in ipairs(created) do
		pcall(function()
			if inst and inst.Parent then
				inst:Destroy()
			end
		end)
	end
	table.clear(created)

	if menuRef then
		removeRejoin(menuRef)
		removeLogo(menuRef)
		removeSideText(menuRef)
		local proxy = menuRef:FindFirstChild("_Nucleus_Proxy")
		if proxy then
			proxy:Destroy()
		end
		local ib = menuRef:FindFirstChild("LiquidInsideBlur")
		if ib then
			ib:Destroy()
		end
	end
	proxyFrame = nil
	insideBlurFrame = nil
	sideTextLabel = nil

	if blurEffect then
		pcall(function()
			TweenService:Create(blurEffect, TweenInfo.new(0.2), { Size = 0 }):Play()
			task.delay(0.25, function()
				if blurEffect and blurEffect.Parent then
					blurEffect:Destroy()
				end
				blurEffect = nil
			end)
		end)
	end
	local leftover = Lighting:FindFirstChild("Nucleus_World_Blur")
	if leftover then
		pcall(function()
			leftover:Destroy()
		end)
	end
end

local function refreshChrome()
	if not liquidEnabled or not menuRef then
		return
	end
	if Config.Logo then
		applyLogo(menuRef)
	else
		removeLogo(menuRef)
	end
	applySideText(menuRef)
	if Config.Rejoin then
		applyRejoin(menuRef)
	else
		removeRejoin(menuRef)
	end
	applyBlur(menuRef.Visible, menuRef)
end

local function applyLiquid()
	if liquidEnabled then
		return
	end
	liquidEnabled = true

	local ok, err = pcall(function()
		local menuGui = LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("MenuGui")
		local menu = menuGui:WaitForChild("Menu")
		menuRef = menu
		menuGuiRef = menuGui

		local proxy = menu:FindFirstChild("_Nucleus_Proxy")
		if not proxy then
			proxy = Instance.new("Frame")
			proxy.Name = "_Nucleus_Proxy"
			proxy.Size = UDim2.fromScale(1, 1)
			proxy.Position = UDim2.fromScale(0.5, 0.5)
			proxy.AnchorPoint = Vector2.new(0.5, 0.5)
			proxy.BackgroundColor3 = Config.GlassColor
			proxy.BackgroundTransparency = Config.GlassTransparency
			proxy.ZIndex = -2
			proxy.Parent = menu
			local pc = Instance.new("UICorner")
			pc.CornerRadius = Config.CornerRadius
			pc.Parent = proxy
			local ps = Instance.new("UIStroke")
			ps.Thickness = 3
			ps.Color = Color3.new(1, 1, 1)
			ps.Transparency = Config.BorderTransparency
			ps.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			ps.Parent = proxy
			table.insert(created, proxy)
		end
		proxyFrame = proxy

		refreshChrome()

		for _, d in ipairs(menu:GetDescendants()) do
			styleObject(d)
		end
		trackConn(menu.DescendantAdded:Connect(function(d)
			if liquidEnabled then
				task.defer(styleObject, d)
			end
		end))

		local function flow(visible)
			if not liquidEnabled then
				return
			end
			applyBlur(visible and true or false, menu)
		end
		trackConn(menu:GetPropertyChangedSignal("Visible"):Connect(function()
			flow(menu.Visible)
		end))
		flow(menu.Visible)
	end)

	if not ok then
		warn("[LiquidGlass] enable error: " .. tostring(err))
		liquidEnabled = false
		restoreAll()
	end
end

local function disableLiquid()
	liquidEnabled = false
	restoreAll()
end

local API = {}

API.Enable = function()
	applyLiquid()
end

API.Disable = function()
	disableLiquid()
end

API.Toggle = function(state)
	if state then
		API.Enable()
	else
		API.Disable()
	end
end

API.IsEnabled = function()
	return liquidEnabled
end

API.GetConfig = function()
	local c = {}
	for k, v in pairs(Config) do
		c[k] = v
	end
	return c
end

API.SetConfig = function(tbl)
	if type(tbl) ~= "table" then
		return
	end
	for k, v in pairs(tbl) do
		if Config[k] ~= nil then
			Config[k] = v
		end
	end
	if liquidEnabled then
		refreshChrome()
	end
end

return API
