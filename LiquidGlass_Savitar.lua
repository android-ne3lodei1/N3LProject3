-- Liquid-Glass Menu (1:1 Savitar) standalone module
-- Usage:
--   local LG = loadstring(game:HttpGet("YOUR_RAW_URL"))()
--   LG.Enable()
--   LG.Disable()
--   LG.Toggle(true/false)

local liquidEnabled = false

local function applyLiquid()
			if liquidEnabled then
				return
			end
			liquidEnabled = true

			pcall(function()
				local TweenService3 = game:GetService("TweenService")
				local Lighting = game:GetService("Lighting")
				local Players4 = game:GetService("Players")
				local Debris = game:GetService("Debris")
				local UserInputService2 = game:GetService("UserInputService")
				local GuiService = game:GetService("GuiService")
				local TeleportService = game:GetService("TeleportService")
				local localPlayer6 = Players4.LocalPlayer
				local menuGui = localPlayer6:WaitForChild("PlayerGui"):WaitForChild("MenuGui")
				local menu = menuGui:WaitForChild("Menu")

				local tbl34 = {
					GlassTransparency = 0.76,
					HoverGlowAlpha = 0.85,
					MaxBlurSize = 25,
					BorderTransparency = 0.35,
					CornerRadius = UDim.new(0, 32),
					MeltDuration = 1.4,
					GhostVFXAlpha = 0.95,
					GlassColor = Color3.fromRGB(255, 255, 255),
					TargetSize = UDim2.fromScale(0.85, 0.75),
					LogoId = "rbxassetid://125209698949144",
					Keywords = {
						"color",
						"picker",
						"palette",
						"slider",
						"hue",
						"hex",
						"rainbow",
						"rgb",
						"darkness",
						"lightness",
						"hsv",
						"gradient",
						"rejoin",
						"rj",
						"black",
						"dark",
						"logo",
						"close",
						"exit",
					},
				}

				local tbl35 = {}
				local v76 = nil

				_liqProtected = function(arg)
					chk = function(arg2)
						local v77 = string.lower(arg2)

						for _, keyword in ipairs(tbl34.Keywords) do
							if string.find(v77, keyword) then
								return true
							end
						end

						return false
					end

					if chk(arg.Name) then
						return true
					end
					local parent = arg.Parent
					local n33 = 0

					while parent and n33 < 4 do
						if parent:IsA("GuiObject") or parent:IsA("Folder") then
							if chk(parent.Name) then
								return true
							end
						end

						parent = parent.Parent
						n33 += 1
					end

					return arg:IsA("TextBox")
				end

				_liqLock = function(arg)
					if not arg:IsA("GuiObject") then
						return
					end

					ef = function()
						if arg:GetAttribute("FTAP_Hovering") then
							return
						end

						if arg.BackgroundTransparency ~= 1 then
							arg.BackgroundTransparency = 1
						end

						if arg.BackgroundColor3 ~= Color3.new(1, 1, 1) then
							arg.BackgroundColor3 = Color3.new(1, 1, 1)
						end
					end

					ef()
					arg:GetPropertyChangedSignal("BackgroundTransparency"):Connect(ef)
					arg:GetPropertyChangedSignal("BackgroundColor3"):Connect(ef)
				end

				_liqMelt = function(parent, arg)
					local frame3 = Instance.new("Frame")
					frame3.BackgroundColor3 = Color3.new(1, 1, 1)
					frame3.BackgroundTransparency = tbl34.GhostVFXAlpha
					frame3.AnchorPoint = Vector2.new(0.5, 0.5)
					local absolutePosition = parent.AbsolutePosition
					local n33 = arg.X - absolutePosition.X
					local y = absolutePosition.Y
					frame3.Position = UDim2.fromOffset(n33, arg.Y - GuiService:GetGuiInset().Y - y)
					frame3.Size = UDim2.fromOffset(0, 0)
					frame3.ZIndex = 5000
					local uiCorner = Instance.new("UICorner")
					uiCorner.CornerRadius = UDim.new(1, 0)
					uiCorner.Parent = frame3
					frame3.Parent = parent
					TweenService3:Create(frame3, TweenInfo.new(tbl34.MeltDuration, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), { Size = UDim2.fromOffset(800, 800), BackgroundTransparency = 1 }):Play()
					Debris:AddItem(frame3, tbl34.MeltDuration)
				end

				_liqStyle = function(parent)
					if not parent:IsA("GuiObject") then
						return
					end
					local v77 = string.lower(parent.Name)

					if v77 == "close" or v77 == "closebutton" or v77 == "exit" or v77 == "x" then
						parent.AnchorPoint = Vector2.new(1, 0)
						parent.Position = UDim2.new(1, 0, 0, 0)
					end

					if string.find(v77, "star") or string.find(v77, "favorite") or string.find(v77, "fav") then
						if tbl35[parent] then
							return
						end
						tbl35[parent] = true

						ls = function()
							if parent.BackgroundTransparency ~= 1 then
								parent.BackgroundTransparency = 1
							end

							if parent.BorderSizePixel ~= 0 then
								parent.BorderSizePixel = 0
							end
						end

						ls()
						parent:GetPropertyChangedSignal("BackgroundTransparency"):Connect(ls)
						parent:GetPropertyChangedSignal("BorderSizePixel"):Connect(ls)
						local tweenInfo3 = TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
						local tweenInfo4 = TweenInfo.new(0.15, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)

						parent.MouseEnter:Connect(function()
							TweenService3:Create(parent, tweenInfo3, { Rotation = 15 }):Play()
						end)

						parent.MouseLeave:Connect(function()
							TweenService3:Create(parent, tweenInfo3, { Rotation = 0 }):Play()
						end)

						if parent:IsA("GuiButton") then
							local uiScale = parent:FindFirstChildOfClass("UIScale") or Instance.new("UIScale", parent)

							parent.MouseButton1Down:Connect(function()
								TweenService3:Create(uiScale, tweenInfo4, { Scale = 0.8 }):Play()
							end)

							parent.MouseButton1Up:Connect(function()
								TweenService3:Create(uiScale, tweenInfo3, { Scale = 1.2 }):Play()
								task.wait(0.15)
								TweenService3:Create(uiScale, tweenInfo3, { Scale = 1 }):Play()
							end)
						end

						return
					end

					if tbl35[parent] or _liqProtected(parent) then
						return
					end
					tbl35[parent] = true

					if parent:IsA("Frame") or parent:IsA("ScrollingFrame") then
						parent.BackgroundTransparency = 1
						parent.BorderSizePixel = 0
					elseif parent:IsA("TextLabel") or parent:IsA("TextButton") then
						parent.BackgroundTransparency = 1
					end

					_liqLock(parent)

					if not parent:FindFirstChildOfClass("UICorner") then
						local uiCorner = Instance.new("UICorner")
						uiCorner.CornerRadius = UDim.new(0, 16)
						uiCorner.Parent = parent
					end

					if parent:IsA("TextButton") or parent:IsA("ImageButton") then
						local liquidGlow = parent:FindFirstChild("LiquidGlow") or Instance.new("UIStroke")
						liquidGlow.Name = "LiquidGlow"
						liquidGlow.Thickness = 0
						liquidGlow.Color = Color3.new(1, 1, 1)
						liquidGlow.Transparency = 0.5
						liquidGlow.Parent = parent
						local uiScale = parent:FindFirstChildOfClass("UIScale") or Instance.new("UIScale", parent)
						local isTextButton = parent:IsA("TextButton")
						local textSize = isTextButton and parent.TextSize or 14
						local textColor3 = isTextButton and parent.TextColor3 or Color3.new(1, 1, 1)

						parent.MouseEnter:Connect(function()
							parent:SetAttribute("FTAP_Hovering", true)
							TweenService3:Create(parent, TweenInfo.new(0.35), { BackgroundTransparency = tbl34.HoverGlowAlpha, BackgroundColor3 = Color3.fromRGB(230, 240, 255) }):Play()
							TweenService3:Create(liquidGlow, TweenInfo.new(0.35), { Thickness = 2.4 }):Play()
							TweenService3:Create(uiScale, TweenInfo.new(0.35, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Scale = 1.05 }):Play()

							if isTextButton then
								TweenService3:Create(parent, TweenInfo.new(0.3), { TextSize = textSize + 2, TextColor3 = Color3.fromRGB(150, 200, 255) }):Play()
							end
						end)

						parent.MouseLeave:Connect(function()
							local tbl36 = { BackgroundTransparency = 1, BackgroundColor3 = tbl34.GlassColor }
							local tween = TweenService3:Create(parent, TweenInfo.new(0.35), tbl36)
							tween:Play()
							TweenService3:Create(liquidGlow, TweenInfo.new(0.35), { Thickness = 0 }):Play()
							TweenService3:Create(uiScale, TweenInfo.new(0.35, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Scale = 1 }):Play()

							if isTextButton then
								local tbl37 = { TextSize = textSize, TextColor3 = textColor3 }
								TweenService3:Create(parent, TweenInfo.new(0.3), tbl37):Play()
							end

							tween.Completed:Connect(function()
								parent:SetAttribute("FTAP_Hovering", false)
							end)
						end)

						parent.MouseButton1Down:Connect(function()
							if parent.Name ~= "RejoinButton" then
								TweenService3:Create(uiScale, TweenInfo.new(0.15, Enum.EasingStyle.Sine), { Scale = 0.93 }):Play()
							end

							_liqMelt(parent, UserInputService2:GetMouseLocation())
						end)

						parent.MouseButton1Up:Connect(function()
							if parent.Name ~= "RejoinButton" then
								TweenService3:Create(uiScale, TweenInfo.new(0.35, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Scale = 1.05 }):Play()
							end
						end)
					end
				end

				_liqLogo = function()
					local savitarCustomLogo = menu:FindFirstChild("SavitarCustomLogo")

					if savitarCustomLogo then
						savitarCustomLogo:Destroy()
					end

					local imageLabel2 = Instance.new("ImageLabel")
					imageLabel2.Name = "SavitarCustomLogo"
					imageLabel2.Size = UDim2.fromOffset(105, 105)
					imageLabel2.Position = UDim2.new(1, -55, 0, 10)
					imageLabel2.AnchorPoint = Vector2.new(1, 0)
					imageLabel2.BackgroundTransparency = 1
					imageLabel2.Image = tbl34.LogoId
					imageLabel2.ImageColor3 = Color3.fromRGB(255, 255, 255)
					imageLabel2.ImageTransparency = 0.3
					imageLabel2.ZIndex = 10000
					imageLabel2.Parent = menu
				end

				_liqRejoin = function()
					local rejoinContainer = menu:FindFirstChild("RejoinContainer")

					if rejoinContainer then
						rejoinContainer:Destroy()
					end

					local frame3 = Instance.new("Frame")
					frame3.Name = "RejoinContainer"
					frame3.Size = UDim2.fromOffset(120, 40)
					frame3.Position = UDim2.new(0, 20, 0, 20)
					frame3.BackgroundTransparency = 1
					frame3.ZIndex = 10000
					frame3.Parent = menu
					local textButton = Instance.new("TextButton")
					textButton.Name = "RejoinButton"
					textButton.Size = UDim2.fromScale(1, 1)
					textButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					textButton.BackgroundTransparency = 1
					textButton.Text = "REJOIN"
					textButton.TextColor3 = Color3.new(1, 1, 1)
					textButton.TextSize = 14
					textButton.Font = Enum.Font.GothamBold
					textButton.Parent = frame3
					local uiCorner = Instance.new("UICorner")
					uiCorner.CornerRadius = UDim.new(0, 12)
					uiCorner.Parent = textButton
					local uiStroke = Instance.new("UIStroke")
					uiStroke.Thickness = 2
					uiStroke.Color = Color3.new(1, 1, 1)
					uiStroke.Transparency = 0.4
					uiStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
					uiStroke.Parent = textButton
					local flag43 = false
					local uiScale = Instance.new("UIScale", textButton)

					textButton.MouseButton1Click:Connect(function()
						if not flag43 then
							flag43 = true
							textButton.Text = "REJOIN?"
							TweenService3:Create(textButton, TweenInfo.new(0.3), { BackgroundColor3 = Color3.fromRGB(255, 255, 255), BackgroundTransparency = 0.5 }):Play()
							TweenService3:Create(uiScale, TweenInfo.new(0.15, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Scale = 1.15 }):Play()
							task.wait(0.15)
							TweenService3:Create(uiScale, TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Scale = 1 }):Play()

							task.delay(2.5, function()
								if flag43 then
									flag43 = false
									textButton.Text = "REJOIN"
									TweenService3:Create(textButton, TweenInfo.new(0.3), { BackgroundColor3 = Color3.fromRGB(255, 255, 255), BackgroundTransparency = 1 }):Play()
								end
							end)
						else
							textButton.Text = "WAIT..."
							TweenService3:Create(uiScale, TweenInfo.new(0.15, Enum.EasingStyle.Sine), { Scale = 1.1 }):Play()

							pcall(function()
								if #Players4:GetPlayers() <= 1 then
									localPlayer6:Kick("\nRejoining...")
									task.wait(0.1)
									TeleportService:Teleport(game.PlaceId, localPlayer6)
								else
									TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, localPlayer6)
								end
							end)
						end
					end)

					_liqStyle(textButton)
				end

				_liqBlur = function(arg)
					local nucleusWorldBlur = Lighting:FindFirstChild("Nucleus_World_Blur") or Instance.new("BlurEffect", Lighting)
					nucleusWorldBlur.Name = "Nucleus_World_Blur"

					if arg then
						local tbl36 = { Size = tbl34.MaxBlurSize }
						TweenService3:Create(nucleusWorldBlur, TweenInfo.new(0.3, Enum.EasingStyle.Sine), tbl36):Play()
					else
						TweenService3:Create(nucleusWorldBlur, TweenInfo.new(0.3), { Size = 0 }):Play()
					end
				end

				_liqFlow = function(arg)
					_liqBlur(arg)

					if v76 then
						v76:Cancel()
						v76 = nil
					end

					if arg then
						menu.Size = tbl34.TargetSize
						menu.AnchorPoint = Vector2.new(0.5, 0.5)
						menu.Position = UDim2.fromScale(0.5, 0.5)
						menuGui.DisplayOrder = 10000
						menu.Visible = true
					else
						menu.Visible = false
					end
				end

				local visible = menu.Visible

				if visible then
					menu.Visible = false
				end

				local nucleusProxy = menu:FindFirstChild("_Nucleus_Proxy") or Instance.new("Frame", menu)
				nucleusProxy.Name = "_Nucleus_Proxy"
				nucleusProxy.Size = UDim2.fromScale(1, 1)
				nucleusProxy.Position = UDim2.fromScale(0.5, 0.5)
				nucleusProxy.AnchorPoint = Vector2.new(0.5, 0.5)
				nucleusProxy.BackgroundColor3 = tbl34.GlassColor
				nucleusProxy.BackgroundTransparency = tbl34.GlassTransparency
				nucleusProxy.ZIndex = -2
				local cornerRadius = tbl34.CornerRadius
				Instance.new("UICorner", nucleusProxy).CornerRadius = cornerRadius
				local uiStroke = Instance.new("UIStroke", nucleusProxy)
				uiStroke.Thickness = 3
				uiStroke.Color = Color3.new(1, 1, 1)
				uiStroke.Transparency = tbl34.BorderTransparency
				uiStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				_liqRejoin()
				_liqLogo()
				_liqLock(menu)

				for _, descendant in pairs(menu:GetDescendants()) do
					_liqStyle(descendant)
				end

				connection5 = menu.DescendantAdded:Connect(function(descendant)
					_liqStyle(descendant)
				end)

				menu:GetPropertyChangedSignal("Visible"):Connect(function()
					_liqFlow(menu.Visible)
				end)

				if visible then
					_liqFlow(true)
				end
			end)
		end

		local function removeLiquid()
			liquidEnabled = false

			if connection5 then
				connection5:Disconnect()
				connection5 = nil
			end

			pcall(function()
				local menu = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("MenuGui"):WaitForChild("Menu")
				local nucleusProxy = menu:FindFirstChild("_Nucleus_Proxy")

				if nucleusProxy then
					nucleusProxy:Destroy()
				end

				local rejoinContainer = menu:FindFirstChild("RejoinContainer")

				if rejoinContainer then
					rejoinContainer:Destroy()
				end

				local savitarCustomLogo = menu:FindFirstChild("SavitarCustomLogo")

				if savitarCustomLogo then
					savitarCustomLogo:Destroy()
				end

				local nucleusWorldBlur = game:GetService("Lighting"):FindFirstChild("Nucleus_World_Blur")

				if nucleusWorldBlur then
					nucleusWorldBlur:Destroy()
				end
			end)
		end
	end

local API = {}

function API.Enable()
	if liquidEnabled then
		return
	end
	applyLiquid()
end

function API.Disable()
	if not liquidEnabled then
		-- still try remove if partial
	end
	pcall(function()
		if removeLiquid then
			removeLiquid()
		end
	end)
	liquidEnabled = false
end

function API.Toggle(state)
	if state then
		API.Enable()
	else
		API.Disable()
	end
end

function API.IsEnabled()
	return liquidEnabled
end

return API
