Players=game:GetService('Players')LocalPlayer=Players.LocalPlayer CoreGui=game:GetService('CoreGui')loadstring(game:
HttpGet([[https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source]]))()repo=
[[https://raw.githubusercontent.com/deividcomsono/Obsidian/main/]]icons=
[[https://raw.githubusercontent.com/deividcomsono/lucide-roblox-direct/refs/heads/main/source.lua]]u=loadstring(game:
HttpGet(([[https://raw.githubusercontent.com/fiiremax/Scripts/refs/heads/master/Scriptnew/GitHub/Scripts/Module.lua]]))
)()Library=loadstring(game:HttpGet(repo..'Library.lua'))()ThemeManager=loadstring(game:HttpGet(repo..
'addons/ThemeManager.lua'))()SaveManager=loadstring(game:HttpGet(repo..'addons/SaveManager.lua'))()Options=Library.
Options Toggles=Library.Toggles Players=game:GetService('Players')player=Players.LocalPlayer playerGui=player:
WaitForChild('PlayerGui')TweenService=game:GetService('TweenService')function waitFor(e,f,i,j)j=j or 10 start=tick()
result=nil while not result and tick()-start<j do if i then result=e:FindFirstChild(f,true)else result=e:FindFirstChild(
f)end if not result then task.wait(0.1)end end return result end menuGui=waitFor(playerGui,'MenuGui',true,10)if not
menuGui then warn('MenuGui not found in PlayerGui!')return end topRight=waitFor(menuGui,'TopRight',true,10)if not
topRight then warn('TopRight not found!')return end coinsFrame=waitFor(topRight,'CoinsFrame',false,10)if not coinsFrame
then warn('CoinsFrame not found!')return end coinsDisplay=waitFor(coinsFrame,'CoinsDisplay',false,10)if not coinsDisplay
then warn('CoinsDisplay not found!')return end coinImage=coinsDisplay:FindFirstChild('CoinImage')coinsText=coinsDisplay:
FindFirstChild('Coins')if coinImage then coinImage.Image='rbxassetid://17629725719'end if coinsText then coinsText.
TextColor3=Color3.new(1,1,1)end coinsFrame.BackgroundTransparency=0.35 coinsFrame.Position=coinsFrame.Position+UDim2.
new(0,0,0,15)function StyleMenuUI()player=game:GetService('Players').LocalPlayer playerGui=player:WaitForChild(
'PlayerGui')menuGui=playerGui:WaitForChild('MenuGui')menu=menuGui:WaitForChild('Menu')black=Color3.fromRGB(0,0,0)blue=
Color3.fromRGB(30,100,200)white=Color3.fromRGB(255,255,255)cornerRadius=UDim.new(0,0)function roundCorners(e)corner=e:
FindFirstChildOfClass('UICorner')if corner then corner.CornerRadius=cornerRadius else corner=Instance.new('UICorner')
corner.CornerRadius=cornerRadius corner.Parent=e end end function addPurpleBlueGradient(e,f)gradient=e:
FindFirstChildOfClass('UIGradient')if not gradient then gradient=Instance.new('UIGradient')end gradient.Color=
ColorSequence.new{ColorSequenceKeypoint.new(0,white),ColorSequenceKeypoint.new(1,blue)}gradient.Rotation=f or 45
gradient.Parent=e end tabBarSizeY=0.9999 tabBar=menu:WaitForChild('TabBar')tabBar.BackgroundColor3=black tabBar.
BackgroundTransparency=0.28 tabBar.Size=UDim2.new(tabBar.Size.X.Scale,tabBar.Size.X.Offset,tabBarSizeY,tabBar.Size.Y.
Offset)roundCorners(tabBar)tabContents=menu:WaitForChild('TabContents')for e,f in ipairs(tabContents:GetChildren())do if
f:IsA('Frame')then f.BackgroundColor3=black f.BackgroundTransparency=0.7 roundCorners(f)title=f:FindFirstChild('Title')
if title then title.BackgroundColor3=black title.BackgroundTransparency=0.4 roundCorners(title)currentSize=title.Size
title.Size=UDim2.new(currentSize.X.Scale*0.975,currentSize.X.Offset,currentSize.Y.Scale,currentSize.Y.Offset)end
sortingTabs=f:FindFirstChild('SortingTabs')if sortingTabs then sortingTabs.BackgroundColor3=black sortingTabs.
BackgroundTransparency=0.55 roundCorners(sortingTabs)end contents=f:FindFirstChild('Contents')if contents then contents.
BackgroundColor3=Color3.fromRGB(255,255,255)contents.BackgroundTransparency=0.55 roundCorners(contents)
addPurpleBlueGradient(contents,45)contents.ChildAdded:Connect(function()contents.BackgroundTransparency=0 TweenService:
Create(contents,TweenInfo.new(0.35,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{BackgroundTransparency=0.55}):Play()
end)end favoritesFrame=f:FindFirstChild('FavoritesFrame')if favoritesFrame then favoritesFrame.BackgroundColor3=black
favoritesFrame.BackgroundTransparency=1 roundCorners(favoritesFrame)end if contents then for i,j in ipairs(contents:
GetChildren())do fav=j:FindFirstChild('Favorite')if fav and(fav:IsA('ImageLabel')or fav:IsA('ImageButton'))then fav.
ImageTransparency=1 fav.BackgroundTransparency=1 end end end end end for e,f in ipairs(menuGui:GetDescendants())do if f.
Name=='MeterFrame'and f:IsA('GuiObject')then f.BackgroundColor3=black f.BackgroundTransparency=0.4 roundCorners(f)end
end end StyleMenuUI()Library.ForceCheckbox=false Window=Library:CreateWindow({Title='Ne3lodei',Footer=
'Ne3lodei Project | FTAP',Icon=116176143011396,NotifySide='Right',ShowCustomCursor=false,EnableCompacting=true,
SidebarCompacted=true,BackgroundImage='rbxassetid://'})Tabs={Main=Window:AddTab('Main','house'),Player=Window:AddTab(
'Player','person-standing'),Defense=Window:AddTab('Protections','shield-plus'),Target=Window:AddTab('Loops','sword'),
Grab=Window:AddTab('Grabs','hand-metal'),Visual=Window:AddTab('Visuals','eye'),Server=Window:AddTab('Servers','atom'),
ToyTab=Window:AddTab('Toys','shapes'),FigureTab=Window:AddTab('Figure','mouse'),TpTab=Window:AddTab('Tp','map-pin'),
Keybinds=Window:AddTab('Keybind','keyboard'),MapBreak=Window:AddTab('MapBreaks','map'),UISettings=Window:AddTab(
'UI Settings','cog')}do ProfileGroup=Tabs.Main:AddLeftGroupbox('Profile','user')UtilityGroup=Tabs.Main:AddRightGroupbox(
'Utilities','settings')AboutGroup=Tabs.Main:AddRightGroupbox('About','info')do avatarview=ProfileGroup:AddViewport(
'Just your avatar',{Object=LocalPlayer.Character,Camera=Instance.new('Camera'),Interactive=true,AutoFocus=true,Height=
400})LocalPlayer.CharacterAdded:Connect(function(e)task.wait(1)avatarview:SetObject(e:Clone())end)end ProfileGroup:
AddLabel('Good Evening, '..LocalPlayer.DisplayName,true)UtilityGroup:AddButton({Text='Rejoin',Callback=function()Library
:Notify({Title='Ne3lodei Project',Description='Rejoining...',Duration=2})task.wait(0.5)game:GetService('TeleportService'
):TeleportToPlaceInstance(game.PlaceId,game.JobId,LocalPlayer)end})UtilityGroup:AddButton({Text='Server-Hop',Callback=
function()Library:Notify({Title='Ne3lodei Project',Description='Hopping to new server...',Duration=2})task.wait(0.5)game
:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId,tostring(math.random(1,9999999)),LocalPlayer)end})
AboutGroup:AddLabel(
'\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}'
,true)AboutGroup:AddLabel('Ne3lodei \u{b7} Project',true)AboutGroup:AddLabel(
'\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}'
,true)AboutGroup:AddLabel('Developers',true)AboutGroup:AddLabel('  android_ne3lodei1',true)AboutGroup:AddLabel(
'  hibdf13',true)AboutGroup:AddLabel('  Jeffrey Epstein',true)AboutGroup:AddLabel(
'\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}'
,true)AboutGroup:AddLabel('Nothing',true)AboutGroup:AddLabel('\u{421}ool script',true)AboutGroup:AddLabel(
'\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}\u{2501}'
,true)end do local e,f,i,j=Tabs.Keybinds:AddLeftGroupbox('Mobile Controls','smartphone'),Tabs.Keybinds:AddLeftGroupbox(
'Limb Control','scissors'),Tabs.Keybinds:AddRightGroupbox('Teleport','map-pin'),Tabs.Keybinds:AddLeftGroupbox('Misc',
'settings')f:AddLabel('Remove Left Leg',false):AddKeyPicker('RemoveLeftLeg',{Default='None',Text='Remove Left Leg',Mode=
'Press',Callback=function()if workspace:FindFirstChild('GrabParts')and workspace.GrabParts:FindFirstChild('GrabPart')
then local l=workspace.GrabParts.GrabPart.WeldConstraint.Part1 and workspace.GrabParts.GrabPart.WeldConstraint.Part1.
Parent if l and l:FindFirstChild('Left Leg')and l:FindFirstChild('Humanoid')and l.Humanoid:FindFirstChild('Ragdolled')
then if l.Humanoid.Ragdolled.Value then local n=l.Torso.CFrame workspace.FallenPartsDestroyHeight=-100 l['Left Leg'].
CFrame=CFrame.new(0,-1E3,0)task.wait(0.1)l.Torso.CFrame=CFrame.new(0,-950,0)task.wait(0)l.Torso.CFrame=n end end end end
})f:AddLabel('Remove Right Leg',false):AddKeyPicker('RemoveRightLeg',{Default='None',Text='Remove Right Leg',Mode=
'Press',Callback=function()if workspace:FindFirstChild('GrabParts')and workspace.GrabParts:FindFirstChild('GrabPart')
then local l=workspace.GrabParts.GrabPart.WeldConstraint.Part1 and workspace.GrabParts.GrabPart.WeldConstraint.Part1.
Parent if l and l:FindFirstChild('Right Leg')and l:FindFirstChild('Humanoid')and l.Humanoid:FindFirstChild('Ragdolled')
then if l.Humanoid.Ragdolled.Value then local n=l.Torso.CFrame workspace.FallenPartsDestroyHeight=-100 l['Right Leg'].
CFrame=CFrame.new(0,-1E3,0)task.wait(0.1)l.Torso.CFrame=CFrame.new(0,-950,0)task.wait(0)l.Torso.CFrame=n end end end end
})f:AddLabel('Remove Left Arm',false):AddKeyPicker('RemoveLeftArm',{Default='None',Text='Remove Left Arm',Mode='Press',
Callback=function()if workspace:FindFirstChild('GrabParts')and workspace.GrabParts:FindFirstChild('GrabPart')then local
l=workspace.GrabParts.GrabPart.WeldConstraint.Part1 and workspace.GrabParts.GrabPart.WeldConstraint.Part1.Parent if l
and l:FindFirstChild('Left Arm')and l:FindFirstChild('Humanoid')and l.Humanoid:FindFirstChild('Ragdolled')then if l.
Humanoid.Ragdolled.Value then local n=l.Torso.CFrame workspace.FallenPartsDestroyHeight=-100 l['Left Arm'].CFrame=CFrame
.new(0,-1E3,0)task.wait(0.1)l.Torso.CFrame=CFrame.new(0,-950,0)task.wait(0)l.Torso.CFrame=n end end end end})f:AddLabel(
'Remove Right Arm',false):AddKeyPicker('RemoveRightArm',{Default='None',Text='Remove Right Arm',Mode='Press',Callback=
function()if workspace:FindFirstChild('GrabParts')and workspace.GrabParts:FindFirstChild('GrabPart')then local l=
workspace.GrabParts.GrabPart.WeldConstraint.Part1 and workspace.GrabParts.GrabPart.WeldConstraint.Part1.Parent if l and
l:FindFirstChild('Right Arm')and l:FindFirstChild('Humanoid')and l.Humanoid:FindFirstChild('Ragdolled')then if l.
Humanoid.Ragdolled.Value then local n=l.Torso.CFrame workspace.FallenPartsDestroyHeight=-100 l['Right Arm'].CFrame=
CFrame.new(0,-1E3,0)task.wait(0.1)l.Torso.CFrame=CFrame.new(0,-950,0)task.wait(0)l.Torso.CFrame=n end end end end})local
l=Enum.KeyCode.Z i:AddLabel('Teleport'):AddKeyPicker('TeleportKey',{Default='Z',Mode='Press',Text='Teleport Key',NoUI=
false,Callback=function()if tpEnabled then local n=LocalPlayer.Character local o=n and n:FindFirstChild(
'HumanoidRootPart')if not o then return end local A=LocalPlayer:GetMouse()local B=A.Hit.Position o.CFrame=CFrame.new(B+
Vector3.new(0,3,0))end end})i:AddCheckbox('TeleportToggle',{Text='Teleport Binder',Default=false,Callback=function(n)
tpEnabled=n end})i:AddLabel('TP to Spawn'):AddKeyPicker('TP_ToSpawn',{Default='None',Text='TP To Spawn',Mode='Press',
Callback=function()local n=LocalPlayer.Character local o=n and n:FindFirstChild('HumanoidRootPart')if o then o.CFrame=
CFrame.new(0,-5,0)end end})i:AddLabel('Loop TP Toggle'):AddKeyPicker('TP_LoopToggle',{Default='None',Text=
'Loop TP Toggle',Mode='Toggle',Callback=function(n)if Toggles.LoopTpToggle then Toggles.LoopTpToggle:SetValue(n)end end}
)j:AddLabel('Break Barrier'):AddKeyPicker('BarrierKey',{Default='None',Text='Break Barrier',Mode='Press',Callback=
function()checkPlotAndFarm()end})j:AddLabel('Destroy Blob (Target)'):AddKeyPicker('DestroyBlobKey',{Default='None',Text=
'Destroy Target Blob',Mode='Toggle',Callback=function(n)if Toggles.AutoBlobmanToggle then Toggles.AutoBlobmanToggle:
SetValue(n)end end})e:AddButton('MobileKeyboard',{Text='Mobile Keyboard',Func=function()if not _G.MobileKeyboardLoaded
then _G.MobileKeyboardLoaded=true loadstring(game:HttpGet(
[[https://raw.githubusercontent.com/Xxtan31/Ata/main/deltakeyboardcrack.txt]],true))()end end})end ServerPlayers=Tabs.
Player:AddRightGroupbox('Server Players','user-lock')FunAnim=Tabs.Player:AddRightGroupbox('Animations','venetian-mask')
MovementGroup=Tabs.Player:AddLeftGroupbox('Movement','activity')hkProfileId=nil hkProfileInstance=nil hkPlrNames={}for e
,f in ipairs(Players:GetPlayers())do table.insert(hkPlrNames,f.DisplayName..' (@'..f.Name..')')end function
HK_ParseJsonString(e)if not e then return nil end HK_Success,HK_Data=pcall(function()return HttpService:JSONDecode(e)end
)return HK_Success and HK_Data or nil end profileCardRef=ServerPlayers:AddLabel('Pick someone from the dropdown below')
local e hkPlrDrop=ServerPlayers:AddDropdown('SelectPlayer',{Text='Select Player',Values=hkPlrNames,Default=hkPlrNames[1]
or'',Callback=function(f)username=f:match('@(.+)%)$')or f target=Players:FindFirstChild(username)if not target then
return end hkProfileId=target.UserId if e then e(target)end end})function resetProfileCards()profileCardRef:Set(
'Pick someone from the dropdown below','No player selected')end e=function(f)hkProfileInstance=f uid=f.UserId thumb=
Players:GetUserThumbnailAsync(uid,Enum.ThumbnailType.HeadShot,Enum.ThumbnailSize.Size420x420)profileCardRef:Set('@'..f.
Name..'\n\n'..'Loading...   |   Loading...   |   Loading...\n'..'Friends          Followers          Following\n\n'..
'About\nLoading...\n\n'..'Joined  '..tostring(f.AccountAge)..' days old',f.DisplayName)pcall(function()profileCardRef:
SetAvatar(thumb)end)task.spawn(function()displayName=f.DisplayName username=f.Name accountAge=tostring(f.AccountAge)
apiData=HK_ParseJsonString(tryGet('https://users.roblox.com/v1/users/'..uid))bioRaw=(apiData and apiData.description and
apiData.description~='')and apiData.description or nil bio=bioRaw and bioRaw:gsub('\n',' '):sub(1,150)or
'This goofy does NOT have a bio'frData=HK_ParseJsonString(tryGet('https://friends.roblox.com/v1/users/'..uid..
'/friends/count'))flData=HK_ParseJsonString(tryGet('https://friends.roblox.com/v1/users/'..uid..'/followers/count'))
fwData=HK_ParseJsonString(tryGet('https://friends.roblox.com/v1/users/'..uid..'/followings/count'))friends=(frData and
frData.count~=nil)and tostring(frData.count)or'N/A'followers=(flData and flData.count~=nil)and tostring(flData.count)or
'N/A'following=(fwData and fwData.count~=nil)and tostring(fwData.count)or'N/A'profileCardRef:Set('@'..username..'\n\n'..
friends..'   |   '..followers..'   |   '..following..'\n'..'Friends          Followers          Following\n\n'..
'About\n'..bio..'\n\n'..'Joined  '..accountAge..' days old',displayName)pcall(function()profileCardRef:SetAvatar(thumb)
end)end)end function refreshDropdown()hkPlrNames={}for f,i in ipairs(Players:GetPlayers())do table.insert(hkPlrNames,i.
DisplayName..' (@'..i.Name..')')end hkPlrDrop:SetValues(hkPlrNames)end Players.PlayerAdded:Connect(refreshDropdown)
Players.PlayerRemoving:Connect(function(f)if hkProfileInstance and f==hkProfileInstance then uid=tostring(f.UserId)
pcall(function()setclipboard(uid)end)Library:Notify({Title='Coward left',Description=f.DisplayName..' (@'..f.Name..
')  |  ID: '..uid,Duration=10})hkProfileInstance=nil hkProfileId=nil resetProfileCards()end refreshDropdown()end)
ServerPlayers:AddDivider()ServerPlayers:AddButton({Text='Copy Profile Link',Callback=function()if hkProfileId then
pcall(function()setclipboard('https://www.roblox.com/users/'..hkProfileId..'/profile')end)Library:Notify({Title=
'Copied!',Description='Profile link copied to clipboard.',Duration=3})else Library:Notify({Title='No player selected',
Description='Select a player first.',Duration=3})end end})Movement=Movement or{Speed={Enabled=false,Value=16},Fly={
Enabled=false,Speed=120,Connection=nil},InfiniteJump=false}sprintEnabled=false infiniteJump=false jumpPowerEnabled=false
jumpPowerValue=50 local f,i,j,l,n function stopFly()if Movement.Fly.Connection then Movement.Fly.Connection:Disconnect()
Movement.Fly.Connection=nil end if l then l:Destroy()end if n then n:Destroy()end l,n=nil,nil char=LocalPlayer.Character
if not char then return end hum=char:FindFirstChildOfClass('Humanoid')root=char:FindFirstChild('HumanoidRootPart')if hum
then hum.PlatformStand=false hum:ChangeState(Enum.HumanoidStateType.GettingUp)end if root then root.
AssemblyLinearVelocity=Vector3.zero root.AssemblyAngularVelocity=Vector3.zero end end function startFly()stopFly()if not
Movement.Fly.Enabled then return end Movement.Fly.Connection=game:GetService('RunService').RenderStepped:Connect(
function()char=LocalPlayer.Character if not char then return end hum=char:FindFirstChildOfClass('Humanoid')root=char:
FindFirstChild('HumanoidRootPart')if not hum or not root then return end controlPart=(hum.Sit and hum.SeatPart and hum.
SeatPart.AssemblyRootPart)or root if not l or l.Parent~=controlPart then if l then l:Destroy()end l=Instance.new(
'BodyVelocity')l.MaxForce=Vector3.new(1e9,1e9,1e9)l.Parent=controlPart end if not n or n.Parent~=controlPart then if n
then n:Destroy()end n=Instance.new('BodyGyro')n.MaxTorque=Vector3.new(1e9,1e9,1e9)n.D=100 n.Parent=controlPart end move=
Vector3.zero if UserInputService:IsKeyDown(Enum.KeyCode.W)then move=move+Vector3.new(0,0,-1)end if UserInputService:
IsKeyDown(Enum.KeyCode.S)then move=move+Vector3.new(0,0,1)end if UserInputService:IsKeyDown(Enum.KeyCode.A)then move=
move+Vector3.new(-1,0,0)end if UserInputService:IsKeyDown(Enum.KeyCode.D)then move=move+Vector3.new(1,0,0)end if
UserInputService:IsKeyDown(Enum.KeyCode.Space)then move=move+Vector3.new(0,1,0)end if UserInputService:IsKeyDown(Enum.
KeyCode.LeftControl)then move=move+Vector3.new(0,-1,0)end camCF=workspace.CurrentCamera.CFrame speed=Movement.Fly.Speed
or 120 if move.Magnitude>0 then l.Velocity=(camCF.LookVector*-move.Z+camCF.RightVector*move.X+Vector3.new(0,move.Y,0))*
speed else l.Velocity=Vector3.zero end n.CFrame=CFrame.new(controlPart.Position,controlPart.Position+camCF.LookVector)
hum.PlatformStand=not hum.Sit end)end MovementGroup:AddCheckbox('WalkspeedKeyToggle',{Text='Walkspeed',Default=false,
Callback=function(o)sprintEnabled=o end})MovementGroup:AddSlider('WalkspeedValue',{Text='Speed',Min=0,Max=500,Default=16
,Rounding=0,Suffix=' studs/s',Callback=function(o)Movement.Speed.Value=o end})MovementGroup:AddCheckbox(
'JumpPowerToggle',{Text='JumpPower',Default=false,Callback=function(o)jumpPowerEnabled=o local A=LocalPlayer.Character
local B=A and A:FindFirstChildOfClass('Humanoid')if not B then return end if o then i=B.UseJumpPower f=B.JumpPower
pcall(function()j=B.JumpHeight end)else if i~=nil then B.UseJumpPower=i else B.UseJumpPower=false end if f~=nil then B.
JumpPower=f end if j~=nil then pcall(function()B.JumpHeight=j end)end end end})MovementGroup:AddSlider('JumpPowerValue',
{Text='Jump Height',Min=0,Max=200,Default=50,Rounding=0,Callback=function(o)jumpPowerValue=o end})do local o,A=nil,game:
GetService('UserInputService')A.JumpRequest:Connect(function()if _G.infJump then local B=LocalPlayer.Character local C=B
and B:FindFirstChild('Humanoid')if C and C:GetState()~=Enum.HumanoidStateType.Jumping then C:ChangeState(Enum.
HumanoidStateType.Jumping)end end end)MovementGroup:AddCheckbox('InfiniteJump',{Text='Infinite Jump',Default=false,
Callback=function(B)_G.infJump=B end})local B=function(B)if o then o:Disconnect()o=nil end if B then o=RunService.
Stepped:Connect(function()local C=LocalPlayer.Character if C then for D,E in pairs(C:GetDescendants())do if E:IsA(
'BasePart')then E.CanCollide=false end end end end)end end MovementGroup:AddCheckbox('NoClip',{Text='No Clip',Default=
false,Callback=function(C)_G.noclip=C B(C)end})end MovementGroup:AddCheckbox('FlyToggle',{Text='Fly(fixing)',Default=
false,Callback=function(o)Movement.Fly.Enabled=o startFly()end})MovementGroup:AddSlider('FlySpeedValue',{Text=
'Fly Speed',Min=1,Max=1000,Default=120,Rounding=0,Suffix=' studs/s',Callback=function(o)Movement.Fly.Speed=o end})game:
GetService('RunService').RenderStepped:Connect(function()if not sprintEnabled then return end char=LocalPlayer.Character
if not char then return end hum=char:FindFirstChildOfClass('Humanoid')root=char:FindFirstChild('HumanoidRootPart')if not
hum or not root then return end dir=hum.MoveDirection if dir.Magnitude>0 then root.AssemblyLinearVelocity=Vector3.new(
dir.Unit.X*Movement.Speed.Value,root.AssemblyLinearVelocity.Y,dir.Unit.Z*Movement.Speed.Value)end end)game:GetService(
'RunService').Heartbeat:Connect(function()if not jumpPowerEnabled then return end local o=LocalPlayer.Character if not o
then return end local A=o:FindFirstChildOfClass('Humanoid')if not A then return end A.UseJumpPower=true A.JumpPower=
jumpPowerValue pcall(function()A.JumpHeight=jumpPowerValue/3.5 end)end)LocalPlayer=game:GetService('Players').
LocalPlayer UserInputService=game:GetService('UserInputService')RunService=game:GetService('RunService')ocnFlyChar=
LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()ocnFlyHum=ocnFlyChar:WaitForChild('Humanoid')ocnFlyRoot=
ocnFlyChar:WaitForChild('HumanoidRootPart')FLY_WALK_SPEED=200 FLY_ASCEND_SPEED=50 FLY_DESCEND_SPEED=50 FLY_TURN_SPEED=
0.15 ocnFlying=false ocnFlyAttach=nil ocnFlyVel=nil ocnLastTap=0 DOUBLE_TAP_TIME=0.3 ocnSpaceDown=false flyEnabled=false
local o=function(o)if not flyEnabled then if ocnFlying then ocnFlying=false ocnFlyHum:SetStateEnabled(Enum.
HumanoidStateType.Freefall,true)ocnFlyHum:SetStateEnabled(Enum.HumanoidStateType.Jumping,true)ocnFlyHum:SetStateEnabled(
Enum.HumanoidStateType.FallingDown,true)if ocnFlyVel then ocnFlyVel:Destroy()ocnFlyVel=nil end if ocnFlyAttach then
ocnFlyAttach:Destroy()ocnFlyAttach=nil end ocnFlyHum:ChangeState(Enum.HumanoidStateType.GettingUp)end return end
ocnFlying=o if o then ocnFlyHum:SetStateEnabled(Enum.HumanoidStateType.Freefall,false)ocnFlyHum:SetStateEnabled(Enum.
HumanoidStateType.Jumping,false)ocnFlyHum:SetStateEnabled(Enum.HumanoidStateType.FallingDown,false)ocnFlyHum:
ChangeState(Enum.HumanoidStateType.Running)ocnFlyAttach=Instance.new('Attachment')ocnFlyAttach.Parent=ocnFlyRoot
ocnFlyVel=Instance.new('LinearVelocity')ocnFlyVel.Attachment0=ocnFlyAttach ocnFlyVel.VelocityConstraintMode=Enum.
VelocityConstraintMode.Vector ocnFlyVel.MaxForce=math.huge ocnFlyVel.RelativeTo=Enum.ActuatorRelativeTo.World ocnFlyVel.
VectorVelocity=Vector3.zero ocnFlyVel.Parent=ocnFlyRoot else ocnFlyHum:SetStateEnabled(Enum.HumanoidStateType.Freefall,
true)ocnFlyHum:SetStateEnabled(Enum.HumanoidStateType.Jumping,true)ocnFlyHum:SetStateEnabled(Enum.HumanoidStateType.
FallingDown,true)if ocnFlyVel then ocnFlyVel:Destroy()ocnFlyVel=nil end if ocnFlyAttach then ocnFlyAttach:Destroy()
ocnFlyAttach=nil end ocnFlyHum:ChangeState(Enum.HumanoidStateType.GettingUp)end end _G.Brkhs=false fbexpConn=nil
function fbexp()if fbexpConn then fbexpConn:Disconnect()fbexpConn=nil end fbexpConn=workspace.ChildAdded:Connect(
function(A)if _G.Brkhs then if fbexpConn then fbexpConn:Disconnect()fbexpConn=nil end return end if A.Name=='Part'and(A.
Position-Vector3.new(263.4,-4.79,466.8)).Magnitude<=2 then _G.Brkhs=true Library:Notify({Title='Note!',Description=
'Destroyed Houses Barrier',Duration=3})for B,C in pairs(workspace.Plots:GetChildren())do barrier=C:FindFirstChild(
'Barrier')if barrier then for D,E in pairs(barrier:GetChildren())do if E:IsA('BasePart')and E.CanCollide==true then E.
CanCollide=false end end end end if fbexpConn then fbexpConn:Disconnect()fbexpConn=nil end end end)end function
breakhouse(A)if not A then return end _G.Brkhs=false fbexp()startTime=tick()repeat pcall(function()game:GetService(
'ReplicatedStorage').MenuToys.SpawnToyRemoteFunction:InvokeServer('BallSnowball',CFrame.new(263.5,-4.5,486.9),Vector3.
new(0,0,0))end)wStart=tick()repeat task.wait()until not LocalPlayer:FindFirstChild('CanSpawnToy')or LocalPlayer.
CanSpawnToy.Value or tick()-wStart>2 until _G.Brkhs or tick()-startTime>=10 if fbexpConn then fbexpConn:Disconnect()
fbexpConn=nil end end FlyGroup=Tabs.Player:AddLeftGroupbox('Fly','bird')BarrierGroup=Tabs.Defense:AddLeftGroupbox(
'House Barrier','house')do local A=game:GetService('Players')local B,C=A.LocalPlayer,game:GetService('ReplicatedStorage'
)game:GetService('Workspace')local D,E,F,G=BarrierGroup:AddLabel('Broken: False'),false,nil,false BarrierGroup:
AddCheckbox('DestroyBarrierHouse',{Text='Destroy Barrier (snowball)',Default=false,Callback=function(H)if H and G then
Library:Notify({Title='Already Broken',Description='Plots are already broken!',Duration=5})return end E=H if F then task
.cancel(F)F=nil end if H then local I=workspace:FindFirstChild(B.Name..'SpawnedInToys')if I then for J,K in ipairs(I:
GetChildren())do if K.Name=='BallSnowball'then C.MenuToys.DestroyToy:FireServer(K)end end end if not G then D:SetText(
'Broken: False')end F=task.spawn(function()local J,K=C:WaitForChild('MenuToys'),C:WaitForChild('GrabEvents'):
WaitForChild('SetNetworkOwner')C:WaitForChild('GrabEvents'):WaitForChild('DestroyGrabLine')local L=CFrame.new(
264.5792541503906,-5.477070331573486,433.4557800292969)local M=function()local M,N={},workspace:FindFirstChild(B.Name..
'SpawnedInToys')if N then for O,P in ipairs(N:GetChildren())do if P.Name=='BallSnowball'then table.insert(M,P)end end
end return M end local N=function()if not E then return end local N=B.Character and B.Character.PrimaryPart.Position or
Vector3.new(0,0,0)local O=CFrame.new(N)*CFrame.Angles(-0.807,-0.884,-0.679)task.spawn(function()J.SpawnToyRemoteFunction
:InvokeServer('BallSnowball',O,Vector3.new(0,-120.21099853515625,0))end)end local O=function(O)if not E then return end
local P=O:FindFirstChild('SoundPart')if P then task.spawn(function()K:FireServer(P,P.CFrame)end)end end local P=function
(P)if not E then return end for Q,S in ipairs(P)do task.spawn(function()for T,U in ipairs(S:GetDescendants())do if U:
IsA('BasePart')then U.CFrame=L end end end)end end local Q=function()if not E then return false end local Q=CFrame.new(
242.66055297851563,-9.196549415588379,444.3758850097656)J.SpawnToyRemoteFunction:InvokeServer('OvenDarkGray',Q,Vector3.
new(0,-74.0790023803711,0))task.wait(0.5)local S,T=workspace:FindFirstChild(B.Name..'SpawnedInToys'),nil if S then for U
,V in ipairs(S:GetChildren())do if V.Name=='OvenDarkGray'and V:GetAttribute('AtSpawned')==nil then T=V break end end end
local U=T~=nil if U then D:SetText('Broken: True')G=true Library:Notify({Title='Success!',Description=
'The plots have been broken successfully!',Duration=5})end return U end while E do local S=M()if#S<2 then if#S<1 then N(
)task.wait(0.02)end N()task.wait(0.02)S=M()end if#S==2 then for T,U in ipairs(S)do O(U)end P(S)local T=Q()if T then
break else task.wait(0.05)end end task.wait(0.05)end end)else local I=workspace:FindFirstChild(B.Name..'SpawnedInToys')
if I then for J,K in ipairs(I:GetChildren())do if K.Name=='BallSnowball'or K.Name=='OvenDarkGray'then C.MenuToys.
DestroyToy:FireServer(K)end end end if not G then D:SetText('Broken: False')end end end})end BarrierGroup:AddButton({
Text='Break House Barriers(Best)',Func=function()breakhouse('auto')end})BarrierGroup:AddToggle('AntiBarrier',{Text=
'Anti Barrier',Default=false,Callback=function(A)plots=workspace:FindFirstChild('Plots')if not plots then return end for
B,C in ipairs(plots:GetChildren())do barrierModel=C:FindFirstChild('Barrier')if barrierModel then for D,E in ipairs(
barrierModel:GetChildren())do if E:IsA('BasePart')and E.Name=='PlotBarrier'then E.CanCollide=not A end end end end end})
FlyGroup:AddCheckbox('FlyToggle',{Text='Enable Fly',Default=false,Callback=function(A)flyEnabled=A if not A and
ocnFlying then o(false)end end})FlyGroup:AddLabel(
[[Double-tap SPACE to toggle | WASD to walk | Hold SPACE to ascend | Hold CTRL to descend]])FlyGroup:AddSlider(
'FlyWalkSpeed',{Text='Walk Speed',Min=16,Max=500,Default=200,Rounding=0,Suffix=' studs/s',Callback=function(A)
FLY_WALK_SPEED=A end})FlyGroup:AddSlider('FlyAscendSpeed',{Text='Ascend Speed',Min=5,Max=200,Default=50,Rounding=0,
Suffix=' studs/s',Callback=function(A)FLY_ASCEND_SPEED=A end})FlyGroup:AddSlider('FlyDescendSpeed',{Text='Descend Speed'
,Min=5,Max=200,Default=50,Rounding=0,Suffix=' studs/s',Callback=function(A)FLY_DESCEND_SPEED=A end})UserInputService.
InputBegan:Connect(function(A,B)if B then return end if A.KeyCode==Enum.KeyCode.Space then now=tick()if now-ocnLastTap<
DOUBLE_TAP_TIME then o(not ocnFlying)end ocnLastTap=now ocnSpaceDown=true end end)UserInputService.InputEnded:Connect(
function(A)if A.KeyCode==Enum.KeyCode.Space then ocnSpaceDown=false end end)RunService.Heartbeat:Connect(function()if
not ocnFlying or not flyEnabled then return end cam=workspace.CurrentCamera moveDir=Vector3.zero if UserInputService:
IsKeyDown(Enum.KeyCode.W)then moveDir=moveDir+Vector3.new(cam.CFrame.LookVector.X,0,cam.CFrame.LookVector.Z)end if
UserInputService:IsKeyDown(Enum.KeyCode.S)then moveDir=moveDir-Vector3.new(cam.CFrame.LookVector.X,0,cam.CFrame.
LookVector.Z)end if UserInputService:IsKeyDown(Enum.KeyCode.A)then moveDir=moveDir-Vector3.new(cam.CFrame.RightVector.X,
0,cam.CFrame.RightVector.Z)end if UserInputService:IsKeyDown(Enum.KeyCode.D)then moveDir=moveDir+Vector3.new(cam.CFrame.
RightVector.X,0,cam.CFrame.RightVector.Z)end if moveDir.Magnitude>0 then moveDir=moveDir.Unit targetCFrame=CFrame.new(
ocnFlyRoot.Position,ocnFlyRoot.Position+moveDir)ocnFlyRoot.CFrame=ocnFlyRoot.CFrame:Lerp(targetCFrame,FLY_TURN_SPEED)end
vertY=0 if ocnSpaceDown then vertY=FLY_ASCEND_SPEED elseif UserInputService:IsKeyDown(Enum.KeyCode.LeftControl)then
vertY=-FLY_DESCEND_SPEED end ocnFlyVel.VectorVelocity=Vector3.new(moveDir.X*FLY_WALK_SPEED,vertY,moveDir.Z*
FLY_WALK_SPEED)ocnFlyHum:ChangeState(Enum.HumanoidStateType.Running)end)LocalPlayer.CharacterAdded:Connect(function(A)
ocnFlyChar=A ocnFlyHum=A:WaitForChild('Humanoid')ocnFlyRoot=A:WaitForChild('HumanoidRootPart')ocnFlying=false
ocnFlyAttach=nil ocnFlyVel=nil end)do local A=LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()local B=A:
WaitForChild('Humanoid')local C,D,E,F,G,H,I,J,K,L=B:WaitForChild('Animator'),{},nil,false,1,nil,nil,{},{},nil pcall(
function()J={['Crouch']=ReplicatedFirst:WaitForChild('Animations'):WaitForChild('Crouch'),['Fire Flail']=ReplicatedFirst
:WaitForChild('CatchFire'):WaitForChild('FireFlailAnimation'),['Flail']=ReplicatedFirst:WaitForChild('ThrowPlayers'):
WaitForChild('Flail'),['Type']=ReplicatedFirst:WaitForChild('Typing'):WaitForChild('Type')}for M in pairs(J)do table.
insert(K,M)end end)function stopFTAPTracks()local M=LocalPlayer.Character local N=M and M:FindFirstChildOfClass(
'Humanoid')if N then local O=N:FindFirstChildOfClass('Animator')or N for P,Q in pairs(O:GetPlayingAnimationTracks())do Q
:Stop(0.1)end end end function playFTAPAnim()if not Toggles.FTAPActiveToggle.Value then return end local M=LocalPlayer.
Character local N=M and M:FindFirstChildOfClass('Humanoid')if not N then return end local O=J[Options.FTAPPoseDrop.Value
]if O and O:IsA('Animation')then stopFTAPTracks()local P=N:FindFirstChildOfClass('Animator')or Instance.new('Animator',N
)L=P:LoadAnimation(O)L.Looped=true L:Play(0.1,1,G)end end if#K>0 then FunAnim:AddDropdown('FTAPPoseDrop',{Values=K,
Default=K[1],Text='Pose',Callback=function()if Toggles.FTAPActiveToggle and Toggles.FTAPActiveToggle.Value then
playFTAPAnim()end end})FunAnim:AddCheckbox('FTAPActiveToggle',{Text='Play Pose',Default=false,Callback=function(M)if M
then playFTAPAnim()else stopFTAPTracks()if L then L:Stop()L=nil end end end})FunAnim:AddSlider('FTAPRateSlider',{Text=
'Speed',Default=1,Min=0.1,Max=5,Rounding=1,Suffix='x',Callback=function(M)G=M if L and L.IsPlaying then L:AdjustSpeed(G)
end if E and E.IsPlaying then E:AdjustSpeed(G)end end})end local M,N={{name='Head Throw',id=35154961,speed=1,weight=1,
loopSpeed=1},{name='Floating Head',id=121572214,speed=1,weight=1},{name='Crouch',id=182724289,speed=1,weight=1},{name=
'Floor Crawl',id=282574440,speed=1,weight=1},{name='Dino Walk',id=204328711,speed=1,weight=1},{name='Jumping Jacks',id=
429681631,speed=1,weight=1},{name='Loop Head',id=35154961,speed=1,weight=1,loopSpeed=1e6},{name='Hero Jump',id=184574340
,speed=1,weight=1,loopSpeed=1},{name='Faint',id=181526230,speed=1,weight=1},{name='Floor Faint',id=181525546,speed=1,
weight=1,loopSpeed=2},{name='Super Faint',id=181525546,speed=0.5,weight=1,loopSpeed=40},{name='Levitate',id=313762630,
speed=1,weight=1},{name='Float Sit',id=179224234,speed=1,weight=1},{name='Weird Move',id=215384594,speed=1,weight=1},{
name='Clone Illusion',id=215384594,speed=1,weight=1,loopSpeed=1e7},{name='Glitch Levitate',id=313762630,speed=1,weight=1
,loopSpeed=1e7},{name='Full Punch',id=204062532,speed=1,weight=1,loopSpeed=1},{name='Bow Down',id=204292303,speed=1,
weight=1,loopSpeed=3},{name='Sword Slam',id=204295235,speed=1,weight=1,loopSpeed=1},{name='Loop Slam',id=204295235,speed
=1,weight=1,loopSpeed=1e4},{name='Mega Insane',id=184574340,speed=0.5,weight=1,loopSpeed=40},{name='Super Punch',id=
126753849,speed=1,weight=1,loopSpeed=3},{name='Full Swing',id=218504594,speed=1,weight=1,loopSpeed=1},{name=
'Arm Turbine',id=259438880,speed=1,weight=1,loopSpeed=1e3},{name='Barrel Roll',id=136801964,speed=1,weight=1,loopSpeed=1
},{name='Scared',id=180612465,speed=1,weight=1,loopSpeed=1},{name='Insane',id=33796059,speed=1,weight=1,loopSpeed=1e8},{
name='Arm Detach',id=33169583,speed=1,weight=1,loopSpeed=1e6},{name='Sword Slice',id=35978879,speed=1,weight=1},{name=
'Insane Arms',id=27432691,speed=1,weight=1,loopSpeed=1e4}},{{name='Dab',id=183412246,speed=1,weight=1,loopSpeed=1},{name
='Spinner',id=188632011,speed=1,weight=1,loopSpeed=2},{name='Moving Dance',id=429703734,speed=1,weight=1,loopSpeed=1},{
name='Spin Dance',id=429730430,speed=1,weight=1,loopSpeed=1},{name='Moon Dance',id=45834924,speed=1,weight=1,loopSpeed=1
},{name='Spin Dance 2',id=186934910,speed=1,weight=1,loopSpeed=1},{name='Thriller',id=27789359,speed=1,weight=1,
loopSpeed=1},{name='Robot',id=30196114,speed=1,weight=1,loopSpeed=1},{name='Shuffle',id=248263260,speed=1,weight=1,
loopSpeed=1},{name='Groove',id=33796059,speed=1,weight=1,loopSpeed=1},{name='Club',id=28488254,speed=1,weight=1,
loopSpeed=1},{name='Jump Dance',id=52155728,speed=1,weight=1,loopSpeed=1}}function stopAllTracks()for O,P in ipairs(D)do
pcall(function()P:Stop()P:Destroy()end)end D={}E=nil end function stopEverything()H=nil I=nil stopAllTracks()end
function playAnimation(O)stopEverything()local P,Q=true,Instance.new('Animation')Q.AnimationId='rbxassetid://'..O.id
local S=C:LoadAnimation(Q)E=S table.insert(D,S)function playOnce()if not P or E~=S then return end if not S.IsPlaying
then S:Play(0.1,O.weight or 1,(O.speed or 1)*G)end end if O.loopSpeed then S:Play(0.1,O.weight or 1,O.loopSpeed*G)task.
spawn(function()while P and E==S do task.wait()playOnce()end end)else S:Play(0.1,O.weight or 1,(O.speed or 1)*G)end
return function()P=false if E==S then E=nil end pcall(function()S:Stop()S:Destroy()end)end end local O,P={'None'},{
'None'}for Q,S in ipairs(M)do table.insert(O,S.name)end for Q,S in ipairs(N)do table.insert(P,S.name)end FunAnim:
AddDropdown('EmotePicker',{Values=O,Default='None',Text='Emote',Callback=function()local Q=Options.EmotePicker.Value
stopEverything()if Q=='None'then return end for S,T in ipairs(M)do if T.name==Q then H=playAnimation(T)return end end
end})FunAnim:AddDropdown('DancePicker',{Values=P,Default='None',Text='Dance',Callback=function()local Q=Options.
DancePicker.Value stopEverything()if Q=='None'then return end for S,T in ipairs(N)do if T.name==Q then I=playAnimation(T
)return end end end})FunAnim:AddSlider('AnimSpeedMultiplier',{Text='Animation Speed',Default=1,Min=0.1,Max=10,Rounding=1
,Suffix='x',Callback=function(Q)G=Q if L and L.IsPlaying then L:AdjustSpeed(Q)end if E and E.IsPlaying then E:
AdjustSpeed(Q)end end})local Q=Instance.new('Animation')Q.AnimationId='rbxassetid://18353618958'C:LoadAnimation(Q)local
S=Instance.new('Animation')S.AnimationId='rbxassetid://6980229055'C:LoadAnimation(S)local T=Instance.new('Animation')T.
AnimationId='rbxassetid://7047322890'C:LoadAnimation(T)local U=Instance.new('Animation')U.AnimationId=
'rbxassetid://33796059'local V=Instance.new('Animation')V.AnimationId='rbxassetid://95415492'local W=Instance.new(
'Animation')W.AnimationId='rbxassetid://165167557'local X=Instance.new('Animation')X.AnimationId='rbxassetid://97170520'
local Y=Instance.new('Animation')Y.AnimationId='rbxassetid://15517864808'local Z=B:LoadAnimation(U)B:LoadAnimation(V)B:
LoadAnimation(W)B:LoadAnimation(X)local _=B:LoadAnimation(Y)function playIdle()task.spawn(function()while F do if B.
MoveDirection.Magnitude==0 and B:GetState()~=Enum.HumanoidStateType.Jumping and B:GetState()~=Enum.HumanoidStateType.
Freefall then Z:Play(0.1,1,100*G)task.wait(0.2)Z:Stop()task.wait(1.5)_:Play()_:AdjustSpeed(5*G)task.wait(0.3)_:Stop()
task.wait(1.5)else task.wait(0.1)end end end)end function stopIdle()Z:Stop()_:Stop()end LocalPlayer.CharacterAdded:
Connect(function(aa)B=aa:WaitForChild('Humanoid')C=aa:WaitForChild('Humanoid'):WaitForChild('Animator')stopAllTracks()F=
false pcall(function()Options.EmotePicker:SetValue('None')Options.DancePicker:SetValue('None')end)task.delay(1.5,
function()if Toggles.FTAPActiveToggle and Toggles.FTAPActiveToggle.Value then playFTAPAnim()end end)end)end function
stopIdle()idleTrack:Stop()newIdleTrack:Stop()end LocalPlayer.CharacterAdded:Connect(function(aa)humanoid=aa:
WaitForChild('Humanoid')animator=aa:WaitForChild('Humanoid'):WaitForChild('Animator')stopAllTracks()psychoActive=false
pcall(function()Options.EmotePicker:SetValue('None')Options.DancePicker:SetValue('None')end)task.delay(1.5,function()if
Toggles.FTAPActiveToggle and Toggles.FTAPActiveToggle.Value then playFTAPAnim()end end)end)CosmeticGroup=Tabs.Player:
AddRightGroupbox('Cosmetics','sparkle')FakeCosmeticsEnabled=false RespawnPersist=false CosmeticChoice='Both'
KORBLOX_MESH_ID='101851696'KORBLOX_TEX_ID='101851254'HEADLESS_MESH_ID='134082579'HEADLESS_TEX_ID='134082627'
SavedHeadData=nil function SnapshotHead()char=LocalPlayer.Character if not char then return end head=char:
FindFirstChild('Head')if not head then return end SavedHeadData={Transparency=head.Transparency,BrickColor=head.
BrickColor,Material=head.Material,Meshes={},Decals={}}for aa,A in ipairs(head:GetChildren())do if A:IsA('SpecialMesh')
then table.insert(SavedHeadData.Meshes,{MeshType=A.MeshType,MeshId=A.MeshId,TextureId=A.TextureId,Scale=A.Scale,Offset=A
.Offset,VertexColor=A.VertexColor,Name=A.Name})elseif A:IsA('Decal')then table.insert(SavedHeadData.Decals,{Texture=A.
Texture,Face=A.Face,Transparency=A.Transparency,Name=A.Name})end end end function WearHeadless()char=LocalPlayer.
Character if not char then return end head=char:FindFirstChild('Head')if not head then return end SnapshotHead()for aa,A
in ipairs(head:GetChildren())do if A:IsA('Decal')or A:IsA('SpecialMesh')then A:Destroy()end end mesh=Instance.new(
'SpecialMesh')mesh.MeshType=Enum.MeshType.FileMesh mesh.MeshId='rbxassetid://'..HEADLESS_MESH_ID mesh.TextureId=
'rbxassetid://'..HEADLESS_TEX_ID mesh.Scale=Vector3.new(1.25,1.25,1.25)mesh.Name='PhantomHeadlessMesh'mesh.Parent=head
head.Transparency=0.1 head.BrickColor=BrickColor.new('Really black')head.Material=Enum.Material.Plastic end function
WearKorblox()char=LocalPlayer.Character if not char then return end rleg=char:FindFirstChild('Right Leg')or char:
FindFirstChild('RightLowerLeg')if not rleg then return end old=char:FindFirstChild('PhantomKorbloxLeg')if old then old:
Destroy()end fakeLeg=Instance.new('Part')fakeLeg.Name='PhantomKorbloxLeg'fakeLeg.Size=rleg.Size fakeLeg.CFrame=rleg.
CFrame fakeLeg.Anchored=false fakeLeg.CanCollide=false fakeLeg.Transparency=0 fakeLeg.BrickColor=BrickColor.new(
'Really black')fakeLeg.Material=Enum.Material.Plastic fakeLeg.Parent=char mesh=Instance.new('SpecialMesh')mesh.MeshType=
Enum.MeshType.FileMesh mesh.MeshId='rbxassetid://'..KORBLOX_MESH_ID mesh.TextureId='rbxassetid://'..KORBLOX_TEX_ID mesh.
Scale=Vector3.new(1,1,1)mesh.Parent=fakeLeg weld=Instance.new('WeldConstraint')weld.Part0=rleg weld.Part1=fakeLeg weld.
Parent=rleg rleg.Transparency=1 end function ApplyCosmetics()char=LocalPlayer.Character if not char then return end if
CosmeticChoice=='Headless'then WearHeadless()elseif CosmeticChoice=='Korblox'then WearKorblox()elseif CosmeticChoice==
'Both'then WearHeadless()WearKorblox()end end function StripCosmetics()char=LocalPlayer.Character if not char then
return end head=char:FindFirstChild('Head')if head then m=head:FindFirstChild('PhantomHeadlessMesh')if m then m:Destroy(
)end if SavedHeadData then head.Transparency=SavedHeadData.Transparency head.BrickColor=SavedHeadData.BrickColor head.
Material=SavedHeadData.Material for aa,A in ipairs(SavedHeadData.Meshes)do mesh=Instance.new('SpecialMesh')mesh.MeshType
=A.MeshType mesh.MeshId=A.MeshId mesh.TextureId=A.TextureId mesh.Scale=A.Scale mesh.Offset=A.Offset mesh.VertexColor=A.
VertexColor mesh.Name=A.Name mesh.Parent=head end for aa,A in ipairs(SavedHeadData.Decals)do decal=Instance.new('Decal')
decal.Texture=A.Texture decal.Face=A.Face decal.Transparency=A.Transparency decal.Name=A.Name decal.Parent=head end
SavedHeadData=nil else head.Transparency=0 end end rleg=char:FindFirstChild('Right Leg')or char:FindFirstChild(
'RightLowerLeg')if rleg then rleg.Transparency=0 w=rleg:FindFirstChildOfClass('WeldConstraint')if w then w:Destroy()end
end fakeleg=char:FindFirstChild('PhantomKorbloxLeg')if fakeleg then fakeleg:Destroy()end end LocalPlayer.CharacterAdded:
Connect(function()task.wait(1)SavedHeadData=nil if FakeCosmeticsEnabled and RespawnPersist then ApplyCosmetics()end end)
CosmeticGroup:AddCheckbox('CosmeticMasterToggle',{Text='Enable Cosmetics',Default=false,Callback=function(aa)
FakeCosmeticsEnabled=aa if aa then ApplyCosmetics()else StripCosmetics()end end})CosmeticGroup:AddDropdown(
'CosmeticTypeDrop',{Text='Style',Values={'Headless','Korblox','Both'},Default='Both',Callback=function(aa)CosmeticChoice
=aa if FakeCosmeticsEnabled then StripCosmetics()ApplyCosmetics()end end})CosmeticGroup:AddCheckbox(
'CosmeticRespawnToggle',{Text='Re-apply on Respawn',Default=false,Callback=function(aa)RespawnPersist=aa end})EnvBox=
Tabs.Player:AddRightGroupbox('Sounds','audio-lines')EnvBox:AddDivider()Players=game:GetService('Players')
UserInputService=game:GetService('UserInputService')SoundService=game:GetService('SoundService')TextChatService=game:
GetService('TextChatService')player=Players.LocalPlayer soundMap={['Normal Typing']='rbxassetid://72486459002567',[
'Thocky Typing']='rbxassetid://76696739955497',['Clean Typing']='rbxassetid://131944804697356',['Clicky Typing']=
'rbxassetid://9116149587'}currentSoundId=soundMap['Normal Typing']typingSound=Instance.new('Sound')typingSound.SoundId=
currentSoundId typingSound.Looped=true typingSound.Volume=1 typingSound.Parent=SoundService typing=false enabled=true
volume=100 function startSound()if not enabled then return end if typingSound.SoundId and typingSound.SoundId~=''then if
not typingSound.IsPlaying then typingSound:Play()end end end function stopSound()typingSound:Stop()end UserInputService.
TextBoxFocused:Connect(function()typing=true startSound()end)UserInputService.TextBoxFocusReleased:Connect(function()
typing=false stopSound()end)EnvBox:AddCheckbox('TypingSoundToggle',{Text='Typing Sound',Default=true,Callback=function(
aa)enabled=aa if not aa then stopSound()end end})EnvBox:AddSlider('TypingVolumeSlider',{Text='Volume',Default=100,Min=0,
Max=100,Rounding=0,Suffix='%',Callback=function(aa)volume=aa typingSound.Volume=aa/100 end})EnvBox:AddDropdown(
'TypingSoundDropdown',{Text='Typing Sound',Default='Normal Typing',Values={'Normal Typing','Thocky Typing',
'Clean Typing','Clicky Typing'},Callback=function(aa)id=soundMap[aa]if not id then return end currentSoundId=id
typingSound:Stop()typingSound.SoundId=id typingSound.TimePosition=0 end})DefL=Tabs.Defense:AddLeftGroupbox('Antis',
'heart-minus')antiGrabV1Active=false antiGrabV1Task=nil DefL:AddCheckbox('AntiGrabV1',{Text='Anti Grab(Ags)',Default=
false,Callback=function(aa)antiGrabV1Active=aa if aa then antiGrabV1Task=task.spawn(function()while antiGrabV1Active do
pcall(function()plr=game:GetService('Players').LocalPlayer isHeld=plr:FindFirstChild('IsHeld')if isHeld and isHeld.Value
then char=plr.Character if char then hum=char:FindFirstChild('Humanoid')hrp=char:FindFirstChild('HumanoidRootPart')if
hum and hrp then game:GetService('ReplicatedStorage').CharacterEvents.Struggle:FireServer(plr)game.ReplicatedStorage.
CharacterEvents.RagdollRemote:FireServer(hrp,0.00000000001)if hum.Sit then hum.Sit=false end end end end end)task.wait(
0.05)end end)else if antiGrabV1Task then task.cancel(antiGrabV1Task)antiGrabV1Task=nil end end end})antiGrabV2Active=
false antiGrabV2Task=nil DefL:AddCheckbox('AntiGrabV2',{Text='Anti Grab [Best] (seatless gucci)',Default=false,Callback=
function(aa)antiGrabV2Active=aa if aa then antiGrabV2Task=task.spawn(function()hkAGSt=nil hkAGModel=nil hkPlot=nil while
antiGrabV2Active do pcall(function()plr=game:GetService('Players').LocalPlayer for A,B in pairs(workspace.Plots:
GetChildren())do for C,D in pairs(B.PlotSign.ThisPlotsOwners:GetChildren())do if D.Value==plr.Name then hkPlot=B.Name
end end for C,D in pairs(B.PlotSign:GetChildren())do if D.Name=='Sign'then if D.Screen.SurfaceGui.Frame.Visible and D.
Screen.SurfaceGui.Frame.PlayerDisplayName.Text==plr.DisplayName then hkPlot=B.Name end end end end hkAGModel=workspace[
plr.Name..'SpawnedInToys']:FindFirstChild('InstrumentWoodwindOcarina')or(hkPlot and workspace.PlotItems[hkPlot]:
FindFirstChild('InstrumentWoodwindOcarina'))if hkAGModel then if plr.Character then for A,B in pairs(plr.Character:
GetChildren())do if B:FindFirstChild('PartOwner')and B.PartOwner.Value~=''then if hkAGModel:FindFirstChild('HoldPart')
and hkAGModel.HoldPart:FindFirstChild('HoldItemRemoteFunction')then task.spawn(function()hkAGModel.HoldPart.
HoldItemRemoteFunction:InvokeServer(hkAGModel,plr.Character)end)game.ReplicatedStorage.MenuToys.DestroyToy:FireServer(
hkAGModel)if plr.Character:FindFirstChild('Humanoid')then plr.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.
Jumping,true)plr.Character.Humanoid.AutoRotate=true end B.PartOwner.Value=''if plr.Character.Humanoid.Sit then plr.
Character.Humanoid.Sit=false end end end end end else if plr.Character and plr:FindFirstChild('CanSpawnToy')and plr.
CanSpawnToy.Value and not hkAGSt then hkAGSt=tick()task.spawn(function()game.ReplicatedStorage.MenuToys.
SpawnToyRemoteFunction:InvokeServer('InstrumentWoodwindOcarina',CFrame.new(1e5,1e5,1e5),Vector3.new(0,0,0))end)elseif
hkAGSt and tick()-hkAGSt>1 and not workspace[plr.Name..'SpawnedInToys']:FindFirstChild('InstrumentWoodwindOcarina')then
hkAGSt=nil end grabbed=false if plr.Character then for A,B in pairs(plr.Character:GetChildren())do if B:FindFirstChild(
'PartOwner')and B.PartOwner.Value~=''then grabbed=true end end end if grabbed then game.ReplicatedStorage.
CharacterEvents.Struggle:FireServer(plr)if plr.Character and plr.Character:FindFirstChild('Humanoid')and plr.Character:
FindFirstChild('HumanoidRootPart')then game.ReplicatedStorage.CharacterEvents.RagdollRemote:FireServer(plr.Character.
HumanoidRootPart,0.00000000001)for A,B in ipairs(plr.Character.Humanoid:GetPlayingAnimationTracks())do if B.Animation.
AnimationId=='rbxassetid://7047322890'then B:Stop()end end end end end if plr.Character and plr.Character:
FindFirstChild('Humanoid')and antiGrabV2Active then for A,B in ipairs(plr.Character.Humanoid:GetPlayingAnimationTracks()
)do if B.Animation.AnimationId=='rbxassetid://7047322890'then B:Stop()end end end end)task.wait()end end)else if
antiGrabV2Task then task.cancel(antiGrabV2Task)antiGrabV2Task=nil end end end})antiGrabStruggleActive=false
antiGrabStruggleConn=nil antiGrabStruggleHeldConn=nil antiGrabStruggleSitConn=nil local aa=function()if
antiGrabStruggleConn then antiGrabStruggleConn:Disconnect()antiGrabStruggleConn=nil end if antiGrabStruggleHeldConn then
antiGrabStruggleHeldConn:Disconnect()antiGrabStruggleHeldConn=nil end if antiGrabStruggleSitConn then
antiGrabStruggleSitConn:Disconnect()antiGrabStruggleSitConn=nil end local aa=LocalPlayer.Character local A=aa and aa:
FindFirstChild('HumanoidRootPart')if A then A.Anchored=false pcall(function()A.AssemblyLinearVelocity=Vector3.zero end)
end end local A=function(A)if not A then return end local B,C=A:FindFirstChildOfClass('Humanoid')or A:WaitForChild(
'Humanoid',5),A:FindFirstChild('HumanoidRootPart')or A:WaitForChild('HumanoidRootPart',5)if not B or not C then return
end if antiGrabStruggleSitConn then antiGrabStruggleSitConn:Disconnect()end antiGrabStruggleSitConn=B:
GetPropertyChangedSignal('Sit'):Connect(function()if not antiGrabStruggleActive then return end if B.Sit then local D=B.
SeatPart local E=D and D.Parent and D.Parent.Name if E~='CreatureBlobman'then B:SetStateEnabled(Enum.HumanoidStateType.
Jumping,true)B.Sit=false end end end)end DefL:AddCheckbox('AntiGrabStruggle',{Text='Anti Grab [Struggle]',Default=false,
Callback=function(B)antiGrabStruggleActive=B aa()if not B then return end local C=LocalPlayer:FindFirstChild('IsHeld')if
not C then C=LocalPlayer:WaitForChild('IsHeld',5)end local D=function()if not antiGrabStruggleActive then return end if
not C or not C.Value then return end local D=LocalPlayer.Character local E=D and D:FindFirstChild('HumanoidRootPart')if
not E then return end if antiGrabStruggleConn then antiGrabStruggleConn:Disconnect()end antiGrabStruggleConn=RunService.
Heartbeat:Connect(function()if not antiGrabStruggleActive then if antiGrabStruggleConn then antiGrabStruggleConn:
Disconnect()antiGrabStruggleConn=nil end return end local F=LocalPlayer.Character local G=F and F:FindFirstChild(
'HumanoidRootPart')if not G then return end if C.Value then G.AssemblyLinearVelocity=Vector3.zero G.
AssemblyAngularVelocity=Vector3.zero G.Anchored=true pcall(function()ReplicatedStorage.CharacterEvents.Struggle:
FireServer(LocalPlayer)end)pcall(function()ReplicatedStorage.CharacterEvents.RagdollRemote:FireServer(G,0)end)else G.
Anchored=false G.AssemblyLinearVelocity=Vector3.zero if antiGrabStruggleConn then antiGrabStruggleConn:Disconnect()
antiGrabStruggleConn=nil end end end)end if C then antiGrabStruggleHeldConn=C.Changed:Connect(function(E)if E then D()
end end)if C.Value then D()end end if LocalPlayer.Character then A(LocalPlayer.Character)end LocalPlayer.CharacterAdded:
Connect(function(E)if not antiGrabStruggleActive then return end task.wait(0.3)A(E)if C and C.Value then D()end end)end}
)antiGrabVHSActive=false antiGrabVHSProcessed=false antiGrabVHSConns={}antiGrabVHSMoveConn=nil antiGrabVHSRagdollCount=0
local B=function()for B,C in ipairs(antiGrabVHSConns)do pcall(function()C:Disconnect()end)end antiGrabVHSConns={}if
antiGrabVHSMoveConn then antiGrabVHSMoveConn:Disconnect()antiGrabVHSMoveConn=nil end antiGrabVHSProcessed=false local B=
LocalPlayer.Character local C=B and B:FindFirstChild('HumanoidRootPart')if C then C.Anchored=false end end local C=
function(C,D,E)if not antiGrabVHSActive then return end if not C or not D or not E then return end D.Sit=false pcall(
function()ReplicatedStorage.CharacterEvents.Struggle:FireServer(LocalPlayer)end)if antiGrabVHSRagdollCount<100 then
pcall(function()ReplicatedStorage.CharacterEvents.RagdollRemote:FireServer(C,0)end)antiGrabVHSRagdollCount+=1 end if
antiGrabVHSProcessed then return end antiGrabVHSProcessed=true task.spawn(function()C.Anchored=true local F=LocalPlayer:
FindFirstChild('IsHeld')while antiGrabVHSActive and F and not F.Value do task.wait()end if antiGrabVHSMoveConn then
antiGrabVHSMoveConn:Disconnect()end antiGrabVHSMoveConn=RunService.RenderStepped:Connect(function()if not
antiGrabVHSActive or not C.Parent or not D.Parent then return end local G=D.MoveDirection if G.Magnitude>0 then C.CFrame
=C.CFrame+G*0.3 end end)while antiGrabVHSActive and F and F.Value do task.wait()end if antiGrabVHSMoveConn then
antiGrabVHSMoveConn:Disconnect()antiGrabVHSMoveConn=nil end if C and C.Parent then C.Anchored=false end
antiGrabVHSProcessed=false end)end local D=function(D)if not D then return end local E,F,G=D:WaitForChild(
'HumanoidRootPart',5),D:WaitForChild('Humanoid',5),D:WaitForChild('Head',5)if not E or not F or not G then return end
local H=G.ChildAdded:Connect(function(H)if H.Name=='PartOwner'and antiGrabVHSActive then C(E,F,G)end end)table.insert(
antiGrabVHSConns,H)if G:FindFirstChild('PartOwner')and antiGrabVHSActive then C(E,F,G)end end DefL:AddCheckbox(
'AntiGrabVHS',{Text='Anti Grab [Best] [VHS]',Default=false,Callback=function(E)antiGrabVHSActive=E B()
antiGrabVHSRagdollCount=0 if not E then return end task.spawn(function()while antiGrabVHSActive do
antiGrabVHSRagdollCount=0 task.wait(1)end end)if LocalPlayer.Character then D(LocalPlayer.Character)end local F=
LocalPlayer.CharacterAdded:Connect(function(F)if not antiGrabVHSActive then return end task.wait(0.2)D(F)end)table.
insert(antiGrabVHSConns,F)end})do local E={enabled=false,remotes={},parts={},conns={}}local F=function(F)if E.remotes[F]
then return E.remotes[F]end for G,H in ipairs(ReplicatedStorage:GetDescendants())do if H.Name==F and H:IsA('RemoteEvent'
)then E.remotes[F]=H return H end end end local G=function()if not E.enabled then return end if not E.parts.IsHeld or
not E.parts.IsHeld.Value then return end if not E.parts.Root or not E.parts.Humanoid then return end local G,H=E.parts.
Root,E.parts.Humanoid G.Anchored=true pcall(function()ReplicatedStorage.GrabEvents.SetNetworkOwner:FireServer(G,G.CFrame
)end)G.Massless=true G.CanCollide=false G.CanQuery=false G.AssemblyLinearVelocity=Vector3.zero G.AssemblyAngularVelocity
=Vector3.zero local I,J=F('Struggle'),F('RagdollRemote')if I then pcall(function()I:FireServer(LocalPlayer)end)end if J
then pcall(function()J:FireServer(G,0)end)end if E.parts.originalGrabPosition then G.CFrame=E.parts.originalGrabPosition
end H:ChangeState(Enum.HumanoidStateType.Physics)H.Sit=false H.PlatformStand=false if H.MoveDirection.Magnitude>0 then G
.CFrame=G.CFrame+H.MoveDirection*0.25 end end local H=function()if not E.enabled then return end local H=E.parts.IsHeld
if not H then return end if H.Value then if E.parts.Root then E.parts.originalGrabPosition=E.parts.Root.CFrame E.parts.
Root.Anchored=true end if not E.conns.heartbeat then E.conns.heartbeat=RunService.Heartbeat:Connect(G)end else if E.
conns.heartbeat then E.conns.heartbeat:Disconnect()E.conns.heartbeat=nil end if E.parts.Root then local I=E.parts.Root I
.Anchored=false I.Massless=false I.CanCollide=true I.CanQuery=true I.AssemblyLinearVelocity=Vector3.zero I.
AssemblyAngularVelocity=Vector3.zero end if E.parts.Humanoid then E.parts.Humanoid:ChangeState(Enum.HumanoidStateType.
Running)end E.parts.originalGrabPosition=nil end end local I=function(I)if not I then return end E.parts.Character=I E.
parts.Root=I:WaitForChild('HumanoidRootPart',5)E.parts.Humanoid=I:WaitForChild('Humanoid',5)end local J=function()if E.
conns.heartbeat then E.conns.heartbeat:Disconnect()E.conns.heartbeat=nil end if E.conns.heldChanged then E.conns.
heldChanged:Disconnect()E.conns.heldChanged=nil end if E.conns.charAdded then E.conns.charAdded:Disconnect()E.conns.
charAdded=nil end if E.parts.Root then E.parts.Root.Anchored=false E.parts.Root.Massless=false E.parts.Root.CanCollide=
true E.parts.Root.CanQuery=true end E.parts.originalGrabPosition=nil end DefL:AddCheckbox('AntiGrabATP',{Text=
'Anti Grab [atp]',Default=false,Callback=function(K)J()E.enabled=K if not K then return end E.parts.IsHeld=LocalPlayer:
FindFirstChild('IsHeld')or LocalPlayer:WaitForChild('IsHeld',5)if LocalPlayer.Character then I(LocalPlayer.Character)end
E.conns.charAdded=LocalPlayer.CharacterAdded:Connect(I)if E.parts.IsHeld then E.conns.heldChanged=E.parts.IsHeld:
GetPropertyChangedSignal('Value'):Connect(H)H()end end})end gucciRunId=0 gucciActive=false gucciTask=nil
checkGucciSeatTask=nil local E=function(E,F,G)return E:FindFirstChild(F)or E:WaitForChild(F,G or 3)end local F=function(
F,G,H)ToySpawn=game:GetService('ReplicatedStorage').MenuToys.SpawnToyRemoteFunction InPlot,InOwnerPlot,CanSpawn=
LocalPlayer.InPlot,LocalPlayer.InOwnedPlot,LocalPlayer.CanSpawnToy while InPlot.Value and not InOwnerPlot.Value and not
CanSpawn.Value do task.wait(0.01)end task.spawn(function()ToySpawn:InvokeServer(F,G,H or Vector3.new())end)BackPack=
workspace:FindFirstChild(LocalPlayer.Name..'SpawnedInToys')local I BackPack.ChildAdded:Once(function(J)if J.Name==F and
J:IsA('Model')then I=J end end)time=tick()while not I do if tick()-time<2 then task.wait(0.01)else return false end end
return I end local G=function()if not gucciActive then return end gucciRunId=gucciRunId+1 MyId=gucciRunId char=
LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()hum=E(char,'Humanoid')hum.Sit=true task.wait(0.02)hum.Sit=
false task.wait(0.02)task.spawn(function()time=tick()while tick()-time<0.8 do for G,H in pairs(char:GetChildren())do if
H:IsA('BasePart')then H.Velocity=Vector3.new()end end task.wait(0.01)end end)autoGucciT,sitJumpT,Blob,BHead=true,false,
nil,nil task.spawn(function()while not Blob and MyId==gucciRunId do task.wait(0.01)end if MyId~=gucciRunId then return
end BHead=E(Blob,'Head')HitBox=E(Blob,'GrabbableHitbox')while MyId==gucciRunId and BHead and(not BHead:FindFirstChild(
'PartOwner')or BHead.PartOwner.Value~=LocalPlayer.Name)do if HitBox then game:GetService('ReplicatedStorage').GrabEvents
.SetNetworkOwner:FireServer(HitBox,HitBox.CFrame)end task.wait(0.01)end end)hrp=E(char,'HumanoidRootPart')Blob=F(
'CreatureBlobman',hrp.CFrame*CFrame.new(0,0,-5),Vector3.new(0,-15.716,0))if not Blob then return end Seat=E(Blob,
'VehicleSeat')task.defer(function()if not(char or hum)then return end startTime=tick()while autoGucciT and MyId==
gucciRunId and tick()-startTime<0.3 do if Blob and Blob.Parent then if Seat and Seat.Parent and Seat.Occupant~=hum then
Seat:Sit(hum)end end task.wait(0.03)if char and hum and hum.Parent then hum:ChangeState(Enum.HumanoidStateType.Jumping)
end task.wait(0.03)end autoGucciT=false sitJumpT=false end)sitJumpT=true task.defer(function()while sitJumpT and MyId==
gucciRunId do if char and hrp and hrp.Parent then game:GetService('ReplicatedStorage').CharacterEvents.RagdollRemote:
FireServer(hrp,0.095)end task.wait(0.01)end end)local G task.wait(0.4)if MyId~=gucciRunId then return end hum.Sit=false
Blob.Name='Gucci'BackPack=workspace:FindFirstChild(LocalPlayer.Name..'SpawnedInToys')for H,I in pairs(BackPack:
GetChildren())do if I.Name=='Gucci'then G=H break end end for H,I in pairs(Blob:GetChildren())do if I:IsA('BasePart')
then I.CanCollide=false I.CanTouch=false I.CanQuery=false end end task.defer(function()while MyId==gucciRunId and Blob
and BHead do BHead.CFrame=CFrame.new(BHead.Position.X,1e5,BHead.Position.Z)task.wait(0.01)end end)success,contents=
pcall(function()return LocalPlayer.PlayerGui.MenuGui.Menu.TabContents.ToyDestroy.Contents end)if success and contents
and G then for H,I in ipairs(contents:GetChildren())do if I.Name=='CreatureBlobman'and H==G then view=I.ViewItemButton
view.Text='GUCCI'view.TextScaled=true view.LowResImage.Image=''end end end end local H=DefL:AddCheckbox('GucciAntiGrab',
{Text='Gucci Anti Grab',Default=false,Callback=function(H)gucciActive=H if gucciTask then task.cancel(gucciTask)
gucciTask=nil end if checkGucciSeatTask then task.cancel(checkGucciSeatTask)checkGucciSeatTask=nil end if not H then
BackPack=workspace:FindFirstChild(LocalPlayer.Name..'SpawnedInToys')if BackPack then gucci=BackPack:FindFirstChild(
'Gucci')if gucci then pcall(function()game:GetService('ReplicatedStorage').MenuToys.DestroyToy:FireServer(gucci)end)end
for I,J in pairs(BackPack:GetChildren())do if J.Name=='Gucci'or J.Name=='CreatureBlobman'then pcall(function()game:
GetService('ReplicatedStorage').MenuToys.DestroyToy:FireServer(J)end)end end end return end gucciTask=task.spawn(
function()while gucciActive do BackPack=workspace:FindFirstChild(LocalPlayer.Name..'SpawnedInToys')gucci=BackPack and
BackPack:FindFirstChild('Gucci')if not gucci then G()end task.wait(0.5)end end)checkGucciSeatTask=task.spawn(function()
while gucciActive do char=LocalPlayer.Character hum=char and char:FindFirstChild('Humanoid')if hum and hum.SeatPart then
seatParent=hum.SeatPart.Parent if seatParent and(seatParent.Name=='Gucci'or seatParent.Name=='CreatureBlobman')then
isOurGucci=false BackPack=workspace:FindFirstChild(LocalPlayer.Name..'SpawnedInToys')if BackPack then for I,J in pairs(
BackPack:GetChildren())do if J==seatParent then isOurGucci=true break end end end if isOurGucci then pcall(function()
game:GetService('ReplicatedStorage').MenuToys.DestroyToy:FireServer(seatParent)end)task.wait(0.2)if gucciActive then G()
end end end end task.wait(0.3)end end)end})H:AddKeyPicker('GucciKeybind',{Text='Gucci Keybind',Default='G',Mode='Toggle'
})autoGucciActive=false autoGucciTask=nil trainLoopConnection=nil trainJumpCounter=0 trainRootPos=nil local I=function()
if trainLoopConnection then trainLoopConnection:Disconnect()trainLoopConnection=nil end end local J=function()runService
=game:GetService('RunService')character=LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()humanoid=character:
WaitForChild('Humanoid')rootPart=character:WaitForChild('HumanoidRootPart')trainRootPos=rootPart.Position trainObject=
workspace:FindFirstChild('Map')if trainObject then trainObject=trainObject:FindFirstChild('AlwaysHereTweenedObjects')end
train=trainObject and trainObject:FindFirstChild('Train')trainSeat=nil if train then for J,K in ipairs(train:
GetDescendants())do if K:IsA('Seat')then trainSeat=K break end end end if not train or not trainSeat then return end
rootPart.CFrame=trainSeat.CFrame+Vector3.new(0,2,0)trainSeat:Sit(humanoid)humanoid:GetPropertyChangedSignal('Jump'):
Connect(function()if(humanoid.Jump and humanoid.Sit)then trainJumpCounter=15 trainRootPos=rootPart.Position end end)if
trainLoopConnection then trainLoopConnection:Disconnect()end trainLoopConnection=runService.Heartbeat:Connect(function()
if(not rootPart or not humanoid)then return end pcall(function()game:GetService('ReplicatedStorage').CharacterEvents.
RagdollRemote:FireServer(rootPart,0)end)if(trainJumpCounter>0)then rootPart.CFrame=CFrame.new(trainRootPos)
trainJumpCounter=trainJumpCounter-1 end end)task.spawn(function()while humanoid.Sit do task.wait(1)end task.wait(0.5)
rootPart.CFrame=CFrame.new(trainRootPos)end)end DefL:AddCheckbox('AutoGucciTrain',{Text=
'Auto Gucci (Train) [invis] [OP]',Default=false,Callback=function(K)autoGucciActive=K if K then J()autoGucciTask=task.
spawn(function()while autoGucciActive do pcall(function()trainObject=workspace:FindFirstChild('Map')if trainObject then
trainObject=trainObject:FindFirstChild('AlwaysHereTweenedObjects')end train=trainObject and trainObject:FindFirstChild(
'Train')if not train then I()attempts=0 repeat task.wait(0.2)attempts=attempts+1 trainObject=workspace:FindFirstChild(
'Map')if trainObject then trainObject=trainObject:FindFirstChild('AlwaysHereTweenedObjects')end until(trainObject and
trainObject:FindFirstChild('Train'))or(attempts>25)or not autoGucciActive if(autoGucciActive and trainObject and
trainObject:FindFirstChild('Train'))then J()end end end)task.wait(0.5)end end)else autoGucciActive=false I()if
autoGucciTask then task.cancel(autoGucciTask)autoGucciTask=nil end end end})DefL:AddLabel(
'Antis Extras ----------------')antiOwnershipActive=false antiOwnershipTask=nil DefL:AddCheckbox('AntiOwnership',{Text=
'Anti Ownership',Default=false,Callback=function(K)antiOwnershipActive=K if K then antiOwnershipTask=task.spawn(function
()Struggle=game:GetService('ReplicatedStorage').CharacterEvents.Struggle while antiOwnershipActive do pcall(function()
character=LocalPlayer.Character if character and character:FindFirstChild('Head')then head=character.Head if head:
FindFirstChild('PartOwner')then Struggle:FireServer(LocalPlayer)for L,M in pairs(character:GetChildren())do if M:IsA(
'BasePart')then M.Anchored=true end end isHeld=LocalPlayer:FindFirstChild('IsHeld')while isHeld and isHeld.Value and
antiOwnershipActive do task.wait()end for L,M in pairs(character:GetChildren())do if M:IsA('BasePart')then M.Anchored=
false end end end end end)task.wait(0.1)end end)else if antiOwnershipTask then task.cancel(antiOwnershipTask)
antiOwnershipTask=nil end char=LocalPlayer.Character if char then for L,M in pairs(char:GetChildren())do if M:IsA(
'BasePart')then M.Anchored=false end end end end end})paintPartsBackup={}paintConnections={}DefL:AddCheckbox('AntiPaint'
,{Text='Anti Paint',Default=false,Callback=function(K)if K then pcall(function()for L,M in ipairs(workspace:
GetDescendants())do if M:IsA('BasePart')and M.Name=='PaintPlayerPart'then clone=M:Clone()clone.Archivable=true
paintPartsBackup[M:GetDebugId()]={clone=clone,parent=M.Parent}M:Destroy()end end end)table.insert(paintConnections,
workspace.DescendantAdded:Connect(function(L)if L:IsA('BasePart')and L.Name=='PaintPlayerPart'then task.defer(function()
if L and L.Parent then clone=L:Clone()clone.Archivable=true paintPartsBackup[L:GetDebugId()]={clone=clone,parent=L.
Parent}L:Destroy()end end)end end))char=workspace:FindFirstChild(LocalPlayer.Name)if char then for L,M in ipairs(char:
GetChildren())do if M:IsA('Part')or M:IsA('BasePart')then M.CanTouch=false M.CanQuery=false end end end else for L,M in
pairs(paintPartsBackup)do if M.clone and M.parent then M.clone.Parent=M.parent end end paintPartsBackup={}for L,M in
ipairs(paintConnections)do if M.Connected then M:Disconnect()end end paintConnections={}char=workspace:FindFirstChild(
LocalPlayer.Name)if char then for L,M in ipairs(char:GetChildren())do if M:IsA('Part')or M:IsA('BasePart')then M.
CanTouch=true M.CanQuery=true end end end end end})antiFireActive=false antiFireTask=nil hkFirePart=nil DefL:
AddCheckbox('AntiFire',{Text='Anti Fire',Default=false,Callback=function(K)antiFireActive=K if K then pcall(function()if
workspace.Plots and workspace.Plots.Plot5 and workspace.Plots.Plot5.Barrier then if workspace.Plots.Plot5.Barrier:
FindFirstChild('AntiFirePart')then hkFirePart=workspace.Plots.Plot5.Barrier.AntiFirePart else hkFirePart=workspace.Plots
.Plot5.Barrier:FindFirstChild('PlotBarrier')end if hkFirePart then hkFirePart.CanCollide=true hkFirePart.CanQuery=true
hkFirePart.Name='AntiFirePart'h2=hkFirePart:Clone()h2.Name='FalseBorder'h2.Parent=hkFirePart.Parent hkFirePart.Size=
Vector3.new(1,1,1)for L,M in pairs(hkFirePart:GetChildren())do M:Destroy()end hkFirePart.CanQuery=false hkFirePart.
CanCollide=false end end end)antiFireTask=task.spawn(function()while antiFireActive do pcall(function()if hkFirePart
then if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild('HumanoidRootPart')then hkFirePart.CFrame=
LocalPlayer.Character.HumanoidRootPart.CFrame end hkFirePart.CanCollide=not hkFirePart.CanCollide hkFirePart.CanCollide=
not hkFirePart.CanCollide end end)task.wait()end if hkFirePart then hkFirePart.CFrame=CFrame.new(0,-15,0)end end)else if
antiFireTask then task.cancel(antiFireTask)antiFireTask=nil end if hkFirePart then hkFirePart.CFrame=CFrame.new(0,-15,0)
end end end})antiExplosionActive=false antiExplosionConnection=nil DefL:AddCheckbox('AntiExplosion',{Text=
'Anti Explosion',Default=false,Callback=function(K)antiExplosionActive=K if K then char=LocalPlayer.Character if not
char then return end hrp=char:WaitForChild('HumanoidRootPart')antiExplosionConnection=workspace.ChildAdded:Connect(
function(L)if L.Name=='Part'and antiExplosionActive then pcall(function()mag=(L.Position-hrp.Position).Magnitude if mag
<=20 then hrp.Anchored=true task.wait(0.01)rightArm=char:FindFirstChild('Right Arm')if rightArm then ragdollPart=
rightArm:FindFirstChild('RagdollLimbPart')if ragdollPart then while ragdollPart.CanCollide and antiExplosionActive do
task.wait(0.001)end end end if antiExplosionActive then hrp.Anchored=false end end end)end end)else if
antiExplosionConnection then antiExplosionConnection:Disconnect()antiExplosionConnection=nil end char=LocalPlayer.
Character if char then hrp=char:FindFirstChild('HumanoidRootPart')if hrp then hrp.Anchored=false end end end end})
antiVoidActive=false antiVoidConnection=nil local K=function()VOID_THRESHOLD=-50 SAFE_HEIGHT=100 antiVoidConnection=game
:GetService('RunService').Heartbeat:Connect(function()if not antiVoidActive then return end char=LocalPlayer.Character
if char and char.PrimaryPart then pos=char.PrimaryPart.Position if pos.Y<VOID_THRESHOLD then safePos=Vector3.new(pos.X,
pos.Y+SAFE_HEIGHT,pos.Z)char:SetPrimaryPartCFrame(CFrame.new(safePos))char.PrimaryPart.AssemblyLinearVelocity=Vector3.
zero end end end)end DefL:AddCheckbox('AntiVoidToggle',{Text='Anti Void',Default=false,Callback=function(L)
antiVoidActive=L if L then K()else if antiVoidConnection then antiVoidConnection:Disconnect()antiVoidConnection=nil end
end end})hkABlob=false DefL:AddCheckbox('AntiBlob',{Text='Anti-Blob',Default=false,Callback=function(L)hkABlob=L task.
spawn(function()while hkABlob do if player.Character then if not player.Character:FindFirstChild('TruePositionPart')then
local M=Instance.new('Part')M.Parent=player.Character M.Name='TruePositionPart'M.Anchored=true M.CFrame=CFrame.new(0,-
100,0)end for M,N in pairs(player.Character:GetChildren())do if N:IsA('BasePart')and N.Massless then N.Massless=false
end if N.Name=='HumanoidRootPart'and player.Character.HumanoidRootPart:FindFirstChild('RootAttachment')then task.wait()
task.wait()task.wait()task.wait()task.wait()task.wait()task.wait()task.wait()task.wait()task.wait()if player.Character
and player.Character:FindFirstChild('HumanoidRootPart')and player.Character.HumanoidRootPart:FindFirstChild(
'RootAttachment')and player.Character:FindFirstChild('TruePositionPart')then player.Character.HumanoidRootPart.
RootAttachment.Parent=player.Character.TruePositionPart end end end end task.wait()end end)if not L and player.Character
then if player.Character:FindFirstChild('HumanoidRootPart')and player.Character:FindFirstChild('TruePositionPart')then
if player.Character.TruePositionPart:FindFirstChild('RootAttachment')then player.Character.TruePositionPart.
RootAttachment.Parent=player.Character.HumanoidRootPart end end end end})antiSnowballActive=false antiSnowballTask=nil
DefL:AddCheckbox('AntiSnowball',{Text='Anti Snowball',Default=false,Callback=function(L)antiSnowballActive=L if L then
antiSnowballTask=task.spawn(function()while antiSnowballActive do pcall(function()char=LocalPlayer.Character hrp=char
and char:FindFirstChild('HumanoidRootPart')if hrp then game:GetService('ReplicatedStorage').CharacterEvents.
RagdollRemote:FireServer(hrp,0.5)end end)task.wait(0.05)end end)else if antiSnowballTask then task.cancel(
antiSnowballTask)antiSnowballTask=nil end end end})do local L,M,N,O=false,nil,CFrame.new(10000,-1E4,10000),Vector3.new(0
,-20.34,0)local P=function(P)if not P or not P.Parent then return end if P.Parent.Name==LocalPlayer.Name..
'SpawnedInToys'then return end local Q=P:FindFirstChild('HoldPart')local S,T=Q and Q:FindFirstChild(
'HoldItemRemoteFunction'),Q and Q:FindFirstChild('DropItemRemoteFunction')if S and T then pcall(function()S:
InvokeServer(P,LocalPlayer.Character)end)task.wait(0.05)pcall(function()T:InvokeServer(P,N,O)end)else local U=P.
PrimaryPart or P:FindFirstChildWhichIsA('BasePart')if U then U.CFrame=CFrame.new(0,-1E4,0)U.Anchored=true U.Transparency
=1 end end end DefL:AddCheckbox('AntiBananaEat',{Text='Anti Banana (Eat)',Default=false,Callback=function(Q)L=Q if M
then M:Disconnect()M=nil end if not Q then return end local S=0 M=RunService.Heartbeat:Connect(function(T)if not L then
return end S+=T if S<0.5 then return end S=0 for U,V in ipairs(Players:GetPlayers())do if V~=LocalPlayer then local W=
workspace:FindFirstChild(V.Name..'SpawnedInToys')if W then for X,Y in ipairs(W:GetChildren())do if Y.Name=='FoodBanana'
then task.spawn(P,Y)end end end end end end)end})end do AntiRagBlob=false RagdolledSit=false Cons={}local L=function(L)
if not L or not AntiRagBlob then return end hum=L:WaitForChild('Humanoid',5)HRP=L:WaitForChild('HumanoidRootPart',5)if
not(hum and HRP)then return end if Cons['ARSeat']then Cons['ARSeat']:Disconnect()end Cons['ARSeat']=hum:
GetPropertyChangedSignal('SeatPart'):Connect(function()if hum.SeatPart and hum.SeatPart.Parent and hum.SeatPart.Parent.
Name=='CreatureBlobman'and not RagdolledSit then RagdolledSit=true Seat=hum.SeatPart while not hum.Sit do task.wait()end
game:GetService('ReplicatedStorage').CharacterEvents.RagdollRemote:FireServer(HRP,3)ragdolledVal=hum:FindFirstChild(
'Ragdolled')while ragdolledVal and not ragdolledVal.Value and not hum.Sit do task.wait()end task.wait(0.4)hum.Sit=false
Seat:Sit(hum)task.delay(0.25,function()while hum and hum.SeatPart do game:GetService('ReplicatedStorage').
CharacterEvents.RagdollRemote:FireServer(HRP,1)task.wait(0.05)end RagdolledSit=false end)end end)end DefL:AddCheckbox(
'AntiRagdoll',{Text='Anti Ragdoll (On Blob)',Default=false,Callback=function(M)AntiRagBlob=M RagdolledSit=false if Cons[
'ARChar']then Cons['ARChar']:Disconnect()end if Cons['ARSeat']then Cons['ARSeat']:Disconnect()end if AntiRagBlob then L(
LocalPlayer.Character)Cons['ARChar']=LocalPlayer.CharacterAdded:Connect(L)end end})end ocnAntiLagOn=false
ocnFpsThreshold=30 ocnFpsFrames=0 ocnLastFpsCheck=tick()ocnAutoLagStartDelay=tick()ocnAutoLagEnabled=false DefL:
AddCheckbox('AntiLag',{Text='Anti Lag',Default=false,Callback=function(L)ocnAntiLagOn=L if L then pcall(function()
LocalPlayer.PlayerScripts.CharacterAndBeamMove.Disabled=true for M,N in pairs(game:GetService('Players'):GetPlayers())do
if N.Character and N.Character:FindFirstChild('GrabParts')then N.Character.GrabParts:Destroy()end end end)else pcall(
function()LocalPlayer.PlayerScripts.CharacterAndBeamMove.Disabled=false end)end end})DefL:AddCheckbox('AutoAntiLag',{
Text='Auto Anti Lag',Default=false,Callback=function(L)ocnAutoLagEnabled=L if L then ocnLastFpsCheck=tick()ocnFpsFrames=
0 ocnAutoLagStartDelay=tick()end end})DefL:AddSlider('AntiLagFPSThreshold',{Text='Auto Anti Lag FPS Set',Min=10,Max=120,
Default=30,Rounding=0,Suffix=' FPS',Callback=function(L)ocnFpsThreshold=L end})task.spawn(function()while task.wait()do
if ocnAutoLagEnabled then if tick()-ocnAutoLagStartDelay<5 then task.wait()else ocnFpsFrames=ocnFpsFrames+1 now=tick()if
now-ocnLastFpsCheck>=1 then fps=ocnFpsFrames/(now-ocnLastFpsCheck)ocnFpsFrames=0 ocnLastFpsCheck=now if fps<=
ocnFpsThreshold and not ocnAntiLagOn then ocnAntiLagOn=true pcall(function()LocalPlayer.PlayerScripts.
CharacterAndBeamMove.Disabled=true end)elseif fps>ocnFpsThreshold and ocnAntiLagOn then ocnAntiLagOn=false pcall(
function()LocalPlayer.PlayerScripts.CharacterAndBeamMove.Disabled=false end)end end end end task.wait()end end)DefK=Tabs
.Defense:AddRightGroupbox('Anti Kicks','turkish-lira')DefK:AddCheckbox('OatAntiKick',{Text=
'Oat Anti-Kick (Break pcld) [OP]',Default=false,Callback=function(L)hkExpectDeath=false hkSalmonList={}hkSalmonList[
LocalPlayer.UserId]=true local M=function(M)if not M then return end newHum=M:WaitForChild('Humanoid',5)if not newHum
then return end if hkSalmonList[LocalPlayer.UserId]and not hkExpectDeath then hkExpectDeath=true newHum:ChangeState(Enum
.HumanoidStateType.Dead)else hkExpectDeath=false end end LocalPlayer.CharacterAdded:Connect(function(N)M(N)end)
hkSalmonList[LocalPlayer.UserId]=L and true or nil if L then hkExpectDeath=false char=LocalPlayer.Character hum=char and
char:FindFirstChildOfClass('Humanoid')if hum then hum.Health=0 end end end})DefK:AddButton({Text='Delete Legs',Callback=
function()pcall(function()char=LocalPlayer.Character if not char then return end if char:FindFirstChild('Left Leg')and
char:FindFirstChild('Right Leg')then ll=char:FindFirstChild('Left Leg')rl=char:FindFirstChild('Right Leg')void=workspace
.FallenPartsDestroyHeight torso=char:FindFirstChild('Torso')or char:FindFirstChild('UpperTorso')if not torso then return
end pos=torso.CFrame hrp=char:FindFirstChild('HumanoidRootPart')hum=char:FindFirstChild('Humanoid')if not hrp or not hum
then return end workspace.FallenPartsDestroyHeight=-100 game:GetService('ReplicatedStorage').CharacterEvents.
RagdollRemote:FireServer(hrp,2)task.wait(0.5)rl.CFrame=CFrame.new(0,-1E4,0)ll.CFrame=CFrame.new(0,-1E4,0)task.wait(0.3)
torso.CFrame=CFrame.new(0,-9970,0)task.wait(0.5)torso.CFrame=pos task.wait(0.5)workspace.FallenPartsDestroyHeight=void
task.spawn(function()if not char:FindFirstChild('Left Leg')and not char:FindFirstChild('Right Leg')then while char and
char.Parent and hum and hum.Health>0 do pcall(function()controls=LocalPlayer.PlayerGui:FindFirstChild('ControlsGui')if
controls and controls:FindFirstChild('PCFrame')and controls.PCFrame:FindFirstChild('Stand')then if controls.PCFrame.
Stand.Visible==false then hum.HipHeight=2 else hum.HipHeight=0 end end end)task.wait()end end end)end end)end})DefK:
AddDivider()do shurikenAntiKickActive=false shurikenAntiKickTask=nil local L,M={['Shuriken']='NinjaShuriken',['Pickaxe']
='ToolPickaxe',['Kunai']='NinjaKunai',['Cleaver']='ToolCleaver'},{}for N,O in pairs(L)do table.insert(M,N)end table.
sort(M)local N=L['Shuriken']DefK:AddDropdown('ShurikenItemSelect',{Text='Select Anti Kick',Values=M,Default='Shuriken',
Callback=function(O)N=L[O]end})local O=function()local O,P=workspace:FindFirstChild(LocalPlayer.Name..'SpawnedInToys'),
ReplicatedStorage:FindFirstChild('MenuToys')and ReplicatedStorage.MenuToys:FindFirstChild('DestroyToy')if O and P then
for Q,S in pairs(O:GetChildren())do if S.Name=='AntiKick'then pcall(function()P:FireServer(S)end)end end end end local P
=function()if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild('HumanoidRootPart')then return LocalPlayer.
Character.HumanoidRootPart end return LocalPlayer.CharacterAdded:Wait():WaitForChild('HumanoidRootPart')end local Q=
function(Q)if not Q or not Q:FindFirstChild('StickyPart')then return end local S=P()if not S then return end local T,U=
ReplicatedStorage.GrabEvents.SetNetworkOwner,ReplicatedStorage.PlayerEvents.StickyPartEvent if Q:FindFirstChild(
'SoundPart')then if not Q.SoundPart:FindFirstChild('PartOwner')or Q.SoundPart.PartOwner.Value~=LocalPlayer.Name then
pcall(function()T:FireServer(Q.SoundPart,Q.SoundPart.CFrame)end)end end local V=S:FindFirstChild('FirePlayerPart')or S:
WaitForChild('FirePlayerPart',2)if V then pcall(function()U:FireServer(Q.StickyPart,V,CFrame.new(0,0,0)*CFrame.Angles(0,
math.rad(90),math.rad(90)))end)end for W,X in pairs(Q:GetChildren())do if X:IsA('BasePart')then X.CanTouch=false X.
CanCollide=false X.CanQuery=false if X.Name~='Main'and X.Name~='Pyramid'then X.Transparency=1 end end end end local S=
function()local S,T=LocalPlayer:FindFirstChild('CanSpawnToy'),tick()while S and not S.Value do if not
shurikenAntiKickActive or tick()-T>5 then return nil end task.wait(0.1)end local U=P()if U then task.spawn(function()
pcall(function()ReplicatedStorage.MenuToys.SpawnToyRemoteFunction:InvokeServer(N,U.CFrame*CFrame.new(0,12,20),Vector3.
zero)end)end)end local V=workspace:FindFirstChild(LocalPlayer.Name..'SpawnedInToys')if V then return V:WaitForChild(N,2)
end return nil end DefK:AddCheckbox('ShurikenAntiKick',{Text='Anti Kick',Default=false,Callback=function(T)
shurikenAntiKickActive=T if T then if shurikenAntiKickTask then task.cancel(shurikenAntiKickTask)end
shurikenAntiKickTask=task.spawn(function()while shurikenAntiKickActive do local U=workspace:FindFirstChild(LocalPlayer.
Name..'SpawnedInToys')local V=U and U:FindFirstChild('AntiKick')if not V then V=S()if not V then task.wait(0.1)continue
end V.Name='AntiKick'Q(V)end repeat if V and V:FindFirstChild('StickyPart')and V.StickyPart.CanTouch==true then Q(V)V.
Name='AntiKick'end task.wait(0.1)until not V or not shurikenAntiKickActive or not V:FindFirstChild('StickyPart')or V.
StickyPart.CanTouch==false or not LocalPlayer.Character or not LocalPlayer.Character:FindFirstChild('HumanoidRootPart')
or(LocalPlayer.Character.HumanoidRootPart.Position-V.StickyPart.Position).Magnitude>=20 if not V or not V:
FindFirstChild('StickyPart')or not LocalPlayer.Character or not LocalPlayer.Character:FindFirstChild('HumanoidRootPart')
or(V:FindFirstChild('StickyPart')and(LocalPlayer.Character.HumanoidRootPart.Position-V.StickyPart.Position).Magnitude>=
20)then O()end pcall(function()repeat task.wait(0.05)until not shurikenAntiKickActive or not LocalPlayer.Character or
not V or not V:FindFirstChild('StickyPart')or not V.StickyPart:FindFirstChild('StickyWeld')or not V.StickyPart.
StickyWeld.Part1 if not V or not V:FindFirstChild('StickyPart')or not(V.StickyPart:FindFirstChild('StickyWeld')and V.
StickyPart.StickyWeld.Part1)then O()end end)end end)else shurikenAntiKickActive=false if shurikenAntiKickTask then task.
cancel(shurikenAntiKickTask)shurikenAntiKickTask=nil end O()end end})end do local L,M,N=false,nil,nil local O=function()
local O=workspace:FindFirstChild(LocalPlayer.Name..'SpawnedInToys')if not O then return end local P=O:FindFirstChild(
'ToolPencil')if P then return P end if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild('HumanoidRootPart'
)then pcall(function()game:GetService('ReplicatedStorage').MenuToys.SpawnToyRemoteFunction:InvokeServer('ToolPencil',
CFrame.new(LocalPlayer.Character.HumanoidRootPart.CFrame.Position)+Vector3.new(0,0,15),Vector3.new(0,0,0))end)end return
nil end local ab=function()pcall(function()local P=LocalPlayer.Name local Q=workspace:FindFirstChild(P..'SpawnedInToys')
if not Q then return end local S=Q:FindFirstChild('ToolPencil')if not S then S=O()if not S then return end end local T=
LocalPlayer.Character if not T then return end local U,V=T:FindFirstChild('Torso'),T:FindFirstChild('HumanoidRootPart')
if not(U and V)then return end local W,X=S:FindFirstChild('StickyPart'),S:FindFirstChild('SoundPart')if W and W:
FindFirstChild('StickyWeld')then local Y=W.StickyWeld if Y.Part1~=U then local Z,_=X and X.CFrame.Position or Vector3.
zero,V.CFrame.Position local ab=(Z-_).Magnitude if ab>20 then pcall(function()game:GetService('ReplicatedStorage').
MenuToys.DestroyToy:FireServer(S)end)else pcall(function()game:GetService('ReplicatedStorage').PlayerEvents.
StickyPartEvent:FireServer(W,U,CFrame.new(0,-1,0)*CFrame.Angles(0,math.pi,0))end)for ac,ad in pairs(S:GetChildren())do
if ad:IsA('BasePart')then ad.CanQuery=false ad.CanCollide=false ad.CanTouch=false end end end end end end)end DefK:
AddCheckbox('AntiKickPencil',{Text='Anti Kick (Pencil)',Default=false,Callback=function(ac)L=ac if ac then if N then N:
Disconnect()end N=LocalPlayer.CharacterAdded:Connect(function()task.wait(0.25)if L then ab()end end)M=task.spawn(
function()while L do ab()task.wait(0.5)end end)else L=false if M then task.cancel(M)M=nil end if N then N:Disconnect()N=
nil end local ad=workspace:FindFirstChild(LocalPlayer.Name..'SpawnedInToys')if ad then local P=ad:FindFirstChild(
'ToolPencil')if P then pcall(function()game:GetService('ReplicatedStorage').MenuToys.DestroyToy:FireServer(P)end)end end
end end})end do local ab,ac=false,nil local ad=function()local ad,L=workspace:FindFirstChild(LocalPlayer.Name..
'SpawnedInToys'),ReplicatedStorage:FindFirstChild('MenuToys')and ReplicatedStorage.MenuToys:FindFirstChild('DestroyToy')
if ad and L then for M,N in pairs(ad:GetChildren())do if N.Name=='AntiKickUltra'then pcall(function()L:FireServer(N)end)
end end end end local L=function()if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild('HumanoidRootPart')
then return LocalPlayer.Character.HumanoidRootPart end return LocalPlayer.CharacterAdded:Wait():WaitForChild(
'HumanoidRootPart')end local M=function()local M=workspace:FindFirstChild('PlotItems')if not M then return false end
local N=M:FindFirstChild('PlayersInPlots')if not N or not N:FindFirstChild(LocalPlayer.Name)then return false end for O,
P in pairs(workspace.Plots:GetChildren())do local Q=P:FindFirstChild('PlotSign')local S=Q and Q:FindFirstChild(
'ThisPlotsOwners')if S then for T,U in pairs(S:GetChildren())do if U.Value==LocalPlayer.Name then local V=M:
FindFirstChild(P.Name)if V then return true,V end end end end end return false end local N=function(N)if not N or not N:
FindFirstChild('StickyPart')then return end local O=L()if not O then return end local P,Q=ReplicatedStorage.GrabEvents.
SetNetworkOwner,ReplicatedStorage.PlayerEvents.StickyPartEvent if N:FindFirstChild('SoundPart')then if not N.SoundPart:
FindFirstChild('PartOwner')or N.SoundPart.PartOwner.Value~=LocalPlayer.Name then pcall(function()P:FireServer(N.
SoundPart,N.SoundPart.CFrame)end)end end local S=O:FindFirstChild('FirePlayerPart')or O:WaitForChild('FirePlayerPart',2)
if S then pcall(function()Q:FireServer(N.StickyPart,S,CFrame.new(0,0,0)*CFrame.Angles(0,math.rad(90),math.rad(90)))end)
end for T,U in pairs(N:GetChildren())do if U.Name=='Pyramid'then U.CanTouch=false U.CanCollide=false U.CanQuery=false U.
Transparency=0 if not U:FindFirstChild('Highlight')then local V=Instance.new('Highlight')V.FillColor=Color3.fromRGB(0,0,
0)V.Parent=U end elseif U.Name=='Main'then U.CanTouch=false U.CanCollide=false U.CanQuery=false U.Transparency=0 if not
U:FindFirstChild('Highlight')then local V=Instance.new('Highlight')V.FillColor=Color3.fromRGB(255,255,255)V.Parent=U end
elseif U:IsA('BasePart')then U.CanTouch=false U.CanCollide=false U.CanQuery=false U.Transparency=1 end end end local O=
function()local O,P=LocalPlayer:FindFirstChild('CanSpawnToy'),tick()while O and not O.Value do if not ab or tick()-P>5
then return nil end task.wait(0.1)end local Q=L()if Q then task.spawn(function()pcall(function()ReplicatedStorage.
MenuToys.SpawnToyRemoteFunction:InvokeServer('NinjaShuriken',Q.CFrame*CFrame.new(0,12,20),Vector3.zero)end)end)end local
S,T=M()local U=workspace:FindFirstChild(LocalPlayer.Name..'SpawnedInToys')if S and T then return T:WaitForChild(
'NinjaShuriken',2)elseif U then local V=workspace:FindFirstChild('PlotItems')and workspace.PlotItems:FindFirstChild(
'PlayersInPlots')if not(V and V:FindFirstChild(LocalPlayer.Name))then return U:WaitForChild('NinjaShuriken',2)end end
return nil end DefK:AddCheckbox('AntiKickUltra',{Text='Anti Kick Ultra',Default=false,Callback=function(P)ab=P if P then
if ac then task.cancel(ac)end ac=task.spawn(function()while ab do local Q=workspace:FindFirstChild(LocalPlayer.Name..
'SpawnedInToys')local S,T,U=Q and Q:FindFirstChild('AntiKick'),M()if not S and T and U then S=U:FindFirstChild(
'AntiKick')or U:FindFirstChild('NinjaShuriken')if S then S.Name='AntiKickUltra'N(S)end end if not S then local V=
workspace:FindFirstChild('PlotItems')and workspace.PlotItems:FindFirstChild('PlayersInPlots')if V and V:FindFirstChild(
LocalPlayer.Name)then task.wait(0.1)continue end S=O()if not S then task.wait(0.1)continue end S.Name='AntiKickUltra'N(S
)end repeat if S and S:FindFirstChild('StickyPart')and S.StickyPart.CanTouch==true then N(S)S.Name='AntiKickUltra'end
task.wait(0.1)until not S or not ab or not S:FindFirstChild('StickyPart')or S.StickyPart.CanTouch==false or not
LocalPlayer.Character or not LocalPlayer.Character:FindFirstChild('HumanoidRootPart')or(LocalPlayer.Character.
HumanoidRootPart.Position-S.StickyPart.Position).Magnitude>=20 if not S or not S:FindFirstChild('StickyPart')or not
LocalPlayer.Character or not LocalPlayer.Character:FindFirstChild('HumanoidRootPart')or(S:FindFirstChild('StickyPart')
and(LocalPlayer.Character.HumanoidRootPart.Position-S.StickyPart.Position).Magnitude>=20)then ad()end pcall(function()
repeat task.wait(0.05)until not ab or not LocalPlayer.Character or not LocalPlayer.Character:FindFirstChild('Humanoid')
or not S or not S:FindFirstChild('StickyPart')or not S.StickyPart:FindFirstChild('StickyWeld')or not S.StickyPart.
StickyWeld.Part1 if not S or not S:FindFirstChild('StickyPart')or(LocalPlayer.Character and LocalPlayer.Character:
FindFirstChild('Humanoid')and LocalPlayer.Character.Humanoid.Health<=0)or not(S:FindFirstChild('StickyPart')and S.
StickyPart:FindFirstChild('StickyWeld')and S.StickyPart.StickyWeld.Part1)then ad()end end)end end)else ab=false if ac
then task.cancel(ac)ac=nil end ad()end end})end do Players=game:GetService('Players')RS=game:GetService(
'ReplicatedStorage')RunService=game:GetService('RunService')plr=Players.LocalPlayer DefK:AddDivider()AntiKickItemActive=
false AntiKickItemNoGrab=true AntiKickItemTransparency=0.7 MyPCLD=nil pcldConn=nil charFixConnection=nil
itemAntiKickTask=nil local ab,ac={['Japanese Lantern']='JapaneseLantern',['Spray Can']='SprayCanWD',['Spooky Candle']=
'SpookyCandle1'},{}for ad,L in pairs(ab)do table.insert(ac,ad)end table.sort(ac)local ad=ab['Spooky Candle']or ab[ac[1]
]DefK:AddDropdown('AntiKickItemSelect',{Text='Anti Kick Item',Values=ac,Default='Spooky Candle',Callback=function(L)ad=
ab[L]end})DefK:AddCheckbox('AntiKickItemNoGrab',{Text='Invisible Item (No Grab)',Default=true,Callback=function(L)
AntiKickItemNoGrab=L local M=workspace:FindFirstChild(plr.Name..'SpawnedInToys')if M then local N=M:FindFirstChild(
'AntiKickItem')if N then for O,P in pairs(N:GetDescendants())do if P:IsA('BasePart')then P.CanTouch=not L P.CanQuery=not
L P.CanCollide=false end end end end end})DefK:AddSlider('AntiKickItemTransparency',{Text='Item Transparency',Min=0,Max=
1,Default=0.7,Rounding=2,Callback=function(L)AntiKickItemTransparency=L local M=workspace:FindFirstChild(plr.Name..
'SpawnedInToys')if M then local N=M:FindFirstChild('AntiKickItem')if N then for O,P in pairs(N:GetDescendants())do if P:
IsA('BasePart')then P.Transparency=L end end end end end})local L=function(L,M)return(L.Position-M.Position).Magnitude
end local M=function(M)local N=M and M:FindFirstChild('PartOwner')return N and N.Value==plr.Name end local N=function(N)
N=N or plr.Character if not N then return end local O=N:FindFirstChild('HumanoidRootPart')if O then O.
AssemblyLinearVelocity=Vector3.zero O.AssemblyAngularVelocity=Vector3.zero end for P,Q in ipairs(N:GetChildren())do if Q
:IsA('BasePart')then Q.AssemblyLinearVelocity=Vector3.zero Q.AssemblyAngularVelocity=Vector3.zero end end end local O=
function(O)pcall(function()RS.GrabEvents.SetNetworkOwner:FireServer(O,O.CFrame)end)end local P=function(P)if not P or
not P.Parent then return false end P.CanTouch=true P.CanQuery=true pcall(function()RS.GrabEvents.CreateGrabLine:
FireServer(P,P.CFrame)end)task.wait(0.04)local Q=tick()while tick()-Q<0.7 do O(P)if M(P)then pcall(function()RS.
GrabEvents.DestroyGrabLine:FireServer(P)end)return true end task.wait(0.04)end pcall(function()RS.GrabEvents.
DestroyGrabLine:FireServer(P)end)return false end local Q=function()local Q,S=workspace:FindFirstChild('PlotItems'),
workspace:FindFirstChild('Plots')if S and Q then for T=1,5 do local U=S:FindFirstChild('Plot'..T)if U then local V=U:
FindFirstChild('PlotSign')local W=V and V:FindFirstChild('ThisPlotsOwners')if W then for X,Y in pairs(W:GetChildren())do
if Y.Value==plr.Name then return Q:FindFirstChild('Plot'..T)end end end end end end return nil end local ae=function(S)
local T,U,V,W=plr:FindFirstChild('InPlot'),plr:FindFirstChild('InOwnedPlot'),plr:FindFirstChild('CanSpawnToy'),workspace
:FindFirstChild(plr.Name..'SpawnedInToys')if T and T.Value and U and not U.Value then T:GetPropertyChangedSignal('Value'
):Wait()end if V and not V.Value then V:GetPropertyChangedSignal('Value'):Wait()end local X=plr.Character and plr.
Character:FindFirstChild('HumanoidRootPart')if not X then return nil end local Y,Z=CFrame.new(X.Position)+Vector3.new(0,
0,6),(U and U.Value)and Q()or W if not Z then return nil end local _,ae ae=Z.ChildAdded:Connect(function(af)if af.Name==
S then _=af end end)task.spawn(function()pcall(function()RS.MenuToys.SpawnToyRemoteFunction:InvokeServer(S,Y,Vector3.
zero)end)end)local af=tick()repeat task.wait()until _ or(tick()-af)>2 if ae then ae:Disconnect()end return _ end local
af=function(af)if pcldConn then pcldConn:Disconnect()end MyPCLD=nil pcldConn=RunService.Heartbeat:Connect(function()if
MyPCLD or not af or not af.Parent then if pcldConn then pcldConn:Disconnect()pcldConn=nil end return end for S,T in
pairs(workspace:GetChildren())do if T.Name=='PlayerCharacterLocationDetector'and T:IsA('BasePart')then if L(T,af)<=2
then MyPCLD=T break end end end end)end local S=function()local S,T=workspace:FindFirstChild(plr.Name..'SpawnedInToys'),
RS:FindFirstChild('MenuToys')and RS.MenuToys:FindFirstChild('DestroyToy')if S and T then for U,V in pairs(S:GetChildren(
))do if V.Name=='AntiKickItem'then pcall(function()T:FireServer(V)end)end end end end local T=function(T)if not T then
return end for U,V in pairs(T:GetDescendants())do if V:IsA('BasePart')then V.CanCollide=false V.Transparency=
AntiKickItemTransparency if AntiKickItemNoGrab then V.CanTouch=false V.CanQuery=false else V.CanTouch=true V.CanQuery=
true end end end end local U=function(U)if not U then return end N(U)local V=U:FindFirstChildOfClass('Humanoid')if V
then V.AutoRotate=true V.Sit=false end end DefK:AddCheckbox('AntiKickItem',{Text='Anti Kick [ITEM]',Default=false,
Callback=function(V)AntiKickItemActive=V if V then N(plr.Character)U(plr.Character)if charFixConnection then
charFixConnection:Disconnect()end charFixConnection=plr.CharacterAdded:Connect(function(W)task.wait(0.4)if
AntiKickItemActive then U(W)local X=W:FindFirstChild('HumanoidRootPart')if X then af(X)end end end)if itemAntiKickTask
then task.cancel(itemAntiKickTask)end itemAntiKickTask=task.spawn(function()local W,X while AntiKickItemActive do local
Y=plr.Character local Z,_,ag,ah=Y and Y:FindFirstChild('HumanoidRootPart'),Y and Y:FindFirstChild('Humanoid'),plr:
FindFirstChild('InPlot'),workspace:FindFirstChild(plr.Name..'SpawnedInToys')if not Z or not _ or _.Health<=0 or not ah
then task.wait(0.15)continue end if ag and ag.Value then task.wait(0.15)continue end if not MyPCLD and not pcldConn then
af(Z)end W=ah:FindFirstChild('AntiKickItem')X=W and(W:FindFirstChild('Hitbox')or W:FindFirstChild('SoundPart')or W.
PrimaryPart)if not W or not X then S()W=ae(ad)if not W then task.wait(0.2)continue end X=W:FindFirstChild('Hitbox')or W:
FindFirstChild('SoundPart')or W.PrimaryPart if not X then S()task.wait(0.2)continue end P(X)W.Name='AntiKickItem'T(W)end
if X and not M(X)then O(X)end T(W)local ai=MyPCLD or Z:FindFirstChild('FirePlayerPart')or Z if X and ai then X.CFrame=ai
.CFrame X.AssemblyLinearVelocity=Vector3.zero X.AssemblyAngularVelocity=Vector3.zero end task.wait(0.03)end end)else if
itemAntiKickTask then task.cancel(itemAntiKickTask)itemAntiKickTask=nil end if pcldConn then pcldConn:Disconnect()
pcldConn=nil end if charFixConnection then charFixConnection:Disconnect()charFixConnection=nil end MyPCLD=nil N(plr.
Character)task.wait(0.1)S()task.wait(0.08)N(plr.Character)U(plr.Character)end end})plr.CharacterAdded:Connect(function(
ag)if AntiKickItemActive then MyPCLD=nil local ah=ag:WaitForChild('HumanoidRootPart',5)if ah then af(ah)end task.wait(
0.4)U(ag)end end)end DefR=Tabs.Defense:AddRightGroupbox('Extra Defense','heart-plus')do local ab,ac={['Coconut']=
'FoodCoconut',['Banana']='FoodBanana',['Fries']='FoodFrenchFries',['MeatStick']='FoodMeatStick',['Poop']='PoopPile',[
'Donut']='FoodDonut',['Cake']='FoodCakePink',['Burger']='FoodHamburger',['Pizza']='FoodPizzaCheese',['Hotdog']=
'FoodHotdog',['Mushroom']='FoodMushroomPoison',['Banjo']='InstrumentGuitarBanjo',['Violin']='InstrumentGuitarViolin',[
'Ukulele']='InstrumentGuitarUkulele',['Sax']='InstrumentWoodwindSaxophone',['Vuvuzela']='InstrumentBrassVuvuzela',[
'Bongos']='InstrumentDrumBongos',['Mic']='InstrumentVoiceMicrophone',['Pepperoni']='FoodPizzaPepperoni',['Piano']=
'InstrumentPianoMelodica',['Bread']='FoodBread',['Egg']='FoodDippyEgg',['Mayo']='FoodMayonnaise',['WhiteMug']=
'CupMugWhite',['Ocarina']='InstrumentWoodwindOcarina',['SparklePoop']='PoopPileSparkle',['BrownMug']='CupMugBrown',[
'Trumpet']='InstrumentBrassTrumpet',['Snare']='InstrumentDrumSnare',['Lyre']='InstrumentGuitarLyre'},{}for ad,ae in
pairs(ab)do table.insert(ac,ad)end table.sort(ac)local ad,ae,af,ag=ab['Burger'],false,nil,nil DefR:AddDropdown(
'InputLagToySelect',{Text='Select Input Lag Toy',Values=ac,Default='Burger',Callback=function(ah)ad=ab[ah]end})DefR:
AddCheckbox('AntiInputLag',{Text='Anti Input Lag',Default=false,Callback=function(ah)ae=ah if ah then if ag then ag:
Disconnect()end ag=LocalPlayer.CharacterAdded:Connect(function()task.wait(1)if ae then end end)af=task.spawn(function()
local ai,L=LocalPlayer,game:GetService('ReplicatedStorage').MenuToys.SpawnToyRemoteFunction while ae do pcall(function()
local M=ai.Character local N=M and M:FindFirstChild('HumanoidRootPart')if N then local O,P=workspace:FindFirstChild(ai.
Name..'SpawnedInToys'),ad local Q=O and O:FindFirstChild(P)local S=Q and Q.Parent~=nil if not S then task.spawn(function
()pcall(function()L:InvokeServer(P,N.CFrame*CFrame.new(0,-12,0),Vector3.zero)end)end)task.wait(0.1)O=workspace:
FindFirstChild(ai.Name..'SpawnedInToys')Q=O and O:FindFirstChild(P)end if Q and Q.Parent then local T=Q:FindFirstChild(
'HoldPart')if T then for U,V in pairs(Q:GetDescendants())do if V:IsA('BasePart')then V.CanCollide=false V.Massless=true
end end task.spawn(function()pcall(function()T.HoldItemRemoteFunction:InvokeServer(Q,M)end)end)task.wait(0.02)task.
spawn(function()pcall(function()T.DropItemRemoteFunction:InvokeServer(Q,CFrame.new(0,5000,0),Vector3.zero)end)end)end
end end end)task.wait(0.02)end end)else if af then task.cancel(af)af=nil end if ag then ag:Disconnect()ag=nil end end
end})end DefR:AddDivider()ocnKakuConn=nil ocnKakuAng=0 DefR:AddCheckbox('AntiBlobmanKill',{Text='Anti blobman kill',
Default=false,Callback=function(ab)if ab then ocnKakuConn=game:GetService('RunService').RenderStepped:Connect(function(
ac)pcall(function()c=LocalPlayer.Character root=c and c:FindFirstChild('HumanoidRootPart')if root then ocnKakuAng=
ocnKakuAng+ac*9999 rad=math.rad(ocnKakuAng)root.CFrame=CFrame.new(math.cos(rad)*50000,-1E5,math.sin(rad)*50000)end end)
end)else if ocnKakuConn then ocnKakuConn:Disconnect()ocnKakuConn=nil end ocnKakuAng=0 end end})ocnGroovConn=nil
ocnGroovPos=nil DefR:AddCheckbox('PosLock',{Text='Pos lock',Default=false,Callback=function(ab)if ab then pcall(function
()c=LocalPlayer.Character root=c and c:FindFirstChild('HumanoidRootPart')if root then ocnGroovPos=root.CFrame end
ocnGroovConn=game:GetService('RunService').RenderStepped:Connect(function()c2=LocalPlayer.Character root2=c2 and c2:
FindFirstChild('HumanoidRootPart')if root2 and ocnGroovPos then assembly=root2.AssemblyRootPart or root2 assembly.
AssemblyLinearVelocity=Vector3.zero assembly.AssemblyAngularVelocity=Vector3.zero offset=assembly.CFrame:ToObjectSpace(
root2.CFrame)assembly.CFrame=ocnGroovPos*offset:Inverse()end end)end)else if ocnGroovConn then ocnGroovConn:Disconnect()
ocnGroovConn=nil end pcall(function()c2=LocalPlayer.Character root2=c2 and c2:FindFirstChild('HumanoidRootPart')if root2
then assembly=root2.AssemblyRootPart or root2 assembly.AssemblyLinearVelocity=Vector3.zero assembly.
AssemblyAngularVelocity=Vector3.zero end end)ocnGroovPos=nil end end})ocnStasisConn=nil DefR:AddCheckbox('AntiLoopKill',
{Text='Anti loop kill',Default=false,Callback=function(ab)if ab then ocnStasisConn=game:GetService('RunService').
RenderStepped:Connect(function()pcall(function()c=LocalPlayer.Character root=c and c:FindFirstChild('HumanoidRootPart')
if root then root.CFrame=CFrame.new(280,-4,465)end end)end)else if ocnStasisConn then ocnStasisConn:Disconnect()
ocnStasisConn=nil end end end})ocnTornadoConn=nil ocnTornadoAng=0 DefR:AddCheckbox('LoopTpOp',{Text='Loop Tp [OP]',
Default=false,Callback=function(ab)if ab then ocnTornadoConn=game:GetService('RunService').RenderStepped:Connect(
function(ac)pcall(function()c=LocalPlayer.Character root=c and c:FindFirstChild('HumanoidRootPart')if root then
ocnTornadoAng=ocnTornadoAng+ac*50000 rad=math.rad(ocnTornadoAng)root.CFrame=CFrame.new(math.cos(rad)*10000,0,math.sin(
rad)*10000)end end)end)else if ocnTornadoConn then ocnTornadoConn:Disconnect()ocnTornadoConn=nil end ocnTornadoAng=0 end
end})ocnManiacConn=nil DefR:AddCheckbox('LoopTp',{Text='Loop Tp',Default=false,Callback=function(ab)if ab then
ocnManiacConn=game:GetService('RunService').RenderStepped:Connect(function()pcall(function()c=LocalPlayer.Character root
=c and c:FindFirstChild('HumanoidRootPart')if root then ms=2000 root.CFrame=CFrame.new(math.random(-ms,ms),math.random(-
50,500),math.random(-ms,ms))end end)end)else if ocnManiacConn then ocnManiacConn:Disconnect()ocnManiacConn=nil end end
end})defenseEnabled=false defenseConnection=nil defenseMode='Fling'crazyline=false crazylineTask=nil GrabEvents=game:
GetService('ReplicatedStorage'):WaitForChild('GrabEvents')SetNetworkOwner=GrabEvents:WaitForChild('SetNetworkOwner')
DestroyGrabLine=GrabEvents:FindFirstChild('DestroyGrabLine')CreateGrabEvent=GrabEvents:FindFirstChild('CreateGrabLine')
Debris=game:GetService('Debris')local ab=function()char=LocalPlayer.Character if not char or not char:FindFirstChild(
'Head')then return nil end owner=char.Head:FindFirstChild('PartOwner')if not owner or not owner:IsA('StringValue')then
return nil end return game:GetService('Players'):FindFirstChild(owner.Value)end local ac=function(ac)if not ac or not ac
.Character then return end root=ac.Character:FindFirstChild('HumanoidRootPart')if not root then return end pcall(
function()SetNetworkOwner:FireServer(root,root.CFrame)if DestroyGrabLine then DestroyGrabLine:FireServer(root)end away=(
root.Position-LocalPlayer.Character.HumanoidRootPart.Position).Unit away=Vector3.new(away.X,0,away.Z)*90000 bv=Instance.
new('BodyVelocity')bv.Name='RinneganFling'bv.MaxForce=Vector3.new(math.huge,math.huge,math.huge)bv.Velocity=away bv.P=
12500 bv.Parent=root Debris:AddItem(bv,0.01)end)end local ad=function(ad)if not ad or not ad.Character then return end
root=ad.Character:FindFirstChild('HumanoidRootPart')if not root then return end pcall(function()SetNetworkOwner:
FireServer(root,root.CFrame)if DestroyGrabLine then DestroyGrabLine:FireServer(root)end away=(root.Position-LocalPlayer.
Character.HumanoidRootPart.Position).Unit away=Vector3.new(away.X,0,away.Z)*99999999999999 bv=Instance.new(
'BodyVelocity')bv.Name='RinneganFling'bv.MaxForce=Vector3.new(math.huge,math.huge,math.huge)bv.Velocity=away bv.P=12500
bv.Parent=root Debris:AddItem(bv,0.01)end)end local ae=function(ae)if not ae or not ae.Character then return end root=ae
.Character:FindFirstChild('HumanoidRootPart')if not root then return end pcall(function()SetNetworkOwner:FireServer(root
,root.CFrame)if DestroyGrabLine then DestroyGrabLine:FireServer(root)end root.CFrame=CFrame.new(0,200,0)bv=Instance.new(
'BodyVelocity')bv.Name='RinneganHeaven'bv.MaxForce=Vector3.new(0,math.huge,0)bv.Velocity=Vector3.new(0,200,0)bv.P=12500
bv.Parent=root Debris:AddItem(bv,0.01)end)end local af=function(af)if not af or not af.Character then return end root=af
.Character:FindFirstChild('HumanoidRootPart')if not root then return end pcall(function()SetNetworkOwner:FireServer(root
,root.CFrame)if DestroyGrabLine then DestroyGrabLine:FireServer(root)end root.CFrame=CFrame.new(0,999999999999,0)bv=
Instance.new('BodyVelocity')bv.Name='RinneganHeaven'bv.MaxForce=Vector3.new(0,math.huge,0)bv.Velocity=Vector3.new(0,
99999999999999,0)bv.P=12500 bv.Parent=root Debris:AddItem(bv,0.01)end)end local ag=function(ag)if not ag or not ag.
Character then return end root=ag.Character:FindFirstChild('HumanoidRootPart')if not root then return end pcall(function
()SetNetworkOwner:FireServer(root,root.CFrame)if DestroyGrabLine then DestroyGrabLine:FireServer(root)end bv=Instance.
new('BodyVelocity')bv.Name='RinneganSpy'bv.MaxForce=Vector3.new(math.huge,math.huge,math.huge)bv.Velocity=Vector3.new(0,
-20,0)bv.P=12500 bv.Parent=root Debris:AddItem(bv,0.01)end)end local ah=function(ah)if not ah or not ah.Character then
return end root=ah.Character:FindFirstChild('HumanoidRootPart')if not root then return end pcall(function()
SetNetworkOwner:FireServer(root,root.CFrame)if DestroyGrabLine then DestroyGrabLine:FireServer(root)end for ai,L in
ipairs(ah.Character:GetDescendants())do if L:IsA('BasePart')and not L.Anchored then L.CanCollide=false end end bv=
Instance.new('BodyVelocity')bv.Name='RinneganSpy'bv.MaxForce=Vector3.new(math.huge,math.huge,math.huge)bv.Velocity=
Vector3.new(0,-1E8,0)bv.P=12500 bv.Parent=root local ai ai=game:GetService('RunService').Heartbeat:Connect(function()if
not ah.Character or not ah.Character.Parent then ai:Disconnect()return end for L,M in ipairs(ah.Character:
GetDescendants())do if M:IsA('BasePart')and not M.Anchored then M.CanCollide=false end end end)task.delay(0.01,function(
)if ai then ai:Disconnect()end end)Debris:AddItem(bv,0.01)end)end local ai=function(ai)if not ai or not ai.Character
then return end root=ai.Character:FindFirstChild('HumanoidRootPart')if not root then return end pcall(function()
SetNetworkOwner:FireServer(root,root.CFrame)if DestroyGrabLine then DestroyGrabLine:FireServer(root)end root.CFrame=
CFrame.new(591,153,-101)end)end local L=function(L)while crazyline do pcall(function()char=LocalPlayer.Character if char
then head=char:FindFirstChild('Head')if head then owner=head:FindFirstChild('PartOwner')if owner and owner:IsA(
'StringValue')then L=game:GetService('Players'):FindFirstChild(owner.Value)if L and L.Character then attackerHead=L.
Character:FindFirstChild('Head')attackerHRP=L.Character:FindFirstChild('HumanoidRootPart')if attackerHead and
attackerHRP then for M=1,10 do pcall(function()CreateGrabEvent:FireServer(attackerHead,attackerHead.CFrame)end)end for M
=1,10 do pcall(function()CreateGrabEvent:FireServer(attackerHRP,attackerHRP.CFrame)end)end end end end end end end)task.
wait(0.01)end end local M=function()if defenseConnection then return end defenseConnection=game:GetService('RunService')
.Heartbeat:Connect(function()if not defenseEnabled then return end attacker=ab()if not attacker then return end if
defenseMode=='Fling'then ac(attacker)elseif defenseMode=='Kill'then ad(attacker)elseif defenseMode=='Send to Heaven'then
ae(attacker)elseif defenseMode=='Kick'then af(attacker)elseif defenseMode=='Ragdoll'then ag(attacker)elseif defenseMode
=='Hell'then ah(attacker)elseif defenseMode=='China'then ai(attacker)elseif defenseMode=='GrabLine'then if not
crazylineTask then crazyline=true crazylineTask=task.spawn(L)end end end)end local N=function()if defenseConnection then
defenseConnection:Disconnect()defenseConnection=nil end crazyline=false if crazylineTask then task.cancel(crazylineTask)
crazylineTask=nil end for N,O in ipairs(game:GetService('Players'):GetPlayers())do char=O.Character if char then for P,Q
in ipairs(char:GetDescendants())do if Q:IsA('BodyVelocity')and(Q.Name=='RinneganFling'or Q.Name=='RinneganHeaven'or Q.
Name=='RinneganSpy')then Q:Destroy()end end end end end LocalPlayer.CharacterAdded:Connect(function()if defenseEnabled
then task.wait(1)M()end end)DefR:AddCheckbox('RinneganDefense',{Text='Counter Attacks',Default=false,Callback=function(O
)defenseEnabled=O if O then M()else N()end end})DefR:AddDropdown('RinneganMode',{Text='Attack Mode',Values={'Fling',
'Kill','Send to Heaven','Kick','Ragdoll','Hell','China','GrabLine'},Default='Fling',Callback=function(O)defenseMode=O
end})TgtL=Tabs.Target:AddLeftGroupbox('Target Selector','crosshair')SelectedPlayer=nil lastGrabberDisplay='None'
lastGrabberName=nil _selectedPlayers={}_killRoundIndex=1 _dropdownUpdating=false _previouslyTargeted={}_tracerEnabled=
false _tracerConnections={}_tracerParts={}_tracerObjects={}_isViewing=false PLOT_NAMES={[1]='Blue House',[2]=
'Pink House',[3]='Spooky House',[4]='Chinese House',[5]='Green House'}PLOT_COLORS={[1]='#5eb8ff',[2]='#ff85c2',[3]=
'#b06fff',[4]='#ffcc55',[5]='#55e87a'}RunService.Heartbeat:Connect(function()if#_selectedPlayers==0 then SelectedPlayer=
nil return end if _killRoundIndex>#_selectedPlayers then _killRoundIndex=1 end SelectedPlayer=_selectedPlayers[
_killRoundIndex]_killRoundIndex=_killRoundIndex%#_selectedPlayers+1 end)function getPlayerList()list={}for O,P in
ipairs(Players:GetPlayers())do if P~=LocalPlayer then table.insert(list,P.DisplayName..' (@'..P.Name..')')end end return
list end function extractUsername(O)return O and O:match('@([%w_]+)')end function getSelectedPlayer()for O,P in ipairs(
_selectedPlayers)do p=Players:FindFirstChild(P)if p then return p end end return nil end function _syncPreviousTargets()
for O,P in ipairs(_selectedPlayers)do _previouslyTargeted[P]=true end end function _removeFromTargets(O)for P,Q in
ipairs(_selectedPlayers)do if Q==O then table.remove(_selectedPlayers,P)break end end end function _refreshDropdown()
_dropdownUpdating=true PlayerDropdown:SetValues(getPlayerList())_dropdownUpdating=false end function getPlayerPlot(O)
plotsFolder=workspace:FindFirstChild('Plots')or workspace:FindFirstChild('plots')if not plotsFolder then return nil,nil
end for P=1,5 do plot=plotsFolder:FindFirstChild('Plot'..P)if plot then for Q,S in ipairs(plot:GetDescendants())do vt=S.
ClassName if vt=='StringValue'or vt=='ObjectValue'or vt=='IntValue'then ok,v=pcall(function()return tostring(S.Value)end
)if ok and v and v:find(O.Name,1,true)then return plot,P end end end end end return nil,nil end function targetInPlot(O)
if not O or not O.Character then return false end hrp=O.Character:FindFirstChild('HumanoidRootPart')plot=getPlayerPlot(O
)if not hrp or not plot then return false end base=plot:FindFirstChild('Base')or plot:FindFirstChildWhichIsA('BasePart')
if not base then return false end pos=base.CFrame:PointToObjectSpace(hrp.Position)half=base.Size/2 return math.abs(pos.X
)<=half.X and math.abs(pos.Z)<=half.Z and math.abs(pos.Y)<=(half.Y+25)end function getPlotRichText(O)plot,idx=
getPlayerPlot(O)if not plot or not idx then return"<font color='#555555'>None</font>"end name=PLOT_NAMES[idx]or('Plot '
..idx)col=PLOT_COLORS[idx]or'#ffffff'inside=targetInPlot(O)tag=inside and"  <font color='#55e87a'>[Inside]</font>"or
"  <font color='#ffaa33'>[Nearby]</font>"return"<font color='"..col.."'><b>"..name..'</b></font>'..tag end
_currentAvatarUserId=nil function _updateAvatarDisplay()primary=_selectedPlayers[1]and Players:FindFirstChild(
_selectedPlayers[1])if not primary then _currentAvatarUserId=nil pcall(function()AvatarImage:SetImage('rbxassetid://0')
end)return end uid=primary.UserId if uid==_currentAvatarUserId then return end _currentAvatarUserId=uid task.spawn(
function()ok,content=pcall(Players.GetUserThumbnailAsync,Players,uid,Enum.ThumbnailType.AvatarBust,Enum.ThumbnailSize.
Size420x420)if ok and content and content~=''then pcall(function()AvatarImage:SetImage(content)end)end end)end
_tracerObjects={}function _cleanupTracers()for O,P in ipairs(_tracerConnections)do pcall(function()P:Disconnect()end)end
for O,P in ipairs(_tracerObjects)do pcall(function()P.line:Remove()end)pcall(function()if P.shadow then P.shadow:Remove(
)end end)pcall(function()if P.dot then P.dot:Remove()end end)pcall(function()P.highlight:Destroy()end)end
_tracerConnections={}_tracerObjects={}for O,P in ipairs(_tracerParts)do pcall(function()P:Destroy()end)end _tracerParts=
{}end function _buildTracerFor(O)if not O or not O.Character then return end char=O.Character hrp=char:FindFirstChild(
'HumanoidRootPart')if not hrp then return end hl=Instance.new('Highlight')hl.Name='_PhantHL_'..O.Name hl.Adornee=char hl
.OutlineColor=Color3.fromRGB(255,255,255)hl.OutlineTransparency=0 hl.FillColor=Color3.fromRGB(255,255,255)hl.
FillTransparency=1 hl.DepthMode=Enum.HighlightDepthMode.AlwaysOnTop hl.Parent=char shadow=Drawing.new('Line')shadow.
Thickness=3 shadow.Color=Color3.fromRGB(20,20,20)shadow.Transparency=0.55 shadow.Visible=false core=Drawing.new('Line')
core.Thickness=1.5 core.Color=Color3.fromRGB(255,255,255)core.Transparency=1 core.Visible=false dot=Drawing.new('Circle'
)dot.Radius=3 dot.Color=Color3.fromRGB(255,80,80)dot.Thickness=1.5 dot.Filled=true dot.Transparency=1 dot.Visible=false
camera=workspace.CurrentCamera function getOrigin()vp=camera.ViewportSize return Vector2.new(vp.X*0.5,vp.Y)end conn=
RunService.RenderStepped:Connect(function()if not _tracerEnabled then return end if not hrp or not hrp.Parent then core.
Visible=false shadow.Visible=false dot.Visible=false return end origin=getOrigin()cam=camera toTarget=hrp.Position-cam.
CFrame.Position lookVec=cam.CFrame.LookVector inFront=toTarget:Dot(lookVec)>0 local P if inFront then screenPos,onScreen
=cam:WorldToViewportPoint(hrp.Position)if onScreen then P=Vector2.new(screenPos.X,screenPos.Y)else vp=cam.ViewportSize
raw=Vector2.new(screenPos.X,screenPos.Y)P=Vector2.new(math.clamp(raw.X,0,vp.X),math.clamp(raw.Y,0,vp.Y))end else vp=cam.
ViewportSize centre=Vector2.new(vp.X*0.5,vp.Y*0.5)rightVec=cam.CFrame.RightVector upVec=cam.CFrame.UpVector sx=toTarget:
Dot(rightVec)sy=-toTarget:Dot(upVec)dir2=Vector2.new(sx,sy)if dir2.Magnitude>0 then dir2=dir2.Unit end edgeX=sx>0 and(vp
.X-10)or 10 edgeY=math.clamp(centre.Y+dir2.Y*vp.Y*0.4,10,vp.Y-10)P=Vector2.new(edgeX,edgeY)end core.From=origin core.To=
P core.Visible=true shadow.From=origin shadow.To=P shadow.Visible=true dot.Position=P dot.Visible=true if hl.Adornee~=O.
Character then hl.Adornee=O.Character end end)table.insert(_tracerConnections,conn)table.insert(_tracerObjects,{line=
core,shadow=shadow,dot=dot,highlight=hl,conn=conn,username=O.Name})end function _rebuildTracers()_cleanupTracers()if not
_tracerEnabled then return end for O,P in ipairs(_selectedPlayers)do plr=Players:FindFirstChild(P)if plr then
_buildTracerFor(plr)end end end function setTargetsFromTable(O,P)_selectedPlayers={}for Q,S in pairs(O)do if S then un=
extractUsername(Q)if un then plr=Players:FindFirstChild(un)if plr and plr~=LocalPlayer then table.insert(
_selectedPlayers,un)end end end end _killRoundIndex=1 _syncPreviousTargets()first=_selectedPlayers[1]and Players:
FindFirstChild(_selectedPlayers[1])if first then pcall(function()BlobmanTarget:SetValue(first.DisplayName..' ('..first.
Name..')')end)pcall(function()GrabTarget:SetValue(first.DisplayName..' ('..first.Name..')')end)end count=#
_selectedPlayers src=P and(' ['..P..']')or''if count==0 then Library:Notify({Title='Target',Description=
'No targets selected',Duration=2})elseif count==1 then p=Players:FindFirstChild(_selectedPlayers[1])Library:Notify({
Title='Target set'..src,Description=p and(p.DisplayName..' (@'..p.Name..')')or _selectedPlayers[1],Duration=4})else
Library:Notify({Title='Target set'..src,Description=count..' players targeted',Duration=4})end _updateAvatarDisplay()if
_tracerEnabled then _rebuildTracers()end end function addTarget(O,P)if O==LocalPlayer then return end for Q,S in ipairs(
_selectedPlayers)do if S==O.Name then Library:Notify({Title='Target',Description=O.DisplayName..
' is already selected in your dropdown.',Duration=2})return end end table.insert(_selectedPlayers,O.Name)
_previouslyTargeted[O.Name]=true _dropdownUpdating=true pcall(function()PlayerDropdown:SetValue(O.DisplayName..' (@'..O.
Name..')')end)_dropdownUpdating=false Library:Notify({Title='Target added',Description=O.DisplayName..' (@'..O.Name..')'
,Duration=4})_updateAvatarDisplay()if _tracerEnabled then _rebuildTracers()end end TgtL:AddDivider()AvatarImage=TgtL:
AddImage('AvatarDisplay',{Image='rbxassetid://0'})TgtL:AddDivider()SelectedLabel=TgtL:AddLabel(
[[<b><font color='#aaaaaa'>Selected</font></b> <font color='#888888'>None</font>]])TargetDistLabel=TgtL:AddLabel(
"<b><font color='#aaaaaa'>Distance</font></b>  <font color='#555555'>\u{2014}</font>")LastGrabberLabel=TgtL:AddLabel(
[[<b><font color='#aaaaaa'>Last Grabber</font></b> <font color='#888888'>None</font>]])TgtL:AddDivider()PlayerDropdown=
TgtL:AddDropdown('PlayerDropdown',{Text='Select A Target',Values=getPlayerList(),Default={},Multi=true,Callback=function
(O)if _dropdownUpdating then return end setTargetsFromTable(O,'Dropdown')end})TgtL:AddDivider()local O O=TgtL:AddButton(
{Text='View Target',Func=function()if _isViewing then char=LocalPlayer.Character hum=char and char:
FindFirstChildOfClass('Humanoid')if hum then workspace.CurrentCamera.CameraSubject=hum end workspace.CurrentCamera.
CameraType=Enum.CameraType.Custom _isViewing=false O:SetText('View Target')Library:Notify({Title='View',Description=
'Camera restored',Duration=2})else plr=_selectedPlayers[1]and Players:FindFirstChild(_selectedPlayers[1])if not plr or
not plr.Character then return Library:Notify({Title='View',Description='No valid target',Duration=2})end hrp=plr.
Character:FindFirstChild('HumanoidRootPart')if not hrp then return Library:Notify({Title='View',Description=
'No character root',Duration=2})end workspace.CurrentCamera.CameraSubject=hrp workspace.CurrentCamera.CameraType=Enum.
CameraType.Follow _isViewing=true O:SetText("<b><font color='#55e87a'>Unview Target</font></b>")Library:Notify({Title=
'View',Description='Now viewing '..plr.DisplayName,Duration=3})end end})TgtL:AddButton({Text=
"<b><font color='#ff5050'>Clear All Targets</font></b>",Func=function()_selectedPlayers={}_previouslyTargeted={}
_killRoundIndex=1 SelectedPlayer=nil _tracerEnabled=false _cleanupTracers()if _isViewing then char=LocalPlayer.Character
hum=char and char:FindFirstChildOfClass('Humanoid')if hum then workspace.CurrentCamera.CameraSubject=hum end workspace.
CurrentCamera.CameraType=Enum.CameraType.Custom _isViewing=false O:SetText('View Target')end _refreshDropdown()
_updateAvatarDisplay()end})TgtL:AddDivider()TgtL:AddLabel('Add Target'):AddKeyPicker('AimToTarget',{Default='RightAlt',
NoUI=false,Text='Aim To Target',Callback=function()best=nil tar=Mouse.Target if tar then c=tar while c and c~=workspace
do pl=Players:GetPlayerFromCharacter(c)if pl and pl~=LocalPlayer then best=pl break end c=c.Parent end end if best then
addTarget(best,'AimKey')end end})task.spawn(function()prev={sel='',dist='',grab=''}while true do task.wait(0.5)g=
[[<b><font color='#aaaaaa'>Last Grabber</font></b> <font color='#ff9955'>]]..lastGrabberDisplay..'</font>'if g~=prev.
grab then prev.grab=g LastGrabberLabel:SetText(g)end count=#_selectedPlayers local P if count==0 then P=
[[<b><font color='#aaaaaa'>Selected</font></b> <font color='#555555'>None</font>]]elseif count==1 then p=Players:
FindFirstChild(_selectedPlayers[1])if p then P="<b><font color='#aaaaaa'>Selected</font></b> ".."<font color='#fff'>"..p
.DisplayName..'</font>'.."<font color='#777'> (@"..p.Name..')</font>'else P=
[[<b><font color='#aaaaaa'>Selected</font></b> <font color='#555555'>left</font>]]end else t={}for Q,S in ipairs(
_selectedPlayers)do p=Players:FindFirstChild(S)table.insert(t,p and p.DisplayName or S)end P=
"<b><font color='#aaaaaa'>Selected</font></b> ".."<font color='#fff'>"..table.concat(t,', ')..'</font>'end if P~=prev.
sel then prev.sel=P SelectedLabel:SetText(P)end primary=_selectedPlayers[1]and Players:FindFirstChild(_selectedPlayers[1
])local Q if primary and primary.Character then hrp=primary.Character:FindFirstChild('HumanoidRootPart')lhrp=LocalPlayer
.Character and LocalPlayer.Character:FindFirstChild('HumanoidRootPart')if hrp and lhrp then d=math.floor((hrp.Position-
lhrp.Position).Magnitude)col='#55e87a'if d<50 then col='#ff5050'elseif d<150 then col='#ffcc55'end Q=
"<b><font color='#aaaaaa'>Distance</font></b> ".."<font color='"..col.."'><b>"..d..' studs</b></font>'end end Q=Q or
"<b><font color='#aaaaaa'>Distance</font></b> <font color='#555555'>\u{2014}</font>"if Q~=prev.dist then prev.dist=Q
TargetDistLabel:SetText(Q)end end end)Players.PlayerAdded:Connect(function(P)task.wait(0.5)if _previouslyTargeted[P.Name
]and P~=LocalPlayer then table.insert(_selectedPlayers,P.Name)_killRoundIndex=1 _dropdownUpdating=true pcall(function()
PlayerDropdown:SetValue(P.DisplayName..' (@'..P.Name..')')end)_dropdownUpdating=false Library:Notify({Title=
'Target Rejoined',Description=P.DisplayName,Duration=6})if _tracerEnabled then task.wait(1)_rebuildTracers()end end
_refreshDropdown()end)Players.PlayerRemoving:Connect(function(P)task.wait(0.5)_removeFromTargets(P.Name)
_refreshDropdown()end)TgtR=Tabs.Target:AddRightGroupbox('No blobman methods','axe')do playerFlingActive=false flingBAV=
nil originalPos=nil Players=game:GetService('Players')RunService=game:GetService('RunService')Workspace=game:GetService(
'Workspace')ReplicatedStorage=game:GetService('ReplicatedStorage')LocalPlayer=Players.LocalPlayer R=ReplicatedStorage
TgtR:AddCheckbox('FlingTarget',{Text='Fling Target',Default=false,Callback=function(P)playerFlingActive=P if P then
targetPlayer=getSelectedPlayer()if not targetPlayer then playerFlingActive=false TgtR:SetValue(false)return end MyChar=
LocalPlayer.Character MyRoot=MyChar and MyChar:FindFirstChild('HumanoidRootPart')if MyRoot then originalPos=MyRoot.
CFrame end task.spawn(function()while playerFlingActive do target=getSelectedPlayer()if not target then
playerFlingActive=false break end char=LocalPlayer.Character hrp=char and char:FindFirstChild('HumanoidRootPart')hum=
char and char:FindFirstChild('Humanoid')if not hrp or not hum then task.wait(0.5)continue end if target and target.
Parent then tChar=target.Character tRoot=tChar and tChar:FindFirstChild('HumanoidRootPart')tHum=tChar and tChar:
FindFirstChild('Humanoid')if tRoot and tHum and tHum.Health>0 then if not flingBAV or flingBAV.Parent~=hrp then if
flingBAV then flingBAV:Destroy()end flingBAV=Instance.new('BodyAngularVelocity')flingBAV.Name='MaestroSpin'flingBAV.
MaxTorque=Vector3.new(math.huge,math.huge,math.huge)flingBAV.AngularVelocity=Vector3.new(0,10000,0)flingBAV.P=10000
flingBAV.Parent=hrp end for Q,S in pairs(char:GetDescendants())do if S:IsA('BasePart')then S.CanCollide=false end end
loop=RunService.Heartbeat:Connect(function()if not playerFlingActive or not tRoot or not tRoot.Parent then return end
hrp.CFrame=tRoot.CFrame hrp.Velocity=Vector3.zero end)startTime=tick()while tick()-startTime<1.5 do if not
playerFlingActive or not tRoot.Parent then break end task.wait(0.1)end if loop then loop:Disconnect()end else task.wait(
0.2)end else playerFlingActive=false end task.wait(0.1)end if flingBAV then flingBAV:Destroy()flingBAV=nil end char=
LocalPlayer.Character if char then for Q,S in pairs(char:GetDescendants())do if S:IsA('BasePart')then S.CanCollide=true
end end hrp=char:FindFirstChild('HumanoidRootPart')if hrp then hrp.RotVelocity=Vector3.zero hrp.Velocity=Vector3.zero if
originalPos then hrp.CFrame=originalPos end end end end)else playerFlingActive=false if flingBAV then flingBAV:Destroy()
flingBAV=nil end char=LocalPlayer.Character hrp=char and char:FindFirstChild('HumanoidRootPart')if hrp then hrp.
RotVelocity=Vector3.zero hrp.Velocity=Vector3.zero end end end})end do loopKillActive=false loopKillHB=nil
loopKillCameraAnchor=nil HEIGHT_LIMIT=100000 TELEPORT_OFFSET=Vector3.new(6,-18.5,0)Players=game:GetService('Players')
RunService=game:GetService('RunService')Workspace=game:GetService('Workspace')ReplicatedStorage=game:GetService(
'ReplicatedStorage')LocalPlayer=Players.LocalPlayer R=ReplicatedStorage local P=function(P)c=P.Character hrp=c and c:
FindFirstChild('HumanoidRootPart')return not hrp or hrp.Position.Y>HEIGHT_LIMIT end local Q=function(Q)for S,T in
ipairs(Q:GetDescendants())do if T:IsA('BasePart')then T.CanCollide=false end end end local S=function()char=LocalPlayer.
Character hrp=char and char:FindFirstChild('HumanoidRootPart')if hrp then char:SetAttribute('OriginalPosition',hrp:
GetPivot())end end local T=function()char=LocalPlayer.Character return char and char:GetAttribute('OriginalPosition')or
nil end local U=function()toys=Workspace:FindFirstChild(LocalPlayer.Name..'SpawnedInToys')return toys and toys:
FindFirstChild('CreatureBlobman')or nil end local V=function()b=U()if b then return b end pcall(function()SpawnToy=R.
MenuToys.SpawnToyRemoteFunction if SpawnToy then SpawnToy:InvokeServer('CreatureBlobman',LocalPlayer.Character.
HumanoidRootPart.CFrame*CFrame.new(0,0,-5),Vector3.new(0,-15,0))end end)for V=1,30 do task.wait(0.1)b=U()if b then
return b end end return nil end local W=function(W,X)if not(W and X)or X.Health<=0 then return end blob=V()if blob and
blob:FindFirstChild('BlobmanSeatAndOwnerScript')then drop=blob.BlobmanSeatAndOwnerScript:FindFirstChild('CreatureDrop')
if drop then for Y,Z in ipairs(X.Parent:GetDescendants())do if Z:IsA('Weld')or Z:IsA('BallSocketConstraint')then drop:
FireServer(Z,Z)end end end end X.Sit=false X:ChangeState(Enum.HumanoidStateType.Running)X:SetStateEnabled(Enum.
HumanoidStateType.Seated,false)X:ChangeState(Enum.HumanoidStateType.GettingUp)plr=Players:GetPlayerFromCharacter(X.
Parent)if plr and plr:FindFirstChild('IsHeld')then plr.IsHeld.Value=false end rag=X:FindFirstChild('Ragdolled')if rag
then rag.Value=false end bv=Instance.new('BodyVelocity')bav=Instance.new('BodyAngularVelocity')bv.MaxForce=Vector3.new(
1e7,-1E7,1e7)bv.P=1e6 bv.Velocity=Vector3.new(math.random(-500,50),-50,math.random(-50,50))bav.MaxTorque=Vector3.new(-
1E7,-1E7,-1E7)bav.P=1e6 bav.AngularVelocity=Vector3.new(math.random(-500,300),math.random(-300,300),math.random(-500,500
))bv.Parent=W bav.Parent=W X.BreakJointsOnDeath=false X:ChangeState(Enum.HumanoidStateType.Dead)task.delay(2,function()
if bv.Parent then bv:Destroy()end if bav.Parent then bav:Destroy()end end)end local X=function()if not loopKillActive
then return end target=getSelectedPlayer()if not target then return end tChar=target and target.Character tRoot=tChar
and tChar:FindFirstChild('HumanoidRootPart')tHum=tChar and tChar:FindFirstChild('Humanoid')tHead=tChar and tChar:
FindFirstChild('Head')if not(target and tRoot and tHum and tHead)then return end if P(target)then return end if tHum:
GetState()==Enum.HumanoidStateType.Dead then return end char=LocalPlayer.Character hrp=char and char:FindFirstChild(
'HumanoidRootPart')if not(char and hrp)then return end if not char:GetAttribute('SavingOriginalPos')then S()end char:
SetAttribute('SavingOriginalPos',true)getgenv().originalFallenHeight=Workspace.FallenPartsDestroyHeight Workspace.
FallenPartsDestroyHeight=0/0 originalPos=T()if originalPos and loopKillCameraAnchor then loopKillCameraAnchor:attach(
originalPos)end hrp:PivotTo(CFrame.new(tRoot.Position+TELEPORT_OFFSET))Q(tChar)pcall(function()R.GrabEvents.
SetNetworkOwner:FireServer(tRoot,tRoot.CFrame)end)task.wait(0.05)pcall(function()R.GrabEvents.DestroyGrabLine:
FireServer(tRoot)end)task.wait(0.05)if tHead:FindFirstChild('PartOwner')and tHead.PartOwner.Value==LocalPlayer.Name then
task.wait(0.05)W(tRoot,tHum)end scheduleReturnHome()end TgtR:AddCheckbox('LoopKill',{Text='Loop Kill',Default=false,
Callback=function(Y)loopKillActive=Y if not loopKillCameraAnchor then loopKillCameraAnchor={}loopKillCameraAnchor.
__index=loopKillCameraAnchor function loopKillCameraAnchor:attach(Z)self:detach()p=Instance.new('Part')p.Name=
'CameraAnchor'p.Size=Vector3.new(0.2,0.2,0.2)p.Transparency=1 p.Anchored=true p.CanCollide=false p.CFrame=Z p.Parent=
Workspace self.part=p cam=Workspace.CurrentCamera cam.CameraType=Enum.CameraType.Custom cam.CameraSubject=p end function
loopKillCameraAnchor:detach()if self.part then self.part:Destroy()self.part=nil end cam=Workspace.CurrentCamera char=
LocalPlayer.Character if char and char:FindFirstChild('Humanoid')then cam.CameraSubject=char.Humanoid else cam.
CameraType=Enum.CameraType.Custom end end end if Y then target=getSelectedPlayer()if not target then loopKillActive=
false TgtR:SetValue(false)return end if loopKillHB then loopKillHB:Disconnect()end loopKillHB=RunService.Heartbeat:
Connect(X)else loopKillActive=false if loopKillHB then loopKillHB:Disconnect()loopKillHB=nil end if loopKillCameraAnchor
then loopKillCameraAnchor:detach()end getgenv().originalFallenHeight=nil char=LocalPlayer.Character if char then char:
SetAttribute('SavingOriginalPos',false)char:SetAttribute('OriginalPosition',nil)end Workspace.FallenPartsDestroyHeight=-
100 end end})end do local P,Q,S=false,nil,nil TgtR:AddCheckbox('OatsKick',{Text='Oats Kick',Default=false,Callback=
function(T)P=T local U=function(U)pcall(function()local V=game:GetService('ReplicatedStorage'):FindFirstChild(
'GrabEvents')local W=V and V:FindFirstChild('SetNetworkOwner')if W then W:FireServer(U,U.CFrame)end end)end if T then
local V=getSelectedPlayer()if not V then P=false Library:Notify({Title='Oats Kick',Description=
'Please select a target first!',Duration=3})TgtR:SetValue(false)return end if S then S:Disconnect()S=nil end S=workspace
.ChildAdded:Connect(function(W)if W.Name~='GrabParts'then return end if not P then return end local X=W:FindFirstChild(
'GrabPart')if not X then return end local Y=X:FindFirstChild('WeldConstraint')if not Y then return end local Z=Y.Part1
if not Z then return end local _=Players:GetPlayerFromCharacter(Z.Parent)if not _ then return end local aj,ak=
ReplicatedStorage:FindFirstChild('GrabEvents')and ReplicatedStorage.GrabEvents:FindFirstChild('DestroyGrabLine'),
ReplicatedStorage:FindFirstChild('GrabEvents')and ReplicatedStorage.GrabEvents:FindFirstChild('SetNetworkOwner')if not
aj or not ak then return end task.spawn(function()while W.Parent and X.Parent and P do for al=1,8 do if not(W.Parent and
X.Parent and P)then break end pcall(function()aj:FireServer(X)end)RunService.RenderStepped:Wait()if not(W.Parent and X.
Parent and P)then break end pcall(function()ak:FireServer(X,X.CFrame)end)RunService.RenderStepped:Wait()end local al=
LocalPlayer.Character local am=al and al:FindFirstChild('HumanoidRootPart')if am and Z and Z.Parent then local an=am.
CFrame*CFrame.new(0,15,0)Z.CFrame=an Z.AssemblyLinearVelocity=Vector3.zero Z.AssemblyAngularVelocity=Vector3.zero end
end end)end)Q=task.spawn(function()local aj,ak,al=game:GetService('RunService'),game:GetService('ReplicatedStorage'),
LocalPlayer.Character local am=al and al:FindFirstChild('HumanoidRootPart')if not(al and am)then P=false return end
local an,W=am.CFrame,tick()while P and aj.Heartbeat:Wait()do local X=getSelectedPlayer()if not X then break end al=
LocalPlayer.Character am=al and al:FindFirstChild('HumanoidRootPart')local Y,Z=al and al:FindFirstChild('Head'),X.
Character local _,ao=Z and Z:FindFirstChild('HumanoidRootPart'),Z and Z:FindFirstChild('Humanoid')if not(al and am and Y
)or not(_ and ao)or ao.Health<=0 then continue end local ap=(_.Position-am.Position).Magnitude if ap>30 then pcall(
function()al:PivotTo(_.CFrame*CFrame.new(0,2,4))end)U(_)if not _:FindFirstChild('KickAlign')then local aq=_:
FindFirstChildOfClass('BodyPosition')if aq then aq:Destroy()end local ar=Instance.new('Attachment',_)ar.Name='KickAtt0'
local as=Instance.new('Attachment',workspace.Terrain)as.Name='KickAtt1'local at=Instance.new('AlignPosition')at.Name=
'KickAlign'at.Attachment0=ar at.Attachment1=as at.MaxForce=math.huge at.Responsiveness=200 at.Parent=_ local au=Instance
.new('AlignOrientation')au.Name='KickRot'au.Attachment0=ar au.Mode=Enum.OrientationAlignmentMode.OneAttachment au.CFrame
=CFrame.new()au.MaxTorque=math.huge au.Responsiveness=200 au.Parent=_ end local aq=tick()while(tick()-aq)<0.3 and P do
task.wait(0.05)U(_)pcall(function()local ar=ak:FindFirstChild('GrabEvents')local as=ar and ar:FindFirstChild(
'DestroyGrabLine')if as then as:FireServer(_)end end)local ar=_:FindFirstChild('KickAlign')if Y and ar and ar.
Attachment1 then ar.Attachment1.WorldPosition=Y.Position+Vector3.new(0,15,0)end end if P then pcall(function()al:
PivotTo(an)_.CFrame=an*CFrame.new(0,15,0)end)end continue end if not _:FindFirstChild('KickAlign')then local aq=_:
FindFirstChildOfClass('BodyPosition')if aq then aq:Destroy()end local ar=Instance.new('Attachment',_)ar.Name='KickAtt0'
local as=Instance.new('Attachment',workspace.Terrain)as.Name='KickAtt1'local at=Instance.new('AlignPosition')at.Name=
'KickAlign'at.Attachment0=ar at.Attachment1=as at.MaxForce=math.huge at.Responsiveness=200 at.Parent=_ local au=Instance
.new('AlignOrientation')au.Name='KickRot'au.Attachment0=ar au.Mode=Enum.OrientationAlignmentMode.OneAttachment au.CFrame
=CFrame.new()au.MaxTorque=math.huge au.Responsiveness=200 au.Parent=_ end U(_)local aq=_:FindFirstChild('KickAlign')if
aq and aq.Attachment1 and P then aq.Attachment1.WorldPosition=Y.Position+Vector3.new(0,20,0)end local ar=_:
FindFirstChild('KickRot')if ar then ar.CFrame=CFrame.Angles(0,0,0)end if tick()-W>0.05 and P then pcall(function()local
as=ak:FindFirstChild('GrabEvents')local at=as and as:FindFirstChild('DestroyGrabLine')if at then at:FireServer(_)end end
)W=tick()end end if V and V.Character then local ao=V.Character:FindFirstChild('HumanoidRootPart')if ao then local ap,aq
,ar=ao:FindFirstChild('KickAlign'),ao:FindFirstChild('KickRot'),ao:FindFirstChild('KickAtt0')if ap then if ap.
Attachment1 then ap.Attachment1:Destroy()end ap:Destroy()end if aq then aq:Destroy()end if ar then ar:Destroy()end
pcall(function()local as=ak:FindFirstChild('GrabEvents')local at=as and as:FindFirstChild('DestroyGrabLine')if at then
at:FireServer(ao)end end)end end P=false end)else P=false if Q then task.cancel(Q)Q=nil end if S then S:Disconnect()S=
nil end local aj=getSelectedPlayer()if aj and aj.Character then local ak=aj.Character:FindFirstChild('HumanoidRootPart')
if ak then local al,am,an=ak:FindFirstChild('KickAlign'),ak:FindFirstChild('KickRot'),ak:FindFirstChild('KickAtt0')if al
then if al.Attachment1 then al.Attachment1:Destroy()end al:Destroy()end if am then am:Destroy()end if an then an:
Destroy()end pcall(function()local ao=game:GetService('ReplicatedStorage'):FindFirstChild('GrabEvents')local ap=ao and
ao:FindFirstChild('DestroyGrabLine')if ap then ap:FireServer(ak)end end)end end end end})end do OwnershipKickEnabled=
false OwnershipKickTask=nil TgtR:AddCheckbox('OwnershipKick',{Text='Ownership Kick',Default=false,Callback=function(aj)
OwnershipKickEnabled=aj if aj then targetPlayer=getSelectedPlayer()if not targetPlayer then OwnershipKickEnabled=false
Library:Notify({Title='Ownership Kick',Description='Please select a target first!',Duration=3})TgtR:SetValue(false)
return end OwnershipKickTask=task.spawn(function()RS=game:GetService('ReplicatedStorage')GE=RS:FindFirstChild(
'GrabEvents')RunService=game:GetService('RunService')Players=game:GetService('Players')LocalPlayer=game.Players.
LocalPlayer if not GE then OwnershipKickEnabled=false return end myChar=LocalPlayer.Character myRoot=myChar and myChar:
FindFirstChild('HumanoidRootPart')if not myRoot then OwnershipKickEnabled=false return end savedPos=myRoot.CFrame
dragging=false grabStartTime=0 checkStartTime=0 currentFPS=60 fpsConnection=RunService.RenderStepped:Connect(function(ak
)currentFPS=1/ak end)bodyPos=nil bodyGyro=nil local ak=function()pcall(function()if bodyPos then bodyPos:Destroy()
bodyPos=nil end if bodyGyro then bodyGyro:Destroy()bodyGyro=nil end end)end local al=function(al,am)ak()for an,ao in
pairs(al:GetChildren())do if ao:IsA('BodyPosition')or ao:IsA('BodyGyro')then ao:Destroy()end end bodyPos=Instance.new(
'BodyPosition')bodyPos.MaxForce=Vector3.new(9e9,9e9,9e9)bodyPos.D=100 bodyPos.Position=am bodyPos.Parent=al bodyGyro=
Instance.new('BodyGyro')bodyGyro.MaxTorque=Vector3.new(9e9,9e9,9e9)bodyGyro.D=100 bodyGyro.CFrame=CFrame.new(am)bodyGyro
.Parent=al end while OwnershipKickEnabled do currentTarget=getSelectedPlayer()if not currentTarget or not currentTarget.
Parent then ak()break end myChar=LocalPlayer.Character myRoot=myChar and myChar:FindFirstChild('HumanoidRootPart')tChar=
currentTarget.Character tRoot=tChar and tChar:FindFirstChild('HumanoidRootPart')tHum=tChar and tChar:FindFirstChild(
'Humanoid')if tRoot and tHum and tHum.Health>0 and myRoot then if not dragging then myRoot.CFrame=tRoot.CFrame*CFrame.
new(0,0,3)ak()checkStartTime=0 pcall(function()tHum.PlatformStand=true tHum.Sit=true if GE.SetNetworkOwner then GE.
SetNetworkOwner:FireServer(tRoot,tRoot.CFrame)end if GE.SetNetworkOwner then GE.SetNetworkOwner:FireServer(tRoot,tRoot.
CFrame)end if GE.DestroyGrabLine then GE.DestroyGrabLine:FireServer(tRoot)end end)myRoot.AssemblyLinearVelocity=Vector3.
zero myRoot.AssemblyAngularVelocity=Vector3.zero if grabStartTime==0 then grabStartTime=tick()end if tick()-
grabStartTime>0.35 then dragging=true grabStartTime=0 checkStartTime=tick()lockPos=savedPos*CFrame.new(5,20,4)al(tRoot,
lockPos.Position)end else myRoot.CFrame=savedPos lockPos=savedPos*CFrame.new(5,20,4)myRoot.AssemblyLinearVelocity=
Vector3.zero myRoot.AssemblyAngularVelocity=Vector3.zero if bodyPos and bodyPos.Parent then bodyPos.Position=lockPos.
Position if bodyGyro then bodyGyro.CFrame=lockPos end else al(tRoot,lockPos.Position)end tHum.PlatformStand=true pcall(
function()if GE.SetNetworkOwner and GE.DestroyGrabLine then if currentFPS>200 then GE.SetNetworkOwner:FireServer(tRoot,
lockPos)GE.SetNetworkOwner:FireServer(tRoot,lockPos)GE.DestroyGrabLine:FireServer(tRoot)elseif currentFPS>=155 and
currentFPS<=200 then GE.SetNetworkOwner:FireServer(tRoot,lockPos)GE.SetNetworkOwner:FireServer(tRoot,lockPos)GE.
SetNetworkOwner:FireServer(tRoot,lockPos)GE.DestroyGrabLine:FireServer(tRoot)else GE.SetNetworkOwner:FireServer(tRoot,
lockPos)GE.SetNetworkOwner:FireServer(tRoot,lockPos)GE.SetNetworkOwner:FireServer(tRoot,lockPos)GE.SetNetworkOwner:
FireServer(tRoot,lockPos)GE.DestroyGrabLine:FireServer(tRoot)end end end)if checkStartTime>0 and tick()-checkStartTime>
0.3 then currentDist=(tRoot.Position-lockPos.Position).Magnitude if currentDist>10 then dragging=false grabStartTime=0
checkStartTime=0 ak()myRoot.CFrame=tRoot.CFrame*CFrame.new(0,0,3)else checkStartTime=tick()end end end else dragging=
false grabStartTime=0 checkStartTime=0 ak()end RunService.Heartbeat:Wait()end fpsConnection:Disconnect()ak()if myRoot
then myRoot.CFrame=savedPos end end)else OwnershipKickEnabled=false if OwnershipKickTask then task.cancel(
OwnershipKickTask)OwnershipKickTask=nil end targetPlayer=getSelectedPlayer()if targetPlayer and targetPlayer.Character
then tRoot=targetPlayer.Character:FindFirstChild('HumanoidRootPart')if tRoot then for ak,al in pairs(tRoot:GetChildren()
)do if al:IsA('BodyPosition')or al:IsA('BodyGyro')then pcall(function()al:Destroy()end)end end pcall(function()tRoot.
AssemblyLinearVelocity=Vector3.zero tRoot.AssemblyAngularVelocity=Vector3.zero end)end end end end})end TgtR:
AddCheckbox('RemoveAntiKickToggle',{Text='[AURA] Remove Target Anti Kick',Default=false,Callback=function(aj)
antiAntiKickActive=aj if aj then task.spawn(function()SetNetOwner=ReplicatedStorage.GrabEvents.SetNetworkOwner while
antiAntiKickActive do target=getSelectedPlayer()if target then spawned=workspace:FindFirstChild(target.Name..
'SpawnedInToys')if spawned then toys={'NinjaKunai','NinjaShuriken','AntiKick','ToolCleaver','ToolPencil'}for ak,al in
ipairs(toys)do toy=spawned:FindFirstChild(al)if toy then part=toy:FindFirstChild('SoundPart')or toy:FindFirstChild(
'StickyPart')if part then pcall(function()SetNetOwner:FireServer(part,part.CFrame)if part:FindFirstChild('PartOwner')and
part.PartOwner.Value==LocalPlayer.Name then part.CFrame=CFrame.new(0,1000,0)end end)end end end end end task.wait(0.1)
end end)end end})do DestroyTargetGucciActive=false TgtR:AddCheckbox('DestroyTargetGucci',{Text=
'[SIT] Remove Target Gucci',Default=false,Callback=function(aj)DestroyTargetGucciActive=aj if aj then target=
getSelectedPlayer()if not target then Toggles.DestroyTargetGucci:SetValue(false)return end char=LocalPlayer.Character
root=char and char:FindFirstChild('HumanoidRootPart')if not root then return end SafeSpot=root.CFrame folderName=target.
Name..'SpawnedInToys'task.spawn(function()while DestroyTargetGucciActive do target=getSelectedPlayer()if not target or
not target.Parent then DestroyTargetGucciActive=false Toggles.DestroyTargetGucci:SetValue(false)break end toysFolder=
workspace:FindFirstChild(folderName)if toysFolder then for ak,al in ipairs(toysFolder:GetChildren())do if not
DestroyTargetGucciActive then break end if al.Name=='CreatureBlobman'then seat=al:FindFirstChild('VehicleSeat')or al:
FindFirstChildWhichIsA('VehicleSeat',true)if seat then myChar=LocalPlayer.Character myRoot=myChar and myChar:
FindFirstChild('HumanoidRootPart')myHum=myChar and myChar:FindFirstChild('Humanoid')if myRoot and myHum and myHum.
SeatPart~=seat then local am am=RunService.Stepped:Connect(function()if myRoot and seat then myRoot.CFrame=seat.CFrame
myRoot.Velocity=Vector3.zero if al.PrimaryPart then al.PrimaryPart.Velocity=Vector3.zero al.PrimaryPart.RotVelocity=
Vector3.zero end end end)sitStart=tick()while tick()-sitStart<1 do if not DestroyTargetGucciActive then break end if
myHum.SeatPart==seat then break end seat:Sit(myHum)task.wait()end if am then am:Disconnect()end if myHum.SeatPart==seat
then task.wait(0.3)myHum.Sit=false myHum.Jump=true task.wait(0.05)myRoot.CFrame=SafeSpot myRoot.Velocity=Vector3.zero
task.wait(0.5)else myRoot.CFrame=SafeSpot end end end end end end task.wait(1)end end)end end})end TgtR:AddCheckbox(
'PalletRagdoll',{Text='Pallet Ragdoll (Invis)',Default=false,Callback=function(aj)RS=game:GetService('ReplicatedStorage'
)RunService=game:GetService('RunService')DestroyToy=RS:WaitForChild('MenuToys'):WaitForChild('DestroyToy')SetNetOwner=RS
:WaitForChild('GrabEvents'):WaitForChild('SetNetworkOwner')DestroyLine=RS:WaitForChild('GrabEvents'):WaitForChild(
'DestroyGrabLine')toysFolder=workspace:WaitForChild(LocalPlayer.Name..'SpawnedInToys')lpName=LocalPlayer.Name function
clearAttackLoop()if getgenv().ragdollSteppedConn then getgenv().ragdollSteppedConn:Disconnect()getgenv().
ragdollSteppedConn=nil end end if aj then target=getSelectedPlayer()if not target then Toggles.PalletRagdoll:SetValue(
false)return end getgenv().palletRagdollActive=true getgenv().PalletForRagdoll=nil if getgenv().palletCacheConn then
getgenv().palletCacheConn:Disconnect()end clearAttackLoop()getgenv().palletCacheConn=toysFolder.ChildAdded:Connect(
function(ak)if not getgenv().palletRagdollActive then return end if ak.Name~='PalletLightBrown'and ak.Name~=
'PalletForRagdoll'then return end soundPart=ak:WaitForChild('SoundPart',3)if not soundPart then return end pcall(
function()SetNetOwner:FireServer(soundPart,soundPart.CFrame)DestroyLine:FireServer(soundPart)end)partOwner=soundPart:
WaitForChild('PartOwner',1)if partOwner and partOwner.Value==lpName then for al,am in pairs(ak:GetChildren())do if am:
IsA('BasePart')then am.CanCollide=false am.CanQuery=false am.Transparency=1 end end ak.Name='PalletForRagdoll'getgenv().
PalletForRagdoll=ak strikePhase=false getgenv().ragdollSteppedConn=RunService.Stepped:Connect(function()if not getgenv()
.palletRagdollActive or not ak.Parent then clearAttackLoop()return end tChar=target and target.Character tRoot=tChar and
tChar:FindFirstChild('HumanoidRootPart')tHum=tChar and tChar:FindFirstChildOfClass('Humanoid')if tRoot and tHum and
soundPart.Parent and tHum.Health>0 then ragdolledVal=tHum:FindFirstChild('Ragdolled')isRagdolled=ragdolledVal and
ragdolledVal.Value or false if not isRagdolled then strikePhase=not strikePhase if strikePhase then soundPart.CFrame=
tRoot.CFrame*CFrame.new(0,2,0)soundPart.AssemblyLinearVelocity=Vector3.new(0,-9E5,0)else soundPart.CFrame=tRoot.CFrame*
CFrame.new(0,-1,0)soundPart.AssemblyLinearVelocity=Vector3.new(0,9e5,0)end else soundPart.CFrame=CFrame.new(0,9e9,0)
soundPart.AssemblyLinearVelocity=Vector3.zero end else soundPart.CFrame=CFrame.new(0,9e9,0)soundPart.
AssemblyLinearVelocity=Vector3.zero end end)ak.AncestryChanged:Connect(function()if not ak.Parent then clearAttackLoop()
getgenv().PalletForRagdoll=nil if getgenv().palletRagdollActive then task.wait(0.03)if getgenv().spawnNewPallet then
getgenv().spawnNewPallet()end end end end)else pcall(function()DestroyToy:FireServer(ak)end)end end)getgenv().
spawnNewPallet=function()if not getgenv().palletRagdollActive then return end if getgenv().PalletForRagdoll and getgenv(
).PalletForRagdoll.Parent then return end c=LocalPlayer.Character h=c and c:FindFirstChild('HumanoidRootPart')if not h
then return end task.spawn(function()pcall(function()RS.MenuToys.SpawnToyRemoteFunction:InvokeServer('PalletLightBrown',
h.CFrame*CFrame.new(0,10,20),Vector3.zero)end)end)end getgenv().spawnNewPallet()else getgenv().palletRagdollActive=false
clearAttackLoop()if getgenv().palletCacheConn then getgenv().palletCacheConn:Disconnect()getgenv().palletCacheConn=nil
end pallet=getgenv().PalletForRagdoll if pallet and pallet.Parent then pcall(function()DestroyToy:FireServer(pallet)end)
end getgenv().PalletForRagdoll=nil if toysFolder:FindFirstChild('PalletForRagdoll')then pcall(function()DestroyToy:
FireServer(toysFolder.PalletForRagdoll)end)end end end})function sno(aj)if not aj or not aj.Parent then return end
pcall(function()RemoteSetNetworkOwner:FireServer(aj,aj.CFrame)end)end function executeGrabKick()if not SelectedPlayer
then return end targetPlayer=Players:FindFirstChild(SelectedPlayer)if not targetPlayer or not targetPlayer.Character
then return end char=LocalPlayer.Character hrp=char and char:FindFirstChild('HumanoidRootPart')head=char and char:
FindFirstChild('Head')if not(char and hrp and head)then return end targetChar=targetPlayer.Character targetHrp=
targetChar:FindFirstChild('HumanoidRootPart')targetHead=targetChar:FindFirstChild('Head')Hum=targetChar:FindFirstChild(
'Humanoid')if not(targetHrp and targetHead and Hum)or Hum.Health==0 then return end if targetPlayer:FindFirstChild(
'InPlot')and targetPlayer.InPlot.Value then return end BodyPos=targetHrp:FindFirstChild('BodyPosition')BodyGyro=
targetHrp:FindFirstChild('BodyGyro')if not BodyPos then BodyPos=Instance.new('BodyPosition')BodyPos.MaxForce=Vector3.
new(math.huge,math.huge,math.huge)BodyPos.Parent=targetHrp BodyPos.P=50000 BodyPos.D=1000 end if not BodyGyro then
BodyGyro=Instance.new('BodyGyro')BodyGyro.MaxTorque=Vector3.new(math.huge,math.huge,math.huge)BodyGyro.Parent=targetHrp
BodyGyro.P=50000 BodyGyro.D=1000 end offset=Vector3.new(kickOffsetX,kickOffsetY,kickOffsetZ)targetPos=head.Position+
offset BodyPos.Position=targetPos BodyGyro.CFrame=hrp.CFrame sno(targetHrp)sno(targetHead)RemoteDestroyGrabLine:
FireServer(targetHrp)RemoteDestroyGrabLine:FireServer(targetHead)if(targetHrp.Position-hrp.Position).Magnitude>35 then
oldCF=char:GetPivot()repeat if not LoopGrabKickOn then break end char:PivotTo(targetHrp.CFrame*CFrame.new(0,0,-10))sno(
targetHrp)sno(targetHead)task.wait()until(targetHrp.Position-hrp.Position).Magnitude<=35 or targetHead:FindFirstChild(
'PartOwner')or not LoopGrabKickOn char:PivotTo(oldCF)end end function StartLoopGrabKick()if GrabKickHB then GrabKickHB:
Disconnect()end LoopGrabKickOn=true GrabKickHB=RunService.Heartbeat:Connect(function()if LoopGrabKickOn then
executeGrabKick()end end)end function StopLoopGrabKick()LoopGrabKickOn=false if GrabKickHB then GrabKickHB:Disconnect()
GrabKickHB=nil end if SelectedPlayer then tp=Players:FindFirstChild(SelectedPlayer)if tp and tp.Character then tHrp=tp.
Character:FindFirstChild('HumanoidRootPart')if tHrp then if tHrp:FindFirstChild('BodyPosition')then tHrp.BodyPosition:
Destroy()end if tHrp:FindFirstChild('BodyGyro')then tHrp.BodyGyro:Destroy()end end end end end TgtB=Tabs.Target:
AddRightGroupbox('Blobman methods','loop')do autoSitBlobActive=false autoSitBlobTask=nil Players=game:GetService(
'Players')RunService=game:GetService('RunService')Workspace=game:GetService('Workspace')ReplicatedStorage=game:
GetService('ReplicatedStorage')LocalPlayer=Players.LocalPlayer SpawnToy=ReplicatedStorage.MenuToys.
SpawnToyRemoteFunction TgtB:AddCheckbox('AutoSitBlobman',{Text='Auto Sit Blobman(fixing)',Default=false,Callback=
function(aj)autoSitBlobActive=aj if aj then autoSitBlobTask=task.spawn(function()while autoSitBlobActive do pcall(
function()Char=LocalPlayer.Character if not Char then return end Hum=Char:FindFirstChildOfClass('Humanoid')Root=Char:
FindFirstChild('HumanoidRootPart')if not Hum or not Root then return end if Hum.SeatPart then task.wait(0.1)return end
folder=Workspace:FindFirstChild(LocalPlayer.Name..'SpawnedInToys')blob=folder and folder:FindFirstChild(
'CreatureBlobman')if not blob then pcall(function()SpawnToy:InvokeServer('CreatureBlobman',Root.CFrame*CFrame.new(0,5,5)
,Vector3.zero)end)t0=tick()repeat RunService.Heartbeat:Wait()folder=Workspace:FindFirstChild(LocalPlayer.Name..
'SpawnedInToys')blob=folder and folder:FindFirstChild('CreatureBlobman')until blob or tick()-t0>5 or not
autoSitBlobActive end if blob then seat=blob:FindFirstChildWhichIsA('VehicleSeat')if seat then Root.CFrame=seat.CFrame*
CFrame.new(0,1,0)Root.Velocity=Vector3.zero pcall(function()seat:Sit(Hum)end)end end end)task.wait(0.1)end end)else
autoSitBlobActive=false if autoSitBlobTask then task.cancel(autoSitBlobTask)autoSitBlobTask=nil end end end})end do
local aj,ak,al={},false,game:GetService('Players')game:GetService('RunService')local am,an,ao=game:GetService(
'ReplicatedStorage'),game:GetService('Workspace'),al.LocalPlayer local ap=am local aq=function()while true do local aq=
false for ar,as in pairs(al:GetPlayers())do if aj[as.UserId]and ak then local at,au if ao.Character and ao.Character:
FindFirstChild('HumanoidRootPart')then at=ao.Character.HumanoidRootPart.CFrame au=ao.Character.HumanoidRootPart.
AssemblyLinearVelocity end if as~=ao then local P=false if as.Character and as.Character:FindFirstChild(
'HumanoidRootPart')then if as.Character.HumanoidRootPart.Massless then if as.Character.Humanoid.SeatPart then P=true end
else P=true end end local Q=true while Q and ao.Character and ao.Character:FindFirstChild('HumanoidRootPart')and as and
as.Character and as.Character.Parent==an and as.Character:FindFirstChild('HumanoidRootPart')and as.Character:
FindFirstChild('Humanoid')and as.Character.Humanoid:GetState()~=Enum.HumanoidStateType.Dead and P do if not aj[as.UserId
]or not ak then Q=false break end aq=true P=false P=true local S=as.Character.HumanoidRootPart.AssemblyLinearVelocity if
S.Magnitude>10000 then S=Vector3.zero end if as.Character.HumanoidRootPart.CFrame.Position.Magnitude>1000000 then P=
false end if Q and P and ao.Character and ao.Character:FindFirstChild('Humanoid')and as.Character.Humanoid:GetState()~=
Enum.HumanoidStateType.Dead and ao.Character.Humanoid.SeatPart and ao.Character.Humanoid.SeatPart.Parent and ao.
Character.Humanoid.SeatPart.Parent.Name=='CreatureBlobman'then local T=ao.Character.Humanoid.SeatPart.Parent if(as.
Character.HumanoidRootPart.CFrame.Position-ao.Character.HumanoidRootPart.CFrame.Position+ao.Character.HumanoidRootPart.
AssemblyLinearVelocity).Magnitude>30 and as.Character.Parent==an then ao.Character.HumanoidRootPart.CFrame=as.Character.
HumanoidRootPart.CFrame+(as.Character.HumanoidRootPart.AssemblyLinearVelocity/math.pi)ao.Character.HumanoidRootPart.
AssemblyLinearVelocity=as.Character.HumanoidRootPart.AssemblyLinearVelocity if as.Character and as.Character:
FindFirstChild('HumanoidRootPart')then if as.Character:FindFirstChild('Humanoid')and as.Character.Humanoid:GetState()~=
Enum.HumanoidStateType.Dead and T and T:FindFirstChild('RightDetector')and T.RightDetector:FindFirstChild('RightWeld')
and T:FindFirstChild('BlobmanSeatAndOwnerScript')and T.BlobmanSeatAndOwnerScript:FindFirstChild('CreatureGrab')and T.
BlobmanSeatAndOwnerScript:FindFirstChild('CreatureRelease')then as.Character.Humanoid:ChangeState(Enum.HumanoidStateType
.Dead)task.wait(0.15)T.BlobmanSeatAndOwnerScript.CreatureGrab:FireServer(T.RightDetector,as.Character.HumanoidRootPart,T
.RightDetector.RightWeld)task.wait(0.1)T.BlobmanSeatAndOwnerScript.CreatureRelease:FireServer(T.RightDetector.RightWeld,
as.Character.HumanoidRootPart)end end end elseif P then if ao.Character:FindFirstChild('Humanoid')and ao.Character.
Humanoid.SeatPart and(ao.Character.Humanoid.SeatPart.Parent and ao.Character.Humanoid.SeatPart.Name~='CreatureBlobman'or
not ao.Character.Humanoid.SeatPart.Parent)then ao.Character.Humanoid.Sit=false end local T,U=nil,false for V,W in pairs(
an[ao.Name..'SpawnedInToys']:GetChildren())do if W.Name=='CreatureBlobman'and W:FindFirstChild('VehicleSeat')then U=true
T=W elseif W.Name=='CreatureBlobman'then while W do ap.MenuToys.DestroyToy:FireServer(W)task.wait(0.1)end end end if T
and ao.Character and ao.Character:FindFirstChild('Humanoid')and as.Character.Humanoid:GetState()~=Enum.HumanoidStateType
.Dead then T.VehicleSeat:Sit(ao.Character.Humanoid)end if not U then task.wait(1)while Q and not T do if an:
FindFirstChild(ao.Name..'SpawnedInToys'):FindFirstChild('CreatureBlobman')then T=an:FindFirstChild(ao.Name..
'SpawnedInToys').CreatureBlobman else task.spawn(function()ap.MenuToys.SpawnToyRemoteFunction:InvokeServer(
'CreatureBlobman',CFrame.new(ao.Character.HumanoidRootPart.CFrame.Position)+Vector3.new(0,0,15),Vector3.new(0,0,0))end)
end task.wait()end end end task.wait(0.15)end if ao.Character and ao.Character:FindFirstChild('HumanoidRootPart')and at
then ao.Character.HumanoidRootPart.CFrame=at ao.Character.HumanoidRootPart.AssemblyLinearVelocity=au end end end end if
not aq and blob then if ao.Character and ao.Character:FindFirstChild('Humanoid')and ao.Character.Humanoid.SeatPart and
ao.Character.Humanoid.SeatPart.Parent==blob then ao.Character.Humanoid.Sit=false end task.wait()if blob and blob:
FindFirstChild('HumanoidRootPart')then blob.HumanoidRootPart.CFrame=CFrame.new(0,1e15,0)end end task.wait(0.5)end end
task.spawn(aq)TgtB:AddCheckbox('BlobKillTarget',{Text='Blob Kill Target',Default=false,Callback=function(ar)ak=ar local
as=getSelectedPlayer()if ar then if not as then ak=false TgtR:SetValue(false)return end aj[as.UserId]=true else if as
then aj[as.UserId]=nil end end end})end do kickLoopEnabled=false kickHeight=25 Players=game:GetService('Players')
RunService=game:GetService('RunService')Workspace=game:GetService('Workspace')ReplicatedStorage=game:GetService(
'ReplicatedStorage')LocalPlayer=Players.LocalPlayer R=ReplicatedStorage TgtB:AddCheckbox('LoopKickBlob',{Text=
'Loop Kick (Grab + Blob)',Default=false,Callback=function(aj)kickLoopEnabled=aj if aj then target=getSelectedPlayer()if
not target then kickLoopEnabled=false TgtR:SetValue(false)return end task.spawn(function()GE=R:FindFirstChild(
'GrabEvents')myChar=LocalPlayer.Character myRoot=myChar and myChar:FindFirstChild('HumanoidRootPart')if not myRoot then
kickLoopEnabled=false return end savedPos=myRoot.CFrame dragging=false grabStartTime=0 while kickLoopEnabled do target=
getSelectedPlayer()if not target or not target.Parent or not target.Character then kickLoopEnabled=false break end tChar
=target.Character tRoot=tChar:FindFirstChild('HumanoidRootPart')tHum=tChar:FindFirstChild('Humanoid')seat=myChar and
myChar.Humanoid and myChar.Humanoid.SeatPart if tRoot and tHum and tHum.Health>0 then tRoot.AssemblyLinearVelocity=
Vector3.zero tRoot.Velocity=Vector3.zero if seat then blobman=seat.Parent remoteFolder=blobman:FindFirstChild(
'BlobmanSeatAndOwnerScript')grab=remoteFolder and remoteFolder:FindFirstChild('CreatureGrab')drop=remoteFolder and
remoteFolder:FindFirstChild('CreatureDrop')L_Det=blobman:FindFirstChild('LeftDetector')R_Det=blobman:FindFirstChild(
'RightDetector')L_Weld=L_Det and(L_Det:FindFirstChild('LeftWeld')or L_Det:FindFirstChild('RigidConstraint'))R_Weld=R_Det
and(R_Det:FindFirstChild('RightWeld')or R_Det:FindFirstChild('RigidConstraint'))if grab and drop and L_Weld and R_Weld
then pcall(function()grab:FireServer(L_Det,tRoot,L_Weld)grab:FireServer(R_Det,tRoot,R_Weld)drop:FireServer(L_Weld,tRoot)
drop:FireServer(R_Weld,tRoot)end)end end if not dragging then myRoot.CFrame=tRoot.CFrame if GE then pcall(function()tHum
.PlatformStand=true if GE.SetNetworkOwner then GE.SetNetworkOwner:FireServer(tRoot,myRoot.CFrame)end if GE.
CreateGrabLine then GE.CreateGrabLine:FireServer(tRoot,Vector3.zero,tRoot.Position,false)end end)end if grabStartTime==0
then grabStartTime=tick()end if tick()-grabStartTime>0.3 then dragging=true grabStartTime=0 end else lockPos=savedPos*
CFrame.new(0,kickHeight,0)myRoot.CFrame=savedPos tRoot.CFrame=lockPos if GE then pcall(function()tHum.PlatformStand=true
if GE.SetNetworkOwner then GE.SetNetworkOwner:FireServer(tRoot,lockPos)end if GE.DestroyGrabLine then GE.DestroyGrabLine
:FireServer(tRoot)end if GE.CreateGrabLine then GE.CreateGrabLine:FireServer(tRoot,Vector3.zero,tRoot.Position,false)end
end)end end else dragging=false grabStartTime=0 end RunService.Heartbeat:Wait()end if myRoot and savedPos then myRoot.
CFrame=savedPos end kickLoopEnabled=false end)else kickLoopEnabled=false end end})end do spinLoopActive=false
spinLoopTask=nil spinAngle=0 spinRadius=25 spinSpeed=0.25 customKickHeight=20 spinFaceTarget=false spinTilt=0 savedPos=
nil local aj,ak,al,am=game:GetService('Players'),game:GetService('RunService'),game:GetService('Workspace'),game:
GetService('ReplicatedStorage')local an,ao=aj.LocalPlayer,am TgtB:AddSlider('SpinRadius',{Text='Spin Radius',Default=25,
Min=5,Max=50,Rounding=0,Callback=function(ap)spinRadius=ap end})TgtB:AddSlider('SpinSpeed',{Text='Spin Speed',Default=
0.25,Min=0.05,Max=1,Rounding=2,Callback=function(ap)spinSpeed=ap end})TgtB:AddCheckbox('SpinFaceTarget',{Text=
'Face Target (Blob)',Default=false,Callback=function(ap)spinFaceTarget=ap end})TgtB:AddSlider('SpinBlobTilt',{Text=
'Blob Tilt',Default=0,Min=-90,Max=90,Rounding=0,Callback=function(ap)spinTilt=ap end})TgtB:AddCheckbox('SpinLoopKick',{
Text='Spin Loop Kick',Default=false,Callback=function(ap)spinLoopActive=ap if ap then local aq=getSelectedPlayer()if not
aq then spinLoopActive=false if Toggles.SpinLoopKick then Toggles.SpinLoopKick:SetValue(false)end return end spinAngle=0
spinLoopTask=task.spawn(function()local ar,as=ao:FindFirstChild('GrabEvents'),an.Character local at,au=as and as:
FindFirstChild('HumanoidRootPart'),as and as:FindFirstChildOfClass('Humanoid')if not at or not au then spinLoopActive=
false return end local P=function()as=an.Character at=as and as:FindFirstChild('HumanoidRootPart')au=as and as:
FindFirstChildOfClass('Humanoid')if not at or not au then return false end if au.SeatPart and au.SeatPart.Parent and au.
SeatPart.Parent.Name=='CreatureBlobman'then return true end local P=al:FindFirstChild(an.Name..'SpawnedInToys')if not P
then return false end local Q=P:FindFirstChild('CreatureBlobman')if not Q then local S=an:FindFirstChild('CanSpawnToy')
if S and not S.Value then local T=tick()while not S.Value and tick()-T<3 do task.wait()end end pcall(function()ao.
MenuToys.SpawnToyRemoteFunction:InvokeServer('CreatureBlobman',at.CFrame*CFrame.new(0,2,5),Vector3.zero)end)local T=
tick()repeat task.wait()Q=P:FindFirstChild('CreatureBlobman')until Q or tick()-T>3 end if not Q then return false end
local S=Q:FindFirstChild('VehicleSeat')or Q:FindFirstChildWhichIsA('VehicleSeat')if not S then return false end at.
CFrame=S.CFrame*CFrame.new(0,3,0)task.wait()S:Sit(au)local T=tick()while au.SeatPart~=S and tick()-T<2 do S:Sit(au)task.
wait()end return au.SeatPart==S end if not P()then spinLoopActive=false Library:Notify({Title='Spin Loop Kick',
Description='Blob spawn/sit failed',Duration=3})return end local Q,S,T=at.CFrame,false,0 while spinLoopActive do as=an.
Character at=as and as:FindFirstChild('HumanoidRootPart')au=as and as:FindFirstChildOfClass('Humanoid')if not at or not
au then spinLoopActive=false break end local U=au.SeatPart local V=U and U.Parent and U.Parent.Name=='CreatureBlobman'if
not V then if not P()then spinLoopActive=false break end else aq=getSelectedPlayer()if not aq or not aq.Parent or not aq
.Character then spinLoopActive=false break end local W=aq.Character local X,Y,Z=W:FindFirstChild('HumanoidRootPart'),W:
FindFirstChild('Humanoid'),au.SeatPart if X and Y and Y.Health>0 then X.AssemblyLinearVelocity=Vector3.zero pcall(
function()X.Velocity=Vector3.zero end)if Z then local _=Z.Parent local av=_:FindFirstChild('BlobmanSeatAndOwnerScript')
local aw,ax,ay,az=av and av:FindFirstChild('CreatureGrab'),av and av:FindFirstChild('CreatureDrop'),_:FindFirstChild(
'LeftDetector'),_:FindFirstChild('RightDetector')local aA,aB=ay and(ay:FindFirstChild('LeftWeld')or ay:FindFirstChild(
'RigidConstraint')),az and(az:FindFirstChild('RightWeld')or az:FindFirstChild('RigidConstraint'))if aw and ax and aA and
aB then pcall(function()aw:FireServer(ay,X,aA)aw:FireServer(az,X,aB)ax:FireServer(aA,X)ax:FireServer(aB,X)end)end end
spinAngle=spinAngle+spinSpeed if spinAngle>6.28 then spinAngle=0 end local av,aw=math.cos(spinAngle)*spinRadius,math.
sin(spinAngle)*spinRadius local ax,ay=(X.CFrame*CFrame.new(av,0,aw)).Position,CFrame.Angles(math.rad(spinTilt or 0),0,0)
if spinFaceTarget then at.CFrame=CFrame.lookAt(ax,X.Position)*ay else at.CFrame=X.CFrame*CFrame.new(av,0,aw)*ay end if
not S then if ar then pcall(function()Y.PlatformStand=true if ar.SetNetworkOwner then ar.SetNetworkOwner:FireServer(X,at
.CFrame)end if ar.CreateGrabLine then ar.CreateGrabLine:FireServer(X,Vector3.zero,X.Position,false)end end)end if T==0
then T=tick()end if tick()-T>0.3 then S=true T=0 end else local az=Q*CFrame.new(0,customKickHeight,0)X.CFrame=az if ar
then pcall(function()Y.PlatformStand=true if ar.SetNetworkOwner then ar.SetNetworkOwner:FireServer(X,az)end if ar.
DestroyGrabLine then ar.DestroyGrabLine:FireServer(X)end if ar.CreateGrabLine then ar.CreateGrabLine:FireServer(X,
Vector3.zero,X.Position,false)end end)end end else S=false T=0 end end ak.Heartbeat:Wait()end local av=an.Character
local aw,ax=av and av:FindFirstChildOfClass('Humanoid'),av and av:FindFirstChild('HumanoidRootPart')if aw then aw.Sit=
false pcall(function()aw:ChangeState(Enum.HumanoidStateType.GettingUp)end)end if ax then ax.AssemblyLinearVelocity=
Vector3.zero ax.AssemblyAngularVelocity=Vector3.zero if Q then ax.CFrame=Q end ax.AssemblyLinearVelocity=Vector3.zero ax
.AssemblyAngularVelocity=Vector3.zero end local ay=al:FindFirstChild(an.Name..'SpawnedInToys')local az=ay and ay:
FindFirstChild('CreatureBlobman')if az then for aA,aB in ipairs(az:GetDescendants())do if aB:IsA('BasePart')then aB.
AssemblyLinearVelocity=Vector3.zero aB.AssemblyAngularVelocity=Vector3.zero end end pcall(function()ao.MenuToys.
DestroyToy:FireServer(az)end)end spinLoopActive=false end)else spinLoopActive=false if spinLoopTask then task.cancel(
spinLoopTask)spinLoopTask=nil end spinAngle=0 local aq=an.Character local ar,as=aq and aq:FindFirstChildOfClass(
'Humanoid'),aq and aq:FindFirstChild('HumanoidRootPart')if ar then ar.Sit=false pcall(function()ar:ChangeState(Enum.
HumanoidStateType.GettingUp)end)end if as then as.AssemblyLinearVelocity=Vector3.zero as.AssemblyAngularVelocity=Vector3
.zero if savedPos then as.CFrame=savedPos end as.AssemblyLinearVelocity=Vector3.zero as.AssemblyAngularVelocity=Vector3.
zero end local at=al:FindFirstChild(an.Name..'SpawnedInToys')local au=at and at:FindFirstChild('CreatureBlobman')if au
then for av,aw in ipairs(au:GetDescendants())do if aw:IsA('BasePart')then aw.AssemblyLinearVelocity=Vector3.zero aw.
AssemblyAngularVelocity=Vector3.zero end end pcall(function()ao.MenuToys.DestroyToy:FireServer(au)end)end end end})end
Players=game:GetService('Players')RunService=game:GetService('RunService')Debris=game:GetService('Debris')SoundService=
game:GetService('SoundService')LocalPlayer=Players.LocalPlayer notificationSoundId='rbxassetid://97643101798871'
selectedTexture='Low Quality'customTextureId=''useSelectedTexture=true useCustomTexture=false textureSpeed=1
textureLength=1 textureWidth=0 customGrabSoundId=''speedEnabled=false lengthEnabled=false widthEnabled=false
beamTransparency=0 beamCurveEnabled=false beamCurveAmount=0 beamFaceCameraEnabled=false beamColorEnabled=false
beamColor0=Color3.fromRGB(255,255,255)beamColor1=Color3.fromRGB(255,255,255)beamLightEnabled=false beamLightColor=Color3
.fromRGB(255,255,255)beamLightRange=16 beamLightBrightness=2 beamRainbowEnabled=false beamRainbowHue=0 beamRainbowSpeed=
0.5 beamPulseEnabled=false beamPulseMin=0 beamPulseMax=1 beamPulseSpeed=2 beamSegmentsEnabled=false beamSegments=10
beamZOffsetEnabled=false beamZOffset=0 beamWidth0=0 beamWidth1=0 beamWidthLinked=true beamShadowEnabled=false
beamShadowOffset=Vector3.new(0.2,-0.2,0)beamShadowColor=Color3.fromRGB(0,0,0)beamShadowTransp=0.5 mirrorBeamEnabled=
false beamFlipEnabled=false beamFlipX=false beamFlipY=false heartbeatConnection=nil syncAccumulator=0 toggleSyncing=
false rainbowConn=nil pulseConn=nil pulseDir=1 pulseVal=0 shadowBeam=nil mirrorBeamObj=nil local aj,ak={['Low Quality']=
'',['Non-Gamepass']='rbxassetid://8933346550',Gamepass='rbxassetid://8933355899',Chain='rbxassetid://81358145120405',[
'Chain 2']='rbxassetid://132910145874066',['Chain 3']='rbxassetid://128466395060514',['Chain 4']=
'rbxassetid://73368670987191',Rope='rbxassetid://78999022056924',Spring='rbxassetid://18837732116',Circle=
'rbxassetid://5367817750',['Circle-Outline']='rbxassetid://12201347372',Triangle='rbxassetid://4704920160',[
'Triangle-Outline']='rbxassetid://94666748694025',Square='rbxassetid://15007588972',['Square-Outline']=
'rbxassetid://15420927706',Heart='rbxassetid://89015294175898',['Heart-Outline']='rbxassetid://125373934805238',Moon=
'rbxassetid://9013498676',Dots='rbxassetid://9169659357',Bubble='rbxassetid://1249690853',Star='rbxassetid://5639840603'
,Robux='rbxassetid://11560341132',['Roblox-Logo']='rbxassetid://12348119032',Brick='rbxassetid://4430903072',Studs=
'rbxassetid://15539356451',Fire='rbxassetid://18654087326',Lazar='rbxassetid://8922958725',['Spider-Web']=
'rbxassetid://123815660139244',Smoke='rbxassetid://12900071392',['Audio-Visualiser']='rbxassetid://81588563590679',Pulse
='rbxassetid://82163767314193',Arrow='rbxassetid://9006027964',['Arrow 2']='rbxassetid://10249261576'},{'Low Quality',
'Non-Gamepass','Gamepass','Chain','Chain 2','Chain 3','Chain 4','Rope','Spring','Circle','Circle-Outline','Triangle',
'Triangle-Outline','Square','Square-Outline','Heart','Heart-Outline','Moon','Dots','Bubble','Star','Robux','Roblox-Logo'
,'Brick','Studs','Fire','Lazar','Spider-Web','Smoke','Audio-Visualiser','Pulse','Arrow','Arrow 2'}function cleanId(al)
return tostring(al or''):gsub('%D','')end function toAssetId(al)al=cleanId(al)return al~=''and'rbxassetid://'..al or''
end function playNotificationSound()local al=Instance.new('Sound')al.SoundId=notificationSoundId al.Volume=1 al.
RollOffMaxDistance=10000 al.Parent=SoundService pcall(function()al:Play()end)Debris:AddItem(al,3)end function notify(al,
am,an)pcall(function()Library:Notify({Title=al,Description=am or'',Time=an or 4})end)playNotificationSound()end function
notifyLineChanged(al)notify('<b>UNSTABLE</b>','Now using: '..tostring(al),3)end function getBeamPart()local al=workspace
:FindFirstChild('GrabParts')return al and al:FindFirstChild('BeamPart')end function getGrabPart()local al=workspace:
FindFirstChild('GrabParts')return al and al:FindFirstChild('GrabPart')end function captureOriginalSoundId(al)if al and
al:IsA('Sound')and al:GetAttribute('OriginalSoundId')==nil then al:SetAttribute('OriginalSoundId',al.SoundId or'')end
end function setSoundId(al,am)if not al or not al:IsA('Sound')or not am or am==''then return end if al.SoundId==am then
return end local an=al.IsPlaying pcall(function()al:Stop()end)al.SoundId=am if an then pcall(function()al.TimePosition=0
al:Play()end)end end function restoreOriginalSound(al)if not al or not al:IsA('Sound')then return end
captureOriginalSoundId(al)local am=al:GetAttribute('OriginalSoundId')if am and am~=''and al.SoundId~=am then setSoundId(
al,am)end end function setLineMode(al)if toggleSyncing then return end toggleSyncing=true if al=='selected'then
useSelectedTexture=false useCustomTexture=false if Options.UseSelectedTexture then Options.UseSelectedTexture:SetValue(
true)end if Options.UseCustomTexture then Options.UseCustomTexture:SetValue(false)end elseif al=='custom'then
useSelectedTexture=false useCustomTexture=true if Options.UseSelectedTexture then Options.UseSelectedTexture:SetValue(
false)end if Options.UseCustomTexture then Options.UseCustomTexture:SetValue(true)end end toggleSyncing=false end
function ensureValidTextureMode()local al=cleanId(customTextureId)~=''if useCustomTexture and not al then
useCustomTexture=false end end function getActiveTexture()ensureValidTextureMode()if useCustomTexture then local al=
toAssetId(customTextureId)if al~=''then return al,'Custom'end end if useSelectedTexture then return aj[selectedTexture]
or'',selectedTexture end return nil,nil end function updateShadowBeam()local al=getBeamPart()if not al then return end
local am=al:FindFirstChild('GrabBeam')if not am then return end if beamShadowEnabled then if not shadowBeam or not
shadowBeam.Parent then shadowBeam=am:Clone()shadowBeam.Name='<b>UNSTABLE</b>_ShadowBeam'shadowBeam.Parent=al end
shadowBeam.Color=ColorSequence.new(beamShadowColor,beamShadowColor)shadowBeam.Transparency=NumberSequence.new(
beamShadowTransp)shadowBeam.ZOffset=(beamZOffsetEnabled and beamZOffset or 0)-0.05 else if shadowBeam then shadowBeam:
Destroy()shadowBeam=nil end end end function updateMirrorBeam()local al=getBeamPart()if not al then return end local am=
al:FindFirstChild('GrabBeam')if not am then return end if mirrorBeamEnabled then if not mirrorBeamObj or not
mirrorBeamObj.Parent then mirrorBeamObj=am:Clone()mirrorBeamObj.Name='<b>UNSTABLE</b>_MirrorBeam'mirrorBeamObj.Parent=al
end mirrorBeamObj.CurveSize0=-am.CurveSize0 mirrorBeamObj.CurveSize1=-am.CurveSize1 mirrorBeamObj.ZOffset=(
beamZOffsetEnabled and beamZOffset or 0)+0.02 else if mirrorBeamObj then mirrorBeamObj:Destroy()mirrorBeamObj=nil end
end end function applyLineSettings()local al=getBeamPart()if not al then return end local am=al:FindFirstChild(
'GrabBeam')if not am or not am:IsA('Beam')then return end local an=useSelectedTexture or useCustomTexture or
beamColorEnabled or beamRainbowEnabled or speedEnabled or lengthEnabled or widthEnabled or beamCurveEnabled or
beamFaceCameraEnabled or beamLightEnabled or beamPulseEnabled or beamSegmentsEnabled or beamZOffsetEnabled or
beamFlipEnabled or beamShadowEnabled or mirrorBeamEnabled if not an then return end local ao=getActiveTexture()if ao
then am.Texture=ao end if speedEnabled then am.TextureSpeed=textureSpeed end if lengthEnabled then am.TextureLength=
textureLength end if widthEnabled then am.Width0=beamWidth0 am.Width1=beamWidthLinked and beamWidth0 or beamWidth1 end
am.Transparency=NumberSequence.new(beamPulseEnabled and pulseVal or beamTransparency)if beamCurveEnabled then local ap,
aq=beamCurveAmount,beamCurveDirection or 1 am.CurveSize0=ap*aq am.CurveSize1=ap*aq else am.CurveSize0=0 am.CurveSize1=0
end am.FaceCamera=beamFaceCameraEnabled if beamZOffsetEnabled then am.ZOffset=beamZOffset else am.ZOffset=0 end if
beamSegmentsEnabled then am.Segments=beamSegments end if beamFlipEnabled then local ap,aq=beamFlipX and-1 or 1,beamFlipY
and-1 or 1 am.TextureSpeed=textureSpeed*ap am.Width0=am.Width0*aq end if not beamRainbowEnabled then if beamColorEnabled
then am.Color=ColorSequence.new(beamColor0,beamColor1)end end if beamLightEnabled then local ap=al:FindFirstChild(
'<b>UNSTABLE</b>_BeamLight')or Instance.new('PointLight')ap.Name='<b>UNSTABLE</b>_BeamLight'ap.Color=beamLightColor ap.
Range=beamLightRange ap.Brightness=beamLightBrightness ap.Parent=al else local ap=al:FindFirstChild(
'<b>UNSTABLE</b>_BeamLight')if ap then ap:Destroy()end end updateShadowBeam()updateMirrorBeam()end function
applyGrabSound()local al=getGrabPart()if not al then return end local am=al:FindFirstChild('AttachSound')if not am or
not am:IsA('Sound')then return end captureOriginalSoundId(am)local an=toAssetId(customGrabSoundId)if an~=''then
setSoundId(am,an)else restoreOriginalSound(am)end end function setRainbowBeam(al)beamRainbowEnabled=al if rainbowConn
then rainbowConn:Disconnect()rainbowConn=nil end if not al then return end rainbowConn=RunService.Heartbeat:Connect(
function(am)beamRainbowHue=(beamRainbowHue+am*beamRainbowSpeed)%1 local an,ao=Color3.fromHSV(beamRainbowHue,1,1),
getBeamPart()if not ao then return end local ap=ao:FindFirstChild('GrabBeam')if ap and ap:IsA('Beam')then ap.Color=
ColorSequence.new(an,an)end if mirrorBeamObj and mirrorBeamObj.Parent then mirrorBeamObj.Color=ColorSequence.new(an,an)
end end)end function connectHeartbeat()if heartbeatConnection then return end heartbeatConnection=RunService.Heartbeat:
Connect(function(al)applyLineSettings()syncAccumulator+=al if syncAccumulator>=0.15 then syncAccumulator=0
applyGrabSound()end end)end workspace.DescendantAdded:Connect(function(al)local am=useSelectedTexture or
useCustomTexture or beamColorEnabled or beamRainbowEnabled or speedEnabled or lengthEnabled or widthEnabled or
beamCurveEnabled or beamFaceCameraEnabled or beamLightEnabled or beamPulseEnabled or beamSegmentsEnabled or
beamZOffsetEnabled or beamFlipEnabled or beamShadowEnabled or mirrorBeamEnabled if not am then if al:IsA('Sound')and al.
Name=='AttachSound'then captureOriginalSoundId(al)end return end if al:IsA('Beam')and al.Name=='GrabBeam'then task.
defer(applyLineSettings)elseif al:IsA('Sound')and al.Name=='AttachSound'then captureOriginalSoundId(al)task.defer(
applyGrabSound)elseif al.Name=='GrabPart'or al.Name=='BeamPart'then task.defer(function()applyLineSettings()
applyGrabSound()end)end end)local al,am=Tabs.Grab:AddLeftGroupbox('Line','link'),Tabs.Grab:AddLeftGroupbox('Gamepass',
'dollar-sign')al:AddDropdown('TextureDropdown',{Text='Decal',Values=ak,Default=1,Callback=function(an)selectedTexture=an
connectHeartbeat()applyLineSettings()end})al:AddCheckbox('UseSelectedTexture',{Text='Enable',Default=false,Callback=
function(an)useSelectedTexture=an if an then useCustomTexture=false end if an then connectHeartbeat()applyLineSettings()
end end})al:AddCheckbox('EnableBeamColor',{Text='Colors',Callback=function(an)beamColorEnabled=an applyLineSettings()end
})al:AddLabel('Start'):AddColorPicker('BeamColor0',{Default=Color3.fromRGB(255,255,255),Callback=function(an)beamColor0=
an applyLineSettings()end})al:AddLabel('End'):AddColorPicker('BeamColor1',{Default=Color3.fromRGB(255,255,255),Callback=
function(an)beamColor1=an applyLineSettings()end})al:AddCheckbox('Rainbow',{Text='Rainbow',Callback=function(an)
setRainbowBeam(an)end})do local an,ao,ap,aq={ReachOn=false,LineOn=false,DiedHandle=nil},ReplicatedStorage.GamepassEvents
:FindFirstChild('FurtherReachBoughtNotifier'),ReplicatedStorage.GamepassEvents:FindFirstChild(
'MulticolorLineBoughtNotifier'),ReplicatedStorage.MenuToys:FindFirstChild('LimitedTimeToyEvent')local ar,as=aq and aq.
Parent,aq and aq.Name local at=function()local at=LocalPlayer.Character if at and at:FindFirstChild('GrabbingScript')
then at.GrabbingScript.Enabled=false at.GrabbingScript.Enabled=true end end local au=function()pcall(function()local au=
LocalPlayer.PlayerGui.MenuGui.Menu.TabContents.Settings.Contents.LineFrame.ColorPicking au.Enabled=false au.Enabled=true
end)end local av=function()if aq and ar then aq.Name=as aq.Parent=ar end end local aw=function(aw,ax)if aw then aw.Name=
ax aw.Parent=ReplicatedStorage.GamepassEvents end end local function ax(ay)if ay==an.ReachOn then return end an.ReachOn=
ay if ay then local az=LocalPlayer:FindFirstChild('FartherReach')if az then az:Destroy()end az=Instance.new('BoolValue')
az.Name='FartherReach'az.Value=true az.Parent=LocalPlayer av()aw(ap,'MulticolorLineBoughtNotifier')if ao then ao.Parent=
game:GetService('ReplicatedFirst')end if aq then aq.Parent=ReplicatedStorage.GamepassEvents aq.Name=
'FurtherReachBoughtNotifier'end at()task.delay(0.1,function()pcall(function()aq:FireServer()end)end)if an.DiedHandle
then an.DiedHandle:Disconnect()end an.DiedHandle=LocalPlayer.CharacterAdded:Connect(function(aA)aA:WaitForChild(
'GrabbingScript',5)task.wait(0.15)if an.ReachOn then an.ReachOn=false ax(true)end end)else local az=LocalPlayer:
FindFirstChild('FartherReach')if az then az:Destroy()end aw(ao,'FurtherReachBoughtNotifier')av()at()if an.DiedHandle
then an.DiedHandle:Disconnect()an.DiedHandle=nil end end end local ay=function(ay)if ay==an.LineOn then return end an.
LineOn=ay if ay then av()aw(ao,'FurtherReachBoughtNotifier')if ap then ap.Parent=game:GetService('ReplicatedFirst')end
if aq then aq.Parent=ReplicatedStorage.GamepassEvents aq.Name='MulticolorLineBoughtNotifier'end au()task.delay(0.1,
function()pcall(function()aq:FireServer()end)end)else aw(ap,'MulticolorLineBoughtNotifier')av()au()end end am:
AddCheckbox('FreeGamepassWork',{Text='Free Gamepass [work]',Tooltip=
'Reach + Multicolor Line (\u{43d}\u{43e}\u{440}\u{43c} \u{432}\u{43e}\u{440}\u{43a}\u{430}\u{435}\u{442} \u{438} \u{440}\u{430}\u{431}\u{43e}\u{442}\u{430}\u{435}\u{442} \u{43d}\u{430} Xeno)'
,Default=false,Callback=function(az)if az then task.spawn(function()ay(true)task.wait(0.4)av()aw(ap,
'MulticolorLineBoughtNotifier')task.wait(0.15)ax(true)end)else if an.ReachOn then ax(false)end if an.LineOn then ay(
false)end av()aw(ao,'FurtherReachBoughtNotifier')aw(ap,'MulticolorLineBoughtNotifier')end end})end am:AddCheckbox(
'ReachToggle',{Text='Free Gamepass',Tooltip=[[<b>[XENO / SOLARA DOESNT WORK]</b> Gives you 30 studs of reach instantly]]
,Default=false})Toggles.ReachToggle:OnChanged(function(an)if an then local ao=Instance.new('BoolValue')ao.Name=
'FartherReach'ao.Parent=game.Players.LocalPlayer ao.Value=true local ap=game.ReplicatedStorage.GamepassEvents:
FindFirstChild('FurtherReachBoughtNotifier')if ap then for aq,ar in ipairs(getconnections(ap.OnClientEvent))do pcall(ar.
Function)end end else local ao=game.Players.LocalPlayer:FindFirstChild('FartherReach')if ao then ao:Destroy()end end end
)local an,ao=false,25 function ApplyGrabReach(ap)ao=ap pcall(function()RS.DataEvents.UpdateLineColorsEvent:FireServer(
ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(0,0,0)),ColorSequenceKeypoint.new(1,Color3.fromRGB(0,255,
195))}))end)pcall(function()for aq,ar in pairs(getconnections(RS.GamepassEvents.FurtherReachBoughtNotifier.OnClientEvent
))do for as in debug.getupvalues(ar.Function)do debug.setupvalue(ar.Function,as,ap)end end end)end am:AddCheckbox(
'GrabReachToggle',{Text='Further Reach',Tooltip='Extends your grab distance beyond default',Default=false,Callback=
function(ap)an=ap if ap then ApplyGrabReach(ao)else ApplyGrabReach(25)end end})am:AddSlider('GrabReachSlider',{Text=
'Reach Distance',Default=25,Min=25,Max=45,Rounding=0,Callback=function(ap)ao=ap if an then ApplyGrabReach(ap)end end})
PanelTools=Tabs.Grab:AddRightGroupbox('Grabs','hand')SvcRS=game:GetService('ReplicatedStorage')SvcWS=game:GetService(
'Workspace')SvcRun=game:GetService('RunService')SvcInput=game:GetService('UserInputService')SvcDebris=game:GetService(
'Debris')SvcPlayers=game:GetService('Players')SvcTween=game:GetService('TweenService')SvcCtx=game:GetService(
'ContextActionService')SvcLight=game:GetService('Lighting')Me=SvcPlayers.LocalPlayer Cam=SvcWS.CurrentCamera GrabFolder=
SvcRS:WaitForChild('GrabEvents')EvSetOwner=GrabFolder:WaitForChild('SetNetworkOwner')EvDestroyLine=GrabFolder:
WaitForChild('DestroyGrabLine')EvCreateLine=GrabFolder:WaitForChild('CreateGrabLine')EvExtendLine=GrabFolder:
WaitForChild('ExtendGrabLine')FnSpawnToy=SvcRS:WaitForChild('MenuToys'):WaitForChild('SpawnToyRemoteFunction')
EvDestroyToy=SvcRS:WaitForChild('MenuToys'):WaitForChild('DestroyToy')ToysFolder=SvcWS:WaitForChild(Me.Name..
'SpawnedInToys')function LocalChar()return Me.Character end function LocalRoot()local ap=LocalChar()return ap and ap:
FindFirstChild('HumanoidRootPart')end function GrabbedPart()local ap=SvcWS:FindFirstChild('GrabParts')local aq=ap and ap
:FindFirstChild('GrabPart')local ar=aq and aq:FindFirstChild('WeldConstraint')return ar and ar.Part1 or nil end function
GrabbedChar()local ap=GrabbedPart()return ap and ap.Parent or nil end function InPlot(ap)local aq=SvcWS:FindFirstChild(
'PlotItems')local ar=aq and aq:FindFirstChild('PlayersInPlots')return ar and ar:FindFirstChild(ap.Name)~=nil end
function PlayerList()local ap={}for aq,ar in ipairs(SvcPlayers:GetPlayers())do if ar~=Me then table.insert(ap,ar.
DisplayName..' (@'..ar.Name..')')end end if#ap==0 then table.insert(ap,'No players')end return ap end function
DoSpawnToy(ap,aq)local ar=LocalRoot()if not ar then return nil end return FnSpawnToy:InvokeServer(ap,aq or ar.CFrame*
CFrame.new(5,5,20),Vector3.zero)end function ClaimOwner(ap)local aq=LocalRoot()if aq and ap and ap:IsA('BasePart')then
EvSetOwner:FireServer(ap,aq.CFrame)end end GrabOptions={'Throw on Release','Noclip Grab','Ragdoll Grab','Unweld Grab',
'Kill Grab','Kick Grab','Loop Grab','Anchor Grab','Massless Grab','Invisible Grab','Heavy Objects Grab','Trigger Bot',
'Extend Line'}GrabEnabled={}GrabMasterOn=false ThrowConn=nil ThrowForce=750 _G.strength=ThrowForce UnweldConn=nil
SpinActive=false SpinConn=nil SpinSpeed=20 AnchorCoro=nil AnchorParts={}AnchorConns={}local ap=30 MasslessConn=nil
TBReady=true TBLastTarget=nil TBLastHit=0 TBConn=nil TBDist=20 TBThrottle=0.008 TBLastCheck=0 TBMemory=0.1 TBPreDelay=
0.00001 TBPostDelay=0.05 TBRayPrms=RaycastParams.new()TBRayPrms.FilterType=Enum.RaycastFilterType.Exclude local aq=false
lineDistanceV=11 increaseLineExtendV=7 infLineExtendT=false local ar,as kg_Players=game:GetService('Players')
kg_ReplicatedStorage=game:GetService('ReplicatedStorage')kg_UserInputService=game:GetService('UserInputService')
kg_RunService=game:GetService('RunService')kg_plr=kg_Players.LocalPlayer kg_camera=workspace.CurrentCamera kg_GrabEvents
=kg_ReplicatedStorage:WaitForChild('GrabEvents')kg_CreateGrabLine=kg_GrabEvents:WaitForChild('CreateGrabLine')
kg_SetNetworkOwner=kg_GrabEvents:WaitForChild('SetNetworkOwner')kg_DestroyGrabLine=kg_GrabEvents:WaitForChild(
'DestroyGrabLine')kg_Active=false kg_FKeyActive=false kg_fAttackTarget=nil kg_fAttackConn=nil kg_mainThread=nil
kg_inputConn=nil lg_Players=game:GetService('Players')lg_ReplicatedStorage=game:GetService('ReplicatedStorage')
lg_UserInputService=game:GetService('UserInputService')lg_RunService=game:GetService('RunService')lg_plr=lg_Players.
LocalPlayer lg_SetNetworkOwner=lg_ReplicatedStorage:WaitForChild('GrabEvents'):WaitForChild('SetNetworkOwner')lg_Active=
false lg_FTargetActive=false lg_fGrabConn=nil lg_mainThread=nil lg_inputConn=nil function IsDescOf(at,au)local av=at.
Parent while av do if av==au then return true end av=av.Parent end return false end function CleanConns(at)for au,av in
ipairs(at)do if av and av.Connected then av:Disconnect()end end table.clear(at)end function MakeAnchorHighlight(at)local
au=Instance.new('Highlight')au.DepthMode=Enum.HighlightDepthMode.Occluded au.FillTransparency=1 au.Name='GrabAnchorHL'au
.OutlineColor=Color3.new(0,0,1)au.OutlineTransparency=0.5 au.Parent=at return au end function MakeMovers(at,au,av)local
aw=Instance.new('BodyPosition')aw.P=15000 aw.D=200 aw.MaxForce=Vector3.new(5e6,5e6,5e6)aw.Position=au aw.Parent=at local
ax=Instance.new('BodyGyro')ax.P=15000 ax.D=200 ax.MaxTorque=Vector3.new(5e6,5e6,5e6)ax.CFrame=av ax.Parent=at end
function ApplyThrow(at)if ThrowConn then ThrowConn:Disconnect()ThrowConn=nil end if not at then return end ThrowConn=
SvcWS.ChildAdded:Connect(function(au)if au.Name~='GrabParts'then return end local av=au:FindFirstChild('GrabPart')local
aw=av and av:FindFirstChild('WeldConstraint')local ax=aw and aw.Part1 if not ax then return end local ay=Instance.new(
'BodyVelocity',ax)au:GetPropertyChangedSignal('Parent'):Connect(function()if au.Parent then return end if SvcInput:
GetLastInputType()==Enum.UserInputType.MouseButton2 then ay.MaxForce=Vector3.new(math.huge,math.huge,math.huge)ay.
Velocity=Cam.CFrame.LookVector*ThrowForce SvcDebris:AddItem(ay,1)else ay:Destroy()end end)end)end function ApplyNoclip(
at)if getgenv().ConnNoclipGrab then getgenv().ConnNoclipGrab:Disconnect()getgenv().ConnNoclipGrab=nil end if not at then
local au=GrabbedChar()if au then for av,aw in ipairs(au:GetDescendants())do if aw:IsA('BasePart')and not aw.Anchored
then aw.CanCollide=true end end end return end getgenv().ConnNoclipGrab=SvcRun.Heartbeat:Connect(function()local au=
GrabbedChar()if not au then return end for av,aw in ipairs(au:GetDescendants())do if aw:IsA('BasePart')and not aw.
Anchored then aw.CanCollide=false end end end)end function ApplyRagdoll(at)if at then local au,av av=plr.PlayerGui.
MenuGui.Menu.TabContents.ToyDestroy.Contents.ChildAdded:Connect(function(aw)if aw.Name=='PalletLightBrown'then au=aw
task.wait()av:Disconnect()av=nil end end)local aw=spawntoy('PalletLightBrown',HRP.CFrame*CFrame.new(5,5,20))local ax=aw:
WaitForChild('SoundPart',0.1)aw.Name='ragdoll'spawn(function()task.wait(1)local ay=au.ViewItemButton.NewMessage:Clone()
ay.Name='Ragdoll'ay.TextColor3=Color3.fromRGB(255,255,255)ay.Text='Ragdoll Grab'ay.Visible=true ay.Parent=au.
ViewItemButton end)repeat sno(ax)task.wait()until ax:FindFirstChild('PartOwner')ax.AssemblyLinearVelocity=Vector3.new(0,
10000,0)spawn(function()for ay,az in pairs(aw:GetDescendants())do if az:IsA('Part')then az.Transparency=1 az.CanCollide=
false end end end)cons.rgarab1=workspace.ChildAdded:Connect(function(ay)if ay.Name~='GrabParts'then return end local az=
ay:FindFirstChild('GrabPart')or ay:WaitForChild('GrabPart',3)if not az then return end local aA=az.WeldConstraint.Part1
while workspace:FindFirstChild('GrabParts')and task.wait()do if aA and aA.Parent and aA.Parent:FindFirstChild(
'HumanoidRootPart')and aA.Parent:FindFirstChild('Humanoid')and aA.Parent.Humanoid:FindFirstChild('Ragdolled')and aA.
Parent.Humanoid.Ragdolled.Value==false then spawn(function()ax.AssemblyLinearVelocity=Vector3.new(0,100,0)ax.CFrame=aA.
Parent.HumanoidRootPart.CFrame task.wait(0.05)ax.CFrame=CFrame.new(0,1e9,0)end)end end end)else if cons.rgarab1 then
cons.rgarab1:Disconnect()end pcall(function()DestroyToy:FireServer(inv.ragdoll)end)end end function ApplyUnweld(at)if
UnweldConn then UnweldConn:Disconnect()UnweldConn=nil end if not at then return end UnweldConn=workspace.ChildAdded:
Connect(function(au)if au.Name~='GrabParts'then return end local av=au:FindFirstChild('GrabPart')local aw=av and av:
FindFirstChildOfClass('WeldConstraint')local ax=aw and aw.Part1 if not ax or not ax:IsA('BasePart')or ax.Anchored then
return end task.wait(0.01)pcall(function()ax.CFrame=CFrame.new(ax.Position.X,-9999,ax.Position.Z)end)end)end function
ApplyKill(at)KillOnGrab=at end function ApplySpin(at)SpinActive=at if SpinConn then SpinConn:Disconnect()SpinConn=nil
end if not at then return end SpinConn=SvcWS.ChildAdded:Connect(function(au)if au.Name~='GrabParts'or not au:
FindFirstChild('GrabPart')then return end local av=SvcWS.GrabParts and SvcWS.GrabParts:FindFirstChild('DragPart')if av
then local aw=av:FindFirstChild('AlignOrientation')if aw then aw:Destroy()end end local aw=au.GrabPart:FindFirstChild(
'WeldConstraint')local ax=aw and aw.Part1 if not ax then return end while SvcWS:FindFirstChild('GrabParts')and
SpinActive do ax.AssemblyAngularVelocity=Vector3.new(0,SpinSpeed,0)task.wait()end end)end function ApplyHeavy(at)
function SetForce(au)local av=game:FindFirstChild('ReplicatedFirst')local aw=av and av:FindFirstChild('GrabParts')if aw
and aw:FindFirstChild('DragPart')then local ax=aw.DragPart if ax:FindFirstChild('AlignPosition')then ax.AlignPosition.
MaxForce=au end if ax:FindFirstChild('AlignOrientation')then ax.AlignOrientation.MaxTorque=au end end local ax=workspace
:FindFirstChild('GrabParts')if ax and ax:FindFirstChild('DragPart')then local ay=ax.DragPart if ay:FindFirstChild(
'AlignPosition')then ay.AlignPosition.MaxForce=au end if ay:FindFirstChild('AlignOrientation')then ay.AlignOrientation.
MaxTorque=au end end end SetForce(at and math.huge or 60000)end function AnchorLoop()while true do pcall(function()local
at=SvcWS:FindFirstChild('GrabParts')if not at then return end local au=at:FindFirstChild('GrabPart')if not au then
return end local av=au:FindFirstChild('WeldConstraint')if not av or not av.Part1 then return end local aw=av.Part1.
Parent and av.Part1.Parent.PrimaryPart if not aw then return end if IsDescOf(aw,SvcWS.Map)then return end for ax,ay in
pairs(SvcPlayers:GetChildren())do if ay.Character and IsDescOf(aw,ay.Character)then return end end if not table.find(
AnchorParts,aw)then MakeAnchorHighlight(aw.Parent)table.insert(AnchorParts,aw)local ax=aw.Parent.DescendantAdded:
Connect(function(ax)if ax.Name~='PartOwner'then return end local ay=aw.Parent:FindFirstChild('GrabAnchorHL')if not ay
then return end ay.OutlineColor=ax.Value~=Me.Name and Color3.new(1,0,0)or Color3.new(0,0,1)end)table.insert(AnchorConns,
ax)end for ax,ay in ipairs(aw:GetChildren())do if ay:IsA('BodyPosition')or ay:IsA('BodyGyro')then ay:Destroy()end end
while SvcWS:FindFirstChild('GrabParts')do task.wait()end MakeMovers(aw,aw.Position,aw.CFrame)end)task.wait()end end
function ReleaseAllAnchor()for at,au in ipairs(AnchorParts)do if au then local av,aw,ax=au:FindFirstChild('BodyPosition'
),au:FindFirstChild('BodyGyro'),au.Parent and au.Parent:FindFirstChild('GrabAnchorHL')if av then av:Destroy()end if aw
then aw:Destroy()end if ax then ax:Destroy()end end end CleanConns(AnchorConns)table.clear(AnchorParts)end function
ApplyAnchor(at)if at then if not AnchorCoro or coroutine.status(AnchorCoro)=='dead'then AnchorCoro=coroutine.create(
AnchorLoop)coroutine.resume(AnchorCoro)end else if AnchorCoro and coroutine.status(AnchorCoro)~='dead'then coroutine.
close(AnchorCoro)AnchorCoro=nil end ReleaseAllAnchor()end end function ApplyMassless(at)if MasslessConn then
MasslessConn:Disconnect()MasslessConn=nil end if not at then return end MasslessConn=SvcWS.ChildAdded:Connect(function(
au)if au.Name~='GrabParts'then return end local av=au:FindFirstChild('DragPart')if not av then return end local aw,ax=av
:FindFirstChild('AlignPosition'),av:FindFirstChild('AlignOrientation')if not(aw and ax)then return end pcall(function()
aw.Responsiveness=ap aw.MaxForce=math.huge aw.MaxVelocity=math.huge ax.Responsiveness=ap ax.MaxTorque=math.huge end)end)
end function TBFindTarget()local at=LocalChar()if not at or not at:FindFirstChild('HumanoidRootPart')then return end if
SvcWS:FindFirstChild('GrabParts')then return end local au,av=Cam.CFrame.Position,Cam.CFrame.LookVector TBRayPrms.
FilterDescendantsInstances={at,SvcWS.Terrain}local aw for ax,ay in ipairs({av,(av+Vector3.new(0,0.075,0)).Unit,(av+
Vector3.new(0,-7.5E-2,0)).Unit})do aw=SvcWS:Raycast(au,ay*1000,TBRayPrms)if aw then break end end if not aw then return
end local ax=aw.Instance:FindFirstAncestorOfClass('Model')if not ax or ax==at then return end local ay,az=ax:
FindFirstChildOfClass('Humanoid'),ax:FindFirstChild('HumanoidRootPart')if not ay or ay.Health<=0 or not az then return
end if(at.HumanoidRootPart.Position-az.Position).Magnitude>TBDist then return end return ax end function ApplyTriggerBot
(at)if TBConn then TBConn:Disconnect()TBConn=nil end if not at then return end TBConn=SvcRun.Heartbeat:Connect(function(
)if not TBReady then return end if SvcInput:GetFocusedTextBox()then return end if tick()-TBLastCheck<TBThrottle then
return end TBLastCheck=tick()local au=TBFindTarget()if au then TBLastTarget=au TBLastHit=tick()elseif TBLastTarget and
tick()-TBLastHit>TBMemory then TBLastTarget=nil end local av,aw=LocalChar(),TBLastTarget and TBLastTarget:
FindFirstChild('HumanoidRootPart')if not(TBLastTarget and av and av:FindFirstChild('HumanoidRootPart')and aw)then return
end if(av.HumanoidRootPart.Position-aw.Position).Magnitude>TBDist then TBLastTarget=nil return end TBReady=false task.
spawn(function()task.wait(TBPreDelay)pcall(mouse1press)local ax=tick()repeat task.wait(0.02)until not SvcWS:
FindFirstChild('GrabParts')or tick()-ax>1.6 task.wait(TBPostDelay)TBReady=true TBLastTarget=nil end)end)end function
ApplyInvisLine(at)aq=at _G.InvisLine=at or nil if at then task.spawn(function()while aq do EvCreateLine:FireServer()task
.wait()end end)end end function startExtendLine()stopExtendLine()local at=LocalPlayer.Character or LocalPlayer.
CharacterAdded:Wait()at:WaitForChild('HumanoidRootPart')at:WaitForChild('Humanoid')ar=UserInputService.InputChanged:
Connect(function(au)if not infLineExtendT then return end if au.UserInputType==Enum.UserInputType.MouseWheel then if
lineDistanceV<11 then lineDistanceV=11 end if au.Position.Z>0 then lineDistanceV+=increaseLineExtendV elseif au.Position
.Z<0 then lineDistanceV-=increaseLineExtendV end end end)as=workspace.ChildAdded:Connect(function(au)if not
infLineExtendT then return end if au.Name~='GrabParts'or not au:IsA('Model')then return end local av=au local aw=av:
WaitForChild('DragPart')local ax=aw:Clone()ax.Name='DragPart1'local ay=ax:FindFirstChild('DragAttach')if ax:
FindFirstChild('AlignPosition')and ay then ax.AlignPosition.Attachment1=ay end ax.Parent=av local az=workspace.
CurrentCamera lineDistanceV=(ax.Position-az.CFrame.Position).Magnitude if ax:FindFirstChild('AlignOrientation')then ax.
AlignOrientation.Enabled=false end if aw:FindFirstChild('AlignPosition')then aw.AlignPosition.Enabled=false end task.
spawn(function()while av.Parent and infLineExtendT do ax.Position=az.CFrame.Position+az.CFrame.LookVector*lineDistanceV
RunService.RenderStepped:Wait()end lineDistanceV=11 end)end)end function stopExtendLine()if ar then ar:Disconnect()ar=
nil end if as then as:Disconnect()as=nil end lineDistanceV=11 end function ApplyExtendLine(at)infLineExtendT=at if at
then startExtendLine()else stopExtendLine()end end function ApplyLoopGrab(at)Toggles.LoopGrabToggle:SetValue(at)end
function ApplyKickGrab(at)Toggles.KickGrabToggle:SetValue(at)end local at={['Throw on Release']=ApplyThrow,[
'Noclip Grab']=ApplyNoclip,['Ragdoll Grab']=ApplyRagdoll,['Unweld Grab']=ApplyUnweld,['Kill Grab']=ApplyKill,[
'Kick Grab']=ApplyKickGrab,['Loop Grab']=ApplyLoopGrab,['Heavy Objects Grab']=ApplyHeavy,['Anchor Grab']=ApplyAnchor,[
'Massless Grab']=ApplyMassless,['Invisible Grab']=ApplyInvisLine,['Trigger Bot']=ApplyTriggerBot,['Extend Line']=
ApplyExtendLine}SvcWS.ChildAdded:Connect(function(au)if not KillOnGrab then return end if not(au:IsA('Model')and au.Name
=='GrabParts')then return end task.wait(0.05)local av=au:FindFirstChild('GrabPart')local aw=av and av:FindFirstChild(
'WeldConstraint')local ax=aw and aw.Part1 if not ax or ax.Parent==Me.Character then return end local ay=ax.Parent:
FindFirstChildOfClass('Humanoid')if not ay then return end pcall(function()ay.Health=0 ax.Parent:BreakJoints()end)end)
PanelTools:AddCheckbox('cbGrabMaster',{Text='Enable Grabs',Tooltip='Instantly enables or disables every selected grab',
Default=false}):OnChanged(function(au)GrabMasterOn=au for av,aw in pairs(GrabEnabled)do local ax=at[av]if ax then ax(au
and aw)end end end)PanelTools:AddDivider()PanelTools:AddDropdown('ddGrabModes',{Text='Active Grabs',Tooltip=
[[Pick one or more modes. All selected grabs run together when the master toggle is ON]],Values=GrabOptions,Default={},
Multi=true}):OnChanged(function(au)for av,aw in ipairs(GrabOptions)do local ax,ay=au[aw]==true,GrabEnabled[aw]==true if
ax~=ay then GrabEnabled[aw]=ax if GrabMasterOn then local az=at[aw]if az then az(ax)end end end end end)PanelTools:
AddDivider()PanelTools:AddCheckbox('LoopGrabToggle',{Text='Loop Grab',Default=false})Toggles.LoopGrabToggle:OnChanged(
function(au)if not au then getgenv().LoopGrabActive=false getgenv().FTargetGrabActive=false if getgenv().fGrabConnection
then getgenv().fGrabConnection:Disconnect()getgenv().fGrabConnection=nil end if getgenv().LoopGrabInputConnection then
getgenv().LoopGrabInputConnection:Disconnect()getgenv().LoopGrabInputConnection=nil end return end if getgenv().
LoopGrabActive then return end getgenv().LoopGrabActive=true local av,aw,ax,ay=game:GetService('Players'),game:
GetService('ReplicatedStorage'),game:GetService('UserInputService'),game:GetService('RunService')local az,aA=av.
LocalPlayer,aw:WaitForChild('GrabEvents'):WaitForChild('SetNetworkOwner')task.spawn(function()while getgenv().
LoopGrabActive do local aB=workspace:FindFirstChild('GrabParts')if not aB then task.wait()continue end local P=aB:
FindFirstChild('GrabPart')local Q=P and P:FindFirstChildOfClass('WeldConstraint')local S=Q and Q.Part1 if S then local T
for U,V in ipairs(av:GetPlayers())do if V.Character and S:IsDescendantOf(V.Character)then T=V break end end while
getgenv().LoopGrabActive and workspace:FindFirstChild('GrabParts')do if T then local U,V,W=T.Character and T.Character:
FindFirstChild('HumanoidRootPart'),T.Character and T.Character:FindFirstChild('Head'),az.Character and az.Character:
FindFirstChild('HumanoidRootPart')if U and W and V then pcall(function()aA:FireServer(U,CFrame.lookAt(W.Position,U.
Position))end)end else if S.Parent then local U=az.Character and az.Character:FindFirstChild('HumanoidRootPart')if U
then pcall(function()aA:FireServer(S,CFrame.lookAt(U.Position,S.Position))end)end end end task.wait()end end task.wait()
end end)if game.PlaceId==6961824067 then local aB=game:GetService('ReplicatedStorage'):WaitForChild('GrabEvents')local P
=aB:FindFirstChild('EndGrabEarly')if P then P:Destroy()end Instance.new('RemoteEvent',aB).Name='EndGrabEarly'end
getgenv().FTargetGrabActive=false getgenv().fGrabConnection=nil function getCenterTarget()local aB=workspace.
CurrentCamera local P,Q=Vector2.new(aB.ViewportSize.X/2,aB.ViewportSize.Y/2),az.Character and az.Character:
FindFirstChild('HumanoidRootPart')if not Q then return nil end local S,T=nil,math.huge for U,V in ipairs(av:GetPlayers()
)do if V~=az and V.Character and V.Character:FindFirstChild('HumanoidRootPart')then local W=V.Character.HumanoidRootPart
local X=(W.Position-Q.Position).Magnitude if X<=25 then local Y,Z=aB:WorldToViewportPoint(W.Position)if Z then local _=(
Vector2.new(Y.X,Y.Y)-P).Magnitude if _<T then T=_ S=V end end end end end return S end if getgenv().
LoopGrabInputConnection then getgenv().LoopGrabInputConnection:Disconnect()getgenv().LoopGrabInputConnection=nil end
getgenv().LoopGrabInputConnection=ax.InputBegan:Connect(function(aB,P)if P then return end if not getgenv().
LoopGrabActive then return end if aB.KeyCode==Enum.KeyCode.F then if getgenv().FTargetGrabActive then getgenv().
FTargetGrabActive=false if getgenv().fGrabConnection then getgenv().fGrabConnection:Disconnect()getgenv().
fGrabConnection=nil end else local Q=getCenterTarget()if Q then getgenv().FTargetGrabActive=true local S=workspace.
CurrentCamera getgenv().fGrabConnection=ay.RenderStepped:Connect(function()if not getgenv().FTargetGrabActive or not Q
or not Q.Character then getgenv().FTargetGrabActive=false if getgenv().fGrabConnection then getgenv().fGrabConnection:
Disconnect()getgenv().fGrabConnection=nil end return end local T,U,V=Q.Character:FindFirstChild('HumanoidRootPart'),Q.
Character:FindFirstChild('Head'),az.Character and az.Character:FindFirstChild('HumanoidRootPart')if T and V and U then
aA:FireServer(T,T.CFrame)if U:FindFirstChild('PartOwner')then local W=S.CFrame.Position+(S.CFrame.LookVector*23)local X=
CFrame.new(W)T.AssemblyLinearVelocity=Vector3.new(0,0,0)T.AssemblyAngularVelocity=Vector3.new(0,0,0)T.CFrame=X aA:
FireServer(T,X)end end end)end end end end)end)PanelTools:AddCheckbox('KickGrabToggle',{Text='Kick Grab',Default=false})
Toggles.KickGrabToggle:OnChanged(function(au)if not au then getgenv().KickGrabActive=false getgenv().FKeyAttackActive=
false if getgenv().FKeyInputConnection then getgenv().FKeyInputConnection:Disconnect()getgenv().FKeyInputConnection=nil
end return end if getgenv().KickGrabActive then return end getgenv().KickGrabActive=true getgenv().FKeyAttackActive=
false local av,aw,ax,ay=game:GetService('Players'),game:GetService('ReplicatedStorage'),game:GetService(
'UserInputService'),game:GetService('RunService')local az,aA,aB=av.LocalPlayer,workspace.CurrentCamera,aw:WaitForChild(
'GrabEvents')local P,Q,S=aB:WaitForChild('CreateGrabLine'),aB:WaitForChild('SetNetworkOwner'),aB:WaitForChild(
'DestroyGrabLine')task.spawn(function()while getgenv().KickGrabActive do local T=workspace:FindFirstChild('GrabParts')if
not T then task.wait()continue end local U=T:FindFirstChild('GrabPart')local V=U and U:FindFirstChildOfClass(
'WeldConstraint')local W=V and V.Part1 if W then local X for Y,Z in ipairs(av:GetPlayers())do if Z.Character and W:
IsDescendantOf(Z.Character)then X=Z break end end if not X then task.wait()continue end while getgenv().KickGrabActive
and workspace:FindFirstChild('GrabParts')do if X then local Y,Z,_=X.Character and X.Character:FindFirstChild(
'HumanoidRootPart'),X.Character and X.Character:FindFirstChild('Head'),az.Character and az.Character:FindFirstChild(
'HumanoidRootPart')if Y and _ and Z then pcall(function()Q:FireServer(Y,CFrame.lookAt(_.Position,Y.Position))end)task.
wait()pcall(function()S:FireServer(Z)end)end end task.wait()end end task.wait()end end)function getScreenCenterTarget()
local T=Vector2.new(aA.ViewportSize.X/2,aA.ViewportSize.Y/2)local U,V=aA:ViewportPointToRay(T.X,T.Y),RaycastParams.new()
V.FilterType=Enum.RaycastFilterType.Exclude if az.Character then V.FilterDescendantsInstances={az.Character}end local W=
workspace:Raycast(U.Origin,U.Direction*1000,V)if W and W.Instance then for X,Y in ipairs(av:GetPlayers())do if Y~=az and
Y.Character and W.Instance:IsDescendantOf(Y.Character)then return Y end end end return nil end local T,U function
stopFKeyAttack()getgenv().FKeyAttackActive=false T=nil if U then U:Disconnect()U=nil end end function startFKeyAttack(V)
getgenv().FKeyAttackActive=true T=V U=ay.RenderStepped:Connect(function()if not getgenv().FKeyAttackActive or not T then
stopFKeyAttack()return end local W=az.Character local X,Y=W and W:FindFirstChild('HumanoidRootPart'),T.Character local Z
=Y and Y:FindFirstChild('HumanoidRootPart')if not X or not Z then return end local _=aA.CFrame local aC=_.Position+_.
LookVector*20 pcall(function()Z.CFrame=CFrame.new(aC)end)local aD=CFrame.new(-9.0301513671875E-2,0.4190945625305176,
0.4999980926513672,0.39632707834243774,0,-0.9181094169616699,-1.0944717132588266E-7,1,-4.7245869438938826E-8,
0.9181094169616699,5.9604644775390625e-8,0.39632707834243774)pcall(function()P:FireServer(Z,aD)Q:FireServer(Z,CFrame.
lookAt(X.Position,Z.Position))S:FireServer(Z)end)end)end getgenv().FKeyInputConnection=ax.InputBegan:Connect(function(aC
,aD)if aD then return end if aC.KeyCode~=Enum.KeyCode.F then return end if getgenv().FKeyAttackActive then
stopFKeyAttack()return end local V=getScreenCenterTarget()if not V then return end local W=az.Character local X,Y=W and
W:FindFirstChild('HumanoidRootPart'),V.Character local Z=Y and Y:FindFirstChild('HumanoidRootPart')if not X or not Z
then return end local _=(X.Position-Z.Position).Magnitude if _>25 then return end startFKeyAttack(V)end)if game.PlaceId
~=6961824067 then return end local aC=game:GetService('ReplicatedStorage'):WaitForChild('GrabEvents')aC:WaitForChild(
'EndGrabEarly'):Destroy()Instance.new('RemoteEvent',aC).Name='EndGrabEarly'end)PanelTools:AddDivider()PanelTools:
AddSlider('slThrowForce',{Text='Throw Force',Tooltip='How far are the objects thrown?',Default=750,Min=1,Max=20000,
Rounding=0}):OnChanged(function(au)ThrowForce=au _G.strength=au end)PanelTools:AddSlider('slMasslessSense',{Text=
'Line Responsiveness',Tooltip='Smoothness of grab line movement.',Default=30,Min=1,Max=2000,Rounding=0}):OnChanged(
function(au)ap=math.max(1,au or ap)end)PanelTools:AddSlider('slExtendLineForce',{Text='Scroll Step Power',Tooltip=
'Distance moved per mouse wheel tick.',Default=7,Min=1,Max=25,Rounding=0}):OnChanged(function(au)increaseLineExtendV=au
end)PanelTools:AddSlider('slTBDist',{Text='Trigger Range',Tooltip='Maximum distance for auto trigger detection.',Default
=20,Min=5,Max=45,Rounding=0}):OnChanged(function(au)TBDist=au end)PanelTools:AddDivider()PanelTools:AddButton({Text=
'Release Anchors',Tooltip='Clears all frozen / anchored objects.',Func=function()ReleaseAllAnchor()notify(
'Anchor System','All anchored parts released',3)end})local au=Tabs.Grab:AddRightGroupbox('Auras','cpu')do local av,aw=
false,nil local ax=function()av=true aw=task.spawn(function()while av do local ax,ay=pcall(function()local ax=
LocalPlayer.Character if ax and ax:FindFirstChild('HumanoidRootPart')then local ay,az=ax.HumanoidRootPart,workspace.
CurrentCamera for aA,aB in pairs(Players:GetPlayers())do if aB~=LocalPlayer and aB.Character then local aC=aB.Character
local aD=aC:FindFirstChild('Torso')or aC:FindFirstChild('UpperTorso')if aD and(aD.Position-ay.Position).Magnitude<=25
then ReplicatedStorage.GrabEvents.SetNetworkOwner:FireServer(aD,ay.CFrame)for P,Q in ipairs(aC:GetDescendants())do if Q:
IsA('BasePart')then Q.CanCollide=false end end local P=aD:FindFirstChild('HellAuraPos')or Instance.new('BodyPosition')P.
Name='HellAuraPos'P.MaxForce=Vector3.new(100000,100000,100000)P.D=500 P.P=50000 P.Parent=aD local Q=aD:FindFirstChild(
'HellAuraGyro')or Instance.new('BodyGyro')Q.Name='HellAuraGyro'Q.MaxTorque=Vector3.new(100000,100000,100000)Q.D=500 Q.P=
50000 Q.Parent=aD local S=az.CFrame.LookVector P.Position=ay.Position+S*15+Vector3.new(0,5,0)Q.CFrame=CFrame.new(aD.
Position,ay.Position)end end end end end)if not ax then warn('Error in Telekinesis Aura: '..tostring(ay))end task.wait(
0.05)end end)end local ay=function()av=false if aw then task.cancel(aw)aw=nil end end au:AddCheckbox('TelekinesisAura',{
Text='Telekinesis Aura',Default=false,Callback=function(az)if az then ax()else ay()end end})local az,aA=false,nil local
aB=function()az=true if aA then aA:Disconnect()aA=nil end aA=RunService.Heartbeat:Connect(function()for aB,aC in pairs(
Players:GetPlayers())do if aC~=LocalPlayer and aC.Character then local aD,P,Q=aC.Character:FindFirstChild(
'HumanoidRootPart'),aC.Character:FindFirstChild('Head'),aC.Character:FindFirstChildOfClass('Humanoid')if aD and P and Q
and Q.Health>0 and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild('HumanoidRootPart')then if(aD.Position
-LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<=25 then pcall(function()ReplicatedStorage.GrabEvents.
SetNetworkOwner:FireServer(aD,aD.CFrame)task.wait(0.1)ReplicatedStorage.GrabEvents.DestroyGrabLine:FireServer(aD)if P:
FindFirstChild('PartOwner')and P.PartOwner.Value==LocalPlayer.Name then for S,T in pairs(Q.Parent:GetChildren())do if T:
IsA('BasePart')then T.CFrame=CFrame.new(-1E9,1000000000,-1E9)end end task.wait()for S,T in pairs(Q.Parent:GetChildren())
do if T:IsA('BasePart')then T.CFrame=CFrame.new(-1E9,1000000000,-1E9)end end local S=Instance.new('BodyVelocity')S.
Velocity=Vector3.new(0,-9999999,0)S.MaxForce=Vector3.new(9000000000,9000000000,9000000000)S.P=100000075 S.Parent=aD Q.
Sit=false Q.Jump=true Q.BreakJointsOnDeath=false Q:ChangeState(Enum.HumanoidStateType.Dead)task.delay(2,function()if S
and S.Parent then S:Destroy()end end)end end)end end end end end)end local aC=function()az=false if aA then aA:
Disconnect()aA=nil end end au:AddCheckbox('DeathAura',{Text='Death Aura',Default=false,Callback=function(aD)if aD then
aB()else aC()end end})local aD,P=false,nil _G.FlingStrength=400 _G.FlingTarget=1 local Q=function()aD=true P=task.spawn(
function()while aD do pcall(function()local Q=LocalPlayer.Character local S=Q and Q:FindFirstChild('HumanoidRootPart')if
not S then task.wait(0.1)return end if _G.FlingTarget==1 or _G.FlingTarget==3 then for T,U in ipairs(Players:GetPlayers(
))do if U~=LocalPlayer and U.Character then local V,W=U.Character:FindFirstChild('HumanoidRootPart'),U.Character:
FindFirstChildOfClass('Humanoid')if V and W and W.Health>0 then local X=(V.Position-S.Position).Magnitude if X<=30 then
pcall(function()ReplicatedStorage.GrabEvents.SetNetworkOwner:FireServer(V,V.CFrame)if not V:FindFirstChild(
'FlingAuraVelocity')then local Y=Instance.new('BodyVelocity')Y.Name='FlingAuraVelocity'Y.MaxForce=Vector3.new(math.huge,
math.huge,math.huge)local Z=(V.Position-S.Position).Unit Y.Velocity=Vector3.new(Z.X,0.5,Z.Z)*_G.FlingStrength Y.Parent=V
Debris:AddItem(Y,0.5)end end)end end end end end if _G.FlingTarget==2 or _G.FlingTarget==3 then for T,U in ipairs(
workspace:GetDescendants())do if U:IsA('BasePart')and U.CanQuery and not U:IsDescendantOf(Q)then local V=(U.Position-S.
Position).Magnitude if V<=28 then pcall(function()ReplicatedStorage.GrabEvents.SetNetworkOwner:FireServer(U,U.CFrame)if
not U:FindFirstChild('FlingAuraVelocity')then local W=Instance.new('BodyVelocity')W.Name='FlingAuraVelocity'W.MaxForce=
Vector3.new(math.huge,math.huge,math.huge)local X=(U.Position-S.Position).Unit W.Velocity=Vector3.new(X.X,0.5,X.Z)*math.
clamp(_G.FlingStrength,400,600)W.Parent=U Debris:AddItem(W,0.5)end end)end end end end end)task.wait(0.1)end end)end
local S=function()aD=false if P then task.cancel(P)P=nil end end au:AddCheckbox('FlingAura',{Text='Fling Aura',Default=
false,Callback=function(T)if T then Q()else S()end end})au:AddSlider('FlingStrength',{Text='Fling Strength',Min=400,Max=
10000,Default=400,Rounding=0,Suffix='',Callback=function(T)_G.FlingStrength=T end})au:AddDropdown('FlingTarget',{Text=
'Fling Target',Values={'Players','Objects','Players and Objects'},Default='Players',Callback=function(T)if T=='Players'
then _G.FlingTarget=1 elseif T=='Objects'then _G.FlingTarget=2 else _G.FlingTarget=3 end end})end VisL=Tabs.Visual:
AddLeftGroupbox('Visuals','scan-eye')do plr=game.Players.LocalPlayer VisL:AddCheckbox('Thirdperson',{Text='Third Person'
,Default=false,Callback=function(av)if av then plr.CameraMode=Enum.CameraMode.Classic plr.CameraMaxZoomDistance=1000 plr
.CameraMinZoomDistance=0.5 else plr.CameraMode=Enum.CameraMode.LockFirstPerson plr.CameraMaxZoomDistance=0.5 plr.
CameraMinZoomDistance=0.5 end end})end VisL:AddSlider('VisualFOV',{Text='Field of View',Min=40,Max=120,Default=70,
Rounding=0,Callback=function(av)local aw=workspace.CurrentCamera if aw then aw.FieldOfView=av end end})VisL:AddLabel(
'Esp ---------------')do local av,aw,ax,ay,az=false,Color3.fromRGB(255,0,0),false,{},{}local aA=function(aA)if not aA or
not aA.Character then return end local aB=aA.Character local aC=aB:FindFirstChild('HumanoidRootPart')if not aC then
return end local aD=Instance.new('Highlight')aD.Name='ESP_Highlight'aD.Adornee=aB aD.FillColor=aw aD.OutlineColor=Color3
.fromRGB(255,255,255)aD.FillTransparency=0.9 aD.OutlineTransparency=0 aD.DepthMode=Enum.HighlightDepthMode.AlwaysOnTop
aD.Parent=aB local P=Instance.new('BillboardGui')P.Name='ESP_Name'P.Adornee=aC P.Size=UDim2.new(0,200,0,30)P.StudsOffset
=Vector3.new(0,3,0)P.AlwaysOnTop=true P.Parent=aC local Q=Instance.new('TextLabel')Q.Size=UDim2.new(1,0,1,0)Q.
BackgroundTransparency=1 Q.Text=aA.DisplayName..' ('..aA.Name..')'Q.TextColor3=Color3.fromRGB(255,255,255)Q.
TextStrokeTransparency=0 Q.TextStrokeColor3=Color3.fromRGB(0,0,0)Q.Font=Enum.Font.GothamBold Q.TextScaled=true Q.Parent=
P local S=Instance.new('BillboardGui')S.Name='ESP_Distance'S.Adornee=aC S.Size=UDim2.new(0,100,0,20)S.StudsOffset=
Vector3.new(0,-2,0)S.AlwaysOnTop=true S.Parent=aC local T=Instance.new('TextLabel')T.Size=UDim2.new(1,0,1,0)T.
BackgroundTransparency=1 T.Text='0 studs'T.TextColor3=Color3.fromRGB(255,255,255)T.TextStrokeTransparency=0 T.
TextStrokeColor3=Color3.fromRGB(0,0,0)T.Font=Enum.Font.GothamBold T.TextScaled=true T.Parent=S table.insert(az,{player=
aA,highlight=aD,billboard=P,distBillboard=S,label=Q,distLabel=T})local U=RunService.RenderStepped:Connect(function()if
not av or not aA.Character then conn:Disconnect()return end local U=LocalPlayer.Character local V=U and U:
FindFirstChild('HumanoidRootPart')if V and aC and aC.Parent then local W=math.floor((aC.Position-V.Position).Magnitude)T
.Text=W..' studs'end end)table.insert(ay,U)end local aB=function()for aB,aC in ipairs(ay)do pcall(function()aC:
Disconnect()end)end ay={}for aB,aC in ipairs(az)do pcall(function()if aC.highlight then aC.highlight:Destroy()end if aC.
billboard then aC.billboard:Destroy()end if aC.distBillboard then aC.distBillboard:Destroy()end end)end az={}end local
aC=function()aB()if not av then return end for aC,aD in pairs(Players:GetPlayers())do if aD~=LocalPlayer and aD.
Character then aA(aD)end end end local aD=function()for aD,P in ipairs(az)do pcall(function()if P.highlight then P.
highlight.FillColor=aw end end)end end VisL:AddLabel('ESP Color'):AddColorPicker('ESPColorPicker',{Default=Color3.
fromRGB(255,0,0),Title='ESP Color',Callback=function(P)aw=P if not ax then aD()end end})VisL:AddCheckbox('RainbowESP',{
Text='Rainbow ESP',Default=false,Callback=function(P)ax=P if P then task.spawn(function()while ax and av do local Q=
tick()%1 aw=Color3.fromHSV(Q,1,1)aD()task.wait(0.05)end end)else aw=Options.ESPColorPicker.Value or Color3.fromRGB(255,0
,0)aD()end end})VisL:AddCheckbox('PlayerESP',{Text='Enable Player ESP',Default=false,Callback=function(P)av=P if P then
aC()local Q=Players.PlayerAdded:Connect(function(Q)task.wait(0.5)if av and Q~=LocalPlayer and Q.Character then aA(Q)end
end)table.insert(ay,Q)local S=Players.PlayerAdded:Connect(function(S)if av and S~=LocalPlayer then local T=S.
CharacterAdded:Connect(function()task.wait(0.5)if av and S.Character then local T=false for U,V in ipairs(az)do if V.
player==S then T=true break end end if not T then aA(S)end end end)table.insert(ay,T)end end)table.insert(ay,S)else aB()
end end})Players.PlayerRemoving:Connect(function(P)for Q,S in ipairs(az)do if S.player==P then pcall(function()if S.
highlight then S.highlight:Destroy()end if S.billboard then S.billboard:Destroy()end if S.distBillboard then S.
distBillboard:Destroy()end end)table.remove(az,Q)break end end end)end do local av,aw=game:GetService('Players'),game:
GetService('Workspace')game:GetService('RunService')local ax,ay,az,aA,aB,aC,aD,P=game:GetService('TweenService'),av.
LocalPlayer,{},{},Color3.fromRGB(255,60,60),0.18,{},false VisL:AddLabel('ESP Color'):AddColorPicker('PCLDColor',{Default
=aB,Title='PCLD ESP Color',Callback=function(Q)aB=Q if not P then for S,T in pairs(az)do if T.box then T.box.Color=Q end
if T.outline then T.outline.Color3=Q end end end end})VisL:AddCheckbox('RainbowPCLD',{Text='PCLD Rainbow PCLD',Default=
false,Callback=function(Q)P=Q if Q then task.spawn(function()while P do local S=tick()%1 local T=Color3.fromHSV(S,1,1)
for U,V in pairs(az)do if V.box then V.box.Color=T end if V.outline then V.outline.Color3=T end end task.wait(0.05)end
end)else aB=Options.PCLDColor.Value or Color3.fromRGB(255,60,60)for S,T in pairs(az)do if T.box then T.box.Color=aB end
if T.outline then T.outline.Color3=aB end end end end})local Q=function(Q)if az[Q]then return end Q.Transparency=1 local
S=Instance.new('Part')S.Name='PCLD_Box'S.Size=Q.Size S.CFrame=Q.CFrame S.Anchored=true S.CanCollide=false S.CanTouch=
false S.CanQuery=false S.CastShadow=false S.Material=Enum.Material.Neon S.Color=aB S.Transparency=0.9 S.Parent=aw local
T=Instance.new('SelectionBox')T.Adornee=S T.LineThickness=0.02 T.Color3=aB T.Transparency=0.1 T.Parent=S local U={box=S,
outline=T,original=Q,lastUpdate=tick(),tween=nil}az[Q]=U task.spawn(function()local V=Q.Position while S.Parent and Q.
Parent do local W,X=Q.Position,Q.CFrame if(W-V).Magnitude>0.02 then V=W if U.tween then U.tween:Cancel()end U.tween=ax:
Create(S,TweenInfo.new(aC,Enum.EasingStyle.Linear),{CFrame=X})U.tween:Play()end task.wait(0.03)end end)end local S=
function(S)local T=az[S]if not T then return end if T.tween then T.tween:Cancel()end if T.box then T.box:Destroy()end az
[S]=nil aA[S]=nil end local T=function()for T,U in pairs(az)do if U.tween then U.tween:Cancel()end if U.box then U.box:
Destroy()end end az={}aA={}end VisL:AddCheckbox('ViewPCLD',{Text='PCLD ESP',Default=false,Callback=function(U)if U then
for V,W in ipairs(aw:GetChildren())do if W.Name=='PlayerCharacterLocationDetector'then Q(W)end end aD.viewpcld=aw.
ChildAdded:Connect(function(V)if V.Name=='PlayerCharacterLocationDetector'then task.wait(0.1)Q(V)end end)aD.pcldRemoved=
aw.ChildRemoved:Connect(function(V)if V.Name=='PlayerCharacterLocationDetector'then S(V)end end)else if aD.viewpcld then
aD.viewpcld:Disconnect()end if aD.pcldRemoved then aD.pcldRemoved:Disconnect()end T()end end})Options.PCLDColor:
OnChanged(function()if not P then aB=Options.PCLDColor.Value for U,V in pairs(az)do if V.box then V.box.Color=aB end if
V.outline then V.outline.Color3=aB end end end end)end do VisualsCus=Tabs.Visual:AddLeftGroupbox('Customization',
'eye-closed')Lighting=game:GetService('Lighting')Library=_G.Library or Library CustomSkyEnabled=false CurrentSkybox=
'Red Night'DefaultLighting={Brightness=Lighting.Brightness,ClockTime=Lighting.ClockTime,GlobalShadows=Lighting.
GlobalShadows,OutdoorAmbient=Lighting.OutdoorAmbient,Ambient=Lighting.Ambient,FogStart=Lighting.FogStart,FogEnd=Lighting
.FogEnd,FogColor=Lighting.FogColor,ExposureCompensation=Lighting.ExposureCompensation}DefaultSkySettings={}defaultSky=
Lighting:FindFirstChildOfClass('Sky')if defaultSky then DefaultSkySettings={SkyboxBk=defaultSky.SkyboxBk,SkyboxDn=
defaultSky.SkyboxDn,SkyboxFt=defaultSky.SkyboxFt,SkyboxLf=defaultSky.SkyboxLf,SkyboxRt=defaultSky.SkyboxRt,SkyboxUp=
defaultSky.SkyboxUp}end SkyboxAssets={['Black Storm']={Bk='rbxassetid://15502511288',Dn='rbxassetid://15502508460',Ft=
'rbxassetid://15502510289',Lf='rbxassetid://15502507918',Rt='rbxassetid://15502509398',Up='rbxassetid://15502511911'},[
'HD']={Bk='http://www.roblox.com/asset/?id=16553658937',Dn='http://www.roblox.com/asset/?id=16553660713',Ft=
'http://www.roblox.com/asset/?id=16553662144',Lf='http://www.roblox.com/asset/?id=16553664042',Rt=
'http://www.roblox.com/asset/?id=16553665766',Up='http://www.roblox.com/asset/?id=16553667750'},['Snow']={Bk=
'http://www.roblox.com/asset/?id=155657655',Dn='http://www.roblox.com/asset/?id=155674246',Ft=
'http://www.roblox.com/asset/?id=155657609',Lf='http://www.roblox.com/asset/?id=155657671',Rt=
'http://www.roblox.com/asset/?id=155657619',Up='http://www.roblox.com/asset/?id=155674931'},['Blue Space']={Bk=
'rbxassetid://15536110634',Dn='rbxassetid://15536112543',Ft='rbxassetid://15536116141',Lf='rbxassetid://15536114370',Rt=
'rbxassetid://15536118762',Up='rbxassetid://15536117282'},['Realistic']={Bk='rbxassetid://653719502',Dn=
'rbxassetid://653718790',Ft='rbxassetid://653719067',Lf='rbxassetid://653719190',Rt='rbxassetid://653718931',Up=
'rbxassetid://653719321'},['Stormy']={Bk='http://www.roblox.com/asset/?id=18703245834',Dn=
'http://www.roblox.com/asset/?id=18703243349',Ft='http://www.roblox.com/asset/?id=18703240532',Lf=
'http://www.roblox.com/asset/?id=18703237556',Rt='http://www.roblox.com/asset/?id=18703235430',Up=
'http://www.roblox.com/asset/?id=18703232671'},['Pink']={Bk='rbxassetid://12216109205',Dn='rbxassetid://12216109875',Ft=
'rbxassetid://12216109489',Lf='rbxassetid://12216110170',Rt='rbxassetid://12216110471',Up='rbxassetid://12216108877'},[
'Sunset']={Bk='rbxassetid://600830446',Dn='rbxassetid://600831635',Ft='rbxassetid://600832720',Lf=
'rbxassetid://600886090',Rt='rbxassetid://600833862',Up='rbxassetid://600835177'},['Arctic']={Bk=
'http://www.roblox.com/asset/?id=225469390',Dn='http://www.roblox.com/asset/?id=225469395',Ft=
'http://www.roblox.com/asset/?id=225469403',Lf='http://www.roblox.com/asset/?id=225469450',Rt=
'http://www.roblox.com/asset/?id=225469471',Up='http://www.roblox.com/asset/?id=225469481'},['Space']={Bk=
'http://www.roblox.com/asset/?id=166509999',Dn='http://www.roblox.com/asset/?id=166510057',Ft=
'http://www.roblox.com/asset/?id=166510116',Lf='http://www.roblox.com/asset/?id=166510092',Rt=
'http://www.roblox.com/asset/?id=166510131',Up='http://www.roblox.com/asset/?id=166510114'},['Roblox Default']={Bk=
'rbxasset://textures/sky/sky512_bk.tex',Dn='rbxasset://textures/sky/sky512_dn.tex',Ft=
'rbxasset://textures/sky/sky512_ft.tex',Lf='rbxasset://textures/sky/sky512_lf.tex',Rt=
'rbxasset://textures/sky/sky512_rt.tex',Up='rbxasset://textures/sky/sky512_up.tex'},['Red Night']={Bk=
'http://www.roblox.com/asset/?id=401664839',Dn='http://www.roblox.com/asset/?id=401664862',Ft=
'http://www.roblox.com/asset/?id=401664960',Lf='http://www.roblox.com/asset/?id=401664881',Rt=
'http://www.roblox.com/asset/?id=401664901',Up='http://www.roblox.com/asset/?id=401664936'},['Deep Space 1']={Bk=
'http://www.roblox.com/asset/?id=149397692',Dn='http://www.roblox.com/asset/?id=149397686',Ft=
'http://www.roblox.com/asset/?id=149397697',Lf='http://www.roblox.com/asset/?id=149397684',Rt=
'http://www.roblox.com/asset/?id=149397688',Up='http://www.roblox.com/asset/?id=149397702'},['Pink Skies']={Bk=
'http://www.roblox.com/asset/?id=151165214',Dn='http://www.roblox.com/asset/?id=151165197',Ft=
'http://www.roblox.com/asset/?id=151165224',Lf='http://www.roblox.com/asset/?id=151165191',Rt=
'http://www.roblox.com/asset/?id=151165206',Up='http://www.roblox.com/asset/?id=151165227'},['Purple Sunset']={Bk=
'rbxassetid://264908339',Dn='rbxassetid://264907909',Ft='rbxassetid://264909420',Lf='rbxassetid://264909758',Rt=
'rbxassetid://264908886',Up='rbxassetid://264907379'},['Blue Night']={Bk='http://www.roblox.com/asset/?id=12064107',Dn=
'http://www.roblox.com/asset/?id=12064152',Ft='http://www.roblox.com/asset/?id=12064121',Lf=
'http://www.roblox.com/asset/?id=12063984',Rt='http://www.roblox.com/asset/?id=12064115',Up=
'http://www.roblox.com/asset/?id=12064131'},['Blossom Daylight']={Bk='http://www.roblox.com/asset/?id=271042516',Dn=
'http://www.roblox.com/asset/?id=271077243',Ft='http://www.roblox.com/asset/?id=271042556',Lf=
'http://www.roblox.com/asset/?id=271042310',Rt='http://www.roblox.com/asset/?id=271042467',Up=
'http://www.roblox.com/asset/?id=271077958'},['Blue Nebula']={Bk='http://www.roblox.com/asset?id=135207744',Dn=
'http://www.roblox.com/asset?id=135207662',Ft='http://www.roblox.com/asset?id=135207770',Lf=
'http://www.roblox.com/asset?id=135207615',Rt='http://www.roblox.com/asset?id=135207695',Up=
'http://www.roblox.com/asset?id=135207794'},['Blue Planet']={Bk='rbxassetid://218955819',Dn='rbxassetid://218953419',Ft=
'rbxassetid://218954524',Lf='rbxassetid://218958493',Rt='rbxassetid://218957134',Up='rbxassetid://218950090'},[
'Deep Space 2']={Bk='http://www.roblox.com/asset/?id=159248188',Dn='http://www.roblox.com/asset/?id=159248183',Ft=
'http://www.roblox.com/asset/?id=159248187',Lf='http://www.roblox.com/asset/?id=159248173',Rt=
'http://www.roblox.com/asset/?id=159248192',Up='http://www.roblox.com/asset/?id=159248176'},['Summer']={Bk=
'rbxassetid://16648590964',Dn='rbxassetid://16648617436',Ft='rbxassetid://16648595424',Lf='rbxassetid://16648566370',Rt=
'rbxassetid://16648577071',Up='rbxassetid://16648598180'},['Galaxy']={Bk='rbxassetid://15983968922',Dn=
'rbxassetid://15983966825',Ft='rbxassetid://15983965025',Lf='rbxassetid://15983967420',Rt='rbxassetid://15983966246',Up=
'rbxassetid://15983964246'},['Stylized']={Bk='rbxassetid://18351376859',Dn='rbxassetid://18351374919',Ft=
'rbxassetid://18351376800',Lf='rbxassetid://18351376469',Rt='rbxassetid://18351376457',Up='rbxassetid://18351377189'},[
'Minecraft']={Bk='rbxassetid://8735166756',Dn='http://www.roblox.com/asset/?id=8735166707',Ft=
'http://www.roblox.com/asset/?id=8735231668',Lf='http://www.roblox.com/asset/?id=8735166755',Rt=
'http://www.roblox.com/asset/?id=8735166751',Up='http://www.roblox.com/asset/?id=8735166729'},['Cloudy Rain']={Bk=
'http://www.roblox.com/asset/?id=4498828382',Dn='http://www.roblox.com/asset/?id=4498828812',Ft=
'http://www.roblox.com/asset/?id=4498829917',Lf='http://www.roblox.com/asset/?id=4498830911',Rt=
'http://www.roblox.com/asset/?id=4498830417',Up='http://www.roblox.com/asset/?id=4498831746'},['Black Cloudy Rain']={Bk=
'http://www.roblox.com/asset/?id=149679669',Dn='http://www.roblox.com/asset/?id=149681979',Ft=
'http://www.roblox.com/asset/?id=149679690',Lf='http://www.roblox.com/asset/?id=149679709',Rt=
'http://www.roblox.com/asset/?id=149679722',Up='http://www.roblox.com/asset/?id=149680199'}}local av=function(av)s=
SkyboxAssets[av]if not s then return end sky=Lighting:FindFirstChildOfClass('Sky')or Instance.new('Sky',Lighting)sky.
Name='Sky'sky.SkyboxBk=s.Bk sky.SkyboxDn=s.Dn sky.SkyboxFt=s.Ft sky.SkyboxLf=s.Lf sky.SkyboxRt=s.Rt sky.SkyboxUp=s.Up
end local aw=function()sky=Lighting:FindFirstChildOfClass('Sky')if sky and DefaultSkySettings.SkyboxBk then sky.SkyboxBk
=DefaultSkySettings.SkyboxBk sky.SkyboxDn=DefaultSkySettings.SkyboxDn sky.SkyboxFt=DefaultSkySettings.SkyboxFt sky.
SkyboxLf=DefaultSkySettings.SkyboxLf sky.SkyboxRt=DefaultSkySettings.SkyboxRt sky.SkyboxUp=DefaultSkySettings.SkyboxUp
elseif sky then sky:Destroy()end end skyboxNames={}for ax in pairs(SkyboxAssets)do table.insert(skyboxNames,ax)end table
.sort(skyboxNames)VisualsCus:AddDropdown('VisualSkybox',{Text='Skybox',Values=skyboxNames,Default='Red Night',Callback=
function(ax)CurrentSkybox=ax if CustomSkyEnabled then av(ax)end end})VisualsCus:AddCheckbox('VisualSkyboxToggle',{Text=
'Enable Custom Skybox',Default=false,Callback=function(ax)CustomSkyEnabled=ax if ax then av(CurrentSkybox)Library:
Notify({Title='Ne3lodei Project',Description='Skybox Enabled!',Duration=2})else aw()Library:Notify({Title=
'Ne3lodei Project',Description='Skybox Disabled!',Duration=2})end end})local ax=Tabs.Visual:AddRightGroupbox('Ocean',
'waves-horizontal')OceanFolder=workspace.Map.AlwaysHereTweenedObjects.Ocean.Object.ObjectModel _cachedOceanParts=nil
function oceanParts()if _cachedOceanParts then return _cachedOceanParts end local ay={}for az,aA in ipairs(OceanFolder:
GetDescendants())do if aA:IsA('BasePart')then table.insert(ay,aA)end end _cachedOceanParts=ay return ay end function
setOceanMaterial(ay)local az=Enum.Material[ay]if not az then return end for aA,aB in ipairs(oceanParts())do aB.Material=
az end end function setOceanColor(ay)for az,aA in ipairs(oceanParts())do aA.Color=ay end end WaterMaterial=ax:
AddDropdown('WaterMaterial',{Text='Ocean Material',Values={'Water','Glass','Neon','SmoothPlastic','Ice','Sand','Rock',
'Basalt','Slate','Mud','Cobblestone'},Default='Water'})Options.WaterMaterial:OnChanged(function()setOceanMaterial(
Options.WaterMaterial.Value)end)OceanToggle=ax:AddCheckbox('EnableOceanColor',{Text='Custom Ocean Color',Default=true})
OceanToggle:AddColorPicker('OceanColorPicker',{Default=Color3.fromRGB(0,170,255),Title='Ocean Color',Callback=function(
ay)setOceanColor(ay)end})Options.OceanColorPicker:OnChanged(function()setOceanColor(Options.OceanColorPicker.Value)if
Options.OceanColorPicker.Transparency then for ay,az in ipairs(oceanParts())do az.Transparency=Options.OceanColorPicker.
Transparency end end end)ax:AddButton('Refresh Ocean Cache',function()_cachedOceanParts=nil _cachedOceanParts=
oceanParts()setOceanMaterial(Options.WaterMaterial.Value)setOceanColor(Options.OceanColorPicker.Value)end)ax:
AddCheckbox('RealisticWater',{Text='Realistic Water',Default=false})Toggles.RealisticWater:OnChanged(function(ay)if ay
then local az,aA=workspace.Terrain,workspace.Map.AlwaysHereTweenedObjects.Ocean.Object.ObjectModel for aB,aC in ipairs(
aA:GetChildren())do if aC:IsA('Part')then local aD,P=aC.Size,aC.CFrame local Q=Region3.new(P.Position-aD/2,P.Position+aD
/2):ExpandToGrid(4)az:FillRegion(Q,4,Enum.Material.Water)aC:Destroy()end end end end)do VisualR=Tabs.Visual:
AddRightGroupbox('Notifys','bell')Players=game:GetService('Players')Workspace=game:GetService('Workspace')
ReplicatedStorage=game:GetService('ReplicatedStorage')LocalPlayer=Players.LocalPlayer Library=_G.Library or Library
kickNotifyConnection=nil local ay=function(ay)if not ay then return nil end closestPlayer=nil minDistance=math.huge for
az,aA in pairs(Players:GetPlayers())do if aA.Character then hrp=aA.Character:FindFirstChild('HumanoidRootPart')if hrp
then distance=(hrp.Position-ay).Magnitude if distance<minDistance then minDistance=distance closestPlayer=aA end end end
end return closestPlayer end VisualR:AddCheckbox('KickNotify',{Text='Kick Notify',Default=false,Callback=function(az)if
az then kickNotifyConnection=Workspace.ChildAdded:Connect(function(aA)kickObjectNames={['blackholekick']=true,[
'blackholekicktweens(old)']=true,['blackholekicktweens']=true,['jhole']=true,['blackhole']=true,['black_hole']=true,[
'voidhole']=true,['singularity']=true}if not aA.Name or not kickObjectNames[aA.Name:lower()]then return end task.wait(
0.1)local aB if aA:IsA('BasePart')then aB=aA.Position else part=aA:FindFirstChildWhichIsA('BasePart',true)if part then
aB=part.Position end end if not aB then return end closestPlayer=ay(aB)if closestPlayer then displayName=closestPlayer.
DisplayName or'Unknown'realName=closestPlayer.Name or'Unknown'Library:Notify({Title='KICK DETECTED',Description=
'Player: '..realName..' ('..displayName..')',Duration=5})end end)else if kickNotifyConnection then kickNotifyConnection:
Disconnect()kickNotifyConnection=nil end end end})packetLagNotifyEnabled=false lastLagSource=false packetLagConnection=
nil local az=function(az)return az/(1048576)end local aA=function()if packetLagConnection then packetLagConnection:
Disconnect()packetLagConnection=nil end packetLagConnection=ReplicatedStorage.GrabEvents.ExtendGrabLine.OnClientEvent:
Connect(function(aA,aB)if typeof(aB)=='string'and not lastLagSource and packetLagNotifyEnabled then lastLagSource=true
StringLen=string.len(aB)if StringLen>300 then SizeRounded=math.round(az(StringLen)*1000)/1000 Library:Notify({Title=
'PACKET LAG DETECTED',Description='Source: '..tostring(aA)..'\nSize: '..tostring(SizeRounded)..' MB',Duration=5})end
task.delay(5,function()lastLagSource=false end)end end)end VisualR:AddCheckbox('PacketLagNotify',{Text=
'Packet Lag Notify',Default=false,Callback=function(aB)packetLagNotifyEnabled=aB if aB then aA()else if
packetLagConnection then packetLagConnection:Disconnect()packetLagConnection=nil end end end})end ServL=Tabs.Server:
AddLeftGroupbox('lags','zap')ServR=Tabs.Server:AddRightGroupbox('Server Destroy','skull')selectedHeight='Spawn'function
getAllPlayers()players={}for ay,az in pairs(Players:GetPlayers())do if az~=LocalPlayer then if not _G.isWhitelisted or
not _G.isWhitelisted(az)then table.insert(players,az)end end end return players end GrabEvents=ReplicatedStorage:
FindFirstChild('GrabEvents')function spamOwnership(ay)if not GrabEvents then return end setOwner=GrabEvents:
FindFirstChild('SetNetworkOwner')if setOwner and ay then pcall(function()setOwner:FireServer(ay,ay.CFrame)end)end end
function teleportToPlayer(ay,az)if not ay or not az then return end pcall(function()ay.CFrame=az.CFrame*CFrame.new(0,5,5
)ay.AssemblyLinearVelocity=Vector3.zero end)end function destroyLineOnPlayer(ay)if not GrabEvents then return end
createLine=GrabEvents:FindFirstChild('CreateGrabLine')destroyLine=GrabEvents:FindFirstChild('DestroyGrabLine')if not
createLine or not destroyLine then return end pcall(function()createLine:FireServer(ay,CFrame.new(0,1e9,0))task.wait()
destroyLine:FireServer(ay)end)end lineLagThread=nil lineLagEnabled=false autoStopLag=false autoStopLagSeconds=13
autoStopLagToken=0 function startLineLag()if not lineLagEnabled then lineLagEnabled=true lineLagThread=coroutine.create(
function()if not GrabEvents then return end local ay=GrabEvents:FindFirstChild('CreateGrabLine')if not ay then return
end while lineLagEnabled do local az=Workspace:FindFirstChild('SpawnLocation')or Workspace:FindFirstChild('Spawn')or(
LocalPlayer.Character and LocalPlayer.Character:FindFirstChild('HumanoidRootPart'))if az then local aA,aB=math.random(-
1E9,1e9),math.random(-1E9,1e9)local aC={CFrame.new(aA,0,aB),CFrame.new(-aA,0,-aB),CFrame.new(aA,0,-aB),CFrame.new(-aA,0,
aB)}for aD,P in pairs(aC)do ay:FireServer(az,P)end end task.wait()end end)coroutine.resume(lineLagThread)end if
autoStopLag then autoStopLagToken+=1 local ay,az=autoStopLagToken,tonumber(autoStopLagSeconds)or 10 task.spawn(function(
)task.wait(az)if ay==autoStopLagToken and lineLagEnabled then stopLineLag()end end)end end function stopLineLag()
lineLagEnabled=false if lineLagThread then coroutine.close(lineLagThread)lineLagThread=nil end end ServR:AddDropdown(
'DestroyHeight',{Text='Destroy Height',Values={'Spawn','Heaven'},Default='Spawn',Callback=function(ay)selectedHeight=ay
end})ServR:AddButton({Text='Destroy Server',Callback=function()task.spawn(function()height=(selectedHeight=='Heaven')and
1e9 or 35 startLineLag()task.wait(1)players=getAllPlayers()if#players==0 then stopLineLag()return end myChar=LocalPlayer
.Character myHrp=myChar and myChar:FindFirstChild('HumanoidRootPart')if not myHrp then stopLineLag()return end
playerData={}for ay,az in ipairs(players)do char=az.Character hrp=char and char:FindFirstChild('HumanoidRootPart')if hrp
then table.insert(playerData,{player=az,hrp=hrp})end end for ay,az in ipairs(playerData)do teleportToPlayer(myHrp,az.hrp
)task.wait(0.2)spamOwnership(az.hrp)task.wait()end radius=40 angleStep=(math.pi*2)/#playerData for ay,az in ipairs(
playerData)do angle=(ay-1)*angleStep x=math.cos(angle)*radius z=math.sin(angle)*radius pcall(function()az.hrp.CFrame=
CFrame.new(x,height,z)az.hrp.AssemblyLinearVelocity=Vector3.zero end)bp=Instance.new('BodyPosition')bp.MaxForce=Vector3.
new(1e9,1e9,1e9)bp.P=40000000 bp.Position=Vector3.new(x,height,z)bp.Parent=az.hrp task.delay(2,function()pcall(function(
)bp:Destroy()end)end)task.wait()end for ay=1,8 do for az,aA in ipairs(playerData)do destroyLineOnPlayer(aA.hrp)end task.
wait(0.3)end end)end})ServR:AddButton({Text='Stop Lag',Callback=function()stopLineLag()end})ServR:AddCheckbox(
'AutoStopLag',{Text='Auto Stop Lag',Default=false,Callback=function(ay)autoStopLag=ay and true or false end})ServR:
AddSlider('AutoStopLagSeconds',{Text='Auto Stop (sec)',Min=5,Max=20,Default=13,Rounding=0,Callback=function(ay)
autoStopLagSeconds=tonumber(ay)or 10 end})ServR:AddLabel('Blob -----------')do local ay,az,aA,aB,aC,aD,P,Q,S,T=false,
false,false,nil,false,false,nil,{},{},{}_G.WhitelistFriends=true _G.isWhitelisted=function(U)if not U or U==LocalPlayer
then return true end if _G.WhitelistFriends then local V,W=pcall(function()return LocalPlayer:IsFriendsWithAsync(U.
UserId)end)if V and W then return true end end return false end local U=function(U)if not U then return false end local
V=U:FindFirstChild('InPlot')if V and V.Value then return true end local W=workspace:FindFirstChild('PlotItems')local X=W
and W:FindFirstChild('PlayersInPlots')if X and X:FindFirstChild(U.Name)then return true end return false end local V=
function(V,W)if not ay and not az and not S[V.UserId]and not T[V.UserId]and not Q[V.UserId]then return true end if W==
'Kick'and not ay and not S[V.UserId]then return true end if W=='Kill'and not az and not T[V.UserId]then return true end
if _G.isWhitelisted(V)and(ay or az)and not S[V.UserId]and not T[V.UserId]and not Q[V.UserId]then return true end return
false end local W=function(W)if not W then return false end local X=W:FindFirstChildOfClass('Humanoid')if not X then
return false end return X.SeatPart~=nil end local X=function(X)if X and X.Parent then pcall(function()ReplicatedStorage.
MenuToys.DestroyToy:FireServer(X)end)end end function hkBlobService()while true do aA=false if not ay and not az and
next(S)==nil and next(T)==nil and next(Q)==nil then task.wait(0.15)continue end for Y,Z in pairs(Players:GetPlayers())do
if Z==LocalPlayer then continue end if not ay and not az and not S[Z.UserId]and not T[Z.UserId]and not Q[Z.UserId]then
continue end if(ay and not S[Z.UserId])and not az and not T[Z.UserId]and not Q[Z.UserId]and U(Z)then continue end if Q[Z
.UserId]and Z.Character and Z.Character:FindFirstChild('HumanoidRootPart')and W(Z.Character)then if Q[Z.UserId]=='none'
or Q[Z.UserId]=='crip'or not Q[Z.UserId]or Q[Z.UserId]=='bris'then if Q[Z.UserId]=='crip'then local _=Z.Character:
FindFirstChild('Humanoid')if _ then _.WalkSpeed=0 end end Q[Z.UserId]=nil else local _=Z.Character:FindFirstChild(
'HumanoidRootPart')if _ then _.CFrame=Q[Z.UserId]_.AssemblyLinearVelocity=Vector3.zero end Q[Z.UserId]=nil if S[Z.UserId
]or(ay and not _G.isWhitelisted(Z))then P='Kick'end end elseif S[Z.UserId]or T[Z.UserId]or Q[Z.UserId]or ay or az then
local _,aE if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild('HumanoidRootPart')then _=LocalPlayer.
Character.HumanoidRootPart.CFrame aE=LocalPlayer.Character.HumanoidRootPart.AssemblyLinearVelocity end local aF if Q[Z.
UserId]and Q[Z.UserId]~='bris'then aF='Bring'elseif T[Z.UserId]or Q[Z.UserId]=='bris'then aF='Kill'elseif S[Z.UserId]
then aF='Kick'else if ay and not _G.isWhitelisted(Z)and not U(Z)then aF='Kick'end if az and not _G.isWhitelisted(Z)then
aF='Kill'end end if not aF then continue end if Z~=LocalPlayer and aF then local aG=false if Z.Character and Z.Character
:FindFirstChild('HumanoidRootPart')then if Z.Character.HumanoidRootPart.Massless then if Z.Character:FindFirstChild(
'Humanoid')and Z.Character.Humanoid.SeatPart then aG=true end else aG=true end end local aH,aI,aJ=true,0,6 while aH and
LocalPlayer.Character and LocalPlayer.Character:FindFirstChild('HumanoidRootPart')and Z and Z.Character and(aF=='Kick'or
aF=='Kill'or aF=='Bring')and Z.Character:FindFirstChild('HumanoidRootPart')and Z.Character.HumanoidRootPart.CFrame.
Position.Magnitude<1000000 and Z.Character:FindFirstChild('Humanoid')and Z.Character.Humanoid:GetState()~=Enum.
HumanoidStateType.Dead and aG do if V(Z,aF)then aH=false break end if aF=='Kick'and aI>=aJ then aH=false break end if aF
=='Kick'and U(Z)and not S[Z.UserId]then aH=false break end aA=true aG=true local aK=Z.Character.HumanoidRootPart.
AssemblyLinearVelocity if aK.Magnitude>10000 then aK=Vector3.zero end if aH and aG and LocalPlayer.Character and
LocalPlayer.Character:FindFirstChild('Humanoid')and Z.Character.Humanoid:GetState()~=Enum.HumanoidStateType.Dead and
LocalPlayer.Character.Humanoid.SeatPart and LocalPlayer.Character.Humanoid.SeatPart.Parent and LocalPlayer.Character.
Humanoid.SeatPart.Parent.Name=='CreatureBlobman'then aC=true aB=LocalPlayer.Character.Humanoid.SeatPart.Parent if aB:
FindFirstChild('HumanoidCreature')then aB.HumanoidCreature.PlatformStand=true end local aL=aB:FindFirstChild(
'RightDetector')local aM,aN=aL and aL:FindFirstChild('RightWeld'),aB:FindFirstChild('BlobmanSeatAndOwnerScript')local aO
,aP,aQ=aN and aN:FindFirstChild('CreatureGrab'),aN and aN:FindFirstChild('CreatureRelease'),aN and aN:FindFirstChild(
'CreatureDrop')if aL and aM and aO and aP and aQ then local aR=Z.Character:FindFirstChild('HumanoidRootPart')if aR then
LocalPlayer.Character.HumanoidRootPart.CFrame=(aR.CFrame*CFrame.new(0,-20,10))+(aR.AssemblyLinearVelocity/math.pi)
LocalPlayer.Character.HumanoidRootPart.AssemblyLinearVelocity=aR.AssemblyLinearVelocity if aF=='Bring'then local aS=Z.
Character:FindFirstChild('Humanoid')if aS and aS.Health~=0 and aB then if W(Z.Character)then local aT=Q[Z.UserId]if aT==
'none'or aT=='crip'or not aT then local aU=Z.Character:FindFirstChild('HumanoidRootPart')if aU then aU.
AssemblyLinearVelocity=Vector3.zero if aT=='crip'then aS.WalkSpeed=0 end end Q[Z.UserId]=nil aH=false break else local
aU=Z.Character:FindFirstChild('HumanoidRootPart')if aU then aU.CFrame=aT aU.AssemblyLinearVelocity=Vector3.zero end Q[Z.
UserId]=nil if S[Z.UserId]or(ay and not _G.isWhitelisted(Z))then aF='Kick'else aH=false break end end else aO:
FireServer(aL,aR,aM)aP:FireServer(aM,aR)end end elseif aF=='Kick'then if V(Z,aF)then aH=false break end if U(Z)and not S
[Z.UserId]then aH=false break end if Z.Character.Parent==workspace then local aS=Z.Character:FindFirstChild(
'HumanoidRootPart')if aS then pcall(function()ReplicatedStorage.GrabEvents.SetNetworkOwner:FireServer(aS,aS.CFrame)aS.
AssemblyLinearVelocity=Vector3.new(0,1E10,0)ReplicatedStorage.GrabEvents.DestroyGrabLine:FireServer(aS)local aT=
LocalPlayer.Character:FindFirstChild('HumanoidRootPart')aO:FireServer(aL,aS,aM)if aT then aO:FireServer(aL,aT,aM)end aQ:
FireServer(aM,aS)end)end aI+=1 if aI>=aJ then aH=false break end else Q[Z.UserId]=CFrame.new(-73,-6,-265.5)aH=false
break end else if V(Z,aF)then aH=false break end local aS=Z.Character:FindFirstChild('Humanoid')if aS and aS.Health~=0
and aB then if Q[Z.UserId]=='bris'then Q[Z.UserId]=nil end aS:ChangeState(Enum.HumanoidStateType.Dead)local aT=Z.
Character:FindFirstChild('HumanoidRootPart')if aT then aO:FireServer(aL,aT,aM)aP:FireServer(aM,aT)end end end end else
local aR=workspace:FindFirstChild(LocalPlayer.Name..'SpawnedInToys')if aR then local aS=aR:FindFirstChild(
'CreatureBlobman')if aS then X(aS)end end end elseif aG then if V(Z,aF)then aH=false break end aC=true local aL=
LocalPlayer.Character:FindFirstChild('Humanoid')if aL and aL.SeatPart and(not aL.SeatPart.Parent or aL.SeatPart.Parent.
Name~='CreatureBlobman')then aL.Sit=false end if aB and aB:FindFirstChild('VehicleSeat')then if LocalPlayer.Character
and LocalPlayer.Character:FindFirstChild('Humanoid')and Z.Character.Humanoid:GetState()~=Enum.HumanoidStateType.Dead
then aB.VehicleSeat:Sit(LocalPlayer.Character.Humanoid)end else aD=false aB=nil local aM=workspace:FindFirstChild(
LocalPlayer.Name..'SpawnedInToys')if aM then for aN,aO in pairs(aM:GetChildren())do if aO.Name=='CreatureBlobman'and aO:
FindFirstChild('VehicleSeat')then local aP=aO:FindFirstChild('RightDetector')local aQ=aP and aP:FindFirstChild(
'RightWeld')if aP and aQ then aD=true aB=aO else X(aO)end elseif aO.Name=='CreatureBlobman'then X(aO)task.wait(0.1)if V(
Z,aF)then aH=false break end end end end if aB and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild(
'Humanoid')and Z.Character.Humanoid:GetState()~=Enum.HumanoidStateType.Dead then aB.VehicleSeat:Sit(LocalPlayer.
Character.Humanoid)end if not aD then local aN=LocalPlayer.Character and LocalPlayer.Character:FindFirstChild(
'HumanoidRootPart')if aN then if LocalPlayer.Character.Parent~=workspace then aN.CFrame=CFrame.new(0,-10,0)aN.
AssemblyLinearVelocity=Vector3.zero end local aO=tick()while aH and not aB do if V(Z,aF)then aH=false break end if tick(
)-aO>7 then aH=false break end local aP=workspace:FindFirstChild(LocalPlayer.Name..'SpawnedInToys')if aP then local aQ=
aP:FindFirstChild('CreatureBlobman')if aQ then local aR=aQ:FindFirstChild('RightDetector')local aS=aR and aR:
FindFirstChild('RightWeld')if aR and aS then aB=aQ else X(aQ)end end end if not aB then task.spawn(function()pcall(
function()local aQ=LocalPlayer.Character and LocalPlayer.Character:FindFirstChild('HumanoidRootPart')if aQ then
ReplicatedStorage.MenuToys.SpawnToyRemoteFunction:InvokeServer('CreatureBlobman',CFrame.new(aQ.Position)+Vector3.new(0,0
,15),Vector3.zero)end end)end)end task.wait(0.1)end end end end end if V(Z,aF)then aH=false break end task.wait()end end
if _ and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild('HumanoidRootPart')then LocalPlayer.Character.
HumanoidRootPart.CFrame=_ LocalPlayer.Character.HumanoidRootPart.AssemblyLinearVelocity=aE or Vector3.zero end end end
if not aA and aB then if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild('Humanoid')and LocalPlayer.
Character.Humanoid.SeatPart and LocalPlayer.Character.Humanoid.SeatPart.Parent==aB then LocalPlayer.Character.Humanoid.
Sit=false end task.wait()if aB and aB:FindFirstChild('HumanoidRootPart')then aB.HumanoidRootPart.CFrame=CFrame.new(0,
1e15,0)end end aC=false task.wait(0.05)end end task.spawn(hkBlobService)ServR:AddCheckbox('BlobKickAll',{Text=
'Blobman Kick All',Default=false,Callback=function(aE)ay=aE if not aE then S={}aA=false aC=false P=nil aB=nil end end})
ServR:AddCheckbox('BlobKillAll',{Text='Blobman Kill All [OP]',Default=false,Callback=function(aE)az=aE if not aE then T=
{}aA=false aC=false P=nil aB=nil end end})ServR:AddLabel('Whitelist -----------')ServR:AddCheckbox('WhitelistFriends',{
Text='Whitelist Friends',Default=true,Callback=function(aE)_G.WhitelistFriends=aE end})end do ReplicatedStorage=game:
GetService('ReplicatedStorage')Workspace=game:GetService('Workspace')CreateLine=ReplicatedStorage.GrabEvents.
CreateGrabLine lineLagActive=false lineLevel=5 lineAmount=500 local ay=function()lineAmount=100+(lineLevel-1)*100 end
ServL:AddSlider('LineLagLevel',{Text='Line Lag Level (1-10)',Default=5,Min=1,Max=10,Rounding=0,Callback=function(az)
lineLevel=az ay()end})ServL:AddCheckbox('LineLag',{Text='Line Lag',Default=false,Callback=function(az)lineLagActive=az
if az then task.spawn(function()while lineLagActive do for aA=1,lineAmount do pcall(function()CreateLine:FireServer(
Workspace.SpawnLocation,CFrame.new(0,9e9,0))end)end task.wait(1)end end)end end})end do ReplicatedStorage=game:
GetService('ReplicatedStorage')Workspace=game:GetService('Workspace')LocalPlayer=game:GetService('Players').LocalPlayer
R=ReplicatedStorage monsterLagEnabled=false monsterLagTask=nil ServL:AddCheckbox('OatLagInstant',{Text=
'Oat Lag (Instant)',Default=false,Callback=function(ay)monsterLagEnabled=ay if ay then monsterLagTask=task.spawn(
function()GrabEvents=R:FindFirstChild('GrabEvents')CreateLine=GrabEvents and GrabEvents:FindFirstChild('CreateGrabLine')
if not CreateLine then monsterLagEnabled=false return end while monsterLagEnabled and CreateLine do spawnLocation=
Workspace:FindFirstChild('SpawnLocation')or Workspace:FindFirstChild('Spawn')or(LocalPlayer.Character and LocalPlayer.
Character:FindFirstChild('HumanoidRootPart'))if spawnLocation then randomX=math.random(-9E9,9e9)randomZ=math.random(-9E9
,9e9)CreateLine:FireServer(spawnLocation,CFrame.new(randomX,0,randomZ))end task.wait()end end)else if monsterLagTask
then task.cancel(monsterLagTask)monsterLagTask=nil end end end})end do ReplicatedStorage=game:GetService(
'ReplicatedStorage')R=ReplicatedStorage packetLagActive=false packetLagTask=nil packetLagStrength=6250 ServL:AddSlider(
'PacketLagStrength',{Text='Packet Lag Strength',Min=100,Max=6250,Default=6250,Rounding=0,Callback=function(ay)
packetLagStrength=ay end})ServL:AddButton({Text='Send Packet Lag (Once)',Callback=function()GrabEvents=R:FindFirstChild(
'GrabEvents')ExtendGrabLine=GrabEvents and GrabEvents:FindFirstChild('ExtendGrabLine')if not ExtendGrabLine then return
end pcall(function()ExtendGrabLine:FireServer(string.rep(
'\u{1f602}\u{1f602}\u{1f602}\u{1f602}\u{1f923}\u{1f923}\u{1f923}\u{1f923}',100*packetLagStrength))end)Library:Notify({
Title='Packet Lag',Description='Packet sent! Strength: '..packetLagStrength,Duration=3})end})ServL:AddCheckbox(
'PacketLag',{Text='Packet Lag (Loop)',Default=false,Callback=function(ay)packetLagActive=ay if ay then packetLagTask=
task.spawn(function()GrabEvents=R:FindFirstChild('GrabEvents')ExtendGrabLine=GrabEvents and GrabEvents:FindFirstChild(
'ExtendGrabLine')if not ExtendGrabLine then packetLagActive=false return end while packetLagActive do task.wait(1)pcall(
function()ExtendGrabLine:FireServer(string.rep(
'\u{1f602}\u{1f602}\u{1f602}\u{1f602}\u{1f923}\u{1f923}\u{1f923}\u{1f923}',100*packetLagStrength))end)end end)else if
packetLagTask then task.cancel(packetLagTask)packetLagTask=nil end end end})end Players=game:GetService('Players')
ReplicatedStorage=game:GetService('ReplicatedStorage')ContextActionService=game:GetService('ContextActionService')
LocalPlayer=Players.LocalPlayer SpawnToyRF=ReplicatedStorage:WaitForChild('MenuToys'):WaitForChild(
'SpawnToyRemoteFunction')ToyFriendlyNames={PalletLightBrown='Pallet',BallSnowball='Snowball',BombBalloon='Balloon Bomb',
BombDarkMatter='Dark Matter Bomb',BombMissile='Missile',ArmChairBlue='Armchair (Blue)',ArmChairBrownGray=
'Armchair (Brown/Gray)',ArmChairDarkGray='Armchair (Dark Gray)',ArmChairLightBrownGray='Armchair (Light Brown)',
ArmChairPink='Armchair (Pink)',ArmChairWhite='Armchair (White)',BathroomShower='Shower',BathroomSink='Sink',
BedBlanketBlue='Bed (Blue)',BedFramedOrange='Bed (Orange)',BedFuton='Futon',ChildrensChair='Kids Chair',ChildrensCouch=
'Kids Couch',ChildrensDesk='Kids Desk',ChildrensShelf='Kids Shelf',ChildrensTable='Kids Table',ChildrensTableBench=
'Kids Table Bench',ChildrensTableBenchSmall='Kids Bench (Small)',ClockAlarm='Alarm Clock',ComputerLaptopOld='Old Laptop'
,CouchBlue='Couch (Blue)',CouchBrownGray='Couch (Brown/Gray)',CouchDarkGray='Couch (Dark Gray)',CouchLightBrownGray=
'Couch (Light Brown)',CouchPink='Couch (Pink)',CouchWhite='Couch (White)',CounterCorner='Counter (Corner)',CounterSink=
'Counter (Sink)',CounterStraight='Counter (Straight)',FactoryBench='Factory Bench',FactoryCabinet='Factory Cabinet',
FactoryChair='Factory Chair',FactoryCouch='Factory Couch',FactoryDesk='Factory Desk',FactoryDeskMini='Factory Mini Desk'
,FactoryLight='Factory Light',FactoryShelf='Factory Shelf',FactoryTable='Factory Table',FanElectricLittle='Electric Fan'
,FanPaper='Paper Fan',FridgeBlack='Fridge (Black)',FutureAngularDesk='Futuristic Desk',JukeboxBlue='Jukebox (Blue)',
JukeboxOrange='Jukebox (Orange)',JapaneseBanner='Japanese Banner',JapaneseBench='Japanese Bench',JapaneseChair=
'Japanese Chair',JapaneseCouch='Japanese Couch',JapaneseDeskMini='Japanese Mini Desk',JapaneseDresser='Japanese Dresser'
,JapaneseLantern='Japanese Lantern',JapaneseShelf='Japanese Shelf',JapaneseTable='Japanese Table',LadderLightBrown=
'Ladder',LightLampGray='Floor Lamp',MachineWasher='Washing Machine',NormalBench='Bench',NormalDesk='Desk',NormalCabinet=
'Cabinet',NormalShelves='Shelves',OvenBlack='Oven (Black)',OvenDarkGray='Oven (Dark Gray)',OvenLightGray=
'Oven (Light Gray)',OvenMicrowaveWhite='Microwave',OvenRusty='Rusty Oven',PlantPottedBonsai='Bonsai',PlantPottedCactus=
'Cactus',PlantPottedTree='Potted Tree',PlantPottedTreeChristmas='Christmas Tree',RedGateGong='Gong',SpookyBench=
'Spooky Bench',SpookyCabinet='Spooky Cabinet',SpookyChair='Spooky Chair',SpookyCouch='Spooky Couch',SpookyDesk=
'Spooky Desk',SpookyStool='Spooky Stool',SpookyShelf='Spooky Shelf',SpookyTable='Spooky Table',TableLunchTable=
'Lunch Table',TableSmallLabTable='Lab Table',TableWoodFourLegsBrown='Wood Table (4 Legs)',TableWoodTwoLegs=
'Wood Table (2 Legs)',TelevisionFlatscreen='Flatscreen TV',TelevisionGray='Old TV',ToiletGold='Toilet (Gold)',
ToiletWhite='Toilet (White)',Airhorn='Airhorn',Boombox='Boombox',BubbleBlower='Bubble Blower',BucketPaint='Paint Bucket'
,Campfire='Campfire',CreatureBlobman='Blobman',CreatureRobot='Robot',DiscoColorBall='Disco Ball',FireExtinguisher=
'Fire Extinguisher',FireworkSmokeBomb='Smoke Bomb',FireworkMissile='Firework Missile',FireworkSparkler='Sparkler',
FloatingIsland='Floating Island',FlyingToyHelicopter='Helicopter',FlyingToyPlane='Plane',FlyingToyUfo='UFO',FoodHotSauce
='Hot Sauce',InstrumentBrassBugle='Bugle',InstrumentBrassTrumpet='Trumpet',InstrumentBrassVuvuzela='Vuvuzela',
InstrumentDrumBongos='Bongos',InstrumentDrumSnare='Snare Drum',InstrumentGuitarAcoustic='Acoustic Guitar',
InstrumentGuitarBanjo='Banjo',InstrumentGuitarLyre='Lyre',InstrumentGuitarUkulele='Ukulele',InstrumentGuitarViolin=
'Violin',InstrumentPianoKeyboard='Piano Keyboard',InstrumentPianoMelodica='Melodica',InstrumentVoiceMicrophone=
'Microphone',InstrumentWoodwindOcarina='Ocarina',InstrumentWoodwindSaxophone='Saxophone',MidiMaker='MIDI Maker',
MusicKeyboard='Music Keyboard',NinjaKatana='Katana',NinjaKunai='Kunai',NinjaShuriken='Shuriken',NpcRobloxianMascot=
'Robloxian Mascot',PaperPlane='Paper Plane',PetSnowman='Snowman',PetTurkeyLeg='Turkey Leg',PlayhouseGingerbread=
'Gingerbread House',PresentBig='Big Present',PresentSmall='Small Present',SantaSleigh="Santa's Sleigh",SoundWaveMaker=
'Sound Wave Maker',SprayCanWD='Spray Can',ToolCleaver='Cleaver',ToolDiggingForkRusty='Rusty Fork',ToolPencil='Pencil',
ToolPickaxe='Pickaxe',TractorGreen='Tractor (Green)',TractorOrange='Tractor (Orange)',TractorRed='Tractor (Red)',
YouDecoy='Decoy',YouLittle='Mini Me',AnvilGray='Anvil',BallBasketball='Basketball',BellBig='Big Bell',BellSmall=
'Small Bell',BookNormal='Book',BookManyPages='Big Book',BoxCrateWood='Wooden Crate',DiceBig='Big Dice',DiceSmall=
'Small Dice',DrawerLightBrown='Drawer',FlagUnitedStatesOfAmerica='USA Flag',FoodPlate='Plate',GlassBoxGray='Glass Box',
HayBale='Hay Bale',MineralDiamond='Diamond',MineralCrystalPink='Pink Crystal',MineralIngotGold='Gold Ingot',PoopPile=
'Poop',PoopPileSparkle='Sparkle Poop',RollerGrayPurple='Roller',Snowflake='Snowflake',TeapotUtah='Teapot',TetracubeI=
'Tetracube I',TetracubeJ='Tetracube J',TetracubeL='Tetracube L',TetracubeO='Tetracube O',TetracubeS='Tetracube S',
TetracubeT='Tetracube T',TetracubeZ='Tetracube Z',ToyAnimalBear='Bear',ToyAnimalDuck='Duck',ToyAnimalFrog='Frog',
ToyAnimalTiger='Tiger',ToyAnimalUnicorn='Unicorn',YouFigurine='Figurine',BallMagicLight='Magic Light Ball',
LightLampDeskLampBent='Desk Lamp',SpotlightBlue='Spotlight (Blue)',SpotlightCyan='Spotlight (Cyan)',SpotlightCyanBlue=
'Spotlight (Cyan/Blue)',SpotlightCyanGreen='Spotlight (Cyan/Green)',SpotlightGreen='Spotlight (Green)',SpotlightMagenta=
'Spotlight (Magenta)',SpotlightRed='Spotlight (Red)',SpotlightWhite='Spotlight (White)',SpotlightYellow=
'Spotlight (Yellow)',SpotlightYellowGreen='Spotlight (Yellow/Green)',SpotlightYellowRed='Spotlight (Yellow/Red)',
SpookyCandle1='Candle (x1)',SpookyCandle3='Candle (x3)',SpookyCandle5='Candle (x5)',CupMugBrown='Mug (Brown)',
CupMugWhite='Mug (White)',FoodBanana='Banana',FoodBread='Bread',FoodBroccoli='Broccoli',FoodCakePink='Pink Cake',
FoodCoconut='Coconut',FoodDippyEgg='Dippy Egg',FoodDonut='Donut',FoodFrenchFries='French Fries',FoodHamburger='Burger',
FoodHotdog='Hotdog',FoodMayonnaise='Mayo',FoodMeatStick='Meat Stick',FoodMushroomPoison='Poison Mushroom',
FoodPizzaCheese='Cheese Pizza',FoodPizzaPepperoni='Pepperoni Pizza',FoodSodaCan='Soda Can'}ToyDropdownValues={}
DisplayToInternal={}for ay,az in pairs(ToyFriendlyNames)do table.insert(ToyDropdownValues,az)DisplayToInternal[az]=ay
end table.sort(ToyDropdownValues)SelectedToy='PalletLightBrown'function SpawnSelectedToy()Character=LocalPlayer.
Character if not Character then return end CamPart=Character:FindFirstChild('CamPart')if not CamPart then return end
SpawnToyRF:InvokeServer(SelectedToy,CamPart.CFrame,Vector3.new(0,CamPart.Orientation.Y,0))end Groupbox=Tabs.ToyTab:
AddLeftGroupbox('Spawn Toy','house')SpawnToyToggle=Groupbox:AddCheckbox('SpawnToyToggle',{Text='Spawn Toy',Default=false
})Groupbox:AddDropdown('SpawnToyDropdown',{Values=ToyDropdownValues,Default=ToyFriendlyNames[SelectedToy],Searchable=
true,Multi=false,Text='Selected Toy'})Options.SpawnToyDropdown:OnChanged(function(ay)SelectedToy=DisplayToInternal[ay]
end)SpawnToyKeybind=SpawnToyToggle:AddKeyPicker('SpawnToyKeybind',{Default='Tab',Text='Spawn Keybind',Mode='Toggle',
Callback=function()if not Toggles.SpawnToyToggle.Value then return end SpawnSelectedToy()end})SpawnToyKeybind:OnChanged(
function()print('Spawn keybind changed to:',SpawnToyKeybind.Value)end)Toggles.SpawnToyToggle:OnChanged(function(ay)
print('Spawn Toy Toggle:',ay)end)Groupbox=Tabs.ToyTab:AddLeftGroupbox('Object Flinger','box')Players=game:GetService(
'Players')me=Players.LocalPlayer rs=game:GetService('ReplicatedStorage')w=game:GetService('Workspace')SelectedPlayers={}
playerNames={}for ay,az in ipairs(Players:GetPlayers())do if az~=me then table.insert(playerNames,az.Name)end end
Players.PlayerAdded:Connect(function(ay)if ay~=me then table.insert(playerNames,ay.Name)end end)Groupbox:AddDropdown(
'TargetPlayers',{Values=playerNames,Default=playerNames[1]or'',Multi=true,Text='Select Players'})Options.TargetPlayers:
OnChanged(function(ay)SelectedPlayers={}for az,aA in pairs(ay)do if aA then table.insert(SelectedPlayers,az)end end
print('[Selected Players]:',SelectedPlayers)for az,aA in ipairs(Players:GetPlayers())do if aA~=me then local aB=false
for aC,aD in ipairs(SelectedPlayers)do if aA.Name==aD then aB=true break end end aA:SetAttribute('IsAdded',aB)end end
end)function isPlayerSelected(ay)for az,aA in ipairs(SelectedPlayers)do if ay.Name==aA then return true end end return
false end Players.PlayerAdded:Connect(function(ay)task.wait(0.5)if ay~=me then ay:SetAttribute('IsAdded',
isPlayerSelected(ay))end end)Players.PlayerRemoving:Connect(function(ay)for az,aA in ipairs(SelectedPlayers)do if aA==ay
.Name then table.remove(SelectedPlayers,az)break end end end)for ay,az in ipairs(Players:GetPlayers())do if az~=me then
az:SetAttribute('IsAdded',false)end end getgenv().Players=game:GetService('Players')getgenv().ReplicatedStorage=game:
GetService('ReplicatedStorage')getgenv().RunService=game:GetService('RunService')getgenv().Workspace=game:GetService(
'Workspace')getgenv().lp=Players.LocalPlayer getgenv().char=lp.Character or lp.CharacterAdded:Wait()getgenv().root=char:
WaitForChild('HumanoidRootPart')getgenv().folder=Workspace:WaitForChild(lp.Name..'SpawnedInToys')getgenv().isProcessing=
false getgenv().isEnabled=false getgenv().targetIndex=1 getgenv().flungMap={}getgenv().currentDecoy=nil getgenv().
currentTarget=nil getgenv().conn=nil getgenv().UNIQUE_ATTRIBUTE='OwnedByScript'getgenv().FLING_FORCE=500 getgenv().
ownershipMonitors={}getgenv().SelectedPlayers={}getgenv().toyMap={YouLittle='Head',YouDecoy='Head',DiceSmall='SoundPart'
,DiceBig='SoundPart'}getgenv().selectedToy='DiceBig'getgenv().getTargets=function()getgenv().targetsList={}for ay,az in
ipairs(Players:GetPlayers())do if az~=lp and az:GetAttribute('IsAdded')and az.Character and az.Character:FindFirstChild(
'HumanoidRootPart')then table.insert(getgenv().targetsList,az)end end return getgenv().targetsList end getgenv().
velocityHistory={}getgenv().isFlung=function(ay)local az=ay.Character and ay.Character:FindFirstChild('HumanoidRootPart'
)if not az then return true end local aA,aB=az.Position.Y,az.Velocity local aC=Vector3.new(aB.X,0,aB.Z).Magnitude if not
velocityHistory[ay]then velocityHistory[ay]={}end local aD=velocityHistory[ay]table.insert(aD,{tick(),aB,aA})if#aD>15
then table.remove(aD,1)end local aE,aF,aG,aH=aA>-100 and aA<1500,math.abs(aB.Y)<180,aC<250,0 for aI,aJ in ipairs(aD)do
local aK,aL=aJ[2],aJ[3]if aL>3000 or aL<-150 then aH+=1 elseif math.abs(aK.Y)>220 or Vector3.new(aK.X,0,aK.Z).Magnitude>
300 then aH+=1 end end if aH/#aD>=0.4 then return true end return false end getgenv().isGrounded=function(ay)local az=ay
.Character and ay.Character:FindFirstChild('HumanoidRootPart')return az and az.Position.Y<100 and math.abs(az.Velocity.Y
)<10 end getgenv().pickNextTarget=function(ay)local az=#ay if az==0 then return nil end for aA=1,az do targetIndex=((
targetIndex+aA-1)%az)+1 local aB=ay[targetIndex]if not flungMap[aB]or isGrounded(aB)then return aB end end return nil
end getgenv().monitorOwnership=function(ay,az)if ownershipMonitors[ay]then ownershipMonitors[ay]:Disconnect()
ownershipMonitors[ay]=nil end ownershipMonitors[ay]=RunService.Heartbeat:Connect(function()if not ay or not ay.Parent
then if ownershipMonitors[ay]then ownershipMonitors[ay]:Disconnect()ownershipMonitors[ay]=nil end return end local aA=az
:FindFirstChild('PartOwner')if aA and aA:IsA('StringValue')and aA.Value~=lp.Name and aA.Value~=''then print(
'[Ownership Monitor] Ownership changed to: '..aA.Value..' - Destroying toy')rs.MenuToys.DestroyToy:FireServer(ay)if ay==
currentDecoy then currentDecoy=nil end if ownershipMonitors[ay]then ownershipMonitors[ay]:Disconnect()ownershipMonitors[
ay]=nil end end end)end getgenv().spawnDecoy=function()if currentDecoy and currentDecoy.Parent then return end local ay=
selectedToy or'YouDecoy'rs.MenuToys.SpawnToyRemoteFunction:InvokeServer(ay,root.CFrame*CFrame.new(5,0,5),Vector3.new(0,
33,0))end getgenv().handleDecoy=function(ay)if currentDecoy and currentDecoy.Parent then return end local az=toyMap[ay.
Name]if not az then return end local aA,aB=ay:WaitForChild(az),ay:GetPivot()rs.GrabEvents.SetNetworkOwner:FireServer(aA,
aB)task.wait(0.09)local aC,aD,aG=tick(),false,nil aG=RunService.Heartbeat:Connect(function()local aH=aA:FindFirstChild(
'PartOwner')if aH and aH:IsA('StringValue')and aH.Value==lp.Name then aD=true aG:Disconnect()if not ay:GetAttribute(
UNIQUE_ATTRIBUTE)then ay:SetAttribute(UNIQUE_ATTRIBUTE,true)currentDecoy=ay monitorOwnership(ay,aA)if isEnabled then
setupFling(ay)end end end if tick()-aC>=3 and not aD then rs.MenuToys.DestroyToy:FireServer(ay)aG:Disconnect()end end)
end folder.ChildAdded:Connect(function(ay)if toyMap[ay.Name]then handleDecoy(ay)end end)folder.ChildRemoved:Connect(
function(ay)if ay==currentDecoy then currentDecoy=nil end if ownershipMonitors[ay]then ownershipMonitors[ay]:Disconnect(
)ownershipMonitors[ay]=nil end end)RunService.Heartbeat:Connect(function()if not currentDecoy or not currentDecoy.Parent
then for ay,az in ipairs(folder:GetChildren())do if toyMap[az.Name]and az:GetAttribute(UNIQUE_ATTRIBUTE)then
currentDecoy=az local aA=az:FindFirstChild(toyMap[az.Name])if aA and not ownershipMonitors[az]then monitorOwnership(az,
aA)end return end end if isEnabled then spawnDecoy()end end end)getgenv().setupFling=function(ay)local az=ay:
FindFirstChild('HumanoidRootPart')or ay.PrimaryPart or ay:FindFirstChild(toyMap[ay.Name])if not az then return end ay.
PrimaryPart=az az.CanCollide=false local aA=Instance.new('BodyThrust')aA.Force=Vector3.zero aA.Parent=az local aB=
Instance.new('BodyAngularVelocity')aB.MaxTorque=Vector3.new(math.huge,math.huge,math.huge)aB.AngularVelocity=Vector3.
new(-1E6,-1E6,-1E6)aB.Parent=az local aC=RaycastParams.new()aC.FilterType=Enum.RaycastFilterType.Blacklist aC.
FilterDescendantsInstances={lp.Character,ay}aC.IgnoreWater=true conn=RunService.Heartbeat:Connect(function()if not ay or
not ay.Parent or not isEnabled then if conn then conn:Disconnect()end if aA.Parent then aA:Destroy()end if aB.Parent
then aB:Destroy()end return end w.FallenPartsDestroyHeight=0/0 local aD=getTargets()for aG in pairs(flungMap)do if not
table.find(aD,aG)or not aG.Character or isGrounded(aG)then flungMap[aG]=nil end end if currentTarget and(not
currentTarget.Character or isFlung(currentTarget))then flungMap[currentTarget]=true currentTarget=nil end if not
currentTarget then currentTarget=pickNextTarget(aD)end local aG if currentTarget and currentTarget.Character then local
aH=currentTarget.Character:FindFirstChild('HumanoidRootPart')if aH then local aI=aH.Velocity local aJ=aI.Magnitude local
aK=math.clamp(aJ/40,0.25,0.6)local aL=aH.Position+aI*aK+Vector3.new(0,2,0)local aM,aN=(aL-az.Position).Unit,(aL-az.
Position).Magnitude local aO=w:Raycast(az.Position,aM*aN,aC)if aO and aO.Instance and aO.Instance:IsDescendantOf(
currentTarget.Character)then aG=CFrame.new(aO.Position)else aG=CFrame.new(aL)end end end if not aG then aG=CFrame.new(0,
5000,0)end for aH,aI in ipairs(ay:GetDescendants())do if aI:IsA('BasePart')then aI.CFrame=aG end end if aA.Parent then
aA.Force=(aG.Position-az.Position).Unit*FLING_FORCE end end)end lp.CharacterAdded:Connect(function(ay)getgenv().char=ay
getgenv().root=ay:WaitForChild('HumanoidRootPart')print('[Respawn] Character and HumanoidRootPart updated')end)lp.
CharacterRemoving:Connect(function(ay)if char==ay then getgenv().char,getgenv().root=nil,nil end end)getgenv().process=
function()if isProcessing then return end isProcessing=true if not currentDecoy or not currentDecoy.Parent or not
currentDecoy:GetAttribute(UNIQUE_ATTRIBUTE)then if isEnabled then spawnDecoy()end else setupFling(currentDecoy)end
isProcessing=false end Groupbox:AddCheckbox('LoopFlingToggle',{Text='Loop Fling Target',Tooltip=
'Loop fling the selected target with the selected object',Default=false})Toggles.LoopFlingToggle:OnChanged(function(ay)
isEnabled=ay if ay then process()else isProcessing=false if conn then conn:Disconnect()end for az,aA in pairs(
ownershipMonitors)do aA:Disconnect()end ownershipMonitors={}if currentDecoy and currentDecoy.Parent then rs.MenuToys.
DestroyToy:FireServer(currentDecoy)end currentDecoy=nil end end)Groupbox:AddDropdown('FlingToyDropdown',{Values={
'YouLittle','YouDecoy','DiceSmall','DiceBig'},Default='DiceBig',Multi=false,Text='Fling Toy'})Options.FlingToyDropdown:
OnChanged(function(ay)selectedToy=ay print('[Fling Toy Selected] -> '..selectedToy)end)getgenv().FigureGrabModule={}FGM=
FigureGrabModule FGM.Players=game:GetService('Players')FGM.RunService=game:GetService('RunService')FGM.ReplicatedStorage
=game:GetService('ReplicatedStorage')FGM.UserInputService=game:GetService('UserInputService')FGM.Workspace=game:
GetService('Workspace')FGM.TweenService=game:GetService('TweenService')FGM.LocalPlayer=FGM.Players.LocalPlayer FGM.Mouse
=FGM.LocalPlayer:GetMouse()_grabFolder=FGM.ReplicatedStorage:WaitForChild('GrabEvents',10)FGM.GrabEvents=_grabFolder FGM
.SetNetworkOwner=_grabFolder and _grabFolder:WaitForChild('SetNetworkOwner',5)or nil FGM.DestroyLine=_grabFolder and
_grabFolder:WaitForChild('DestroyGrabLine',5)or nil FGM.CreateLine=_grabFolder and _grabFolder:WaitForChild(
'CreateGrabLine',5)or nil _menuToys=FGM.ReplicatedStorage:WaitForChild('MenuToys',10)FGM.MenuToys=_menuToys FGM.ToySpawn
=_menuToys and _menuToys:WaitForChild('SpawnToyRemoteFunction',5)or nil FGM.DestroyToy=_menuToys and _menuToys:
WaitForChild('DestroyToy',5)or nil function _FireSetNetworkOwner(ay,az)if FGM.SetNetworkOwner and ay and ay.Parent then
pcall(function()FGM.SetNetworkOwner:FireServer(ay,az)end)end end function _FireDestroyLine(ay)if FGM.DestroyLine and ay
and ay.Parent then pcall(function()FGM.DestroyLine:FireServer(ay)end)end end function FGM.ToggleAutoRagdoll(ay)FGM.State
.AutoRagdollEnabled=ay if FGM.State.AutoRagdollConnection then FGM.State.AutoRagdollConnection:Disconnect()FGM.State.
AutoRagdollConnection=nil end if not ay then if FGM.State.RagdollPallet then pcall(function()FGM.DestroyToy:FireServer(
FGM.State.RagdollPallet)end)end FGM.State.RagdollPallet=nil FGM.State.RagdollSoundPart=nil return end task.spawn(
function()myChar=FGM.LocalPlayer.Character myHRP=myChar and myChar:FindFirstChild('HumanoidRootPart')if not myHRP then
return end FGM.MyToys=workspace:FindFirstChild(FGM.LocalPlayer.Name..'SpawnedInToys')if not FGM.MyToys then return end
pallet=FGM.MyToys:FindFirstChild('RagdollPallet')or FGM.MyToys:FindFirstChild('PalletLightBrown')if not pallet then FGM.
ToySpawn:InvokeServer('PalletLightBrown',myHRP.CFrame*CFrame.new(5,5,20),Vector3.new(0,0,0))t=tick()+5 repeat task.wait(
0.05)until FGM.MyToys:FindFirstChild('PalletLightBrown')or tick()>t pallet=FGM.MyToys:FindFirstChild('PalletLightBrown')
end if not pallet then return end pallet.Name='RagdollPallet'soundPart=pallet:WaitForChild('SoundPart',5)if not
soundPart then return end t2=tick()+3 repeat FGM.SetNetworkOwner:FireServer(soundPart,soundPart.CFrame)task.wait()until
soundPart:FindFirstChild('PartOwner')or tick()>t2 soundPart.AssemblyLinearVelocity=Vector3.new(0,10000,0)for az,aA in
pairs(pallet:GetDescendants())do if aA:IsA('BasePart')then aA.Transparency=1 aA.CanCollide=false end end FGM.State.
RagdollPallet=pallet FGM.State.RagdollSoundPart=soundPart FGM.State.AutoRagdollConnection=FGM.RunService.Heartbeat:
Connect(function()if not FGM.State.AutoRagdollEnabled then return end sp=FGM.State.RagdollSoundPart if not sp or not sp.
Parent then if FGM.State.AutoRagdollConnection then FGM.State.AutoRagdollConnection:Disconnect()FGM.State.
AutoRagdollConnection=nil end FGM.State.RagdollPallet=nil FGM.State.RagdollSoundPart=nil return end targets={}if FGM.
State.FigureGrabEnabled and FGM.State.TargetCharacter then table.insert(targets,FGM.State.TargetCharacter)end if FGM.
State.SeveralEnabled then for az,aA in ipairs(FGM.State.SeveralTargets)do table.insert(targets,aA.char)end end for az,aA
in ipairs(targets)do hrp=aA:FindFirstChild('HumanoidRootPart')hum=aA:FindFirstChild('Humanoid')if hrp and hum then
ragdolled=hum:FindFirstChild('Ragdolled')if ragdolled and ragdolled.Value==false then task.spawn(function()sp.
AssemblyLinearVelocity=Vector3.new(0,100,0)sp.CFrame=hrp.CFrame task.wait(0.05)if sp and sp.Parent then sp.CFrame=CFrame
.new(0,1e9,0)end end)end end end end)end)end function FGM.BringTargetToMe(ay)if not ay then return false end myChar=FGM.
LocalPlayer.Character myRoot=myChar and myChar:FindFirstChild('HumanoidRootPart')if not myRoot then return false end
savedPos=myRoot.CFrame if not ay.Character then return false end tRoot=ay.Character:FindFirstChild('HumanoidRootPart')
tHum=ay.Character:FindFirstChild('Humanoid')if not tRoot or not tHum then return false end myRoot.CFrame=tRoot.CFrame*
CFrame.new(0,0,2.5)myRoot.AssemblyLinearVelocity=Vector3.zero task.wait(0.05)for az=1,8 do pcall(function()FGM.
SetNetworkOwner:FireServer(tRoot,tRoot.CFrame)end)task.wait(0.01)end for az=1,4 do pcall(function()FGM.DestroyLine:
FireServer(tRoot)end)task.wait(0.01)end tRoot.CFrame=savedPos*CFrame.new(0,0,2)tRoot.AssemblyLinearVelocity=Vector3.zero
pcall(function()tHum.PlatformStand=true end)task.wait(0.05)myRoot.CFrame=savedPos myRoot.AssemblyLinearVelocity=Vector3.
zero return true end function FGM.JumpAndReturn()myChar=FGM.LocalPlayer.Character myHRP=myChar and myChar:
FindFirstChild('HumanoidRootPart')if not myHRP then return end FGM.State.IsReturning=true if FGM.State.SavedPosition
then myHRP.CFrame=FGM.State.SavedPosition myHRP.Velocity=Vector3.zero myHRP.AssemblyAngularVelocity=Vector3.zero end FGM
.State.IsReturning=false end FGM.State={FigureGrabEnabled=false,FigureGrabConnection=nil,TargetCharacter=nil,
TargetPlayer=nil,AnimationCopyEnabled=false,VectorZero=Vector3.new(0,0,0),PalletForRagdoll=nil,RagdollConnections={},
LoopRagdollEnabled=false,RespawnConnection=nil,RejoinConnection=nil,SmoothedCFrames={},SelectedLimb='Torso',
AutoGrabActive=false,AutoGrabConnection=nil,LastGrabTargetRef=nil,DistanceTPInProgress=false,FreezeLimbsEnabled=false,
FrozenCFrames={},VelSuppressEnabled=false,GravityFlipEnabled=false,LockRotationEnabled=false,LockedRotation=CFrame.
identity,ForceLookAtEnabled=false,ForceUprightEnabled=false,FlingOnReleaseEnabled=false,FlingForce=300,
HoldAtCameraEnabled=false,OscillateEnabled=false,OscillateSpeed=2,OscillateAmount=3,OscillateTimer=0,SpinEnabled=false,
SpinSpeed=180,SpinAngle=0,ActiveNetworkTarget=nil,HighlightedLimb=nil,LimbHighlight=nil,PersistentGrabActive=false,
PersistentGrabThread=nil,SavedPosition=nil,AutoRagdollToggle=false,AutoRagdollEnabled=false,AutoRagdollConnection=nil,
RagdollPallet=nil,RagdollSoundPart=nil,SeveralEnabled=false,SeveralTargets={},LastTargetUserId=nil,LastTargetHRP=nil,
IsReturning=false}FGM.Configuration={DampingEnabled=true,DampingSpeed=12,SnapEnabled=false,SnapPosStep=0.5,SnapRotStep=
15,LineDistance=0,AutoTPDistance=40,HoldPosition={X=0,Y=0,Z=-5},HoldRotation={X=0,Y=0,Z=0},LeftArmPosition={X=0,Y=0,Z=0}
,LeftArmRotation={X=0,Y=0,Z=0},RightArmPosition={X=0,Y=0,Z=0},RightArmRotation={X=0,Y=0,Z=0},LeftLegPosition={X=0,Y=0,Z=
0},LeftLegRotation={X=0,Y=0,Z=0},RightLegPosition={X=0,Y=0,Z=0},RightLegRotation={X=0,Y=0,Z=0},HeadPosition={X=0,Y=0,Z=0
},HeadRotation={X=0,Y=0,Z=0}}FGM.Presets={Pose1={HoldPosition={X=0,Y=0,Z=-7.5},HoldRotation={X=90,Y=0,Z=108},
LeftArmPosition={X=-1.5,Y=1,Z=-1},LeftArmRotation={X=283,Y=0,Z=0},RightArmPosition={X=1.5,Y=0.5,Z=1},RightArmRotation={X
=270,Y=0,Z=0},LeftLegPosition={X=0.5,Y=-1.5,Z=0.5},LeftLegRotation={X=312,Y=0,Z=0},RightLegPosition={X=-0.5,Y=-1.5,Z=0.5
},RightLegRotation={X=283,Y=0,Z=0},HeadPosition={X=0,Y=1.5,Z=0},HeadRotation={X=0,Y=0,Z=0}},Pose2={HoldPosition={X=0,Y=-
1.5,Z=-12.5},HoldRotation={X=272,Y=0,Z=0},LeftArmPosition={X=-1,Y=1,Z=-0.5},LeftArmRotation={X=90,Y=0,Z=0},
RightArmPosition={X=1,Y=1,Z=-0.5},RightArmRotation={X=90,Y=0,Z=0},LeftLegPosition={X=1,Y=-1,Z=-0.5},LeftLegRotation={X=
90,Y=0,Z=0},RightLegPosition={X=-1,Y=-1,Z=-0.5},RightLegRotation={X=90,Y=0,Z=0},HeadPosition={X=0,Y=1,Z=1},HeadRotation=
{X=90,Y=0,Z=0}},Pose3={HoldPosition={X=0,Y=-5.5,Z=-4},HoldRotation={X=0,Y=0,Z=0},LeftArmPosition={X=1,Y=7.5,Z=1.5},
LeftArmRotation={X=0,Y=0,Z=0},RightArmPosition={X=1,Y=6,Z=1.5},RightArmRotation={X=0,Y=0,Z=0},LeftLegPosition={X=0.5,Y=5
,Z=1.5},LeftLegRotation={X=0,Y=0,Z=92},RightLegPosition={X=-0.5,Y=5,Z=1.5},RightLegRotation={X=0,Y=0,Z=90},HeadPosition=
{X=0,Y=0,Z=0},HeadRotation={X=0,Y=0,Z=0}},Pose4={HoldPosition={X=1.5,Y=-8.5,Z=-1.5},HoldRotation={X=0,Y=0,Z=0},
LeftArmPosition={X=0,Y=0,Z=0},LeftArmRotation={X=0,Y=0,Z=0},RightArmPosition={X=0,Y=0,Z=0},RightArmRotation={X=0,Y=0,Z=0
},LeftLegPosition={X=0,Y=0,Z=0},LeftLegRotation={X=0,Y=0,Z=0},RightLegPosition={X=1.5,Y=0,Z=0},RightLegRotation={X=0,Y=0
,Z=0},HeadPosition={X=0,Y=9,Z=0},HeadRotation={X=0,Y=0,Z=0}},Pose5={HoldPosition={X=0,Y=-3,Z=-6},HoldRotation={X=270,Y=0
,Z=0},LeftArmPosition={X=-1,Y=0.5,Z=0},LeftArmRotation={X=180,Y=0,Z=0},RightArmPosition={X=1,Y=0.5,Z=0},RightArmRotation
={X=180,Y=0,Z=0},LeftLegPosition={X=0,Y=-3,Z=0},LeftLegRotation={X=0,Y=0,Z=0},RightLegPosition={X=0,Y=-2,Z=0.5},
RightLegRotation={X=45,Y=0,Z=0},HeadPosition={X=0,Y=1.5,Z=-0.5},HeadRotation={X=270,Y=0,Z=0}},Pose6={HoldPosition={X=5.5
,Y=0.5,Z=-1.5},HoldRotation={X=345,Y=39,Z=0},LeftArmPosition={X=2,Y=0.5,Z=0},LeftArmRotation={X=0,Y=43,Z=121},
RightArmPosition={X=-2,Y=0,Z=-0},RightArmRotation={X=64,Y=112,Z=0},LeftLegPosition={X=-0.5,Y=-2,Z=0},LeftLegRotation={X=
349,Y=0,Z=360},RightLegPosition={X=0.5,Y=-2,Z=0},RightLegRotation={X=345,Y=360,Z=10},HeadPosition={X=0,Y=1.5,Z=0},
HeadRotation={X=0,Y=344,Z=0}},Pose7={HoldPosition={X=0,Y=-2,Z=-10},HoldRotation={X=90,Y=0,Z=0},LeftArmPosition={X=-1.5,Y
=0,Z=0},LeftArmRotation={X=270,Y=0,Z=315},RightArmPosition={X=1.5,Y=0,Z=0},RightArmRotation={X=270,Y=0,Z=45},
LeftLegPosition={X=-1,Y=-1.5,Z=0},LeftLegRotation={X=90,Y=0,Z=0},RightLegPosition={X=1,Y=-1.5,Z=0},RightLegRotation={X=
90,Y=0,Z=0},HeadPosition={X=0,Y=1.5,Z=0},HeadRotation={X=0,Y=0,Z=0}},JojoStand={HoldPosition={X=-4.5,Y=0.5,Z=-1.5},
HoldRotation={X=8,Y=349,Z=0},LeftArmPosition={X=1.5,Y=0,Z=-0},LeftArmRotation={X=15,Y=62,Z=41},RightArmPosition={X=-1.5,
Y=0.5,Z=-0.5},RightArmRotation={X=65,Y=149,Z=6},LeftLegPosition={X=-0.5,Y=-2,Z=0},LeftLegRotation={X=349,Y=0,Z=360},
RightLegPosition={X=0.5,Y=-2,Z=0},RightLegRotation={X=345,Y=360,Z=10},HeadPosition={X=0,Y=1.5,Z=0},HeadRotation={X=0,Y=
344,Z=0}}}FGM.CustomPresets={}LIMB_OPTIONS={'Torso','Head','Left Arm','Right Arm','Left Leg','Right Leg'}
LIMB_SECTION_MAP={Torso={pos='HoldPosition',rot='HoldRotation'},Head={pos='HeadPosition',rot='HeadRotation'},['Left Arm'
]={pos='LeftArmPosition',rot='LeftArmRotation'},['Right Arm']={pos='RightArmPosition',rot='RightArmRotation'},[
'Left Leg']={pos='LeftLegPosition',rot='LeftLegRotation'},['Right Leg']={pos='RightLegPosition',rot='RightLegRotation'}}
PART_NAME_MAP={Torso='Torso',Head='Head',['Left Arm']='Left Arm',['Right Arm']='Right Arm',['Left Leg']='Left Leg',[
'Right Leg']='Right Leg'}function SnapValue(ay,az)if az==0 then return ay end return math.round(ay/az)*az end function
FGM.ApplySnap(ay,az,aA)if not FGM.Configuration.SnapEnabled then return aA end isRot=ay:find('Rotation')step=isRot and
FGM.Configuration.SnapRotStep or FGM.Configuration.SnapPosStep return SnapValue(aA,step)end function BuildTargetCFrame(
ay,az,aA)local aB,aC if ay=='Left Arm'then aB,aC='LeftArmPosition','LeftArmRotation'elseif ay=='Right Arm'then aB,aC=
'RightArmPosition','RightArmRotation'elseif ay=='Left Leg'then aB,aC='LeftLegPosition','LeftLegRotation'elseif ay==
'Right Leg'then aB,aC='RightLegPosition','RightLegRotation'elseif ay=='Head'then aB,aC='HeadPosition','HeadRotation'else
return nil end p=aA[aB]r=aA[aC]if not p or not r then return nil end return az*CFrame.new(p.X,p.Y,p.Z)*CFrame.Angles(
math.rad(r.X),math.rad(r.Y),math.rad(r.Z))end function LerpCFrame(ay,az,aA)return ay:Lerp(az,aA)end function FGM.
GetCharacter(ay)character=ay.Character if not character then character=ay.CharacterAdded:Wait()end return character end
function InitSmoothedCFrames(ay)FGM.State.SmoothedCFrames={}parts={'Torso','Head','Left Arm','Right Arm','Left Leg',
'Right Leg'}for az,aA in ipairs(parts)do part=ay:FindFirstChild(aA)if part then FGM.State.SmoothedCFrames[aA]=part.
CFrame end end end function SetupBodyParts(ay)bodyParts={'Head','Left Arm','Right Arm','Left Leg','Right Leg'}for az,aA
in pairs(bodyParts)do part=ay:FindFirstChild(aA)if part then part.Anchored=false part.CanCollide=true part.Massless=true
end end InitSmoothedCFrames(ay)end function FGM.ClearLimbHighlight()state=FGM.State if state.LimbHighlight and state.
LimbHighlight.Parent then state.LimbHighlight:Destroy()end state.LimbHighlight=nil state.HighlightedLimb=nil end
function FGM.ApplyLimbHighlight(ay)FGM.ClearLimbHighlight()state=FGM.State target=state.TargetCharacter if not target
then return end partName=PART_NAME_MAP[ay]if not partName then return end part=target:FindFirstChild(partName)if not
part then return end highlight=Instance.new('SelectionBox')highlight.Adornee=part highlight.Color3=Color3.fromRGB(0,120,
255)highlight.LineThickness=0.05 highlight.SurfaceTransparency=0.6 highlight.SurfaceColor3=Color3.fromRGB(0,100,255)
highlight.Parent=FGM.Workspace.CurrentCamera state.LimbHighlight=highlight state.HighlightedLimb=ay end function FGM.
ExecuteGrabTP(ay)state=FGM.State myChar=FGM.GetCharacter(FGM.LocalPlayer)if not myChar then return false end myHRP=
myChar:FindFirstChild('HumanoidRootPart')targetHRP=ay and ay:FindFirstChild('HumanoidRootPart')if not myHRP or not
targetHRP then return false end if ay.Parent~=FGM.Workspace then return false end savedPos=myHRP.CFrame for az=1,5 do
_FireDestroyLine(targetHRP)FGM.RunService.RenderStepped:Wait()_FireSetNetworkOwner(targetHRP,targetHRP.CFrame)end dist=(
targetHRP.Position-myHRP.Position).Magnitude if dist>=5 then tp(myHRP,targetHRP)task.wait(0.2)pcall(function()sno(
targetHRP)end)task.wait(0.05)myHRP.AssemblyLinearVelocity=Vector3.zero myHRP.AssemblyAngularVelocity=Vector3.zero
targetHRP.AssemblyLinearVelocity=Vector3.zero targetHRP.AssemblyAngularVelocity=Vector3.zero myHRP.CFrame=savedPos task.
wait(0.2)end for az,aA in pairs(ay:GetChildren())do if aA:IsA('BasePart')then pcall(function()aA.AssemblyLinearVelocity=
Vector3.zero aA.AssemblyAngularVelocity=Vector3.zero end)end end cfg=FGM.Configuration holdCF=myHRP.CFrame*CFrame.new(
cfg.HoldPosition.X,cfg.HoldPosition.Y,cfg.HoldPosition.Z)*CFrame.Angles(math.rad(cfg.HoldRotation.X),math.rad(cfg.
HoldRotation.Y),math.rad(cfg.HoldRotation.Z))torso=ay:FindFirstChild('Torso')if torso then pcall(function()torso.CFrame=
holdCF torso.AssemblyLinearVelocity=Vector3.zero torso.AssemblyAngularVelocity=Vector3.zero end)end state.
ActiveNetworkTarget=targetHRP return true end function FGM.StartPersistentGrab()FGM.StopPersistentGrab()FGM.State.
PersistentGrabActive=true FGM.State.PersistentGrabThread=task.spawn(function()while FGM.State.PersistentGrabActive do
task.wait(0.1)state=FGM.State target=state.TargetCharacter if not target or not state.FigureGrabEnabled then continue
end myChar=FGM.LocalPlayer.Character if not myChar then continue end myHRP=myChar:FindFirstChild('HumanoidRootPart')
targetHRP=target:FindFirstChild('HumanoidRootPart')if not myHRP or not targetHRP then continue end _FireDestroyLine(
targetHRP)_FireSetNetworkOwner(targetHRP,targetHRP.CFrame)dist=(targetHRP.Position-myHRP.Position).Magnitude if dist>=
FGM.Configuration.AutoTPDistance then if not state.DistanceTPInProgress then state.DistanceTPInProgress=true task.spawn(
function()if state.TargetPlayer then FGM.BringTargetToMe(state.TargetPlayer)end task.wait(0.3)state.DistanceTPInProgress
=false end)end end end end)end function FGM.StopPersistentGrab()FGM.State.PersistentGrabActive=false if FGM.State.
PersistentGrabThread then pcall(function()task.cancel(FGM.State.PersistentGrabThread)end)FGM.State.PersistentGrabThread=
nil end end function FGM.WaitForCharacterReady(ay,az)az=az or 15 deadline=tick()+az while tick()<deadline do char=ay.
Character if char and char.Parent and char:FindFirstChild('HumanoidRootPart')and char:FindFirstChild('Torso')and char:
FindFirstChild('Humanoid')and char.Humanoid.Health>0 then return char end task.wait(0.15)end return nil end function FGM
.ReattachToCharacter(ay)state=FGM.State if not state.FigureGrabEnabled then return end myChar=FGM.GetCharacter(FGM.
LocalPlayer)if not myChar then return end FGM.ToggleAutoRagdoll(false)task.wait(0.1)state.TargetCharacter=ay state.
ActiveNetworkTarget=ay:FindFirstChild('HumanoidRootPart')SetupBodyParts(ay)if state.TargetPlayer then FGM.
BringTargetToMe(state.TargetPlayer)end task.wait(0.1)RunHeartbeat(myChar)if state.AutoRagdollToggle then FGM.
ToggleAutoRagdoll(true)end if state.HighlightedLimb then FGM.ApplyLimbHighlight(state.HighlightedLimb)end end function
FGM.WatchForRespawn(ay)if FGM.State.RespawnConnection then pcall(function()FGM.State.RespawnConnection:Disconnect()end)
FGM.State.RespawnConnection=nil end FGM.State.RespawnConnection=ay.CharacterAdded:Connect(function()if not FGM.State.
FigureGrabEnabled then return end readyChar=FGM.WaitForCharacterReady(ay,15)if not readyChar then return end FGM.
ReattachToCharacter(readyChar)end)end function FGM.WatchForRejoin(ay)if FGM.State.RejoinConnection then pcall(function()
FGM.State.RejoinConnection:Disconnect()end)FGM.State.RejoinConnection=nil end targetUserId=ay.UserId local az az=FGM.
Players.PlayerRemoving:Connect(function(aA)if aA.UserId~=targetUserId then return end if not FGM.State.FigureGrabEnabled
then pcall(function()az:Disconnect()end)FGM.State.RejoinConnection=nil return end task.spawn(function()local aB aB=FGM.
Players.PlayerAdded:Connect(function(aC)if aC.UserId~=targetUserId then return end pcall(function()aB:Disconnect()end)
pcall(function()az:Disconnect()end)FGM.State.RejoinConnection=nil if not FGM.State.FigureGrabEnabled then return end
readyChar=FGM.WaitForCharacterReady(aC,30)if not readyChar then return end FGM.State.TargetPlayer=aC FGM.
WatchForRespawn(aC)FGM.WatchForRejoin(aC)FGM.ReattachToCharacter(readyChar)end)end)end)FGM.State.RejoinConnection=az end
function FGM.CopyAnimationsFromLimbs()if not FGM.State.AnimationCopyEnabled then return end if not FGM.State.
TargetCharacter then return end MyCharacter=FGM.GetCharacter(FGM.LocalPlayer)if not MyCharacter then return end MyHRP=
MyCharacter:FindFirstChild('HumanoidRootPart')MyTorso=MyCharacter:FindFirstChild('Torso')TargetTorso=FGM.State.
TargetCharacter:FindFirstChild('Torso')if not MyHRP or not MyTorso or not TargetTorso then return end cfg=FGM.
Configuration holdCFrame=MyHRP.CFrame*CFrame.new(cfg.HoldPosition.X,cfg.HoldPosition.Y,cfg.HoldPosition.Z)*CFrame.
Angles(math.rad(cfg.HoldRotation.X),math.rad(cfg.HoldRotation.Y),math.rad(cfg.HoldRotation.Z))pcall(function()
TargetTorso.CFrame=holdCFrame torsoRelative=MyHRP.CFrame:ToObjectSpace(MyTorso.CFrame)TargetTorso.CFrame=TargetTorso.
CFrame*torsoRelative.Rotation TargetTorso.Velocity=FGM.State.VectorZero TargetTorso.RotVelocity=FGM.State.VectorZero end
)limbs={'Head','Right Arm','Left Arm','Right Leg','Left Leg'}for ay,az in ipairs(limbs)do myPart=MyCharacter:
FindFirstChild(az)targetPart=FGM.State.TargetCharacter:FindFirstChild(az)if myPart and targetPart then pcall(function()
relative=MyTorso.CFrame:ToObjectSpace(myPart.CFrame)targetPart.CFrame=TargetTorso.CFrame:ToWorldSpace(relative)
targetPart.Velocity=FGM.State.VectorZero targetPart.RotVelocity=FGM.State.VectorZero end)end end end function FGM.
CheckDistanceAndTP(ay,az)end function RunHeartbeat(ay)cfg=FGM.Configuration state=FGM.State zero=state.VectorZero
bodyParts={'Head','Left Arm','Right Arm','Left Leg','Right Leg'}lastTime=tick()if state.FigureGrabConnection then pcall(
function()state.FigureGrabConnection:Disconnect()end)end state.FigureGrabConnection=FGM.RunService.Heartbeat:Connect(
function()now=tick()dt=math.min(now-lastTime,0.1)lastTime=now target=state.TargetCharacter if not target or not ay then
return end MyRoot=ay:FindFirstChild('HumanoidRootPart')TargetTorso=target:FindFirstChild('Torso')if not MyRoot or not
TargetTorso then return end if state.SpinEnabled then state.SpinAngle=(state.SpinAngle+state.SpinSpeed*dt)%360 end if
state.OscillateEnabled then state.OscillateTimer=state.OscillateTimer+dt end holdOffsetZ=cfg.HoldPosition.Z if state.
OscillateEnabled then holdOffsetZ=holdOffsetZ+math.sin(state.OscillateTimer*state.OscillateSpeed*math.pi*2)*state.
OscillateAmount end baseHoldCFrame=MyRoot.CFrame*CFrame.new(cfg.HoldPosition.X,cfg.HoldPosition.Y,holdOffsetZ)*CFrame.
Angles(math.rad(cfg.HoldRotation.X),math.rad(cfg.HoldRotation.Y),math.rad(cfg.HoldRotation.Z))if state.
HoldAtCameraEnabled then cam=FGM.Workspace.CurrentCamera baseHoldCFrame=cam.CFrame*CFrame.new(0,0,-math.abs(cfg.
HoldPosition.Z))end if state.GravityFlipEnabled then pos=baseHoldCFrame.Position myY=MyRoot.Position.Y flippedY=myY-(pos
.Y-myY)rot=baseHoldCFrame.Rotation baseHoldCFrame=CFrame.new(pos.X,flippedY,pos.Z)*rot end holdCFrame=baseHoldCFrame if
state.ForceLookAtEnabled then lookDir=(MyRoot.Position-baseHoldCFrame.Position)if lookDir.Magnitude>0.01 then holdCFrame
=CFrame.new(baseHoldCFrame.Position,baseHoldCFrame.Position+lookDir)end end if state.ForceUprightEnabled then p=
holdCFrame.Position holdCFrame=CFrame.new(p)*CFrame.Angles(0,math.rad(cfg.HoldRotation.Y),0)end if state.
LockRotationEnabled then holdCFrame=CFrame.new(holdCFrame.Position)*state.LockedRotation end if state.SpinEnabled then
holdCFrame=holdCFrame*CFrame.Angles(0,math.rad(state.SpinAngle),0)end if state.FreezeLimbsEnabled and next(state.
FrozenCFrames)then for az,aA in pairs(state.FrozenCFrames)do part=target:FindFirstChild(az)if part and part.Parent then
pcall(function()part.CFrame=aA part.Velocity=zero part.RotVelocity=zero end)end end if cfg.DampingEnabled then prev=
state.SmoothedCFrames.Torso or holdCFrame alpha=math.min(1,cfg.DampingSpeed*dt)state.SmoothedCFrames.Torso=LerpCFrame(
prev,holdCFrame,alpha)pcall(function()TargetTorso.CFrame=state.SmoothedCFrames.Torso TargetTorso.Velocity=zero
TargetTorso.RotVelocity=zero end)else pcall(function()TargetTorso.CFrame=holdCFrame TargetTorso.Velocity=zero
TargetTorso.RotVelocity=zero end)end _FireSetNetworkOwner(state.ActiveNetworkTarget,holdCFrame)return end if cfg.
DampingEnabled then prev=state.SmoothedCFrames.Torso or holdCFrame alpha=math.min(1,cfg.DampingSpeed*dt)state.
SmoothedCFrames.Torso=LerpCFrame(prev,holdCFrame,alpha)pcall(function()TargetTorso.CFrame=state.SmoothedCFrames.Torso
TargetTorso.Velocity=zero TargetTorso.RotVelocity=zero end)else pcall(function()TargetTorso.CFrame=holdCFrame
TargetTorso.Velocity=zero TargetTorso.RotVelocity=zero end)end if state.VelSuppressEnabled then for az,aA in pairs(
target:GetChildren())do if aA:IsA('BasePart')then pcall(function()aA.AssemblyLinearVelocity=zero aA.
AssemblyAngularVelocity=zero end)end end end if state.AnimationCopyEnabled then FGM.CopyAnimationsFromLimbs()else
torsoCF=TargetTorso.CFrame for az,aA in pairs(bodyParts)do part=target:FindFirstChild(aA)if part and part.Parent then
targetCF=BuildTargetCFrame(aA,torsoCF,cfg)if targetCF then if cfg.DampingEnabled then prev=state.SmoothedCFrames[aA]or
targetCF alpha=math.min(1,cfg.DampingSpeed*dt)state.SmoothedCFrames[aA]=LerpCFrame(prev,targetCF,alpha)pcall(function()
part.CFrame=state.SmoothedCFrames[aA]part.Velocity=zero part.RotVelocity=zero end)else pcall(function()part.CFrame=
targetCF part.Velocity=zero part.RotVelocity=zero end)end end end end end _FireSetNetworkOwner(state.ActiveNetworkTarget
,holdCFrame)end)end function FGM.GetPlayerList()list={}for ay,az in pairs(FGM.Players:GetPlayers())do if az~=FGM.
LocalPlayer then table.insert(list,az.Name)end end return list end function FGM.GrabPlayerByName(ay)targetPlayer=FGM.
Players:FindFirstChild(ay)if not targetPlayer then return end targetChar=targetPlayer.Character if not targetChar then
return end if not targetChar:FindFirstChild('Torso')then return end MyCharacter=FGM.GetCharacter(FGM.LocalPlayer)if not
MyCharacter then return end if FGM.State.FigureGrabEnabled then FGM.ToggleFigureGrab()task.wait(0.1)end state=FGM.State
state.TargetCharacter=targetChar state.TargetPlayer=targetPlayer state.FigureGrabEnabled=true state.LastGrabTargetRef=
targetChar:FindFirstChild('HumanoidRootPart')state.ActiveNetworkTarget=targetChar:FindFirstChild('HumanoidRootPart')FGM.
Configuration.LineDistance=5 FGM.BringTargetToMe(targetPlayer)task.wait(0.15)SetupBodyParts(targetChar)FGM.
StartPersistentGrab()FGM.WatchForRespawn(targetPlayer)FGM.WatchForRejoin(targetPlayer)RunHeartbeat(MyCharacter)if state.
AutoRagdollToggle then FGM.ToggleAutoRagdoll(true)end if state.HighlightedLimb then FGM.ApplyLimbHighlight(state.
HighlightedLimb)end end function FGM.ToggleFigureGrab()if not FGM.State.FigureGrabEnabled then tn=FGM.State.
SelectedTarget if not tn or tn==''then return end targetPlayer=FGM.Players:FindFirstChild(tn)if not targetPlayer then
return end targetChar=targetPlayer.Character if not targetChar then return end if not targetChar:FindFirstChild('Torso')
then return end MyCharacter=FGM.GetCharacter(FGM.LocalPlayer)if not MyCharacter then return end myHRP=MyCharacter:
FindFirstChild('HumanoidRootPart')if myHRP then FGM.State.SavedPosition=myHRP.CFrame end bringSuccess=FGM.
BringTargetToMe(targetPlayer)if not bringSuccess then return end task.wait(0.2)targetChar=targetPlayer.Character if not
targetChar then return end state=FGM.State state.TargetCharacter=targetChar state.TargetPlayer=targetPlayer state.
FigureGrabEnabled=true state.LastGrabTargetRef=targetChar:FindFirstChild('HumanoidRootPart')state.ActiveNetworkTarget=
targetChar:FindFirstChild('HumanoidRootPart')FGM.Configuration.LineDistance=5 SetupBodyParts(targetChar)FGM.
StartPersistentGrab()if targetPlayer then FGM.WatchForRespawn(targetPlayer)FGM.WatchForRejoin(targetPlayer)end
RunHeartbeat(MyCharacter)if state.HighlightedLimb then FGM.ApplyLimbHighlight(state.HighlightedLimb)end if state.
AutoRagdollToggle then FGM.ToggleAutoRagdoll(true)end else state=FGM.State if state.FlingOnReleaseEnabled and state.
TargetCharacter then targetHRP=state.TargetCharacter:FindFirstChild('HumanoidRootPart')myChar=FGM.GetCharacter(FGM.
LocalPlayer)myHRP=myChar and myChar:FindFirstChild('HumanoidRootPart')if targetHRP and myHRP then flingDir=(targetHRP.
Position-myHRP.Position)if flingDir.Magnitude>0 then flingDir=flingDir.Unit end pcall(function()targetHRP.
AssemblyLinearVelocity=flingDir*state.FlingForce end)end end FGM.JumpAndReturn()FGM.ClearLimbHighlight()FGM.
StopPersistentGrab()state.FigureGrabEnabled=false state.AnimationCopyEnabled=false state.SmoothedCFrames={}state.
FrozenCFrames={}state.SpinAngle=0 state.OscillateTimer=0 state.DistanceTPInProgress=false state.ActiveNetworkTarget=nil
state.LastTargetUserId=nil state.LastTargetHRP=nil FGM.ToggleAutoRagdoll(false)if state.FigureGrabConnection then pcall(
function()state.FigureGrabConnection:Disconnect()end)state.FigureGrabConnection=nil end if state.RespawnConnection then
pcall(function()state.RespawnConnection:Disconnect()end)state.RespawnConnection=nil end if state.RejoinConnection then
pcall(function()state.RejoinConnection:Disconnect()end)state.RejoinConnection=nil end state.TargetCharacter=nil state.
TargetPlayer=nil state.LastGrabTargetRef=nil end end function FGM.SetAnimationCopy(ay)FGM.State.AnimationCopyEnabled=ay
end function FGM.ResetPose()limbSections={'LeftArmPosition','LeftArmRotation','RightArmPosition','RightArmRotation',
'LeftLegPosition','LeftLegRotation','RightLegPosition','RightLegRotation','HeadPosition','HeadRotation','HoldRotation'}
for ay,az in ipairs(limbSections)do t=FGM.Configuration[az]if t then for aA in pairs(t)do t[aA]=0 end end end FGM.
Configuration.HoldPosition={X=0,Y=0,Z=-5}end function FGM.ApplyPreset(ay)preset=FGM.Presets[ay]if not preset then return
end for az,aA in pairs(preset)do if FGM.Configuration[az]then for aB,aC in pairs(aA)do FGM.Configuration[az][aB]=aC end
end end end function FGM.UpdateConfig(ay,az,aA)cfg=FGM.Configuration if cfg[ay]and cfg[ay][az]~=nil then cfg[ay][az]=FGM
.ApplySnap(ay,az,aA)end end function FGM.SnapshotLimbsForFreeze()state=FGM.State target=state.TargetCharacter state.
FrozenCFrames={}if not target then return end for ay,az in ipairs({'Head','Left Arm','Right Arm','Left Leg','Right Leg'}
)do part=target:FindFirstChild(az)if part then state.FrozenCFrames[az]=part.CFrame end end end function FGM.
GetCurrentConfigSnapshot()cfg=FGM.Configuration snapshot={}keys={'HoldPosition','HoldRotation','LeftArmPosition',
'LeftArmRotation','RightArmPosition','RightArmRotation','LeftLegPosition','LeftLegRotation','RightLegPosition',
'RightLegRotation','HeadPosition','HeadRotation'}for ay,az in ipairs(keys)do if cfg[az]then snapshot[az]={X=cfg[az].X,Y=
cfg[az].Y,Z=cfg[az].Z}end end return snapshot end function FGM.SaveCustomPreset(ay)if not ay or ay==''then return false
end FGM.CustomPresets[ay]=FGM.GetCurrentConfigSnapshot()return true end function FGM.LoadCustomPreset(ay)preset=FGM.
CustomPresets[ay]if not preset then return false end for az,aA in pairs(preset)do if FGM.Configuration[az]then for aB,aC
in pairs(aA)do FGM.Configuration[az][aB]=aC end end end return true end function FGM.DeleteCustomPreset(ay)if not FGM.
CustomPresets[ay]then return false end FGM.CustomPresets[ay]=nil return true end function FGM.GetCustomPresetNames()
names={}for ay in pairs(FGM.CustomPresets)do table.insert(names,ay)end table.sort(names)return names end function
GetActiveSections()limb=FGM.State.SelectedLimb return LIMB_SECTION_MAP[limb]or LIMB_SECTION_MAP.Torso end if not Tabs or
not Tabs.FigureTab then return end FigureTab=Tabs.FigureTab GrpTarget=FigureTab:AddLeftGroupbox('Target','user')
ControlPanel=FigureTab:AddLeftGroupbox('Control','user-round-cog')GrpSettings=FigureTab:AddLeftGroupbox('Settings',
'settings')GrpPhysics=FigureTab:AddLeftGroupbox('Physics','activity')GrpMotion=FigureTab:AddLeftGroupbox('Movement',
'wind')GrpLimb=FigureTab:AddRightGroupbox('Limb Control','sliders-horizontal')GrpSnap=FigureTab:AddRightGroupbox(
'Snap Grid','grid')GrpPoses=FigureTab:AddRightGroupbox('Poses','bookmark')GrpActions=FigureTab:AddRightGroupbox(
'Actions','zap')game_Players=game:GetService('Players')game_Debris=game:GetService('Debris')game_Workspace=game:
GetService('Workspace')game_Lighting=game:GetService('Lighting')game_TweenService=game:GetService('TweenService')
game_UserInputService=game:GetService('UserInputService')game_ReplicatedStorage=game:GetService('ReplicatedStorage')
game_ContextActionService=game:GetService('ContextActionService')game_RunService=game:GetService('RunService')
CurrentPlayer=game_Players.LocalPlayer GrabEventsFolder=game_ReplicatedStorage:WaitForChild('GrabEvents')
SetOwnershipEvent=GrabEventsFolder:WaitForChild('SetNetworkOwner')DestroyLineEvent=GrabEventsFolder:WaitForChild(
'DestroyGrabLine')CreateLineEvent=GrabEventsFolder:WaitForChild('CreateGrabLine',3)_G.ControllingCreature=nil
ConnectionNoclip=nil NoclipEnabled=false RaycastParameters=RaycastParams.new()RaycastParameters.
FilterDescendantsInstances={CurrentPlayer.Character}RaycastParameters.FilterType=Enum.RaycastFilterType.Exclude function
CreateLookAtCFrame(ay,az)DirectionVector=(az-ay).Unit RightAxis=DirectionVector:Cross(Vector3.new(0,1,0))UpAxis=
RightAxis:Cross(DirectionVector)return CFrame.fromMatrix(ay,RightAxis,UpAxis)end function GetCurrentCharacter()if
CurrentPlayer.Character and(CurrentPlayer.Character:FindFirstChild('HumanoidRootPart')and CurrentPlayer.Character:
FindFirstChildOfClass('Humanoid'))then return CurrentPlayer.Character end end function ValidatePartOwnership(ay,az)if
typeof(ay)=='Instance'and(ay:FindFirstChild('PartOwner')and ay.PartOwner.Value==CurrentPlayer.Name)then return not az
and true or ay.PartOwner end end function RequestOwnershipSingle(ay)DistanceFromPlayer=CurrentPlayer:
DistanceFromCharacter(ay.Position)if CurrentPlayer.Character and CurrentPlayer.Character:FindFirstChild(
'HumanoidRootPart')then if ValidatePartOwnership(ay)then return true end if DistanceFromPlayer<=30 then
SetOwnershipEvent:FireServer(ay,CreateLookAtCFrame(CurrentPlayer.Character.HumanoidRootPart.Position,ay.Position))end
end end function RequestOwnershipAndRemoveLine(ay)DistanceCalculated=CurrentPlayer:DistanceFromCharacter(ay.Position)
IsConnected=ay:GetAttribute('Connected')HasCreatedConnection=ay:GetAttribute('CreatedConnected')if CurrentPlayer.
Character and CurrentPlayer.Character:FindFirstChild('HumanoidRootPart')then if ValidatePartOwnership(ay)then ay:
SetAttribute('Connected',true)DestroyLineEvent:FireServer(ay)if not HasCreatedConnection then ay:SetAttribute(
'CreatedConnected',true)ay.ChildAdded:Connect(function(az)if az.Name=='PartOwner'and az.Value~=CurrentPlayer.Name then
ay:SetAttribute('Connected',false)end end)end elseif DistanceCalculated<=30 and not IsConnected then SetOwnershipEvent:
FireServer(ay,CreateLookAtCFrame(CurrentPlayer.Character.HumanoidRootPart.Position,ay.Position))end end end function
ActivateNoclipMode()if not ConnectionNoclip then NoclipEnabled=false NoclipLoopFunction=function()if NoclipEnabled==
false and game_Players.LocalPlayer.Character~=nil then ChildrenIterator,ChildrenTable,CurrentIndex=pairs(game_Players.
LocalPlayer.Character:GetChildren())while true do CurrentChild=nil CurrentIndex,CurrentChild=ChildrenIterator(
ChildrenTable,CurrentIndex)if CurrentIndex==nil then break end if CurrentChild:IsA('BasePart')and CurrentChild.
CanCollide then CurrentChild.CanCollide=false end end end wait(0.21)end ConnectionNoclip=game_RunService.Stepped:
Connect(NoclipLoopFunction)end end function DeactivateNoclipMode()if not _G.NoclipToggle then if ConnectionNoclip then
ConnectionNoclip:Disconnect()ConnectionNoclip=nil end NoclipEnabled=true end end function DisableCharacterQuery(ay)
PartsIterator,PartsTable,PartIndex=pairs(ay:GetChildren())while true do CurrentPart=nil PartIndex,CurrentPart=
PartsIterator(PartsTable,PartIndex)if PartIndex==nil then break end if CurrentPart:IsA('Part')then CurrentPart.CanQuery=
false end end end function EnableCharacterQuery(ay)IteratorFunc,TableData,IndexPos=pairs(ay:GetChildren())while true do
PartData=nil IndexPos,PartData=IteratorFunc(TableData,IndexPos)if IndexPos==nil then break end if PartData:IsA('Part')
then PartData.CanQuery=true end end end ControlAudioEffect=Instance.new('Sound',game_Workspace)ControlAudioEffect.
SoundId='rbxassetid://9114374439'ControlAudioEffect.PlaybackSpeed=1.25 ColorCorrectionInstance=Instance.new(
'ColorCorrectionEffect',game_Lighting)ColorCorrectionInstance.Enabled=false FieldOfViewTween=game_TweenService:Create(
game_Workspace.CurrentCamera,TweenInfo.new(0.3,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut,0,true),{FieldOfView=100
})TintColorTween=game_TweenService:Create(ColorCorrectionInstance,TweenInfo.new(0.3,Enum.EasingStyle.Sine,Enum.
EasingDirection.InOut),{TintColor=Color3.fromRGB(200,210,240)})BrightnessTween=game_TweenService:Create(
ColorCorrectionInstance,TweenInfo.new(1,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut,-1,true),{Brightness=-0.1})
ResetColorTween=game_TweenService:Create(ColorCorrectionInstance,TweenInfo.new(0.3,Enum.EasingStyle.Sine,Enum.
EasingDirection.InOut),{TintColor=Color3.new(3,3,3),Brightness=0})function StartControlVisuals()ColorCorrectionInstance.
Enabled=true ColorCorrectionInstance.TintColor=Color3.new()FieldOfViewTween:Play()TintColorTween:Play()
ControlAudioEffect:Play()TintColorTween.Completed:Once(function()BrightnessTween:Play()end)end function
EndControlVisuals()ResetColorTween:Play()ResetColorTween.Completed:Once(function()ColorCorrectionInstance.Enabled=false
end)end function MovePlayerToPosition(ay,az)PlayerCharacter=GetCurrentCharacter()if PlayerCharacter and typeof(ay)==
'CFrame'then RootPartInstance=PlayerCharacter.HumanoidRootPart HumanoidInstance=PlayerCharacter:FindFirstChildOfClass(
'Humanoid')RootPartInstance.CFrame=RootPartInstance.CFrame.Rotation+ay.Position if HumanoidInstance.SeatPart==nil or
tostring(HumanoidInstance.SeatPart.Parent)~='CreatureBlobman'then HumanoidInstance.Sit=false end end end function
BeginControllingTarget(ay)if typeof(ay)=='Instance'and ay:IsA('Model')then TargetModel=ay TargetHumanoid=TargetModel:
FindFirstChildOfClass('Humanoid')TargetRootPart=TargetModel:FindFirstChild('HumanoidRootPart')TargetHead=TargetModel:
FindFirstChild('Head')IsValidTargetType=(function()if not game_Players:GetPlayerFromCharacter(ay)and(ay.Name=='YouDecoy'
or(ay.Name=='CreatureBlobman'or tostring(ay.Parent.Name)=='Robloxians'))then return true end end)()if TargetModel and(
TargetHumanoid and TargetRootPart)then ConnectionsTable={}CleanupAllConnections=function()ConnectionIterator,
ConnectionData,ConnectionIndex=pairs(ConnectionsTable)while true do ConnectionObject=nil ConnectionIndex,
ConnectionObject=ConnectionIterator(ConnectionData,ConnectionIndex)if ConnectionIndex==nil then break end if typeof(
ConnectionObject)=='RBXScriptConnection'then ConnectionObject:Disconnect()end end table.clear(ConnectionsTable)end _G.
ControllingCreature=TargetModel TargetHumanoid.WalkSpeed=0 TargetHumanoid.JumpPower=24 TargetHumanoid.CameraOffset=
Vector3.new(0,0,-0.7)ConnectionsTable[1]=TargetHumanoid.Died:Connect(function()_G.ControllingCreature=nil end)
VelocityController=Instance.new('BodyVelocity',TargetRootPart)PlayerVelocityController=Instance.new('BodyVelocity')
PlayerVelocityController.MaxForce=Vector3.new(0,math.huge,0)PlayerVelocityController.Velocity=Vector3.new()
VelocityController.MaxForce=Vector3.new(math.huge,0,math.huge)DisableCharacterQuery(TargetModel)task.spawn(function()
ActivateNoclipMode()while TargetModel.Parent and _G.ControllingCreature~=nil do if IsValidTargetType then
RequestOwnershipAndRemoveLine(TargetHead)else RequestOwnershipSingle(TargetHead)end TargetHumanoid.AutoRotate=true task.
wait()end end)game_Workspace.CurrentCamera.CameraSubject=TargetHumanoid StartControlVisuals()PlayerCharacterCurrent=
GetCurrentCharacter()PlayerRootPartReference=nil PlayerHumanoidReference=nil if PlayerCharacterCurrent then
PlayerHumanoidReference=PlayerCharacterCurrent:FindFirstChildOfClass('Humanoid')PlayerRootPartReference=
PlayerCharacterCurrent:FindFirstChild('HumanoidRootPart')PlayerVelocityController.Parent=PlayerRootPartReference
ConnectionsTable[2]=PlayerHumanoidReference.Died:Connect(function()_G.ControllingCreature=nil end)ConnectionsTable[3]=
game_UserInputService.JumpRequest:Connect(function()TargetHumanoid:ChangeState('Jumping')end)ConnectionsTable[5]=
PlayerHumanoidReference.Changed:Connect(function(az)if az=='MoveDirection'then VelocityController.Velocity=
PlayerHumanoidReference.MoveDirection*20 end end)ConnectionsTable[6]=workspace.CurrentCamera.Changed:Connect(function(az
)if az=='CameraSubject'then game_Workspace.CurrentCamera.CameraSubject=TargetHumanoid end end)CameraDirectionVector=nil
ConnectionsTable[7]=TargetHead.Changed:Connect(function(az)if az=='CFrame'then CameraDirectionVector=game_Workspace.
CurrentCamera.CFrame.lookVector TargetHumanoid.CameraOffset=-Vector3.new(CameraDirectionVector.X,5,CameraDirectionVector
.Z)*1.7 end end)TargetHumanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,false)else PlayerRootPartReference=nil
PlayerHumanoidReference=nil end while TargetModel.Parent and(_G.ControllingCreature~=nil and(PlayerCharacterCurrent and
PlayerCharacterCurrent.Parent))do MovePlayerToPosition(CFrame.new(TargetRootPart.Position+Vector3.new(0,-10,0)))task.
wait()end CleanupAllConnections()DeactivateNoclipMode()MovePlayerToPosition(CFrame.new(TargetRootPart.Position+Vector3.
new(5,15,5)))EnableCharacterQuery(TargetModel)VelocityController:Destroy()PlayerVelocityController:Destroy()
game_Workspace.CurrentCamera.CameraSubject=PlayerHumanoidReference _G.ControllingCreature=nil PlayerRootPartReference.
Velocity=Vector3.new()EndControlVisuals()end end end function ExecuteControlAction()ActiveCharacter=GetCurrentCharacter(
)if ActiveCharacter then CharacterHead=ActiveCharacter.Head ActiveCamera=game_Workspace.CurrentCamera CharacterHumanoid=
ActiveCharacter:FindFirstChildOfClass('Humanoid')RaycastResult=game_Workspace:Raycast(CharacterHead.Position,
ActiveCamera.CFrame.lookVector*50,RaycastParameters)if RaycastResult and(CharacterHumanoid and CharacterHumanoid.Health>
0)then HitInstanceParent=RaycastResult.Instance.Parent if HitInstanceParent:FindFirstChildOfClass('Humanoid')then
BeginControllingTarget(HitInstanceParent)end end end end function ExecuteControlToggle()if _G.ControllingCreature then
_G.ControllingCreature=nil else ExecuteControlAction()end end CurrentPlayer.CharacterAdded:Connect(function(ay)
RaycastParameters.FilterDescendantsInstances={ay}end)local ay=ControlPanel:AddCheckbox('ControlCharactersToggle',{Text=
'Player + NPC Control',Default=false,Tooltip='Control the NPC/Player you are looking at.'})local az=ay:AddKeyPicker(
'ControlKeybind',{Default='C',Text='Control Key',Mode='Toggle',Callback=function(az)if not ay.Value then return end
ExecuteControlToggle()end})ay:OnChanged(function(aA)end)az:OnChanged(function()print('Control keybind updated \u{2192}',
az.Value)end)FGM=FGM or{}FGM.State=FGM.State or{}FGM.Configuration=FGM.Configuration or{}Toggles=Toggles or{}Options=
Options or{}Notifications=Notifications or{}getgenv().FigureGrabModule=getgenv().FigureGrabModule or{}FGM=getgenv().
FigureGrabModule FGM.Players=game:GetService('Players')FGM.RunService=game:GetService('RunService')FGM.ReplicatedStorage
=game:GetService('ReplicatedStorage')FGM.UserInputService=game:GetService('UserInputService')FGM.LocalPlayer=FGM.Players
.LocalPlayer FGM.Mouse=FGM.LocalPlayer:GetMouse()FGM.GrabEvents=FGM.ReplicatedStorage:WaitForChild('GrabEvents')FGM.
SetNetworkOwner=FGM.GrabEvents:WaitForChild('SetNetworkOwner')FGM.DestroyLine=FGM.GrabEvents:WaitForChild(
'DestroyGrabLine')FGM.CreateLine=FGM.GrabEvents:WaitForChild('CreateGrabLine')FGM.MenuToys=FGM.ReplicatedStorage:
WaitForChild('MenuToys')FGM.ToySpawn=FGM.MenuToys:WaitForChild('SpawnToyRemoteFunction')FGM.DestroyToy=FGM.MenuToys:
WaitForChild('DestroyToy')local aA=function()list={}for aA,aB in ipairs(FGM.Players:GetPlayers())do if aB~=FGM.
LocalPlayer then table.insert(list,aB.DisplayName..' (@'..aB.Name..')')end end table.sort(list)return list end local aB=
function(aB)return aB:match('%(@(.+)%)')or aB end FGM.State.TargetDropdown=GrpTarget:AddDropdown('FG_TargetPlayer',{Text
='Select Target',Values=aA(),Default=1,Callback=function(aC)FGM.State.SelectedTarget=aB(aC)end})FGM.Players.PlayerAdded:
Connect(function()task.wait(0.5)if FGM.State.TargetDropdown then pcall(function()FGM.State.TargetDropdown:SetValues(aA()
)end)end end)FGM.Players.PlayerRemoving:Connect(function()task.wait(0.3)if FGM.State.TargetDropdown then pcall(function(
)FGM.State.TargetDropdown:SetValues(aA())end)end end)GrpTarget:AddButton({Text='Refresh Target List',Func=function()if
FGM.State.TargetDropdown then pcall(function()FGM.State.TargetDropdown:SetValues(aA())end)end end})GrpTarget:AddDivider(
)GrpTarget:AddCheckbox('FG_EnableToggle',{Text='Enable Figure Grab',Default=false,Tooltip='kinda buggy (soon fixed)',
Callback=function(aC)if aC then if not FGM.State.SelectedTarget or FGM.State.SelectedTarget==''then pcall(function()
Toggles.FG_EnableToggle:SetValue(false)end)return end FGM.ToggleFigureGrab()else if FGM.State.FigureGrabEnabled then FGM
.ToggleFigureGrab()end end end})GrpTarget:AddCheckbox('FG_AutoRagdollToggle',{Text='Auto Ragdoll Target',Default=false,
Tooltip=[[Automatically ragdolls the grabbed target using pallet hammer]],Callback=function(aC)FGM.State.
AutoRagdollToggle=aC if FGM.State.FigureGrabEnabled then FGM.ToggleAutoRagdoll(aC)end end})GrpSettings:AddLabel(
'<b>Behaviour</b>')GrpSettings:AddCheckbox('FG_AnimCopyToggle',{Text='Mirror My Animations',Default=false})Toggles.
FG_AnimCopyToggle:OnChanged(function(aC)if FGM.SetAnimationCopy then FGM.SetAnimationCopy(aC)end notify(aC and
'Animation mirroring on'or'Animation mirroring off',2)end)GrpSettings:AddDivider()GrpSettings:AddLabel('<b>Damping</b>')
GrpSettings:AddCheckbox('FG_DampingEnabled',{Text='Smooth Movement',Default=true})Toggles.FG_DampingEnabled:OnChanged(
function(aC)FGM.Configuration.DampingEnabled=aC if not aC then FGM.State.SmoothedCFrames={}end end)GrpSettings:
AddSlider('FG_DampingSpeed',{Text='Damping Speed',Default=12,Min=1,Max=60,Rounding=0,Callback=function(aC)FGM.
Configuration.DampingSpeed=aC end})GrpPhysics:AddLabel('<b>Constraints</b>')GrpPhysics:AddCheckbox('FG_VelSuppress',{
Text='Zero All Velocities',Default=false})Toggles.FG_VelSuppress:OnChanged(function(aC)FGM.State.VelSuppressEnabled=aC
end)GrpPhysics:AddCheckbox('FG_LockRotation',{Text='Lock Torso Rotation',Default=false})Toggles.FG_LockRotation:
OnChanged(function(aC)FGM.State.LockRotationEnabled=aC end)GrpPhysics:AddCheckbox('FG_ForceUpright',{Text=
'Keep Target Upright',Default=false})Toggles.FG_ForceUpright:OnChanged(function(aC)FGM.State.ForceUprightEnabled=aC end)
GrpPhysics:AddCheckbox('FG_ForceLookAt',{Text='Face Toward Me',Default=false})Toggles.FG_ForceLookAt:OnChanged(function(
aC)FGM.State.ForceLookAtEnabled=aC end)GrpPhysics:AddDivider()GrpPhysics:AddLabel('<b>Hold</b>')GrpPhysics:AddCheckbox(
'FG_HoldAtCamera',{Text='Anchor to Camera',Default=false})Toggles.FG_HoldAtCamera:OnChanged(function(aC)FGM.State.
HoldAtCameraEnabled=aC end)GrpMotion:AddLabel('<b>Effects</b>')GrpMotion:AddCheckbox('FG_Spin',{Text='Spin Target',
Default=false})Toggles.FG_Spin:OnChanged(function(aC)FGM.State.SpinEnabled=aC FGM.State.SpinAngle=0 end)GrpMotion:
AddSlider('FG_SpinSpeed',{Text='Spin Speed',Default=180,Min=10,Max=720,Rounding=0,Callback=function(aC)FGM.State.
SpinSpeed=aC end})GrpMotion:AddDivider()GrpMotion:AddCheckbox('FG_Oscillate',{Text='<b>[FLOAT]</b> Oscillate',Default=
false})if Toggles.FG_Oscillate then Toggles.FG_Oscillate:OnChanged(function(aC)FGM.State.OscillateEnabled=aC FGM.State.
OscillateTimer=0 end)end GrpMotion:AddSlider('FG_OscillateSpeed',{Text='Float Speed',Default=2,Min=1,Max=10,Rounding=1,
Callback=function(aC)FGM.State.OscillateSpeed=aC end})GrpMotion:AddSlider('FG_OscillateAmount',{Text='Float Distance',
Default=3,Min=1,Max=20,Rounding=1,Callback=function(aC)FGM.State.OscillateAmount=aC end})GrpLimb:AddLabel(
'<b>Active Limb</b>')GrpLimb:AddDropdown('FG_LimbSelector',{Values=LIMB_OPTIONS or{'Head'},Default='Head',Multi=false,
Text='Select A Limb',Callback=function(aC)FGM.State.SelectedLimb=aC if FGM.ApplyLimbHighlight then FGM.
ApplyLimbHighlight(aC)end end})GrpLimb:AddDivider()GrpLimb:AddLabel('<b>Position</b>')function updateLimb(aC,aD,aG)if
FGM.UpdateConfig then FGM.UpdateConfig(aC,aD,aG)end end GrpLimb:AddSlider('FG_LimbPosX',{Text='Left  /  Right',Default=0
,Min=-50,Max=50,Rounding=1,Callback=function(aC)updateLimb(GetActiveSections().pos,'X',aC)end})GrpLimb:AddSlider(
'FG_LimbPosY',{Text='Up  /  Down',Default=0,Min=-50,Max=50,Rounding=1,Callback=function(aC)updateLimb(GetActiveSections(
).pos,'Y',aC)end})GrpLimb:AddSlider('FG_LimbPosZ',{Text='Forward  /  Back',Default=-5,Min=-50,Max=50,Rounding=1,Callback
=function(aC)updateLimb(GetActiveSections().pos,'Z',aC)end})GrpLimb:AddDivider()GrpLimb:AddLabel('<b>Rotation</b>')
GrpLimb:AddSlider('FG_LimbRotX',{Text='Pitch  (Up / Down)',Default=0,Min=0,Max=360,Rounding=0,Callback=function(aC)
updateLimb(GetActiveSections().rot,'X',aC)end})GrpLimb:AddSlider('FG_LimbRotY',{Text='Yaw  (Left / Right)',Default=0,Min
=0,Max=360,Rounding=0,Callback=function(aC)updateLimb(GetActiveSections().rot,'Y',aC)end})GrpLimb:AddSlider(
'FG_LimbRotZ',{Text='Roll  (Tilt)',Default=0,Min=0,Max=360,Rounding=0,Callback=function(aC)updateLimb(GetActiveSections(
).rot,'Z',aC)end})GrpSnap:AddLabel('<b>Snap Grid</b>')GrpSnap:AddCheckbox('FG_SnapEnabled',{Text='Enable Snap',Default=
false})Toggles.FG_SnapEnabled:OnChanged(function(aC)FGM.Configuration.SnapEnabled=aC end)GrpSnap:AddSlider(
'FG_SnapPosStep',{Text='Position Step',Default=0.5,Min=0.1,Max=5,Rounding=1,Callback=function(aC)FGM.Configuration.
SnapPosStep=aC end})GrpSnap:AddSlider('FG_SnapRotStep',{Text='Rotation Step',Default=15,Min=1,Max=90,Rounding=0,Callback
=function(aC)FGM.Configuration.SnapRotStep=aC end})GrpPoses:AddLabel('<b>Built-in Poses</b>')GrpPoses:AddDropdown(
'FGM_PresetPose',{Values={'Pose1','Pose2','Pose3','Pose4','Pose5','Pose6','Pose7','JojoStand'},Default='Pose1',Multi=
false,Text='Select Pose'})GrpPoses:AddButton({Text='Apply Pose',Func=function()if FGM.ApplyPreset then selected=Options.
FGM_PresetPose and Options.FGM_PresetPose.Value FGM.ApplyPreset(selected)notify('Pose applied \u{2014} '..tostring(
selected),2)end end})GrpPoses:AddButton({Text='Reset to Default Pose',Func=function()if FGM.ResetPose then FGM.
ResetPose()notify('Pose reset to default',2)end end})GrpActions:AddLabel('<b>Actions</b>')GrpActions:AddButton({Text=
'Force Re-Grab',Func=function()target=FGM.State.TargetCharacter if not target then return end if FGM.ExecuteGrabTP then
FGM.ExecuteGrabTP(target)end end})GrpActions:AddButton({Text='Freeze Limbs',Func=function()if FGM.SnapshotLimbsForFreeze
then FGM.SnapshotLimbsForFreeze()end FGM.State.FreezeLimbsEnabled=true end})GrpActions:AddButton({Text='Unfreeze Limbs',
Func=function()FGM.State.FreezeLimbsEnabled=false FGM.State.FrozenCFrames={}notify('Limbs unfrozen',2)end})GrpActions:
AddDivider()GrpActions:AddButton({Text='Release Target',Func=function()if FGM.State.FigureGrabEnabled then FGM.
ToggleFigureGrab()else notify('Nothing is currently grabbed',2)end end})_expTarget=nil _expDropUpdate=false
AutoExplosionEnabled=false ExplosionType='BombMissile'ExplosionInterval=0 PredictMovement=false ExplosionAmount=3
SpawnSpeed=0 SetupSpeed=0 ExplosionColorEnabled=false ExplosionColor=Color3.fromRGB(255,0,0)RainbowExplosionEnabled=
false ExplosionBrightness=10 origexplosionpresets={}origbrightnessvals={}origsizevals={}origspeedvals={}origlifetimevals
={}origdensityvals={}ParticleSize=1 ParticleSpeed=1 ParticleLifetime=1 ParticleDensity=1 ParticleTransparency=0
TransparentExplosionEnabled=false PulseColorEnabled=false PulseColorA=Color3.fromRGB(255,80,0)PulseColorB=Color3.
fromRGB(0,120,255)PulseSpeed=5 StrobeEnabled=false StrobeIntensity=5 InvertColorEnabled=false BlendMode='Default'
ExplosionConfigBox=Tabs.ToyTab:AddRightGroupbox('Settings','settings')AutoExplosionBox=Tabs.ToyTab:AddRightGroupbox(
'Auto Explode','bomb')ExplosionVisualBox=Tabs.ToyTab:AddRightGroupbox('Visuals','eye')ExplosionFXBox=Tabs.ToyTab:
AddRightGroupbox('Effects','sparkles')SpawnToyRF=ReplicatedStorage:WaitForChild('MenuToys'):WaitForChild(
'SpawnToyRemoteFunction')DeleteToyRE=ReplicatedStorage:WaitForChild('MenuToys'):WaitForChild('DestroyToy')BuyToy=
ReplicatedStorage:WaitForChild('MenuToys'):WaitForChild('BuyToyRemoteFunction')BombEvents=ReplicatedStorage:
WaitForChild('BombEvents')SetNetworkOwner=ReplicatedStorage:WaitForChild('GrabEvents'):WaitForChild('SetNetworkOwner')
HitboxNames={BombMissile='PartHitDetector',BombDarkMatter='PartHitDetector',FireworkMissile='PartHitDetector',
BombBalloon='Balloon',PresentBig='Box',PresentSmall='Box'}SetupParts={BombMissile='Body',BombDarkMatter='Pyramid',
FireworkMissile='Hitbox',BombBalloon='Balloon',PresentBig='Box',PresentSmall='Box'}function InitializeExplosionPresets()
if ReplicatedStorage:FindFirstChild('ExplosionMaker')and ReplicatedStorage.ExplosionMaker:FindFirstChild(
'ParticlePresets')then for aC,aD in ipairs(ReplicatedStorage.ExplosionMaker.ParticlePresets:GetChildren())do if aD:IsA(
'ParticleEmitter')then origexplosionpresets[aD]=aD.Color origbrightnessvals[aD]=aD.Brightness origsizevals[aD]=aD.Size
origspeedvals[aD]=aD.Speed origlifetimevals[aD]=aD.Lifetime origdensityvals[aD]=aD.Rate end end end end function
GetParticles()if not ReplicatedStorage:FindFirstChild('ExplosionMaker')or not ReplicatedStorage.ExplosionMaker:
FindFirstChild('ParticlePresets')then return{}end out={}for aC,aD in ipairs(ReplicatedStorage.ExplosionMaker.
ParticlePresets:GetChildren())do if aD:IsA('ParticleEmitter')then table.insert(out,aD)end end return out end function
InvertColor(aC)return Color3.new(1-aC.R,1-aC.G,1-aC.B)end function ApplyExplosionColor()for aC,aD in ipairs(
GetParticles())do local aG if RainbowExplosionEnabled then aG=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(
1,0,0)),ColorSequenceKeypoint.new(0.25,Color3.new(0,1,0)),ColorSequenceKeypoint.new(0.5,Color3.new(0,0,1)),
ColorSequenceKeypoint.new(0.75,Color3.new(1,1,0)),ColorSequenceKeypoint.new(1,Color3.new(1,0,0))})elseif
ExplosionColorEnabled then c=InvertColorEnabled and InvertColor(ExplosionColor)or ExplosionColor aG=ColorSequence.new(c)
else aG=origexplosionpresets[aD]end aD.Color=aG end end function ApplyExplosionBrightness()for aC,aD in ipairs(
GetParticles())do if ExplosionBrightness==10 then aD.Brightness=origbrightnessvals[aD]else aD.Brightness=
origbrightnessvals[aD]*2*(ExplosionBrightness-9)end end end function ApplyParticleSize()for aC,aD in ipairs(
GetParticles())do orig=origsizevals[aD]if orig then kps=orig.Keypoints newkps={}for aG,aH in ipairs(kps)do table.insert(
newkps,NumberSequenceKeypoint.new(aH.Time,aH.Value*ParticleSize,aH.Envelope))end aD.Size=NumberSequence.new(newkps)end
end end function ApplyParticleSpeed()for aC,aD in ipairs(GetParticles())do orig=origspeedvals[aD]if orig then kps=orig.
Keypoints newkps={}for aG,aH in ipairs(kps)do table.insert(newkps,NumberSequenceKeypoint.new(aH.Time,aH.Value*
ParticleSpeed,aH.Envelope))end aD.Speed=NumberRange.new(orig.Min*ParticleSpeed,orig.Max*ParticleSpeed)end end end
function ApplyParticleLifetime()for aC,aD in ipairs(GetParticles())do orig=origlifetimevals[aD]if orig then aD.Lifetime=
NumberRange.new(orig.Min*ParticleLifetime,orig.Max*ParticleLifetime)end end end function ApplyParticleDensity()for aC,aD
in ipairs(GetParticles())do orig=origdensityvals[aD]if orig then aD.Rate=orig*ParticleDensity end end end function
ApplyParticleTransparency()for aC,aD in ipairs(GetParticles())do if TransparentExplosionEnabled then aD.Transparency=
NumberSequence.new({NumberSequenceKeypoint.new(0,ParticleTransparency),NumberSequenceKeypoint.new(1,1)})else aD.
Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(1,1)})end end end function
ApplyBlendMode()for aC,aD in ipairs(GetParticles())do pcall(function()aD.LightEmission=(BlendMode=='Additive')and 1 or 0
end)end end function PulseColorLoop()t=0 while PulseColorEnabled do t=t+task.wait(0.05)*PulseSpeed alpha=(math.sin(t)+1)
/2 blended=Color3.new(PulseColorA.R+(PulseColorB.R-PulseColorA.R)*alpha,PulseColorA.G+(PulseColorB.G-PulseColorA.G)*
alpha,PulseColorA.B+(PulseColorB.B-PulseColorA.B)*alpha)for aC,aD in ipairs(GetParticles())do aD.Color=ColorSequence.
new(blended)end end end function StrobeBrightnessLoop()while StrobeEnabled do for aC,aD in ipairs(GetParticles())do base
=origbrightnessvals[aD]or 1 aD.Brightness=base*StrobeIntensity*(math.random()>0.5 and 1 or 0.1)end task.wait(0.05)end
ApplyExplosionBrightness()end function GetSpawnedToys()return Workspace:FindFirstChild(LocalPlayer.Name..'SpawnedInToys'
)end function ExpGetPlayerList()list={}for aC,aD in pairs(Players:GetPlayers())do if aD~=LocalPlayer then table.insert(
list,aD.DisplayName..' (@'..aD.Name..')')end end table.sort(list,function(aC,aD)return aC:lower()<aD:lower()end)return
list end function ExpExtractUsername(aC)return aC and aC:match('@([%w_]+)')end function ExpGetPlayerByName(aC)if not aC
or aC==''then return nil end return Players:FindFirstChild(aC)end function ExpGetTargetHRP()if not _expTarget then
return nil,nil end p=ExpGetPlayerByName(_expTarget)if p and p.Character and p.Character:FindFirstChild(
'HumanoidRootPart')then return p.Character.HumanoidRootPart,p end return nil,nil end function ExpRefreshDropdown()
_expDropUpdate=true pcall(function()ExplosionPlayerDropdown:SetValues(ExpGetPlayerList())end)_expDropUpdate=false end
function GetPlayerCharacterLocal()if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild('HumanoidRootPart')
then return LocalPlayer.Character end return nil end function LookAt(aC,aD)dir=(aD-aC).Unit right=dir:Cross(Vector3.new(
0,1,0))up=right:Cross(dir)return CFrame.fromMatrix(aC,right,up)end function SetNetworkOwnership(aC)if not aC then return
end if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild('HumanoidRootPart')then pcall(function()
SetNetworkOwner:FireServer(aC,LookAt(LocalPlayer.Character.HumanoidRootPart.Position,aC.Position))end)end end function
SpawNoneBomb()char=GetPlayerCharacterLocal()if char then pos=char.HumanoidRootPart.Position pcall(function()SpawnToyRF:
InvokeServer(ExplosionType,CFrame.new(pos+Vector3.new(0,5,0)),Vector3.new(0,0,0))BuyToy:InvokeServer(ExplosionType)end)
end end function GetAllBombs()toys=GetSpawnedToys()if not toys then return{}end bombs={}for aC,aD in pairs(toys:
GetChildren())do if aD.Name==ExplosionType then table.insert(bombs,aD)end end return bombs end function SetupBomb(aC)if
not aC or not aC.PrimaryPart then return end hitPart=aC:FindFirstChild(SetupParts[aC.Name])if not hitPart then return
end SetNetworkOwnership(hitPart)task.wait(0.05)pcall(function()for aD,aG in pairs(aC.PrimaryPart:GetChildren())do if aG:
IsA('BodyVelocity')or aG.Name=='Stable'then aG:Destroy()end end bodyVel=Instance.new('BodyVelocity')bodyVel.Velocity=
Vector3.new(0,0,0)bodyVel.MaxForce=Vector3.new(math.huge,math.huge,math.huge)bodyVel.Name='Stable'bodyVel.Parent=aC.
PrimaryPart aC:PivotTo(CFrame.new(math.random(-500,500),10000,math.random(-500,500)))end)end function ExplodeBomb(aC,aD)
if not aC or not aD then return end hitbox=aC:FindFirstChild(HitboxNames[aC.Name])if hitbox then targetPos=aD.Position
if PredictMovement then targetPos=targetPos+aD.Velocity/1.93 end pcall(function()BombEvents.BombExplode:FireServer({
Hitbox=hitbox,PositionPart=aD},targetPos)end)end end function DeleteAllBombs()for aC,aD in pairs(GetAllBombs())do pcall(
function()DeleteToyRE:FireServer(aD)end)end end function AutoExplosionLoop()while AutoExplosionEnabled do targetHRP,
targetPlayer=ExpGetTargetHRP()if not targetPlayer then AutoExplosionEnabled=false Toggles.AutoExplosionToggle:SetValue(
false)break end if not targetHRP then task.wait(0.2)continue end DeleteAllBombs()task.wait(0.1)while#GetAllBombs()<
ExplosionAmount and AutoExplosionEnabled do task.spawn(SpawNoneBomb)task.wait(SpawnSpeed)task.wait(0.02)end task.wait(
0.15)for aC,aD in pairs(GetAllBombs())do if not AutoExplosionEnabled then break end task.spawn(function()SetupBomb(aD)
end)task.wait(SetupSpeed)end task.wait(0.2)targetHRP,targetPlayer=ExpGetTargetHRP()if targetHRP and targetPlayer then
for aC,aD in pairs(GetAllBombs())do if not AutoExplosionEnabled then break end task.spawn(function()ExplodeBomb(aD,
targetHRP)end)task.wait(0.01)end end task.wait(0.15)DeleteAllBombs()task.wait(ExplosionInterval)end end
InitializeExplosionPresets()ExplosionPlayerDropdown=ExplosionConfigBox:AddDropdown('ExplosionPlayerDropdown',{Values=
ExpGetPlayerList(),Default=nil,Text='Select Target',Multi=false,Searchable=true,Tooltip=
'Select the player you want to bomb'})ExplosionPlayerDropdown:OnChanged(function(aC)if _expDropUpdate then return end un
=ExpExtractUsername(aC)_expTarget=un or nil end)ExplosionConfigBox:AddButton({Text='Refresh Player List',Tooltip=
'Refreshes the target list',Func=function()ExpRefreshDropdown()end})ExplosionConfigBox:AddDropdown('ExplosionTypeSelect'
,{Values={'Missile','Firework','Void','Balloon','Small Present','Big Present'},Default='Missile',Tooltip=
'Choose what Explosion Type you want',Text='Explosion Type',Callback=function(aC)typeMap={Missile='BombMissile',Firework
='FireworkMissile',Void='BombDarkMatter',Balloon='BombBalloon',['Small Present']='PresentSmall',['Big Present']=
'PresentBig'}ExplosionType=typeMap[aC]or'BombMissile'end})ExplosionConfigBox:AddSlider('BombAmount',{Text='Bomb Amount',
Tooltip='How many bombs explode per cycle',Default=3,Min=1,Max=10,Rounding=0,Suffix=' bombs',Callback=function(aC)
ExplosionAmount=aC end})ExplosionConfigBox:AddCheckbox('PredictMovement',{Text='Predict Movement',Default=false,Tooltip=
'Leads the target based on their current velocity',Callback=function(aC)PredictMovement=aC end})ExplosionColorToggle=
ExplosionVisualBox:AddCheckbox('ExplosionColorToggle',{Text='Custom Explosion Color',Default=false,Tooltip=
'Change the explosion particle color',Callback=function(aC)ExplosionColorEnabled=aC RainbowExplosionEnabled=false
ApplyExplosionColor()end})ExplosionColorToggle:AddColorPicker('ExplosionColorPicker',{Title='Explosion Color',Default=
Color3.fromRGB(255,0,0),Callback=function(aC)ExplosionColor=aC if ExplosionColorEnabled then ApplyExplosionColor()end
end})ExplosionVisualBox:AddCheckbox('RainbowExplosion',{Text='Rainbow Explosions',Default=false,Tooltip=
'Cycle through all hues on every explosion',Callback=function(aC)RainbowExplosionEnabled=aC if aC then
ExplosionColorEnabled=false end ApplyExplosionColor()end})ExplosionVisualBox:AddCheckbox('InvertColorToggle',{Text=
'Invert Explosion Color',Default=false,Tooltip='Inverts the currently applied explosion color',Callback=function(aC)
InvertColorEnabled=aC ApplyExplosionColor()end})ExplosionVisualBox:AddSlider('BrightnessSlider',{Text=
'Explosion Brightness',Default=10,Tooltip='Multiplies particle brightness',Min=10,Max=50,Rounding=0,Callback=function(aC
)ExplosionBrightness=aC ApplyExplosionBrightness()end})ExplosionVisualBox:AddSlider('ParticleSizeSlider',{Text=
'Particle Size',Default=1,Tooltip='Scales the size of explosion particles',Min=1,Max=10,Rounding=1,Suffix='x',Callback=
function(aC)ParticleSize=aC ApplyParticleSize()end})ExplosionVisualBox:AddSlider('ParticleSpeedSlider',{Text=
'Particle Speed',Default=1,Tooltip='Scales how fast explosion particles travel outward',Min=1,Max=10,Rounding=1,Suffix=
'x',Callback=function(aC)ParticleSpeed=aC ApplyParticleSpeed()end})ExplosionVisualBox:AddSlider('ParticleLifetimeSlider'
,{Text='Particle Lifetime',Default=1,Tooltip='Multiplies how long each explosion particle lives',Min=1,Max=10,Rounding=1
,Suffix='x',Callback=function(aC)ParticleLifetime=aC ApplyParticleLifetime()end})ExplosionVisualBox:AddSlider(
'ParticleDensitySlider',{Text='Particle Density',Default=1,Tooltip='Multiplies how many particles emit per burst',Min=1,
Max=10,Rounding=1,Suffix='x',Callback=function(aC)ParticleDensity=aC ApplyParticleDensity()end})ExplosionVisualBox:
AddCheckbox('TransparentExplosionToggle',{Text='Custom Transparency',Default=false,Tooltip=
'Enables custom particle transparency',Callback=function(aC)TransparentExplosionEnabled=aC ApplyParticleTransparency()
end})ExplosionVisualBox:AddSlider('ParticleTransparencySlider',{Text='Particle Transparency',Default=0,Tooltip=
'Transparency at particle birth (0 = solid, 1 = invisible)',Min=0,Max=10,Rounding=1,Suffix='',Callback=function(aC)
ParticleTransparency=aC/10 if TransparentExplosionEnabled then ApplyParticleTransparency()end end})ExplosionVisualBox:
AddDropdown('BlendModeSelect',{Values={'Default','Additive'},Default='Default',Text='Blend Mode',Tooltip=
[[Default = normal rendering; Additive = glowing/light-emission look]],Callback=function(aC)BlendMode=aC ApplyBlendMode(
)end})ExplosionFXBox:AddCheckbox('PulseColorToggle',{Text='Pulse Color',Default=false,Tooltip=
'Smoothly pulses particle color between two chosen colors',Callback=function(aC)PulseColorEnabled=aC if aC then
RainbowExplosionEnabled=false ExplosionColorEnabled=false task.spawn(PulseColorLoop)else ApplyExplosionColor()end end})
PulseColorACheckbox=ExplosionFXBox:AddCheckbox('PulseColorACheckbox',{Text='Pulse Color A',Default=false,Tooltip=
'Pick the first pulse color'})PulseColorACheckbox:AddColorPicker('PulseColorA',{Title='Pulse Color A',Default=Color3.
fromRGB(255,80,0),Callback=function(aC)PulseColorA=aC end})PulseColorBCheckbox=ExplosionFXBox:AddCheckbox(
'PulseColorBCheckbox',{Text='Pulse Color B',Default=false,Tooltip='Pick the second pulse color'})PulseColorBCheckbox:
AddColorPicker('PulseColorB',{Title='Pulse Color B',Default=Color3.fromRGB(0,120,255),Callback=function(aC)PulseColorB=
aC end})ExplosionFXBox:AddSlider('PulseSpeedSlider',{Text='Pulse Speed',Default=5,Tooltip=
'How fast the color oscillates between the two pulse colors',Min=1,Max=20,Rounding=0,Suffix=' spd',Callback=function(aC)
PulseSpeed=aC end})ExplosionFXBox:AddCheckbox('StrobeExplosionToggle',{Text='Strobe Brightness',Default=false,Tooltip=
'Rapidly flickers particle brightness for a strobe effect',Callback=function(aC)StrobeEnabled=aC if aC then task.spawn(
StrobeBrightnessLoop)else ApplyExplosionBrightness()end end})ExplosionFXBox:AddSlider('StrobeIntensitySlider',{Text=
'Strobe Intensity',Default=5,Tooltip='How extreme the brightness flicker is',Min=1,Max=20,Rounding=0,Suffix='x',Callback
=function(aC)StrobeIntensity=aC end})AutoExplosionBox:AddCheckbox('AutoExplosionToggle',{Text='Loop Explode',Default=
false,Tooltip='Continuously explodes the selected target',Callback=function(aC)AutoExplosionEnabled=aC if aC then if not
_expTarget then AutoExplosionEnabled=false Toggles.AutoExplosionToggle:SetValue(false)notify('Explosion',
'Select a target first',3)return end if not ExpGetPlayerByName(_expTarget)then AutoExplosionEnabled=false Toggles.
AutoExplosionToggle:SetValue(false)notify('Explosion','Target not found in server',3)return end task.spawn(
AutoExplosionLoop)else task.wait(0.3)DeleteAllBombs()end end})AutoExplosionBox:AddSlider('ExplosionInterval',{Text=
'Explosion Interval',Default=0,Tooltip='Delay between each explosion cycle',Min=0,Max=5,Rounding=1,Suffix=' sec',
Callback=function(aC)ExplosionInterval=aC end})Players.PlayerAdded:Connect(function()task.wait(0.5)ExpRefreshDropdown()
end)Players.PlayerRemoving:Connect(function(aC)task.wait(0.5)if aC.Name==_expTarget then AutoExplosionEnabled=false
_expTarget=nil pcall(function()Toggles.AutoExplosionToggle:SetValue(false)end)end ExpRefreshDropdown()end)
activeSparklers={}sparklerConfig={Height=5,Speed=2,Radius=15,CurrentShape='Planet'}shapeOptions={'Planet','Sphere',
'Cylinder','Double Ring','Star','Infinity','Heart','DNA Helix','Triple Helix','Tornado','Galaxy Spiral',
'Fibonacci Spiral','Spring Coil','Vortex Funnel','Box','Rounded Cube','Torus','Torus Knot','M\u{f6}bius Strip','Saturn',
'Ice Cube'}function SetupPhysics(aC,aD)for aG,aH in ipairs(aD)do if aH==aC then return end end mainPart=aC:IsA(
'BasePart')and aC or aC.PrimaryPart or aC:FindFirstChildWhichIsA('BasePart',true)if not mainPart then return end pcall(
function()if mainPart:CanSetNetworkOwnership()then mainPart:SetNetworkOwner(LocalPlayer)end end)mainPart.Anchored=false
bp=mainPart:FindFirstChild('ToyBodyPos')or Instance.new('BodyPosition',mainPart)bp.Name='ToyBodyPos'bp.MaxForce=Vector3.
new(1e8,1e8,1e8)bp.P=100000 bp.D=800 bg=mainPart:FindFirstChild('ToyBodyGyro')or Instance.new('BodyGyro',mainPart)bg.
Name='ToyBodyGyro'bg.MaxTorque=Vector3.new(1e8,1e8,1e8)bg.P=50000 for aG,aH in ipairs(aC:GetDescendants())do if aH:IsA(
'BasePart')then aH.CanCollide=false end end table.insert(aD,aC)end TAU=math.pi*2 sqrt=math.sqrt sin=math.sin cos=math.
cos abs=math.abs sign=math.sign pow=function(aC,aD)return aC>=0 and aC^aD or-((-aC)^aD)end clamp=math.clamp function
baseAngle(aC,aD,aG,aH)return(aC/aD)*TAU+aG*aH end Shapes={}Shapes.Planet=function(aC,aD,aG,aH,aI,aJ)coreN=clamp(math.
floor(aD*0.35),8,15)coreN=math.min(coreN,aD)ring1N=math.max(math.floor((aD-coreN)/2),1)spin=aG*aJ if aC<=coreN then phi=
math.acos(1-2*(aC/coreN))theta=aC*math.pi*(3-sqrt(5))+spin cr=aH*0.35 return Vector3.new(cos(theta)*sin(phi)*cr,cos(phi)
*cr+aI,sin(theta)*sin(phi)*cr)elseif aC<=coreN+ring1N then idx=aC-coreN a=(idx/ring1N)*TAU+spin rr=aH*0.9 tilt=math.rad(
30)return Vector3.new(cos(a)*rr,sin(a)*rr*sin(tilt)+aI,sin(a)*rr*cos(tilt))else idx=aC-(coreN+ring1N)c=math.max(aD-(
coreN+ring1N),1)a=(idx/c)*TAU+aG*aJ*0.5 rr=aH*1.3 tilt=math.rad(-40)return Vector3.new(cos(a)*rr,sin(a)*rr*sin(tilt)+aI,
sin(a)*rr*cos(tilt))end end Shapes.Sphere=function(aC,aD,aG,aH,aI,aJ)phi=math.acos(1-2*(aC/aD))theta=aC*math.pi*(3-sqrt(
5))+aG*aJ*2 return Vector3.new(cos(theta)*sin(phi)*aH,cos(phi)*aH+aI,sin(theta)*sin(phi)*aH)end Shapes.Cylinder=function
(aC,aD,aG,aH,aI,aJ)a=baseAngle(aC,aD,aG,aJ)y=(aC/aD)*aH*1.5-aH*0.75 return Vector3.new(cos(a)*aH,aI+y,sin(a)*aH)end
Shapes['Double Ring']=function(aC,aD,aG,aH,aI,aJ)a=(aC/(aD/2))*TAU+aG*aJ if aC%2==0 then return Vector3.new(cos(a)*aH,aI
,sin(a)*aH)else return Vector3.new(0,aI+cos(a)*aH,sin(a)*aH)end end Shapes.Star=function(aC,aD,aG,aH,aI,aJ)a=baseAngle(
aC,aD,aG,aJ)rr=(aC%2==0)and aH or aH*0.38 return Vector3.new(cos(a)*rr,aI+sin(aG*aJ*1.5+aC*0.3)*1.5,sin(a)*rr)end Shapes
.Infinity=function(aC,aD,aG,aH,aI,aJ)a=baseAngle(aC,aD,aG,aJ)d=1+sin(a)^2 return Vector3.new((aH*cos(a))/d,aI+sin(aG*aJ+
aC*0.2)*1.2,(aH*sin(a)*cos(a))/d)end Shapes.Heart=function(aC,aD,aG,aH,aI,aJ)a=baseAngle(aC,aD,aG,aJ)pulse=1+0.12*sin(aG
*aJ*2)scale=(aH/15)*pulse x=16*sin(a)^3 z=-(13*cos(a)-5*cos(2*a)-2*cos(3*a)-cos(4*a))return Vector3.new(x*scale,aI+sin(
aG*aJ*2)*0.5,z*scale)end Shapes['DNA Helix']=function(aC,aD,aG,aH,aI,aJ)y=(aC/aD)*aH*2-aH a=baseAngle(aC,aD,aG,aJ)+y*0.5
side=(aC%2==0)and 1 or-1 return Vector3.new(cos(a)*aH*side,aI+y,sin(a)*aH*side)end Shapes['Triple Helix']=function(aC,aD
,aG,aH,aI,aJ)y=(aC/aD)*aH*2-aH a=baseAngle(aC,aD,aG,aJ)+y*0.5 phase=(aC%3)*(TAU/3)return Vector3.new(cos(a+phase)*aH,aI+
y,sin(a+phase)*aH)end Shapes.Tornado=function(aC,aD,aG,aH,aI,aJ)y=(aC/aD)*aH*2-aH rr=((y+aH)/(aH*2))*aH+2 a=baseAngle(aC
,aD,aG,aJ)+y*0.5 return Vector3.new(cos(a)*rr,aI+y,sin(a)*rr)end Shapes['Galaxy Spiral']=function(aC,aD,aG,aH,aI,aJ)frac
=aC/aD a=frac*12+aG*aJ return Vector3.new(cos(a)*aH*(frac^1.5),aI+sin(aG*aJ*2+frac*10),sin(a)*aH*(frac^1.5))end Shapes[
'Fibonacci Spiral']=function(aC,aD,aG,aH,aI,aJ)frac=aC/aD angle=frac*TAU*6.18+aG*aJ dist=frac*aH wave=sin(aG*aJ+frac*TAU
)*2 return Vector3.new(cos(angle)*dist,aI+wave,sin(angle)*dist)end Shapes['Spring Coil']=function(aC,aD,aG,aH,aI,aJ)frac
=aC/aD a=frac*TAU*5+aG*aJ y=frac*aH*2-aH return Vector3.new(cos(a)*aH*0.5,aI+y,sin(a)*aH*0.5)end Shapes['Vortex Funnel']
=function(aC,aD,aG,aH,aI,aJ)frac=aC/aD a=frac*TAU*4+aG*aJ rr=frac*aH y=(1-frac)*aH*1.5 return Vector3.new(cos(a)*rr,aI+y
,sin(a)*rr)end Shapes.Seashell=function(aC,aD,aG,aH,aI,aJ)frac=aC/aD u=frac*TAU*3+aG*aJ v=frac*TAU growth=math.exp(0.15*
u)x=growth*cos(u)*(1+cos(v))*aH*0.15 y=growth*sin(u)*(1+cos(v))*aH*0.15 z=growth*sin(v)*aH*0.15 return Vector3.new(x,aI+
y,z)end Shapes.Box=function(aC,aD,aG,aH,aI,aJ)face=aC%6 a=baseAngle(aC,aD,aG,aJ)wb=sin(aG*aJ+aC)*0.3 s=aH edges={Vector3
.new(s,sin(a)*s,cos(a)*s),Vector3.new(-s,sin(a)*s,cos(a)*s),Vector3.new(sin(a)*s,s,cos(a)*s),Vector3.new(sin(a)*s,-s,
cos(a)*s),Vector3.new(sin(a)*s,cos(a)*s,s),Vector3.new(sin(a)*s,cos(a)*s,-s)}v=edges[face+1]return Vector3.new(v.X,v.Y+
aI+wb,v.Z)end Shapes['Rounded Cube']=function(aC,aD,aG,aH,aI,aJ)a=baseAngle(aC,aD,aG,aJ)x=pow(cos(a)*aH,0.85)y=pow(sin(a
*1.3)*aH*0.6,0.85)z=pow(cos(a*0.7)*aH,0.85)return Vector3.new(x,y+aI,z)end Shapes.Torus=function(aC,aD,aG,aH,aI,aJ)a=
baseAngle(aC,aD,aG,aJ)b=baseAngle(aC,aD,aG*3,aJ)R=aH rt=aH*0.35 return Vector3.new((R+rt*cos(b))*cos(a),rt*sin(b)+aI,(R+
rt*cos(b))*sin(a))end Shapes['Torus Knot']=function(aC,aD,aG,aH,aI,aJ)p,q=2,3 a=baseAngle(aC,aD,aG,aJ)phi=a*q R=aH*(1+
0.35*cos(p*a))return Vector3.new(R*cos(phi),aH*0.35*sin(p*a)+aI,R*sin(phi))end Shapes['M\u{f6}bius Strip']=function(aC,
aD,aG,aH,aI,aJ)frac=aC/aD u=frac*TAU+aG*aJ v=(aC%2==0)and 0.5 or-0.5 w=aH*0.35 return Vector3.new((aH+w*v*cos(u/2))*cos(
u),w*v*sin(u/2)+aI,(aH+w*v*cos(u/2))*sin(u))end Shapes.Saturn=function(aC,aD,aG,aH,aI,aJ)spin=aG*aJ if aC<=aD*0.6 then
phi=math.acos(1-2*(aC/(aD*0.6)))theta=aC*math.pi*(3-sqrt(5))+spin pr=aH*0.45 return Vector3.new(cos(theta)*sin(phi)*pr,
cos(phi)*pr+aI,sin(theta)*sin(phi)*pr)else idx=aC-aD*0.6 c=aD-aD*0.6 a=(idx/c)*TAU+spin rr=aH*1.2 return Vector3.new(
cos(a)*rr,sin(a)*rr*sin(math.rad(25))+aI,sin(a)*rr*cos(math.rad(25)))end end Shapes['Ice Cube']=function(aC,aD,aG,aH,aI,
aJ)face=aC%6 frac=(aC%math.max(math.floor(aD/6),1))/math.max(math.floor(aD/6),1)a=frac*TAU s=aH*0.8 crack=sin(aG*aJ*2+aC
*0.5)*0.4 pts={Vector3.new(s+crack,cos(a)*s,sin(a)*s),Vector3.new(-s-crack,cos(a)*s,sin(a)*s),Vector3.new(cos(a)*s,s+
crack,sin(a)*s),Vector3.new(cos(a)*s,-s-crack,sin(a)*s),Vector3.new(cos(a)*s,sin(a)*s,s+crack),Vector3.new(cos(a)*s,sin(
a)*s,-s-crack)}v=pts[face+1]return Vector3.new(v.X,v.Y+aI,v.Z)end Shapes['Black Hole']=function(aC,aD,aG,aH,aI,aJ)frac=
aC/aD a=frac*TAU*3+aG*aJ dist=aH*(1-frac*0.7)suck=sin(aG*aJ*2)*0.5 return Vector3.new(cos(a)*dist,aI+suck*frac*3,sin(a)*
dist)end Shapes['Hyper Sphere']=function(aC,aD,aG,aH,aI,aJ)phi=math.acos(1-2*(aC/aD))theta=aC*math.pi*(3-sqrt(5))+aG*aJ
pulse=aH+sin(aG*aJ+aC*0.3)*aH*0.25 return Vector3.new(cos(theta)*sin(phi)*pulse,cos(phi)*pulse+aI,sin(theta)*sin(phi)*
pulse)end Shapes['Orbital Rings']=function(aC,aD,aG,aH,aI,aJ)ring=aC%3 a=baseAngle(aC,aD,aG,aJ)tilts={math.rad(0),math.
rad(60),math.rad(-60)}tilt=tilts[ring+1]return Vector3.new(cos(a)*aH,sin(a)*aH*sin(tilt)+aI,sin(a)*aH*cos(tilt))end
Shapes['Lightning Tornado']=function(aC,aD,aG,aH,aI,aJ)y=(aC/aD)*aH*2-aH rr=((y+aH)/(aH*2))*aH+2 bolt=sin(aC*7.3+aG*aJ*5
)*3 a=baseAngle(aC,aD,aG,aJ)+y*0.5 return Vector3.new(cos(a)*rr+bolt,aI+y,sin(a)*rr+bolt)end Shapes['Plasma Cage']=
function(aC,aD,aG,aH,aI,aJ)phi=math.acos(1-2*(aC/aD))theta=aC*math.pi*(3-sqrt(5))arc=sin(aG*aJ*2+phi*6)*aH*0.2 rr=aH+arc
return Vector3.new(cos(theta)*sin(phi)*rr,cos(phi)*rr+aI,sin(theta)*sin(phi)*rr)end Shapes.Wormhole=function(aC,aD,aG,aH
,aI,aJ)frac=aC/aD a=frac*TAU+aG*aJ y=(frac-0.5)*aH*3 neck=aH*(1-math.exp(-((y/(aH*0.8))^2)))+0.5 return Vector3.new(cos(
a)*neck,aI+y,sin(a)*neck)end Shapes['Quantum Lattice']=function(aC,aD,aG,aH,aI,aJ)grid=math.ceil(aD^(0.3333333333333333)
)gx=aC%grid gy=math.floor(aC/grid)%grid gz=math.floor(aC/(grid*grid))%grid scale=aH*2/grid jitter=sin(aG*aJ+aC*1.7)*0.3
return Vector3.new((gx-grid/2)*scale+jitter,(gy-grid/2)*scale+aI,(gz-grid/2)*scale+jitter)end Shapes['Neutron Burst']=
function(aC,aD,aG,aH,aI,aJ)phi=math.acos(1-2*(aC/aD))theta=aC*math.pi*(3-sqrt(5))burst=aH*abs(sin(aG*aJ+aC*0.4))return
Vector3.new(cos(theta)*sin(phi)*burst,cos(phi)*burst+aI,sin(theta)*sin(phi)*burst)end Shapes['Arc Discharge']=function(
aC,aD,aG,aH,aI,aJ)frac=aC/aD a=frac*TAU arc=sin(frac*math.pi)*aH zap=sin(aG*aJ*8+aC*2.1)*aH*0.15 return Vector3.new(cos(
a)*aH+zap,aI+arc+zap,sin(a)*aH+zap)end Shapes['Event Horizon']=function(aC,aD,aG,aH,aI,aJ)frac=aC/aD a=frac*TAU*5+aG*aJ
dist=aH*(0.2+0.8*abs(sin(frac*math.pi)))warp=sin(aG*aJ*3+frac*TAU)*aH*0.1 return Vector3.new(cos(a)*dist,aI+warp,sin(a)*
dist)end Shapes.Butterfly=function(aC,aD,aG,aH,aI,aJ)a=baseAngle(aC,aD,aG,aJ*0.5)ex=math.exp(cos(a))-2*cos(4*a)-sin(a/12
)^5 rr=ex*aH*0.4 return Vector3.new(cos(a)*rr,aI+sin(aG*aJ+aC*0.1)*1.5,sin(a)*rr)end Shapes['Rose Petal']=function(aC,aD
,aG,aH,aI,aJ)k=5 a=baseAngle(aC,aD,aG,aJ*0.3)rr=aH*cos(k*a)return Vector3.new(cos(a)*rr,aI+sin(aG*aJ+aC*0.2)*2,sin(a)*rr
)end Shapes.Snowflake=function(aC,aD,aG,aH,aI,aJ)arm=aC%6 frac=(aC%math.max(math.floor(aD/6),1))/math.max(math.floor(aD/
6),1)baseA=arm*(TAU/6)+aG*aJ*0.2 dist=frac*aH branch=sin(frac*math.pi*4)*aH*0.2 return Vector3.new(cos(baseA)*dist+cos(
baseA+math.pi/2)*branch,aI+cos(aG*aJ)*0.5,sin(baseA)*dist+sin(baseA+math.pi/2)*branch)end Shapes['Crystal Bloom']=
function(aC,aD,aG,aH,aI,aJ)petals=8 arm=aC%petals frac=(aC%math.max(math.floor(aD/petals),1))/math.max(math.floor(aD/
petals),1)baseA=arm*(TAU/petals)+aG*aJ*0.3 dist=frac*aH lift=sin(frac*math.pi)*aH*0.5 return Vector3.new(cos(baseA)*dist
,aI+lift,sin(baseA)*dist)end Shapes['Vine Wrap']=function(aC,aD,aG,aH,aI,aJ)frac=aC/aD turns=4 a=frac*TAU*turns+aG*aJ y=
frac*aH*2-aH bulge=1+0.3*sin(frac*TAU*turns*2)rr=aH*0.5*bulge return Vector3.new(cos(a)*rr,aI+y,sin(a)*rr)end Shapes[
'Flower Bloom']=function(aC,aD,aG,aH,aI,aJ)petals=6 a=baseAngle(aC,aD,aG,aJ*0.4)rr=aH*abs(cos(petals*a*0.5))bloom=1+0.2*
sin(aG*aJ*2)return Vector3.new(cos(a)*rr*bloom,aI+sin(aG*aJ+a)*1.5,sin(a)*rr*bloom)end Shapes.Jellyfish=function(aC,aD,
aG,aH,aI,aJ)bell=math.floor(aD*0.4)if aC<=bell then phi=(aC/bell)*math.pi*0.5 theta=baseAngle(aC,bell,aG,aJ)pulse=aH*(1+
0.2*sin(aG*aJ*3))return Vector3.new(cos(theta)*sin(phi)*pulse,cos(phi)*pulse*0.5+aI,sin(theta)*sin(phi)*pulse)else idx=
aC-bell c=aD-bell a=(idx/c)*TAU+aG*aJ drop=(idx/c)*aH*1.5 wave=sin(aG*aJ*4+a*3)*aH*0.15 return Vector3.new(cos(a)*aH*0.2
+wave,aI-drop,sin(a)*aH*0.2+wave)end end Shapes['Coral Reef']=function(aC,aD,aG,aH,aI,aJ)a=baseAngle(aC,aD,aG,aJ*0.2)
frac=aC/aD y=sin(frac*TAU*3+aG*aJ)*aH*0.8 rr=aH*(0.5+0.5*sin(frac*TAU*5))sway=sin(aG*aJ+frac*12)*aH*0.1 return Vector3.
new(cos(a)*rr+sway,aI+y,sin(a)*rr+sway)end Shapes['Volcano Burst']=function(aC,aD,aG,aH,aI,aJ)a=baseAngle(aC,aD,aG,aJ)
burst=abs(sin(aG*aJ+aC))*aH*2 return Vector3.new(cos(a)*burst,aI+burst,sin(a)*burst)end Shapes['Cosmic Explosion']=
function(aC,aD,aG,aH,aI,aJ)a=baseAngle(aC,aD,aG,aJ)wave=abs(sin(aG*aJ*2-aC*0.1))return Vector3.new(cos(a)*aH*wave*3,aI+
wave*5,sin(a)*aH*wave*3)end Shapes.Supernova=function(aC,aD,aG,aH,aI,aJ)phi=math.acos(1-2*(aC/aD))theta=aC*math.pi*(3-
sqrt(5))+aG*aJ blast=aH*(1+sin(aG*aJ*0.5)*0.5)eject=sin(phi*3+aG*aJ*4)*aH*0.3 return Vector3.new(cos(theta)*sin(phi)*(
blast+eject),cos(phi)*(blast+eject)+aI,sin(theta)*sin(phi)*(blast+eject))end Shapes['Firework Pop']=function(aC,aD,aG,aH
,aI,aJ)phi=math.acos(1-2*(aC/aD))theta=aC*math.pi*(3-sqrt(5))trail=abs(sin(aG*aJ*3+aC*0.7))rr=aH*trail sparkle=sin(aG*aJ
*10+aC)*0.8 return Vector3.new(cos(theta)*sin(phi)*rr,cos(phi)*rr+aI+sparkle,sin(theta)*sin(phi)*rr)end Shapes.Shockwave
=function(aC,aD,aG,aH,aI,aJ)a=baseAngle(aC,aD,aG,aJ)ring=sin(aG*aJ*3)*aH y=cos(aG*aJ*2+aC*0.2)*aH*0.3 return Vector3.
new(cos(a)*ring,aI+y,sin(a)*ring)end Shapes.Lissajous=function(aC,aD,aG,aH,aI,aJ)a=baseAngle(aC,aD,aG,aJ)p,q=3,2 d=math.
pi/2 return Vector3.new(aH*sin(p*a+d),aI+aH*0.4*sin(aG*aJ+aC*0.1),aH*sin(q*a))end Shapes.Hypotrochoid=function(aC,aD,aG,
aH,aI,aJ)R,rd,d=aH,aH*0.4,aH*0.7 a=baseAngle(aC,aD,aG,aJ)x=(R-rd)*cos(a)+d*cos((R-rd)/rd*a)z=(R-rd)*sin(a)-d*sin((R-rd)/
rd*a)return Vector3.new(x*0.7,aI+sin(aG*aJ+aC*0.2)*2,z*0.7)end Shapes.Epitrochoid=function(aC,aD,aG,aH,aI,aJ)R,rd,d=aH*
0.6,aH*0.35,aH*0.5 a=baseAngle(aC,aD,aG,aJ)x=(R+rd)*cos(a)-d*cos((R+rd)/rd*a)z=(R+rd)*sin(a)-d*sin((R+rd)/rd*a)return
Vector3.new(x*0.7,aI+sin(aG*aJ+aC*0.15)*2,z*0.7)end Shapes.Trefoil=function(aC,aD,aG,aH,aI,aJ)a=baseAngle(aC,aD,aG,aJ)x=
sin(a)+2*sin(2*a)y=cos(a)-2*cos(2*a)z=-sin(3*a)sc=aH/3 return Vector3.new(x*sc,y*sc+aI,z*sc)end Shapes[
'Klein Bottle Slice']=function(aC,aD,aG,aH,aI,aJ)u=baseAngle(aC,aD,aG,aJ)v=baseAngle(aC,math.max(aD,1),aG*2,aJ)a=aH*0.3
x=(a+a*cos(v))*cos(u)y=(a+a*cos(v))*sin(u)z=a*sin(v)+sin(aG*aJ+aC*0.2)*2 return Vector3.new(x,y+aI,z)end Shapes.
Harmonograph=function(aC,aD,aG,aH,aI,aJ)frac=aC/aD decay=math.exp(-frac*0.5)f1,f2,f3,f4=3,2,3,2 p1,p2=math.pi/4,math.pi/
6 a=frac*TAU*8+aG*aJ x=aH*decay*(sin(f1*a+p1)+sin(f2*a))z=aH*decay*(sin(f3*a+p2)+sin(f4*a))return Vector3.new(x*0.5,aI+
sin(aG*aJ+frac*12)*1.5,z*0.5)end function GetShapeOffset(aC,aD,aG,aH)fn=Shapes[aH.CurrentShape]if fn then return fn(aC,
aD,aG,aH.Radius,aH.Height,aH.Speed)end a=(aC/aD)*TAU+aG*aH.Speed return Vector3.new(cos(a)*aH.Radius,aH.Height,sin(a)*aH
.Radius)end SparklerGroup=Tabs.ToyTab:AddLeftGroupbox('Sparkler Auras','flame')SparklerGroup:AddButton(
'Synchronize All Sparklers',function()for aC,aD in ipairs(workspace:GetDescendants())do if aD.Name:find(
'FireworkSparkler')then SetupPhysics(aD,activeSparklers)end end end)SparklerGroup:AddButton(
'Unsynchronize All Sparklers',function()activeSparklers={}end)SparklerGroup:AddSlider('HeightSlider',{Text=
'Height Offset',Default=5,Min=-20,Max=150,Rounding=0})Options.HeightSlider:OnChanged(function()sparklerConfig.Height=
Options.HeightSlider.Value end)SparklerGroup:AddSlider('RadiusSlider',{Text='Shape Radius',Default=15,Min=2,Max=100,
Rounding=0})Options.RadiusSlider:OnChanged(function()sparklerConfig.Radius=Options.RadiusSlider.Value end)SparklerGroup:
AddSlider('SpeedSlider',{Text='Rotation Speed',Default=2,Min=0,Max=20,Rounding=1})Options.SpeedSlider:OnChanged(function
()sparklerConfig.Speed=Options.SpeedSlider.Value end)SparklerGroup:AddDropdown('ShapeDropdown',{Values=shapeOptions,
Default='Planet',Multi=false,Text='Select Shape'})Options.ShapeDropdown:OnChanged(function()sparklerConfig.CurrentShape=
Options.ShapeDropdown.Value end)RunService.RenderStepped:Connect(function()char=LocalPlayer.Character targetRoot=char
and char:FindFirstChild('HumanoidRootPart')if not targetRoot then return end t=tick()prediction=targetRoot.
AssemblyLinearVelocity*0.12 rot=targetRoot.CFrame.Rotation for aC=#activeSparklers,1,-1 do obj=activeSparklers[aC]if obj
and obj.Parent then main=obj:IsA('BasePart')and obj or obj.PrimaryPart bp=main and main:FindFirstChild('ToyBodyPos')bg=
main and main:FindFirstChild('ToyBodyGyro')if bp and bg then offset=GetShapeOffset(aC,#activeSparklers,t,sparklerConfig)
bp.Position=targetRoot.Position+prediction+(rot*offset)bg.CFrame=CFrame.new(main.Position,targetRoot.Position+prediction
)end else table.remove(activeSparklers,aC)end end end)local aC=Tabs.ToyTab:AddLeftGroupbox('Coconuts','burger')aC:
AddDivider()aC:AddCheckbox('CoconutOrbit',{Text='Coconut Penis',Tooltip='Makes a dick out of coconuts',Default=false})
Toggles.CoconutOrbit:OnChanged(function(aD)CoconutEnabled=aD if not aD then return end task.spawn(function()local aG,aH=
game:GetService('Players').LocalPlayer,game:GetService('ReplicatedStorage')local aI,aJ,aK,aL,aM=aH.GrabEvents.
SetNetworkOwner,aH.MenuToys.SpawnToyRemoteFunction,aH.MenuToys.DestroyToy,{[1]=CFrame.new(-0.45,-1.2,-0.7),[2]=CFrame.
new(0.45,-1.2,-0.7),[3]=CFrame.new(0,-1,0.8)},{}while CoconutEnabled do local aN=aG.Character local aO=aN and aN:
FindFirstChild('HumanoidRootPart')if not aO then task.wait(0.1)continue end local aP=workspace:FindFirstChild(aG.Name..
'SpawnedInToys')if not aP then task.wait(0.1)continue end local aQ,aR=Options.CoconutAmount.Value,Options.CoconutDamping
.Value table.clear(aM)for aS,aT in ipairs(aP:GetChildren())do if aT.Name=='FoodCoconut'then table.insert(aM,aT)end end
if#aM<(aQ+2)then task.spawn(function()aJ:InvokeServer('FoodCoconut',aO.CFrame*CFrame.new(-5,0,10),Vector3.zero)end)end
for aS,aT in ipairs(aM)do local aU,P=aT:FindFirstChild('SoundPart'),aT:FindFirstChild('HoldPart')local Q,S=P and P:
FindFirstChild('RigidConstraint'),aU and aU:FindFirstChild('PartOwner')if aU and P and Q then if S and S.Value==aG.Name
then if aS<=2 then aU.CFrame=aO.CFrame*aL[aS]*CFrame.new(aO.Velocity/aR)else aU.CFrame=aO.CFrame*aL[3]*CFrame.new(aO.
Velocity/aR)*CFrame.new(0,0,aL[3].Z-(aS+0.2))end aU.Velocity=Vector3.zero else aI:FireServer(aU,aU.CFrame)end if Q.
Attachment1 then aK:FireServer(aT)end for T,U in ipairs(aT:GetChildren())do if U:IsA('BasePart')then U.CanCollide=false
U.CanQuery=false if U.Transparency~=1 then U.Transparency=0 end end end end end task.wait(0.01)end end)end)aC:
AddDivider()aC:AddCheckbox('CoconutBodyParts',{Text="Coconut boob's and ass",Tooltip=
[[Places coconuts on your chest and ass (making boobs and ass sob)]],Default=false})Toggles.CoconutBodyParts:OnChanged(
function(aD)CoconutBodyEnabled=aD if not aD then return end task.spawn(function()local aG,aH=game:GetService('Players').
LocalPlayer,game:GetService('ReplicatedStorage')local aI,aJ,aK,aL=aH.GrabEvents.SetNetworkOwner,aH.MenuToys.
SpawnToyRemoteFunction,aH.MenuToys.DestroyToy,{}while CoconutBodyEnabled do local aM=aG.Character local aN=aM and aM:
FindFirstChild('HumanoidRootPart')if not aN then task.wait(0.1)continue end local aO=workspace:FindFirstChild(aG.Name..
'SpawnedInToys')if not aO then task.wait(0.1)continue end table.clear(aL)for aP,aQ in ipairs(aO:GetChildren())do if aQ.
Name=='FoodCoconut'then table.insert(aL,aQ)end end if#aL<4 then for aP=1,4-#aL do task.spawn(function()aJ:InvokeServer(
'FoodCoconut',aN.CFrame*CFrame.new(-5,0,10),Vector3.zero)end)end end for aP=1,math.min(4,#aL)do local aQ=aL[aP]local aR,
aS=aQ:FindFirstChild('SoundPart'),aQ:FindFirstChild('HoldPart')local aT,aU=aS and aS:FindFirstChild('RigidConstraint'),
aR and aR:FindFirstChild('PartOwner')if aR and aS and aT then if aU and aU.Value==aG.Name then local P if aP==1 then P=
aN.CFrame*CFrame.new(-0.4,0.3,-0.55)elseif aP==2 then P=aN.CFrame*CFrame.new(0.4,0.3,-0.55)elseif aP==3 then P=aN.CFrame
*CFrame.new(-0.35,-1.1,0.45)else P=aN.CFrame*CFrame.new(0.35,-1.1,0.45)end aR.CFrame=P aR.Velocity=Vector3.zero else aI:
FireServer(aR,aR.CFrame)end if aT.Attachment1 then aK:FireServer(aQ)end for P,Q in ipairs(aQ:GetChildren())do if Q:IsA(
'BasePart')then Q.CanCollide=false Q.CanQuery=false if Q.Transparency~=1 then Q.Transparency=0 end end end end end task.
wait(0.01)end end)end)aC:AddDivider()aC:AddSlider('CoconutAmount',{Text='Coconut Amount',Default=10,Min=3,Max=25,
Rounding=0})aC:AddSlider('CoconutDamping',{Text='Damping',Default=100,Min=1,Max=500,Rounding=0})do local aD,aG=Tabs.
TpTab:AddLeftGroupbox('Teleport To Location','plane'),Tabs.TpTab:AddRightGroupbox('Auto Claim Plot','wind')PLOT_NAMES={[
1]='Pink House',[2]='Spooky House',[3]='Blue House',[4]='Green House',[5]='Chinese House'}getgenv().SelectedPlot=nil
getgenv().ClaimSelectedPlot=false getgenv().MyPlotClaimStart={}PlotClaimTimes={}PlotInfoLabel=aG:AddLabel(
'No plot selected')PlotInsideLabel=aG:AddLabel('Inside Plot: N/A')PlotInsideCountLabel=aG:AddLabel('Players Inside: 0')
PlotMyTimeLabel=aG:AddLabel('Your Ownership: N/A')function FormatTime(aH)aH=math.floor(aH)local aI,aJ,aK=math.floor(aH/
3600),math.floor((aH%3600)/60),aH%60 if aI>0 then return string.format('%02ih %02im %02is',aI,aJ,aK)elseif aJ>0 then
return string.format('%02im %02is',aJ,aK)else return string.format('%02is',aK)end end function IsPointInsidePart(aH,aI)
local aJ,aK=aH.CFrame:PointToObjectSpace(aI),aH.Size*0.5 return math.abs(aJ.X)<=aK.X and math.abs(aJ.Y)<=aK.Y and math.
abs(aJ.Z)<=aK.Z end function GetPlotIndex(aH)for aI,aJ in ipairs(workspace.Plots:GetChildren())do if aJ==aH then return
aI end end return nil end function GetPlayersInPlot(aH)local aI=aH:FindFirstChild('Region')or aH:FindFirstChild('Zone')
or aH:FindFirstChild('Base')or aH:FindFirstChildWhichIsA('BasePart')if not aI then return{}end local aJ={}for aK,aL in
ipairs(Players:GetPlayers())do local aM=aL.Character local aN=aM and aM:FindFirstChild('HumanoidRootPart')if aN and
IsPointInsidePart(aI,aN.Position)then table.insert(aJ,aL)end end return aJ end function UpdatePlotInfo()local aH=
getgenv().SelectedPlot if not aH then PlotInfoLabel:SetText('No plot selected')PlotInsideLabel:SetText(
'Inside Plot: N/A')PlotInsideCountLabel:SetText('Players Inside: 0')PlotMyTimeLabel:SetText('Your Ownership: N/A')return
end for aI,aJ in ipairs(workspace.Plots:GetChildren())do local aK=GetPlotIndex(aJ)if not aK then continue end local aL=
PLOT_NAMES[aK]or('Plot '..aK)if aH~=aL then continue end local aM=aJ.PlotSign.ThisPlotsOwners local aN,aO,aP,aQ,aR=aM:
GetChildren(),{},0,0,false for aS,aT in ipairs(aN)do if aT.Value and aT.Value~=''then aP=aP+1 if aT.Value==LocalPlayer.
Name then aR=true end local aU,P=Players:FindFirstChild(aT.Value),aT.Value if aU and aU.DisplayName~=aU.Name then P=aU.
DisplayName..' (@'..aU.Name..')'end table.insert(aO,P)if not PlotClaimTimes[aT.Value]then PlotClaimTimes[aT.Value]=tick(
)end local Q=tick()-PlotClaimTimes[aT.Value]if Q>aQ then aQ=Q end end end if aR then if not getgenv().MyPlotClaimStart[
aH]then getgenv().MyPlotClaimStart[aH]=tick()end else getgenv().MyPlotClaimStart[aH]=nil end local aS,aT=getgenv().
MyPlotClaimStart[aH]and(tick()-getgenv().MyPlotClaimStart[aH])or nil,GetPlayersInPlot(aJ)local aU,P=#aT,{}for Q,S in
ipairs(aT)do table.insert(P,S.DisplayName or S.Name)end PlotInfoLabel:SetText('Selected Plot: '..aL)PlotInsideLabel:
SetText('Inside Plot: '..(aU>0 and table.concat(P,', ')or'None'))PlotInsideCountLabel:SetText('Players Inside: '..aU)
PlotMyTimeLabel:SetText('Your Ownership: '..(aS and FormatTime(aS)or'N/A'))return end end function GetPlotData()local aH
,aI={},workspace:FindFirstChild('Plots')if not aI then return aH end for aJ,aK in ipairs(aI:GetChildren())do local aL=
PLOT_NAMES[aJ]or('Plot '..aJ)table.insert(aH,aL)end return aH end local aH task.defer(function()aH=aG:AddDropdown(
'PlotSelector',{Text='Select Plot',Values=GetPlotData(),Multi=false,Default=nil,Tooltip='Choose plot',Callback=function(
aI)getgenv().SelectedPlot=aI UpdatePlotInfo()end})end)aG:AddButton({Text='Refresh Plots',Tooltip='Update plots',Func=
function()if aH then aH:SetValues(GetPlotData())end UpdatePlotInfo()end})aG:AddCheckbox('ClaimSelectedPlot',{Text=
'Claim Selected Plot',Tooltip='Claims chosen plot',Default=false,Callback=function(aI)getgenv().ClaimSelectedPlot=aI end
})task.spawn(function()while true do task.wait(1)UpdatePlotInfo()end end)task.spawn(function()while true do task.wait(
0.1)if not getgenv().ClaimSelectedPlot then continue end if not getgenv().SelectedPlot then continue end local aI=
LocalPlayer.Character local aJ=aI and aI:FindFirstChild('HumanoidRootPart')if not aJ then continue end local aK,aL=aJ.
CFrame,aJ.AssemblyLinearVelocity for aM,aN in ipairs(workspace.Plots:GetChildren())do local aO=PLOT_NAMES[aM]or('Plot '
..aM)if getgenv().SelectedPlot==aO then local aP=aN.PlotSign.ThisPlotsOwners if#aP:GetChildren()<=0 then local aQ=aN.
PlotSign.Sign.Plus.PlusGrabPart while#aP:GetChildren()<=0 and getgenv().ClaimSelectedPlot do if LocalPlayer.Character
and LocalPlayer.Character:FindFirstChild('HumanoidRootPart')then aJ.CFrame=aQ.CFrame+Vector3.new(10,10,10)
ReplicatedStorage.GrabEvents.SetNetworkOwner:FireServer(aQ,aQ.CFrame)end task.wait(0.1)end aJ.CFrame=aK aJ.
AssemblyLinearVelocity=aL end break end end end end)local aI=false aD:AddDropdown('PlaceSelect',{Values={'Spawn',
'SpawnCave','GreenHouse','PinkHouse','Barn','BlueHouse','ChineseHouse','PurpleHouse','Factory','OtherGreenHouse',
'BigCave','TrainCave','IslandCave','ChineseRoof','UfoCave','Prison','GoodPrison','RuhubsDogAhhPrison',
'ExtremelyGoodPrison','BlueHouseSlot','SpawnSlot','HauntedSlot','RandomSlot','BeachSlot'},Default='Spawn',Text=
'Select Place',Tooltip='Choose what place you want to teleport to',Callback=function(aJ)_G.PlaceToTeleport=aJ end})aD:
AddCheckbox('LoopTeleportToggle',{Text='Loop Teleport',Default=false,Tooltip=
'Continuously teleport to the selected place with no delay',Callback=function(aJ)aI=aJ if aJ then task.spawn(function()
while aI do local aK=placeLocations[_G.PlaceToTeleport]if aK then TeleportPlayer(aK)end task.wait()end end)end end})do
local aJ,aK,aL,aM=workspace:WaitForChild('Slots'),nil,nil,nil pcall(function()aK=(aJ:FindFirstChild('Slots')and true)and
aJ or aJ local aN=aJ:FindFirstChild('Slots')or aJ local aO=aN:FindFirstChild('Screen')aL=aO and aO:FindFirstChild(
'SlotGui')aM=aL and aL:FindFirstChild('TimeLeftFrame')and aL.TimeLeftFrame:FindFirstChild('TimeText')end)if not aM then
for aN,aO in ipairs(aJ:GetDescendants())do if aO.Name=='TimeText'and aO:IsA('TextLabel')then aM=aO break end end end
local aN,aO,aP,aQ,aR='0:00',false,nil,nil,Tabs.TpTab:AddLeftGroupbox('Farm Coins','boxes')local aS=aR:AddLabel(
'<b>Time:</b> '..(aM and aM.Text or'N/A'))task.spawn(function()while task.wait(1)do if aM and aS then pcall(function()aS
:SetText('Time: '..aM.Text)end)end end end)local aT=function()local aT=LocalPlayer.Character if aT and aT:
FindFirstChild('HumanoidRootPart')then return aT end return nil end local aU=function(aU,P)local Q=(P-aU)if Q.Magnitude<
0.01 then return CFrame.new(aU)end Q=Q.Unit local S=Q:Cross(Vector3.new(0,1,0))if S.Magnitude<0.01 then S=Vector3.new(1,
0,0)end S=S.Unit local T=S:Cross(Q)return CFrame.fromMatrix(aU,S,T)end local P=function(P,Q)if not P or not Q then
return end if(Q.Position-P.Position).Magnitude>35 then return end pcall(function()ReplicatedStorage.GrabEvents.
SetNetworkOwner:FireServer(P,aU(Q.Position,P.Position))end)end local Q=function()local Q={}for S,T in ipairs(aJ:
GetDescendants())do if T.Name=='Handle'and T:IsA('BasePart')then local U=T.Parent if U and U.Name=='SlotHandle'then
table.insert(Q,T)end end end if#Q==0 then pcall(function()local S=workspace.Slots.Slots.SlotHandle.Handle if S then
table.insert(Q,S)end end)end return Q end local S=function(S,T)if not S or not T then return end T.CFrame=S.CFrame*
CFrame.new(0,5,0)task.wait(0.1)S.CanCollide=false for U=1,6 do if not aO then break end P(S,T)T.CFrame=S.CFrame*CFrame.
new(0,5,0)task.wait(0.15)end S.CanCollide=true task.wait(0.1)end local T=function()while aO do task.wait(0.5)local T=aT(
)local U=T and T:FindFirstChild('HumanoidRootPart')if not U then continue end local V=aM and aM.Text if V~=aN then
continue end aQ=U.CFrame local W=Q()if#W==0 then local X,Y=pcall(function()return workspace.Slots.Slots.SlotHandle.
Handle end)if X and Y then W={Y}end end for X,Y in ipairs(W)do if not aO then break end local Z=aT()U=Z and Z:
FindFirstChild('HumanoidRootPart')if U then S(Y,U)end if aM and aM.Text~=aN then break end end local X=aT()local Y=X and
X:FindFirstChild('HumanoidRootPart')if Y and aQ then Y.CFrame=aQ end task.wait(2)end end aR:AddCheckbox('AutoFarmToggle'
,{Text='Auto Spin Slots',Tooltip='When time is 0:00 \u{2014} pulls slot handles (FatalityZ method)',Default=false,
Callback=function(U)aO=U if aP then pcall(task.cancel,aP)aP=nil end if U then aP=task.spawn(T)end end})LocalPlayer.
CharacterAdded:Connect(function(U)U:WaitForChild('HumanoidRootPart',10)if aO then if aP then pcall(task.cancel,aP)end aP
=task.spawn(T)end end)end do tppEnabled=false tppTargets={}tppMethod='Grab'tppDropdown=nil tppCountLabel=nil
tppStatusLabel=nil Players=game:GetService('Players')RunService=game:GetService('RunService')ReplicatedStorage=game:
GetService('ReplicatedStorage')Workspace=game:GetService('Workspace')LocalPlayer=Players.LocalPlayer plr=LocalPlayer HRP
=plr.Character and plr.Character:FindFirstChild('HumanoidRootPart')R=ReplicatedStorage SetNetOwner=R.GrabEvents.
SetNetworkOwner CreateLine=R.GrabEvents.CreateGrabLine DestroyLine=R.GrabEvents.DestroyGrabLine DestroyToy=R.MenuToys.
DestroyToy SpawnToy=R.MenuToys.SpawnToyRemoteFunction StickyEvent=R.PlayerEvents.StickyPartEvent local aJ=function()list
={}for aJ,aK in ipairs(Players:GetPlayers())do if aK~=plr then table.insert(list,aK.DisplayName..' ('..aK.Name..')')end
end if tppDropdown then tppDropdown:SetValues(list)end end local aK=function()task.spawn(function()while tppEnabled do
RunService.RenderStepped:Wait()if#tppTargets==0 then continue end for aK,aL in ipairs(tppTargets)do target=Players:
FindFirstChild(aL)if not target or not target.Character then continue end char=target.Character hrp=char:FindFirstChild(
'HumanoidRootPart')head=char:FindFirstChild('Head')if not hrp or not head then continue end partOwner=head:
FindFirstChild('PartOwner')if not partOwner or partOwner.Value==''or partOwner.Value==plr.Name then continue end
distance=(hrp.Position-HRP.Position).Magnitude if distance<=30 then pcall(function()SetNetOwner:FireServer(hrp,hrp.
CFrame)CreateLine:FireServer(hrp,Vector3.zero,hrp.Position,false)end)weOwnIt=head:FindFirstChild('PartOwner')and head.
PartOwner.Value==plr.Name if weOwnIt then if tppMethod=='Bring'then hrp.CFrame=HRP.CFrame*CFrame.new(0,5,0)hrp.
AssemblyLinearVelocity=Vector3.zero hrp.AssemblyAngularVelocity=Vector3.zero end pcall(function()DestroyLine:FireServer(
hrp)end)end else saved=HRP.CFrame HRP.CFrame=hrp.CFrame*CFrame.new(0,0,2)task.wait(0.05)for aM=1,15 do pcall(function()
SetNetOwner:FireServer(hrp,hrp.CFrame)CreateLine:FireServer(hrp,Vector3.zero,hrp.Position,false)end)task.wait(0.01)end
weOwnIt=head:FindFirstChild('PartOwner')and head.PartOwner.Value==plr.Name if weOwnIt then if tppMethod=='Bring'then hrp
.CFrame=saved*CFrame.new(0,5,0)hrp.AssemblyLinearVelocity=Vector3.zero hrp.AssemblyAngularVelocity=Vector3.zero task.
wait(0.05)end pcall(function()DestroyLine:FireServer(hrp)end)end HRP.CFrame=saved HRP.AssemblyLinearVelocity=Vector3.
zero HRP.AssemblyAngularVelocity=Vector3.zero end end end end)end DefT=Tabs.Defense:AddRightGroupbox(
'Third Party Protection','shield')tppDropdown=DefT:AddDropdown('TPPTarget',{Text='Protect Players',Values={},Default={},
Multi=true,Callback=function(aL)tppTargets={}if typeof(aL)=='table'then for aM,aN in pairs(aL)do if aN==true then name=
aM:match('%((.-)%)')if name then table.insert(tppTargets,name)end end end end end})DefT:AddButton({Text=
'Refresh Players',Func=aJ})DefT:AddButton({Text='Clear All Protected',Func=function()tppTargets={}tppDropdown:SetValue({
})end})tppCountLabel=DefT:AddLabel('Protecting: 0 players')tppStatusLabel=DefT:AddLabel('Status: Disabled')task.spawn(
function()while task.wait(0.5)do if tppCountLabel then tppCountLabel:SetText('Protecting: '..#tppTargets..' players')end
if tppStatusLabel then if not tppEnabled then tppStatusLabel:SetText('Status: Disabled')elseif#tppTargets==0 then
tppStatusLabel:SetText('Status: No Targets')else tppStatusLabel:SetText('Status: Active - '..#tppTargets..' targets')end
end end end)DefT:AddDropdown('TPPMethod',{Text='Method',Values={'Grab','Bring'},Default='Grab',Callback=function(aL)
tppMethod=aL end})DefT:AddCheckbox('TPPEnabled',{Text='Third Party Protection',Default=false,Callback=function(aL)
tppEnabled=aL if aL then aK()end end})DefT:AddCheckbox('TPPAntiKick',{Text='Anti Kick Target(fixing)',Default=false,
Callback=function(aL)if not aL then for aM,aN in ipairs(tppTargets)do target=Players:FindFirstChild(aN)if target then
targetInv=Workspace:FindFirstChild(target.Name..'SpawnedInToys')if targetInv and targetInv:FindFirstChild('TPPShuriken_'
..aN)then pcall(function()DestroyToy:FireServer(targetInv['TPPShuriken_'..aN])end)end end end return end task.spawn(
function()shurikens={}setupDone={}while Toggles.TPPAntiKick.Value do RunService.RenderStepped:Wait()if#tppTargets==0
then continue end for aM,aN in ipairs(tppTargets)do pcall(function()target=Players:FindFirstChild(aN)if not target or
not target.Character then setupDone[aN]=false return end targetChar=target.Character targetHRP=targetChar:
FindFirstChild('HumanoidRootPart')targetFirePart=targetHRP and targetHRP:FindFirstChild('FirePlayerPart')if not
targetHRP or not targetFirePart then return end myChar=plr.Character myHRP=myChar and myChar:FindFirstChild(
'HumanoidRootPart')if myHRP then dist=(targetHRP.Position-myHRP.Position).Magnitude if dist>30 then setupDone[aN]=false
return end end targetInv=Workspace:FindFirstChild(target.Name..'SpawnedInToys')if not targetInv then return end shuName=
'TPPShuriken_'..aN shuData=shurikens[aN]shu=shuData and shuData.toy part=shuData and shuData.part shuExists=shu and shu.
Parent~=nil partExists=part and part.Parent~=nil if setupDone[aN]and(not shuExists or not partExists)then setupDone[aN]=
false shurikens[aN]=nil end if not setupDone[aN]then if not target.CanSpawnToy or not target.CanSpawnToy.Value then
return end local aO=function(aO,aP)if not plr.CanSpawnToy.Value then plr.CanSpawnToy.Changed:Wait()end local aQ,aR inv=
Workspace:FindFirstChild(plr.Name..'SpawnedInToys')aR=inv.ChildAdded:Connect(function(aS)if aS.Name==aO then aQ=aS aR:
Disconnect()end end)task.spawn(function()SpawnToy:InvokeServer(aO,aP,Vector3.new(0,0,0))end)time=tick()+1 repeat task.
wait()until aQ or tick()>time if aQ then return aQ else return nil end end shu=aO('NinjaShuriken',targetHRP.CFrame*
CFrame.new(5,10,20))if not shu then return end shu.Name=shuName part=shu:WaitForChild('StickyPart',0.5)if not part then
return end SetNetOwner:FireServer(part,part.CFrame)task.wait(0.1)StickyEvent:FireServer(part,targetFirePart,CFrame.new(0
,0,0,1,0,0,0,0,-1,0,1,0))shurikens[aN]={toy=shu,part=part}setupDone[aN]=true end if part and part:FindFirstChild(
'PartOwner')and part.PartOwner.Value~=plr.Name then SetNetOwner:FireServer(part,part.CFrame)end for aO,aP in ipairs(
targetInv:GetChildren())do if aP:FindFirstChild('StickyPart')then sp=aP.StickyPart po=sp:FindFirstChild('PartOwner')sw=
sp:FindFirstChild('StickyWeld')if po and po.Value~=''and po.Value~=target.Name then SetNetOwner:FireServer(sp,sp.CFrame)
task.wait()if po.Value==plr.Name then sp.CFrame=CFrame.new(0,0/0,0)end end if sw and sw.Part1 then weldParent=sw.Part1.
Parent if weldParent and weldParent~=targetChar then SetNetOwner:FireServer(sp,sp.CFrame)task.wait()if po and po.Value==
plr.Name then sp.CFrame=CFrame.new(0,0/0,0)end end end end end end)end end for aM,aN in pairs(shurikens)do pcall(
function()if aN.toy then DestroyToy:FireServer(aN.toy)end end)end shurikens={}setupDone={}end)end})aJ()Players.
PlayerAdded:Connect(aJ)Players.PlayerRemoving:Connect(function()task.wait(0.1)aJ()end)end MapLeft=Tabs.MapBreak:
AddLeftGroupbox('Map1','map-pin')MapRight=Tabs.MapBreak:AddRightGroupbox('Map2','pin')do local aJ,aK,aL=game:GetService(
'ReplicatedStorage'),game:GetService('Workspace'),game:GetService('Players')local aM,aN,aO,aP,aQ,aR,aS=aL.LocalPlayer,aJ
:WaitForChild('MenuToys'):WaitForChild('SpawnToyRemoteFunction'),aJ:WaitForChild('MenuToys'):WaitForChild('DestroyToy'),
aJ:WaitForChild('GrabEvents'):WaitForChild('SetNetworkOwner'),aJ:WaitForChild('GrabEvents'):WaitForChild(
'DestroyGrabLine'),aJ:WaitForChild('PlayerEvents'):WaitForChild('StickyPartEvent'),nil getgenv().getCurrentToyFolder2=
getgenv().getCurrentToyFolder2 or function()local aT=aM:FindFirstChild('InPlot')if aT and aT.Value then local aU=aK:
FindFirstChild('Plots')if aU then for P=1,5 do local Q=aU:FindFirstChild('Plot'..P)if Q and Q:FindFirstChild('PlotSign')
then local S=Q.PlotSign for T,U in ipairs({'ThisPlotsOwners','ThisPlotsOwner','ThisPlotOwners'})do local V=S:
FindFirstChild(U)if V then local W=V:IsA('StringValue')and V or V:FindFirstChildOfClass('StringValue')if W and W.Value==
aM.Name then return aK.PlotItems:FindFirstChild('Plot'..P)end end end end end end end return aK:FindFirstChild(aM.Name..
'SpawnedInToys')end local aT=function()return getgenv().getCurrentToyFolder2()end local aU=function(aU)pcall(function()
for P,Q in ipairs(aU:GetDescendants())do if Q:IsA('BasePart')then Q.CanTouch=false Q.CanCollide=false Q.CanQuery=false Q
.Transparency=1 end end end)end local P=function(P,Q,S)P=P or 5 local T=aT()if not T then return nil end local U local V
,W=T.ChildAdded:Connect(function(V)if V.Name=='ToolPencil'and not U and not(S and S[V])then U=V end end),tick()while not
U and(tick()-W<P)do if Q and not Q()then V:Disconnect()return nil end task.wait()end V:Disconnect()return U end local Q=
function()local Q=aM.Character and aM.Character:FindFirstChild('HumanoidRootPart')if not Q then return end task.spawn(
function()local S=Q.CFrame*CFrame.Angles(-0.605224,-0.321753,0)aN:InvokeServer('ToolPencil',S,Vector3.new(0,25.02,0))end
)end local S=function(S)local T,U=aT(),{}if T then for V,W in ipairs(T:GetChildren())do if W.Name=='ToolPencil'then U[W]
=true end end end while S==nil or S()do Q()local V=P(4,S,U)if not V then if S and not S()then return nil end task.wait(
0.25)continue end task.wait(0.08)aU(V)local W=V:FindFirstChild('SoundPart')or V:FindFirstChildOfClass('BasePart')if not
W then pcall(function()aO:FireServer(V)end)task.wait(0.2)continue end aP:FireServer(W,W.CFrame)task.wait(0.12)if S and
not S()then pcall(function()aO:FireServer(V)end)return nil end local X=W:FindFirstChild('PartOwner')if X and X.Value==aM
.Name then return V else pcall(function()aO:FireServer(V)end)task.wait(0.25)end end return nil end local T=function(T)
return T:FindFirstChild('StickyPart')or T:FindFirstChildOfClass('BasePart')end local U=function(U,V,W)local X=T(U)if not
X or not V then return end pcall(function()aQ:FireServer(U:FindFirstChildOfClass('BasePart'))end)pcall(function()aR:
FireServer(table.unpack({[1]=X,[2]=V,[3]=W}))end)end local V=function()local V=aK:FindFirstChild('GrabParts')if not V
then return nil end local W=V:FindFirstChild('GrabPart')if not W then return nil end local X=W:FindFirstChild(
'WeldConstraint')or W:FindFirstChild('Weld')if not X then return nil end return X.Part1 or nil end local W=function()
local W=V()if not W then return end if aS then pcall(function()aS:Destroy()end)aS=nil end local X=Instance.new(
'SelectionBox')X.Adornee=W X.Color3=Color3.fromRGB(0,250,0)X.LineThickness=0.03 X.SurfaceTransparency=0.8 X.
SurfaceColor3=Color3.fromRGB(0,250,0)X.Parent=W aS=X local Y=S(function()return true end)if not Y then pcall(function()X
:Destroy()end)aS=nil return end U(Y,W,CFrame.new(0/0,0/0,0/0))aU(Y)task.delay(3,function()if aS and aS==X then pcall(
function()X:Destroy()end)aS=nil end end)end MapRight:AddButton({Text='Stick to Grabbed Part',Callback=function()task.
spawn(W)end})MapRight:AddButton({Text='Find Closest BaseGround',Callback=function()local X=aM.Character local Y=X and X:
FindFirstChild('HumanoidRootPart')if not Y then return end local Z=aK:FindFirstChild('Map')and aK.Map:FindFirstChild(
'BaseGround')if not Z then return end local _,aV,aW,aX,aY=Z:GetChildren(),nil,nil,math.huge,Y.Position for aZ,a_ in
ipairs(_)do if a_:IsA('BasePart')then local a0=(a_.Position-aY).Magnitude if a0<aX then aX=a0 aV=a_ aW=aZ end end end if
not aV then return end local aZ=aV.Position local a_=string.format(
[=[Name: %s
Index: [%d]
Position: Vector3.new(%.2f, %.2f, %.2f)
Distance: %.2f studs
Access: workspace.Map.BaseGround:GetChildren()[%d]]=]
,aV.Name,aW,aZ.X,aZ.Y,aZ.Z,aX,aW)pcall(function()if setclipboard then setclipboard(a_)elseif toclipboard then
toclipboard(a_)end end)pcall(function()local a0=Instance.new('Highlight')a0.Name='ClosestBaseGroundESP'a0.Adornee=aV a0.
FillColor=Color3.fromRGB(0,255,0)a0.OutlineColor=Color3.fromRGB(255,255,0)a0.FillTransparency=0.4 a0.OutlineTransparency
=0 a0.DepthMode=Enum.HighlightDepthMode.AlwaysOnTop a0.Parent=aV local a1=Instance.new('BillboardGui')a1.Name=
'ClosestBaseGroundLabel'a1.Adornee=aV a1.Size=UDim2.new(0,300,0,80)a1.StudsOffset=Vector3.new(0,5,0)a1.AlwaysOnTop=true
a1.Parent=aV local a2=Instance.new('TextLabel')a2.Size=UDim2.new(1,0,1,0)a2.BackgroundTransparency=1 a2.Text=string.
format('[%d] %s\n%.0f studs away',aW,aV.Name,aX)a2.TextColor3=Color3.fromRGB(0,255,0)a2.TextStrokeTransparency=0 a2.
TextStrokeColor3=Color3.fromRGB(0,0,0)a2.Font=Enum.Font.GothamBold a2.TextScaled=true a2.Parent=a1 local a3,a4,a5=
Instance.new('Attachment',Y),Instance.new('Attachment',aV),Instance.new('Beam')a5.Attachment0=a3 a5.Attachment1=a4 a5.
Color=ColorSequence.new(Color3.fromRGB(0,255,0),Color3.fromRGB(255,255,0))a5.Width0=0.5 a5.Width1=0.5 a5.FaceCamera=true
a5.LightEmission=1 a5.Transparency=NumberSequence.new(0)a5.Parent=Y task.delay(8,function()if a0 then a0:Destroy()end if
a1 then a1:Destroy()end if a5 then a5:Destroy()end if a3 then a3:Destroy()end if a4 then a4:Destroy()end end)end)end})
end do local aJ,aK,aL=game:GetService('Players'),game:GetService('ReplicatedStorage'),game:GetService('Workspace')local
aM,aN,aO,aP,aQ,aR,aS,aT,aU,aV=aJ.LocalPlayer,aK:WaitForChild('MenuToys'):WaitForChild('SpawnToyRemoteFunction'),aK:
WaitForChild('GrabEvents'):WaitForChild('SetNetworkOwner'),aK:WaitForChild('MenuToys'):WaitForChild('DestroyToy'),aK:
WaitForChild('GrabEvents'):WaitForChild('DestroyGrabLine'),aK:WaitForChild('PlayerEvents'):WaitForChild(
'StickyPartEvent'),nil,nil,nil,{}local aW=function(aW)local aX,aY=nil,-math.huge for aZ,a_ in ipairs(aW:GetDescendants()
)do if a_.Name=='GrabbableHitbox'and a_:IsA('BasePart')then local a0=a_.Position.Y if a0>aY then aY=a0 aX=a_ end end end
return aX end local aX=function(aX)aS=aX aT=aX:WaitForChild('HumanoidRootPart')aU=aL:WaitForChild(aM.Name..
'SpawnedInToys')end aX(aM.Character or aM.CharacterAdded:Wait())aM.CharacterAdded:Connect(aX)local aY=function()if not
aT then return end local aY=aT.CFrame*CFrame.Angles(-0.605224,-0.321753,0)task.spawn(function()pcall(function()aN:
InvokeServer('ToolPencil',aY,Vector3.zero)end)end)end local aZ=function(aZ)aZ=aZ or 6 local a_,a0,a1=nil,false,nil if
not aU then return nil end a1=aU.ChildAdded:Connect(function(a2)if a2.Name=='ToolPencil'then a_=a2 a0=true end end)local
a2=tick()while not a0 and tick()-a2<aZ do task.wait()end a1:Disconnect()return a_ end local a_=function(a_)local a0=a_:
FindFirstChild('SoundPart')if not a0 then return end for a1,a2 in ipairs(a0:GetChildren())do if a2:IsA('LinearVelocity')
then a2:Destroy()end end local a1=Instance.new('Attachment')a1.Parent=a0 end local a0=function()if not aT then return
false end aY()local a0=aZ()if not a0 then task.wait(0.2)return false end task.wait(0.19)local a1=a0:FindFirstChild(
'StickyPart')if a1 then a1.CanTouch=false end local a2=a0:FindFirstChild('SoundPart')if not a2 then return false end aO:
FireServer(a2,a2.CFrame)task.wait(0.15)local a3=a2:FindFirstChild('PartOwner')if a3 and a3.Value==aM.Name then table.
insert(aV,a0)a_(a0)return true else pcall(function()aP:FireServer(a0)end)end task.wait(0.2)return false end function
KickPlayerOnBlob(a1)if not a1 then Library:Notify({Title='Ne3lodei Project',Description='Blob not found!',Duration=3})
return end local a2,a3=1,0 while a3<a2 do if a0()then a3=a3+1 end task.wait(0.4)end local a4=aW(a1)if not a4 then
Library:Notify({Title='Ne3lodei Project',Description='Hitbox not found!',Duration=3})return end for a5,P in ipairs(aV)do
if P and P.Parent then pcall(function()aQ:FireServer(P:FindFirstChildOfClass('BasePart'))aR:FireServer(P.StickyPart,a4,
CFrame.new(1e45,math.huge,1e98))end)end end aV={}Library:Notify({Title='Ne3lodei Project',Description=
'Kick Player on Blob Executed!',Duration=3})end function KickPlayerOnBlob12Kunai(a1)if not a1 then Library:Notify({Title
='Ne3lodei Project',Description='Blob not found!',Duration=3})return end local a2,a3=12,0 while a3<a2 do if a0()then a3=
a3+1 end task.wait(0.4)end local a4=aW(a1)if not a4 then Library:Notify({Title='Ne3lodei Project',Description=
'Hitbox not found!',Duration=3})return end for a5,P in ipairs(aV)do if P and P.Parent then pcall(function()aQ:
FireServer(P:FindFirstChildOfClass('BasePart'))aR:FireServer(P.StickyPart,a4,CFrame.new(1e45,math.huge,1e98))end)end end
aV={}Library:Notify({Title='Ne3lodei Project',Description='Kick Player on Blob (12 Kunai) Executed!',Duration=3})end
function BreakMap()local a1,a2=1,0 while a2<a1 do if a0()then a2=a2+1 end task.wait(0.4)end local a3=aL:FindFirstChild(
'Map')if a3 then a3=a3:FindFirstChild('BaseGround')end if not a3 then Library:Notify({Title='Ne3lodei Project',
Description='BaseGround not found!',Duration=3})return end local a4=a3:GetChildren()local a5=a4[154]if not a5 then
Library:Notify({Title='Ne3lodei Project',Description='Target part not found!',Duration=3})return end for P,Q in ipairs(
aV)do if Q and Q.Parent then pcall(function()aQ:FireServer(Q:FindFirstChildOfClass('BasePart'))aR:FireServer(Q.
StickyPart,a5,CFrame.new(1e45,math.huge,1e98))end)end end aV={}Library:Notify({Title='Ne3lodei Project',Description=
'Map Broken!',Duration=3})end function BreakPlot(...)local a1={...}local a2=#a1 if a2==0 then Library:Notify({Title=
'Ne3lodei Project',Description='No plots selected!',Duration=3})return end local a3,a4=0,{}while a3<a2 do if a0()then a3
=a3+1 local a5=aV[#aV]table.insert(a4,a5)end task.wait(0.4)end for a5,P in ipairs(a1)do local Q,S=a4[a5],P:
FindFirstChild('PlotArea')if not S then Library:Notify({Title='Ne3lodei Project',Description=
'PlotArea not found for plot '..a5,Duration=3})continue end if Q and Q.Parent then pcall(function()aQ:FireServer(Q:
FindFirstChildOfClass('BasePart'))aR:FireServer(Q.StickyPart,S,CFrame.new(0/0,math.huge,0/0))end)end end aV={}Library:
Notify({Title='Ne3lodei Project',Description='Plot(s) Broken!',Duration=3})end MapRight:AddButton({Text=
'Break All Plots',Callback=function()local a1=aL:FindFirstChild('Plots')if not a1 then Library:Notify({Title=
'Ne3lodei Project',Description='Plots not found!',Duration=3})return end local a2={}for a3,a4 in ipairs(a1:GetChildren()
)do if a4:IsA('Model')then table.insert(a2,a4)end end if#a2==0 then Library:Notify({Title='Ne3lodei Project',Description
='No plots found!',Duration=3})return end BreakPlot(unpack(a2))end})end do local aJ,aK='1',{'Plot1 (Green)',
'Plot2 (Pink)','Plot3 (Purple)','Plot4 (Blue)','Plot5 (Yellow)'}MapRight:AddDropdown('PlotBreaker_SelectPlot',{Text=
'Select Plot',Values=aK,Default='Plot1 (Green)',Callback=function(aL)aJ=aL:match('Plot(%d)')or'1'end})local aL=function(
)if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild('HumanoidRootPart')then return LocalPlayer.Character.
HumanoidRootPart else local aL=LocalPlayer.CharacterAdded:Wait()return aL:WaitForChild('HumanoidRootPart')end end local
aM=function()local aM=Workspace:FindFirstChild('PlotItems')and Workspace.PlotItems:FindFirstChild('PlayersInPlots')if aM
and aM:FindFirstChild(LocalPlayer.Name)then Library:Notify({Title='Break Plot',Description='You are in safe zone!',
Duration=3})return nil end local aN=Workspace:FindFirstChild(LocalPlayer.Name..'SpawnedInToys')if not aN then return nil
end local aO=aL()for aP,aQ in pairs(aN:GetChildren())do if(aQ.Name=='NinjaShuriken'or aQ.Name=='Noclipped')and aQ:
FindFirstChild('StickyPart')and aQ:FindFirstChild('SoundPart')then if aO and(aQ.StickyPart.Position-aO.Position).
Magnitude<=12 then return aQ end end end local aP=aL()if not aP then return nil end local aQ,aR aQ=aN.ChildAdded:
Connect(function(aS)if aS.Name=='NinjaShuriken'then aR=aS aQ:Disconnect()end end)ReplicatedStorage.MenuToys.
SpawnToyRemoteFunction:InvokeServer('NinjaShuriken',aP.CFrame*CFrame.new(5,8,20),Vector3.new(0,0,0))local aS=tick()
repeat if aR and aR:FindFirstChild('StickyPart')and aR:FindFirstChild('SoundPart')then return aR end task.wait(0.01)
until tick()-aS>0.1 return aN:FindFirstChild('NinjaShuriken')end MapRight:AddButton({Text='Break Plot [Shuriken]',
Callback=function()local aN=aM()if not aN then return end local aO,aP=aN:FindFirstChild('SoundPart'),aN:FindFirstChild(
'StickyPart')if not aP then return end if aO then local aQ=ReplicatedStorage:WaitForChild('GrabEvents'):WaitForChild(
'SetNetworkOwner')for aR=1,20 do aQ:FireServer(aO,aO.CFrame)if aO:FindFirstChild('PartOwner')and aO.PartOwner.Value==
LocalPlayer.Name then break end end end for aQ,aR in pairs(aN:GetChildren())do if aR:IsA('BasePart')then aR.CanTouch=
false aR.CanCollide=false aR.CanQuery=false if aR.Transparency==0 then aR.Transparency=1 end end end aN.Name='Noclipped'
local aQ=Workspace.Plots:FindFirstChild('Plot'..aJ)if not aQ then Library:Notify({Title='Error',Description=
'Plot not found!',Duration=3})return end local aR=aQ:FindFirstChild('PlotArea')if not aR then Library:Notify({Title=
'Error',Description='PlotArea not found!',Duration=3})return end ReplicatedStorage.PlayerEvents.StickyPartEvent:
FireServer(aP,aR,CFrame.new(1099511627776,1099511627776,1099511627776,1,0,0,0,1,0,0,0,1))Library:Notify({Title='Success'
,Description='Plot '..aJ..' broken!',Duration=3})end})MapRight:AddDivider()MapRight:AddButton({Text=
'Bring Train (vfly IY)',Callback=function()task.spawn(function()local aN=LocalPlayer.Character local aO,aP=aN and aN:
FindFirstChildOfClass('Humanoid'),aN and aN:FindFirstChild('HumanoidRootPart')if not aO or not aP then return end local
aQ=workspace:FindFirstChild(LocalPlayer.Name..'SpawnedInToys')if not aQ then return end local aR,aS,aT=aP.CFrame,nil,
LocalPlayer:FindFirstChild('CanSpawnToy')if aT and not aT.Value then aT.Changed:Wait()end local aU aU=aQ.ChildAdded:
Connect(function(aV)if aV.Name=='FoodHamburger'then aS=aV if aU then aU:Disconnect()end end end)pcall(function()
ReplicatedStorage.MenuToys.SpawnToyRemoteFunction:InvokeServer('FoodHamburger',aP.CFrame,Vector3.zero)end)local aV=tick(
)repeat task.wait()until(aS and aS:FindFirstChild('HoldPart'))or tick()-aV>3 if aU then aU:Disconnect()end if not aS
then aS=aQ:FindFirstChild('FoodHamburger')end if not aS or not aS:FindFirstChild('HoldPart')then Library:Notify({Title=
'Bring Train',Description='Burger spawn failed',Duration=3})return end local aW=workspace.Map.AlwaysHereTweenedObjects.
Train local aX,aY=aW.Object.ObjectModel.Seat,aW.Object.FollowThisPart aX:Sit(aO)if aY then local aZ,a_=aY:
FindFirstChild('AlignPosition'),aY:FindFirstChild('AlignOrientation')if aZ then aZ.Enabled=false end if a_ then a_.
Enabled=false end end task.wait(0.1)pcall(function()aS.HoldPart.HoldItemRemoteFunction:InvokeServer(aS,aN)end)task.wait(
0.1)pcall(function()ReplicatedStorage.MenuToys.DestroyToy:FireServer(aQ:FindFirstChild('FoodHamburger')or aS)end)aP.
CFrame=aR*CFrame.new(0,5,0)Library:Notify({Title='Bring Train',Description='Ready \u{2014} use vfly (IY)',Duration=3})
end)end})end do MapLeft:AddButton({Text='Break Outer UFO',Callback=function()pcall(function()local aJ,aK=Workspace,
LocalPlayer local aL,aM=aJ[aK.Name..'SpawnedInToys'],aJ:FindFirstChild('Map')if aM then aM=aM:FindFirstChild(
'AlwaysHereTweenedObjects')if aM then aM=aM:FindFirstChild('OuterUFO')end end if not aM then Library:Notify({Title=
'Ne3lodei Project',Description='Outer UFO not found!',Duration=3})return end local aN=aM:FindFirstChild('Object')if not
aN then Library:Notify({Title='Ne3lodei Project',Description='UFO Object not found!',Duration=3})return end local aO=aN:
FindFirstChild('ObjectModel')if aO then aO=aO:FindFirstChild('Body')end if not aO then Library:Notify({Title=
'Ne3lodei Project',Description='UFO Body not found!',Duration=3})return end local aP=function(aP)local aQ=aK.Character
and aK.Character:FindFirstChild('HumanoidRootPart')if not aQ then return end aQ=aQ.CFrame*CFrame.new(0,3,0)for aR=1,aP
do pcall(function()ReplicatedStorage.MenuToys.SpawnToyRemoteFunction:InvokeServer('NinjaShuriken',aQ,Vector3.zero)end)
task.wait(0.05)end end aP(10)task.wait(1)for aQ=1,10 do local aR=aL and aL:FindFirstChild('NinjaShuriken')if aR then
local aS=aR:FindFirstChild('StickyPart')if aS then aR.Name=tostring(aQ)pcall(function()ReplicatedStorage.PlayerEvents.
StickyPartEvent:FireServer(aS,aO,CFrame.Angles(0,0,0))end)end end task.wait(0.1)end for aQ=1,100 do pcall(function()
ReplicatedStorage.GrabEvents.SetNetworkOwner:FireServer(aO,aO.CFrame)end)task.wait()end local aQ=aO:FindFirstChild(
'ObjectModelAttachment')if aQ then aQ:Destroy()end local aR=aM:FindFirstChild('FollowThisPart')if aR then local aS,aT=aR
:FindFirstChild('AlignPosition'),aR:FindFirstChild('AlignOrientation')if aS then aS.Attachment0=nil end if aT then aT.
Attachment0=nil end end Library:Notify({Title='Ne3lodei Project',Description='Outer UFO Broken!',Duration=3})end)end})
MapLeft:AddButton({Text='Break Inner UFO',Callback=function()pcall(function()local aJ,aK=Workspace,LocalPlayer local aL,
aM=aJ[aK.Name..'SpawnedInToys'],aJ:FindFirstChild('Map')if aM then aM=aM:FindFirstChild('AlwaysHereTweenedObjects')if aM
then aM=aM:FindFirstChild('InnerUFO')end end if not aM then Library:Notify({Title='Ne3lodei Project',Description=
'Inner UFO not found!',Duration=3})return end local aN=aM:FindFirstChild('Object')if not aN then Library:Notify({Title=
'Ne3lodei Project',Description='UFO Object not found!',Duration=3})return end local aO=aN:FindFirstChild('ObjectModel')
if aO then aO=aO:FindFirstChild('Body')end if not aO then Library:Notify({Title='Ne3lodei Project',Description=
'UFO Body not found!',Duration=3})return end local aP=function(aP)local aQ=aK.Character and aK.Character:FindFirstChild(
'HumanoidRootPart')if not aQ then return end aQ=aQ.CFrame*CFrame.new(0,3,0)for aR=1,aP do pcall(function()
ReplicatedStorage.MenuToys.SpawnToyRemoteFunction:InvokeServer('NinjaShuriken',aQ,Vector3.zero)end)task.wait(0.05)end
end aP(10)task.wait(1)for aQ=1,10 do local aR=aL and aL:FindFirstChild('NinjaShuriken')if aR then local aS=aR:
FindFirstChild('StickyPart')if aS then aR.Name=tostring(aQ)pcall(function()ReplicatedStorage.PlayerEvents.
StickyPartEvent:FireServer(aS,aO,CFrame.Angles(0,0,0))end)end end task.wait(0.1)end for aQ=1,100 do pcall(function()
ReplicatedStorage.GrabEvents.SetNetworkOwner:FireServer(aO,aO.CFrame)end)task.wait()end local aQ=aO:FindFirstChild(
'ObjectModelAttachment')if aQ then aQ:Destroy()end local aR=aM:FindFirstChild('FollowThisPart')if aR then local aS,aT=aR
:FindFirstChild('AlignPosition'),aR:FindFirstChild('AlignOrientation')if aS then aS.Attachment0=nil end if aT then aT.
Attachment0=nil end end Library:Notify({Title='Ne3lodei Project',Description='Inner UFO Broken!',Duration=3})end)end})
MapLeft:AddButton({Text='Break CaveCart',Callback=function()pcall(function()local aJ,aK=Workspace,LocalPlayer local aL,
aM=aJ[aK.Name..'SpawnedInToys'],aJ:FindFirstChild('Map')if aM then aM=aM:FindFirstChild('AlwaysHereTweenedObjects')if aM
then aM=aM:FindFirstChild('CaveCart')end end if not aM then Library:Notify({Title='Ne3lodei Project',Description=
'CaveCart not found!',Duration=3})return end local aN=aM:FindFirstChild('Object')if not aN then Library:Notify({Title=
'Ne3lodei Project',Description='CaveCart Object not found!',Duration=3})return end local aO=aN:FindFirstChild(
'ObjectModel')if not aO then Library:Notify({Title='Ne3lodei Project',Description='CaveCart ObjectModel not found!',
Duration=3})return end local aP=aO:GetChildren()local aQ=aP[13]if not aQ then Library:Notify({Title='Ne3lodei Project',
Description='CaveCart target part not found!',Duration=3})return end local aR=function(aR)local aS=aK.Character and aK.
Character:FindFirstChild('HumanoidRootPart')if not aS then return end aS=aS.CFrame*CFrame.new(0,3,0)for aT=1,aR do
pcall(function()ReplicatedStorage.MenuToys.SpawnToyRemoteFunction:InvokeServer('NinjaShuriken',aS,Vector3.zero)end)task.
wait(0.05)end end aR(10)task.wait(1)for aS=1,10 do local aT=aL and aL:FindFirstChild('NinjaShuriken')if aT then local aU
=aT:FindFirstChild('StickyPart')if aU then aT.Name=tostring(aS)pcall(function()ReplicatedStorage.PlayerEvents.
StickyPartEvent:FireServer(aU,aQ,CFrame.Angles(0,0,0))end)end end task.wait(0.1)end for aS=1,100 do pcall(function()
ReplicatedStorage.GrabEvents.SetNetworkOwner:FireServer(aQ,aQ.CFrame)end)task.wait()end local aS=aQ:FindFirstChild(
'ObjectModelAttachment')if aS then aS:Destroy()end local aT=aN:FindFirstChild('FollowThisPart')if aT then local aU,aV=aT
:FindFirstChild('AlignPosition'),aT:FindFirstChild('AlignOrientation')if aU then aU.Attachment0=nil end if aV then aV.
Attachment0=nil end end Library:Notify({Title='Ne3lodei Project',Description='CaveCart Broken!',Duration=3})end)end})end
do MapLeft:AddButton({Text='Break Train',Callback=function()pcall(function()local aJ,aK=Workspace,LocalPlayer local aL,
aM=aJ[aK.Name..'SpawnedInToys'],aJ:FindFirstChild('Map')if aM then aM=aM:FindFirstChild('AlwaysHereTweenedObjects')if aM
then aM=aM:FindFirstChild('Train')end end if not aM then Library:Notify({Title='Ne3lodei Project',Description=
'Train not found!',Duration=3})return end local aN=aM:FindFirstChild('Object')if not aN then Library:Notify({Title=
'Ne3lodei Project',Description='Train Object not found!',Duration=3})return end local aO=aN:FindFirstChild('ObjectModel'
)if not aO then Library:Notify({Title='Ne3lodei Project',Description='Train ObjectModel not found!',Duration=3})return
end local aP=aO:GetChildren()local aQ=aP[2]or aP[3]or aP[1]if not aQ or not aQ:IsA('BasePart')then Library:Notify({Title
='Ne3lodei Project',Description='Train target part not found!',Duration=3})return end local aR=function(aR)local aS=aK.
Character and aK.Character:FindFirstChild('HumanoidRootPart')if not aS then return end aS=aS.CFrame*CFrame.new(0,3,0)for
aT=1,aR do pcall(function()ReplicatedStorage.MenuToys.SpawnToyRemoteFunction:InvokeServer('NinjaShuriken',aS,Vector3.
zero)end)task.wait(0.05)end end aR(10)task.wait(1)for aS=1,10 do local aT=aL and aL:FindFirstChild('NinjaShuriken')if aT
then local aU=aT:FindFirstChild('StickyPart')if aU then aT.Name=tostring(aS)pcall(function()ReplicatedStorage.
PlayerEvents.StickyPartEvent:FireServer(aU,aQ,CFrame.Angles(0,0,0))end)end end task.wait(0.1)end for aS=1,100 do pcall(
function()ReplicatedStorage.GrabEvents.SetNetworkOwner:FireServer(aQ,aQ.CFrame)end)task.wait()end local aS=aQ:
FindFirstChild('ObjectModelAttachment')if aS then aS:Destroy()end local aT=aN:FindFirstChild('FollowThisPart')if aT then
local aU,aV=aT:FindFirstChild('AlignPosition'),aT:FindFirstChild('AlignOrientation')if aU then aU.Attachment0=nil end if
aV then aV.Attachment0=nil end end Library:Notify({Title='Ne3lodei Project',Description='Train Broken!',Duration=3})end)
end})local aJ=function(aJ)local aK=LocalPlayer local aL,aM=workspace:FindFirstChild(aK.Name..'SpawnedInToys'),workspace:
FindFirstChild('Map')if aM then aM=aM:FindFirstChild('AlwaysHereTweenedObjects')end local aN=aM and aM:FindFirstChild(aJ
)if not aN then Library:Notify({Title='Ne3lodei Project',Description=aJ..' not found!',Duration=3})return end local aO=
aN:FindFirstChild('Object')if not aO then Library:Notify({Title='Ne3lodei Project',Description=aJ..' Object not found!',
Duration=3})return end local aP=aO:FindFirstChild('ObjectModel')if not aP then Library:Notify({Title='Ne3lodei Project',
Description=aJ..' ObjectModel not found!',Duration=3})return end local aQ=aP.PrimaryPart if not aQ then for aR,aS in
ipairs(aP:GetDescendants())do if aS:IsA('BasePart')then aQ=aS break end end end if not aQ then Library:Notify({Title=
'Ne3lodei Project',Description=aJ..' target part not found!',Duration=3})return end local aR=aK.Character and aK.
Character:FindFirstChild('HumanoidRootPart')if aR then local aS=aR.CFrame*CFrame.new(0,3,0)for aT=1,10 do pcall(function
()ReplicatedStorage.MenuToys.SpawnToyRemoteFunction:InvokeServer('NinjaShuriken',aS,Vector3.zero)end)task.wait(0.05)end
end task.wait(1)for aS=1,10 do local aT=aL and aL:FindFirstChild('NinjaShuriken')if aT then local aU=aT:FindFirstChild(
'StickyPart')if aU then aT.Name=tostring(aS)pcall(function()ReplicatedStorage.PlayerEvents.StickyPartEvent:FireServer(aU
,aQ,CFrame.Angles(0,0,0))end)end end task.wait(0.1)end for aS=1,100 do pcall(function()ReplicatedStorage.GrabEvents.
SetNetworkOwner:FireServer(aQ,aQ.CFrame)end)task.wait()end local aS=aQ:FindFirstChild('ObjectModelAttachment')if aS then
aS:Destroy()end local aT=aO:FindFirstChild('FollowThisPart')or aN:FindFirstChild('FollowThisPart')if aT then local aU,aV
=aT:FindFirstChild('AlignPosition'),aT:FindFirstChild('AlignOrientation')if aU then aU.Attachment0=nil end if aV then aV
.Attachment0=nil end end Library:Notify({Title='Ne3lodei Project',Description=aJ..' Broken!',Duration=3})end MapLeft:
AddButton({Text='Break LrgDebris',Callback=function()task.spawn(function()aJ('LrgDebris')end)end})MapLeft:AddButton({
Text='Break LrgDebris2',Callback=function()task.spawn(function()aJ('LrgDebris2')end)end})MapLeft:AddButton({Text=
'Break SmlDebris',Callback=function()task.spawn(function()aJ('SmlDebris')end)end})MapLeft:AddButton({Text=
'Break SmlDebris2',Callback=function()task.spawn(function()aJ('SmlDebris2')end)end})MapLeft:AddButton({Text=
'Break Ocean (test)',Callback=function()task.spawn(function()aJ('Ocean')end)end})end MenuGroup=Tabs.UISettings:
AddLeftGroupbox('Menu','user-lock')BackGroup=Tabs.UISettings:AddRightGroupbox('Background','mail')MenuGroup:AddCheckbox(
'KeybindMenuOpen',{Text='Open Keybind Menu',Default=Library.KeybindFrame.Visible,Callback=function(aJ)Library.
KeybindFrame.Visible=aJ end})MenuGroup:AddCheckbox('ShowCustomCursor',{Text='Custom Cursor',Default=false,Callback=
function(aJ)Library.ShowCustomCursor=aJ end})MenuGroup:AddDropdown('NotificationSide',{Values={'Left','Right'},Default=
'Right',Text='Notification Side',Callback=function(aJ)Library:SetNotifySide(aJ)end})MenuGroup:AddDropdown('DPIDropdown',
{Values={'50%','75%','100%','125%','150%','175%','200%'},Default='100%',Text='DPI Scale',Callback=function(aJ)aJ=aJ:
gsub('%%','')DPI=tonumber(aJ)Library:SetDPIScale(DPI)end})MenuGroup:AddDivider()MenuGroup:AddLabel('Menu bind'):
AddKeyPicker('MenuKeybind',{Default='LeftAlt',NoUI=true,Text='Menu keybind'})MenuGroup:AddButton({Text='Unload',Func=
function()Library:Unload()end,DoubleClick=false})bgData={Enabled=true,Image='0',Last=nil,Transparency=0.15}bgToken=0
local aJ=function(aJ)aJ=tostring(aJ or''):gsub('%s+','')if aJ==''then return'rbxassetid://0'end if aJ:find(
'rbxassetid://')then return aJ end return'rbxassetid://'..aJ end local aK=function()bgToken=bgToken+1 current=bgToken
task.delay(0.05,function()if current~=bgToken then return end image=bgData.Enabled and aJ(bgData.Image)or
'rbxassetid://0'if bgData.Last==image then return end bgData.Last=image pcall(function()Window:SetBackgroundImage(image)
Window:SetBackgroundTransparency(bgData.Transparency)end)end)end BackGroup:AddCheckbox('EnableBackground',{Text=
'Enable Background',Default=true,Callback=function(aL)bgData.Enabled=aL aK()end})BackGroup:AddInput('BackgroundAsset',{
Text='Asset ID',Default='0',Callback=function(aL)bgData.Image=tostring(aL)aK()end})BackGroup:AddButton({Text=
'Clear Background',Callback=function()bgData.Image='0'aK()end})aK()Library.ToggleKeybind=Options.MenuKeybind
ThemeManager:SetLibrary(Library)SaveManager:SetLibrary(Library)SaveManager:IgnoreThemeSettings()SaveManager:
SetIgnoreIndexes({'MenuKeybind'})ThemeManager:SetFolder('Ne3lodeiProject')SaveManager:SetFolder(
'Ne3lodeiProject/Configs')SaveManager:SetSubFolder('game-config')ThemeManager:ApplyToTab(Tabs.UISettings)SaveManager:
BuildConfigSection(Tabs.UISettings)pcall(function()ThemeManager:SetTheme('Material')end)Window:SetCornerRadius(20)
Library.ShowCustomCursor=false watermark=Library:AddDraggableLabel('\u{2022} Ne3lodei Project | 0 FPS | 0 ms | ')task.
spawn(function()while task.wait(0.5)do local aL,aM=math.floor(1/game:GetService('RunService').RenderStepped:Wait()),0
pcall(function()aM=math.floor(game:GetService('Stats').Network.ServerStatsItem['Data Ping']:GetValue())end)local aN,aO=
LocalPlayer.DisplayName,#Players:GetPlayers()watermark:SetText(string.format(
'\u{2022} Ne3lodei Project | %d FPS | %d ms | %s | %d players',aL,aM,aN,aO))end end)end print('Ne3lodei Project Loaded!'
)end