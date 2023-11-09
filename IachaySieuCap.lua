function EquipWeapon(ToolSe)
		if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
			local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
			wait(.4)
			game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
		end
end

if game.PlaceId == 2753915549 then
	World1 = true
elseif game.PlaceId == 4442272183 then
	World2 = true
elseif game.PlaceId == 7449423635 then
	World3 = true
end

function checkselect()
  if World3 then
  Mon = "Candy Pirate [Lv. 2400]"
            QuestName = "CandyQuest1"

            LevelQuest = 1
            NameMon = "Candy Pirate"

            CFrameMon = CFrame.new(-1476, 52, -14638)
            VectorMon = Vector3.new(-1476, 52, -14638)

            CFrameQuest = CFrame.new(-1149, 13, -14445)
            VectorQuest = Vector3.new(-1149, 13, -14445)
        elseif MyLevel >= 2425 or SelectMonster == "Snow Demon [Lv. 2425]" then
Mon = "Snow Demon [Lv. 2425]"
            QuestName = "CandyQuest1"

            LevelQuest = 2
            NameMon = "Snow Demon"
            
            CFrameMon = CFrame.new(-948, 62, -14551)
            VectorMon = CFrame.new(-948, 62, -14551)

            CFrameQuest = CFrame.new(-1149, 13, -14445)
            VectorQuest = Vector3.new(-1149, 13, -14445)
		end
    end

local MyLevel = game.Players.LocalPlayer.Data.Level.Value
    if World3 then
  if MyLevel == 2375 or MyLevel <= 2400 or SelectMonster == "Candy Rebel [Lv. 2375]" then
            Mon = "Candy Rebel [Lv. 2375]"
            --NameQuest = "ChocQuest2"
            LevelQuest = 2
            NameMon = "Candy Rebel"
            --CFrameQuest = CFrame.new(147.52256774902344, 24.793832778930664, -12775.3583984375)
            CFrameMon = CFrame.new(147.52256774902344, 24.793832778930664, -12775.3583984375)
			--Spawn = "Chocolate"
elseif MyLevel == 2400 or MyLevel <= 2424 or SelectMonster == "Candy Pirate [Lv. 2400]" then

            Mon = "Candy Pirate [Lv. 2400]"
    QuestName = "CandyQuest1"

            LevelQuest = 1
            NameMon = "Candy Pirate"

            CFrameMon = CFrame.new(-1476, 52, -14638)
            VectorMon = Vector3.new(-1476, 52, -14638)

            CFrameQuest = CFrame.new(-1149, 13, -14445)
            VectorQuest = Vector3.new(-1149, 13, -14445)
        elseif MyLevel >= 2425 or SelectMonster == "Snow Demon [Lv. 2425]" then


            Mon = "Snow Demon [Lv. 2425]"
            QuestName = "CandyQuest1"

            LevelQuest = 2
            NameMon = "Snow Demon"
            
            CFrameMon = CFrame.new(-948, 62, -14551)
            VectorMon = CFrame.new(-948, 62, -14551)
    CFrameQuest = CFrame.new(-1149, 13, -14445)
            VectorQuest = Vector3.new(-1149, 13, -14445)
		end
    end

function totarget(CFgo)
    local tween_s = game:service"TweenService"
    local info = TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude/300, Enum.EasingStyle.Linear)
    local tween, err = pcall(function()
        tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = CFgo})
        tween:Play()
    end)
    if not tween then return err end
end


function AutoHaki()
	if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
	end
end

local tweenfunc = {}
	local Distance = (RealTarget.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude
	if Distance < 1000 then
		Speed = 315
	elseif Distance >= 1000 then
		Speed = 300
end

function topos(Pos)
        Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        if game.Players.LocalPlayer.Character.Humanoid.Sit == true then game.Players.LocalPlayer.Character.Humanoid.Sit = false end
        pcall(function() tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/210, Enum.EasingStyle.Linear),{CFrame = Pos}) end)
        tween:Play()
        if Distance <= 250 then
            tween:Cancel()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
        end
        if _G.StopTween == true then
            tween:Cancel()
            _G.Clip = false
        end
end

function GetDistance(target)
        return math.floor((target.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude)
end

function StopTween(target)
	if not target then
		_G.StopTween = true
		wait()
		topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
		wait()
		if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
		end
		_G.StopTween = false
		_G.Clip = false
	end
end

local placeId = game.PlaceId
	Magnet = true
	if placeId == 2753915549 then
		OldWorld = true
	elseif placeId == 4442272183 then
		NewWorld = true
	elseif placeId == 7449423635 then
		ThreeWorld = true
end


  
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Simple Hub [Beta Version]", HidePremium = false, SaveConfig = true, IntroText = "Simple Hub Beta Version", ConfigFolder = "hehehehSimpleHub"})

OrionLib:MakeNotification({
	Name = "Chuc Cac Ban Choi Game Vui Ve",
	Content = "Chuc Cac Ban Mot Ngay Vui!!!",
	Image = "rbxassetid://4483345998",
	Time = 5
})

local ATab = Window:MakeTab({
	Name = "Setting",
	Icon = "rbxassetid://11446835336",
	PremiumOnly = false
})

local Section = ATab:AddSection({
	Name = "About"
})

ATab:AddLabel("This Is Beta Version")


ATab:AddLabel("Scripter : TaiOtaku")

ATab:AddLabel("Discord : Soon")

ATab:AddLabel("Private YOUTUBE Channel : Soon")

ATab:AddLabel("Main Script : Soon")

local Section = ATab:AddSection({
	Name = "Setting"
})

ATab:AddToggle({
	Name = "Auto Set Spawn Point",
	Default = true,
	Callback = function(Value)
		_G.AutoSetSpawn = Value
	end    
})

spawn(function()
 pcall(function()
  while wait() do
  if _G.AutoSetSpawn then
  if game:GetService("Players").LocalPlayer.Character.Humanoid.Health > 0 then
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
  end
  end
  end
  end)
 end)

ATab:AddDropdown({
	Name = "Select Method Farm",
	Default = "",
	Options = {"Behind","Below","Upper"},
	Callback = function(Value)
	_G.Method = Value
	end    
})

local Section = ATab:AddSection({
	Name = "DISTANCE FARM PC ONLY!!"
})

if not game:GetService("UserInputService").TouchEnabled and not game:GetService("UserInputService").KeyboardEnabled == false then
_G.DistanceMob = 20
ATab:AddSlider({
	Name = "Farm Distance",
	Min = 1,
	Max = 100,
	Default = 20,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Distance",
	Callback = function(Value)
		_G.DistanceMob = Value
	end    
})
else
  ATab:AddSlider1({
	Name = "Farm Distance",
	Min = 1,
	Max = 100,
	Default = 20,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Distance",
	Callback = function(Value)
		_G.DistanceMob = Value
	end    
})
end
spawn(function()
 while wait() do
 pcall(function()
  if _G.Method == "Behind" then
  MethodFarm = CFrame.new(0,0,_G.DistanceMob)
  elseif _G.Method == "Below" then
  MethodFarm = CFrame.new(0,-_G.DistanceMob,0) * CFrame.Angles(math.rad(90),0,0)
  elseif _G.Method == "Upper" then
  MethodFarm = CFrame.new(0,_G.DistanceMob,0) * CFrame.Angles(math.rad(-90),0,0)
  else
   MethodFarm = CFrame.new(0,_G.DistanceMob,0)
  end
  end)
 end
 end)



ATab:AddToggle({
	Name = "Bring Mob",
	Default = true,
	Callback = function(Value)
		_G.BringNormal = Value
	end    
})

spawn(function()
    game:GetService("RunService").Heartbeat:Connect(function() CheckQuest()
		pcall(function()
			if _G.BringNormal then
				for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if _G.Auto_Farm_Level and StartMagnet and v.Name == Ms and (v.HumanoidRootPart.Position - PosMon.Position).magnitude <= 350 then
						v.HumanoidRootPart.CFrame = PosMon
						v.HumanoidRootPart.CanCollide = false
						v.HumanoidRootPart.Size = Vector3.new(50,50,50)
						if v.Humanoid:FindFirstChild("Animator") then
							v.Humanoid.Animator:Destroy()
						end
	sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
					end
				end
			end
		end)
    end)
	end)

spawn(function()
	while task.wait() do
		pcall(function()
			if StartMagnet then
				for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
					if v:IsA('Part') and v:IsA('MeshPart') then
						v.Transparency = 1
					end
				end
			end
		end)
	end
end)

if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Death") then
	game:GetService("ReplicatedStorage").Effect.Container.Death:Destroy()
end
if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Respawn") then
	game:GetService("ReplicatedStorage").Effect.Container.Respawn:Destroy()
end

ATab:AddToggle({
	Name = "Fast Attack",
	Default = true,
	Callback = function(Value)
		_G.FastAttack = Value
	end    
})

local CombatFramework = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
local Camera = require(game.ReplicatedStorage.Util.CameraShaker)
Camera:Stop()
coroutine.wrap(function()
    game:GetService("RunService").Stepped:Connect(function()
        if _G.FastAttack then
        if getupvalues(CombatFramework)[2]['activeController'].timeToNextAttack then
            getupvalues(CombatFramework)[2]['activeController'].timeToNextAttack = 0
            getupvalues(CombatFramework)[2]['activeController'].hitboxMagnitude = 25
            getupvalues(CombatFramework)[2]['activeController']:attack()
        end
        end
    end)
  end)()


ATab:AddButton({
	Name = "Destroy Hub",
	Callback = function()
      		OrionLib:Destroy()
  	end    
})

local MTab = Window:MakeTab({
	Name = "Auto Chest",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

MTab:AddButton({
	Name = "Debug Auto Chest",
	Callback = function()
      		totarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
  _G.Clip = false
  	end    
})

local Section = MTab:AddSection({
	Name = "Safe Auto Chest"
})
MTab:AddToggle({
	Name = "Auto Chest [Tween]",
	Default = false,
	Callback = function(Value)
      OrionLib:MakeNotification({
	Name = "INFO",
	Content = "THIS AUTO CHEST HAS BUG PLEASE CHOOSE AUTO CHEST BELOW!!!",
	Image = "rbxassetid://11446825283",
	Time = 5
})
		Grab_Chest = Value
      StopTween(Grab_Chest)
      _G.Grab_Chest = Value
      
	end    
})


spawn(function()
while wait() do
if _G.Grab_Chest then
pcall(function()
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
              if string.find(v.Name, "Chest") then
          print(v.Name)
                repeat wait(2)
                totarget(v.CFrame)
                until
                game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position < 3
              end
              end
            end)
          end
  end
  end)

MTab:AddToggle({
	Name = "Auto Chest [Bypass]",
	Default = false,
	Callback = function(Value)
		_G.ChestBypass = Value
	end    
})

spawn(function()
while wait() do
if _G.ChestBypass then
pcall(function()
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
      if string.find(v.Name, "Chest") then
          print(v.Name)
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
          wait(.1)
      end
            end
            game.Players.LocalPlayer.Character.Head:Destroy()
  for _,v in pairs(game:GetService("Workspace"):GetDescendants()) do
   if string.find(v.Name, "Chest") and v:IsA("TouchTransmitter") then
   firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0) --0 is touch
   wait()
   firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1) -- 1 is untouch
   end
   end
  end)
    end
  end
end)

spawn(function()
while task.wait() do
if _G.ChestBypass then
        local ohString1 = "SetTeam"
        local ohString2 = "Pirates"
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(ohString1, ohString2)
     end
end
end)

local Section = MTab:AddSection({
	Name = "Danger Auto Chest"
})

MTab:AddToggle({
	Name = "Auto Chest [Danger]",
	Default = false,
	Callback = function(Value)
		_G.DangerChest = Value
	end    
})

spawn(function()
while wait() do
if _G.DangerChest then
pcall(function()
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
      if string.find(v.Name, "Chest") then
          print(v.Name)
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
          wait()
      end
            end
            game.Players.LocalPlayer.Character.Head:Destroy()
  for _,v in pairs(game:GetService("Workspace"):GetDescendants()) do
   if string.find(v.Name, "Chest") and v:IsA("TouchTransmitter") then
   firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0) --0 is touch
   wait()
   firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1) -- 1 is untouch
   end
   end
  end)
    end
  end
end)

spawn(function()
while task.wait() do
if _G.DangerChest then
        local ohString1 = "SetTeam"
        local ohString2 = "Pirates"
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(ohString1, ohString2)
     end
end
end)

local Section = MTab:AddSection({
	Name = "Auto Chest If Drop God's Charlie Or Anything"
})

MTab:AddToggle({
	Name = "Auto Chest [Charlie]",
	Default = false,
	Callback = function(Value)
		_G.ChestCharlie = Value
	end    
})

spawn(function()
while wait() do
if _G.ChestCharlie then
pcall(function()
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
      if string.find(v.Name, "Chest") then
          print(v.Name)
          repeat wait(.15) game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
                until
                game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice")
          wait(.15)
      end
            end
            game.Players.LocalPlayer.Character.Head:Destroy()
  for _,v in pairs(game:GetService("Workspace"):GetDescendants()) do
   if string.find(v.Name, "Chest") and v:IsA("TouchTransmitter") then
   firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0) --0 is touch
   wait()
   firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1) -- 1 is untouch
   end
   end
  end)
    end
  end
end)

spawn(function()
while task.wait() do
if _G.ChestCharlie then
        local ohString1 = "SetTeam"
        local ohString2 = "Pirates"
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(ohString1, ohString2)
     end
end
end)

local Section = MTab:AddSection({
	Name = "If u have any ideas please inbox me!"
})

local FTab = Window:MakeTab({
	Name = "Farming [Beta]",
	Icon = "rbxassetid://11446859498",
	PremiumOnly = false
})



local Section = FTab:AddSection({
	Name = "Wait For Update Auto Farm Level"
})

local WeaponList = {}
for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
if v:IsA("Tool") then
table.insert(WeaponList ,v.Name)
end
end

local SelectWeapona = FTab:AddDropdown({
	Name = "Please Select Weapon",
	Default = "",
	Options = WeaponList,
	Callback = function(Value)
		_G.Select_Weapon = Value
	end    
})

FTab:AddButton({
	Name = "Refresh Weapons",
	Callback = function()
      		SelectWeapona:Refresh(WeaponList, true)
  	end    
})

FTab:AddDropdown({
	Name = "Select Mode Farm",
	Default = "",
	Options = {"Level Farm", "Fast Mode", "No Quest", "Near Farm Mode"},
	Callback = function(Value)
		_G.Select_Mode_Farm = Value
	end    
})

FTab:AddToggle({
	Name = "Start Farm Selected Mode",
	Default = false,
	Callback = function(Value)
		_G.Auto_Farm_Level = Value
 StopTween(_G.Auto_Farm_Level)
	end    
})


spawn(function()
while wait() do
if _G.Auto_Farm_Level then
if _G.Select_Mode_Farm == "Level Farm" then
          pcall(function()
              CheckQuest()
              if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                if topos then
                  if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude > 2000 then
topos(CFrameQuest)
                    wait(2)
                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude < 2000 then
    totarget(CFrameQuest)
                  end
                else
                  totarget(CFrameQuest)
                end
                 if (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",QuestName,LevelQuest)
                end
                elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
 for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
 if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
 if v.Name == Ms then
 repeat game:GetService("RunService").Heartbeat:wait()
 EquipWeaponMelee()
                        totarget(v.HumanoidRootPart.CFrame * MethodFarm)
                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
 v.HumanoidRootPart.Transparency = 1
 v.Humanoid.JumpPower = 0
 v.Humanoid.WalkSpeed = 0
 v.HumanoidRootPart.CanCollide = false
v.Humanoid:ChangeState(11)
v.Humanoid:ChangeState(14)
 FarmPos = v.HumanoidRootPart.CFrame
 MonFarm = v.Name
 Click()
                        if v.Humanoid.Health <= 0 and v.Humanoid:FindFirstChild("Animator") then
 v.Humanoid.Animator:Destroy()
 end
 until not _G.Auto_Farm_Level or not v.Parent or v.Humanoid.Health <= 0 or not game:GetService("Workspace").Enemies:FindFirstChild(v.Name) or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
 end
 end
 end
 totarget(CFrameMon)
 for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()) do
 if string.find(v.Name,NameMon) then
 if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude >= 10 then
 totarget(v.CFrame * MethodFarm)
 totarget(CFrameMon)
 end
 end
 end
 end
 end)
        end
      end
    end
  end)
          
function EquipWeaponSword()
	pcall(function()
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v.ToolTip == "Sword" and v:IsA('Tool') then
				local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name) 
				game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid) 
			end
		end
	end)
end

function EquipWeaponMelee()
	pcall(function()
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v.ToolTip == "Melee" and v:IsA('Tool') then
				local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name) 
				game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid) 
			end
		end
	end)
end

if NewWorld then
  local Section = FTab:AddSection({
	Name = "Auto New Sea"
})

  FTab:AddToggle({
	Name = "Auto Third Sea",
	Default = false,
	Callback = function(Value)
		_G.Auto_Third_World = Value
 StopTween(_G.Auto_Third_World)
	end    
})


local Section = FTab:AddSection({
	Name = "Ectoplasm"
})

  FTab:AddToggle({
	Name = "Auto Farm Ectoplasm",
	Default = false,
	Callback = function(Value)
		_G.Auto_Farm_Ectoplasm = Value
 StopTween(_G.Auto_Farm_Ectoplasm)
	end    
})

  local Section = FTab:AddSection({
	Name = "Factory"
})
  
  FTab:AddToggle({
	Name = "Auto Factory",
	Default = false,
	Callback = function(Value)
		_G.AutoFactory = Value
 StopTween(_G.AutoFactory)
	end    
})

  spawn(function()
 while wait() do
 pcall(function()
  if _G.AutoFactory then
  if game:GetService("Workspace").Enemies:FindFirstChild("Core") then
  for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
  if v.Name == "Core" and v.Humanoid.Health > 0 then
  repeat task.wait()
  AutoHaki()
  EquipWeapon(_G.Select_Weapon)
  topos(CFrame.new(448.46756, 199.356781, -441.389252))
                      game:GetService("VirtualUser"):CaptureController()
  game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
  until v.Humanoid.Health <= 0 or _G.AutoFactory == false
  end
  end
  else
   topos(CFrame.new(448.46756, 199.356781, -441.389252))
  end
  end
  end)
 end
 end)
end

if OldWorld then
  FTab:AddToggle({
	Name = "Auto Second Sea",
	Default = false,
	Callback = function(Value)
		_G.Auto_New_World = Value
 StopTween(_G.Auto_New_World)
	end    
})
  
end

if World1 then
tableMon = {
 "Bandit [Lv. 5]","Monkey [Lv. 14]","Gorilla [Lv. 20]","Pirate [Lv. 35]","Brute [Lv. 45]","Desert Bandit [Lv. 60]","Desert Officer [Lv. 70]","Snow Bandit [Lv. 90]","Snowman [Lv. 100]","Chief Petty Officer [Lv. 120]","Sky Bandit [Lv. 150]","Dark Master [Lv. 175]","Prisoner [Lv. 190]", "Dangerous Prisoner [Lv. 210]","Toga Warrior [Lv. 250]","Gladiator [Lv. 275]","Military Soldier [Lv. 300]","Military Spy [Lv. 325]","Fishman Warrior [Lv. 375]","Fishman Commando [Lv. 400]","God's Guard [Lv. 450]","Shanda [Lv. 475]","Royal Squad [Lv. 525]","Royal Soldier [Lv. 550]","Galley Pirate [Lv. 625]","Galley Captain [Lv. 650]"
} elseif World2 then
tableMon = {
"Raider [Lv. 700]","Mercenary [Lv. 725]","Swan Pirate [Lv. 775]","Factory Staff [Lv. 800]","Marine Lieutenant [Lv. 875]","Marine Captain [Lv. 900]","Zombie [Lv. 950]","Vampire [Lv. 975]","Snow Trooper [Lv. 1000]","Winter Warrior [Lv. 1050]","Lab Subordinate [Lv. 1100]","Horned Warrior [Lv. 1125]","Magma Ninja [Lv. 1175]","Lava Pirate [Lv. 1200]","Ship Deckhand [Lv. 1250]","Ship Engineer [Lv. 1275]","Ship Steward [Lv. 1300]","Ship Officer [Lv. 1325]","Arctic Warrior [Lv. 1350]","Snow Lurker [Lv. 1375]","Sea Soldier [Lv. 1425]","Water Fighter [Lv. 1450]"
} elseif World3 then
  tableMon = {
 "Pirate Millionaire [Lv. 1500]","Dragon Crew Warrior [Lv. 1575]","Dragon Crew Archer [Lv. 1600]","Female Islander [Lv. 1625]","Giant Islander [Lv. 1650]","Marine Commodore [Lv. 1700]","Marine Rear Admiral [Lv. 1725]","Fishman Raider [Lv. 1775]","Fishman Captain [Lv. 1800]","Forest Pirate [Lv. 1825]","Mythological Pirate [Lv. 1850]","Jungle Pirate [Lv. 1900]","Musketeer Pirate [Lv. 1925]","Reborn Skeleton [Lv. 1975]","Living Zombie [Lv. 2000]","Demonic Soul [Lv. 2025]","Posessed Mummy [Lv. 2050]", "Peanut Scout [Lv. 2075]", "Peanut President [Lv. 2100]", "Ice Cream Chef [Lv. 2125]", "Ice Cream Commander [Lv. 2150]", "Cookie Crafter [Lv. 2200]", "Cake Guard [Lv. 2225]", "Baking Staff [Lv. 2250]", "Head Baker [Lv. 2275]", "Cocoa Warrior [Lv. 2300]", "Chocolate Bar Battler [Lv. 2325]", "Sweet Thief [Lv. 2350]", "Candy Rebel [Lv. 2375]", "Candy Pirate [Lv. 2400]", "Snow Demon [Lv. 2425]"
}
end

local Section = FTab:AddSection({
	Name = "Others"
})

FTab:AddDropdown({
	Name = "Select Mobs",
	Default = "",
	Options = tableMon,
	Callback = function(Value)
		SelectMonster = Value
	end    
})

FTab:AddToggle({
	Name = "Auto Farm Selected Mobs",
	Default = false,
	Callback = function(Value)
		_G.AutoFarmSelectMonster = Value
	end    
})

spawn(function()
 while wait(.1) do
 if _G.AutoFarmSelectMonster then
 pcall(function()
  checkselect(SelectMonster)
  if game:GetService("Workspace").Enemies:FindFirstChild(SelectMonster) then
  for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
  if v.Name == SelectMonster then
  if v:FindFirstChild("Humanoid") then
  if v.Humanoid.Health > 0 then
  repeat game:GetService("RunService").Heartbeat:wait()
  EquipWeapon(_G.Select_Weapon)
  if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
  local args = {
   [1] = "Buso"
                          }
                          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
  end
  topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
  v.HumanoidRootPart.CanCollide = false
  v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
  game:GetService("VirtualUser"):CaptureController()
  game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672), game.Workspace.CurrentCamera.CFrame)
  PosMonSelectMonster = v.HumanoidRootPart.CFrame
  SelectMonsterMagnet = true
  until not _G.AutoFarmSelectMonster or not v.Parent or v.Humanoid.Health == 0 or not game:GetService("Workspace").Enemies:FindFirstChild(v.Name)
  end
  end
  end
  end
            else
              checkselect(SelectMonster)
  SelectMonsterMagnet = false
  topos(CFrameMon)
  end
  end)
 end
 end
end)


if ThreeWorld then
  local Section = FTab:AddSection({
	Name = "Elite"
})
local Total_Elite_Hunter = 
  FTab:AddLabel("Elite Hunter")

  local Elite_Hunter_Status = FTab:AddLabel("Status")

  spawn(function()
		while wait() do
			pcall(function()
				if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]") or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]") or game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
					Elite_Hunter_Status:Set("Status : Elite Spawn!")	
				else
					Elite_Hunter_Status:Set("Status : Elite Not Spawn")	
				end
			end)
		end
	end)

  spawn(function()
		while wait() do
			Total_Elite_Hunter:Set("Total Elite Hunter : "..game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress"))
		end
	end)
  FTab:AddToggle({
	Name = "Auto Elite",
	Default = false,
	Callback = function(Value)
		_G.EliteHunt = Value
	end    
})

  spawn(function()
			while wait() do
				if  _G.EliteHunt then
					if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
					    repeat totarget(CFrame.new(-5418.892578125, 313.74130249023, -2826.2260742188)) wait() until _G.StopTween == true or not _G.AutoSaber or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-5418.892578125, 313.74130249023, -2826.2260742188)).Magnitude <= 10
						wait(.5)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
					else
						if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text == "Defeat  Diablo (0/1)" then
							if game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Diablo [Lv. 1750]" then
										repeat wait()
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												local args = {
													[1] = "Buso"
                        }
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
											end
											EquipWeapon(_G.SelectWeapon)
											totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
											if setsimulationradius then
												sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                      end
                      											v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
											v.HumanoidRootPart.CanCollide = false
											v.HumanoidRootPart.Size = Vector3.new(50,50,50)
											v.Humanoid:ChangeState(11)
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
										until _G.EliteHunt == false or v.Humanoid.Health <= 0
									end
								end
              else
                spawn(function()
								    totarget(game:GetService("ReplicatedStorage")["Diablo [Lv. 1750]"].HumanoidRootPart.CFrame *CFrame.new(0,0,15))
								end)
							end
						elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text == "Defeat  Deandre (0/1)" then
							if game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Deandre [Lv. 1750]" then
										repeat wait()
if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												local args = {
													[1] = "Buso"
												}
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                      end
EquipWeapon(_G.SelectWeapon)
											totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
											if setsimulationradius then
												sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
											end
											v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
											v.HumanoidRootPart.CanCollide = false
											v.HumanoidRootPart.Size = Vector3.new(50,50,50)
											v.Humanoid:ChangeState(11)
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
										until _G.EliteHunt == false or v.Humanoid.Health <= 0
									end
								end
              else
                spawn(function()
								    totarget(game:GetService("ReplicatedStorage")["Deandre [Lv. 1750]"].HumanoidRootPart.CFrame *CFrame.new(0,0,15))
								end)
							end
						elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text == "Defeat  Urban (0/1)" then
							if game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Urban [Lv. 1750]" then
										repeat wait()
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												local args = {
													[1] = "Buso"
												}
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
											end
											EquipWeapon(_G.SelectWeapon)
											totarget(v.HumanoidRootPart.CFrame * CFrame.new(1,20,1))
											if setsimulationradius then
												sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                      end
v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
											v.HumanoidRootPart.CanCollide = false
											v.HumanoidRootPart.Size = Vector3.new(50,50,50)
											v.Humanoid:ChangeState(11)
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
										until _G.EliteHunt == false or v.Humanoid.Health <= 0
									end
								end
							else
								spawn(function()
								    totarget(game:GetService("ReplicatedStorage")["Urban [Lv. 1750]"].HumanoidRootPart.CFrame *CFrame.new(0,0,15))
								end)
							end
						end
					end
				end
			end
		end)
end

local PTab = Window:MakeTab({
	Name = "Players",
	Icon = "rbxassetid://11446900930",
	PremiumOnly = false
})

PTab:AddLabel("Wait For Update")



local TTab = Window:MakeTab({
	Name = "Teleport",
	Icon = "rbxassetid://11446920523",
	PremiumOnly = false
})

local Section = TTab:AddSection({
	Name = "Worlds"
})

TTab:AddButton({
	Name = "Teleport To Sea 1",
	Callback = function()
      		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
  	end    
})

TTab:AddButton({
	Name = "Teleport To Second Sea",
	Callback = function()
      		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
  	end    
})

TTab:AddButton({
	Name = "Teleport To Third Sea",
	Callback = function()
      		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
  	end    
})

TTab:AddButton({
	Name = "Teleport To Seabeast",
	Callback = function()
      		for i,v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
  if v:FindFirstChild("HumanoidRootPart") then
  topos(v.HumanoidRootPart.CFrame*CFrame.new(0,100,0))
  end
      end
  	end    
})

local Section = TTab:AddSection({
	Name = "Island"
})

if OldWorld then
TTab:AddDropdown({
	Name = "Select Island",
	Default = "",
	Options = {"WindMill",
  "Marine",
  "Middle Town",
  "Jungle",
  "Pirate Village",
  "Desert",
  "Snow Island",
  "MarineFord",
  "Colosseum",
  "Sky Island 1",
  "Sky Island 2",
  "Sky Island 3",
  "Prison",
  "Magma Village",
  "Under Water Island",
  "Fountain City",
  "Shank Room",
  "Mob Island"},
	Callback = function(Value)
		_G.SelectIsland = Value
	end    
})
end

  if NewWorld then
    TTab:AddDropdown({
	Name = "Select Island",
	Default = "",
	Options = {"The Cafe",
  "Frist Spot",
  "Dark Area",
  "Flamingo Mansion",
  "Flamingo Room",
  "Green Zone",
  "Factory",
  "Colossuim",
  "Zombie Island",
  "Two Snow Mountain",
  "Punk Hazard",
  "Cursed Ship",
  "Ice Castle",
  "Forgotten Island",
  "Ussop Island",
  "Mini Sky Island"},
	Callback = function(Value)
		_G.SelectIsland = Value
	end    
})
end

if ThreeWorld then
    TTab:AddDropdown({
	Name = "Select Island",
	Default = "",
	Options = {"Mansion",
  "Port Town",
  "Great Tree",
  "Castle On The Sea",
  "MiniSky",
  "Hydra Island",
  "Floating Turtle",
  "Haunted Castle",
  "Ice Cream Island",
  "Peanut Island",
  "Cake Island",
  "Noname Island"},
	Callback = function(Value)
		_G.SelectIsland = Value
	end    
})
  end

TTab:AddToggle({
	Name = "Teleport",
	Default = false,
	Callback = function(Value)
		_G.TeleportIsland = Value
  if _G.TeleportIsland == true then
  repeat wait()
  if _G.SelectIsland == "WindMill" then
  topos(CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594))
  elseif _G.SelectIsland == "Marine" then
  topos(CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156))
  elseif _G.SelectIsland == "Middle Town" then
  topos(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))
  elseif _G.SelectIsland == "Jungle" then
  topos(CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754))
  elseif _G.SelectIsland == "Pirate Village" then
  topos(CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969))
  elseif _G.SelectIsland == "Desert" then
  topos(CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688))
  elseif _G.SelectIsland == "Snow Island" then
            topos(CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469))
  elseif _G.SelectIsland == "MarineFord" then
  topos(CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313))
  elseif _G.SelectIsland == "Colosseum" then
  topos(CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969))
  elseif _G.SelectIsland == "Sky Island 1" then
  topos(CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063))
  elseif _G.SelectIsland == "Sky Island 2" then
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
  elseif _G.SelectIsland == "Sky Island 3" then
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
  elseif _G.SelectIsland == "Prison" then
  topos(CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656))
  elseif _G.SelectIsland == "Magma Village" then
  topos(CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875))
  elseif _G.SelectIsland == "Under Water Island" then
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
  elseif _G.SelectIsland == "Fountain City" then
  topos(CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813))
  elseif _G.SelectIsland == "Shank Room" then
  topos(CFrame.new(-1442.16553, 29.8788261, -28.3547478))
  elseif _G.SelectIsland == "Mob Island" then
  topos(CFrame.new(-2850.20068, 7.39224768, 5354.99268))
  elseif _G.SelectIsland == "The Cafe" then
  topos(CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828))
  elseif _G.SelectIsland == "Frist Spot" then
  topos(CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375))
  elseif _G.SelectIsland == "Dark Area" then
  topos(CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375))
  elseif _G.SelectIsland == "Flamingo Mansion" then
  topos(CFrame.new(-483.73370361328, 332.0383605957, 595.32708740234))
  elseif _G.SelectIsland == "Flamingo Room" then
            topos(CFrame.new(2284.4140625, 15.152037620544, 875.72534179688))
  elseif _G.SelectIsland == "Green Zone" then
  topos(CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344))
  elseif _G.SelectIsland == "Factory" then
  topos(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617))
  elseif _G.SelectIsland == "Colossuim" then
  topos(CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641))
  elseif _G.SelectIsland == "Zombie Island" then
  topos(CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094))
  elseif _G.SelectIsland == "Two Snow Mountain" then
  topos(CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938))
  elseif _G.SelectIsland == "Punk Hazard" then
  topos(CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125))
  elseif _G.SelectIsland == "Cursed Ship" then
  topos(CFrame.new(923.40197753906, 125.05712890625, 32885.875))
  elseif _G.SelectIsland == "Ice Castle" then
            topos(CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188))
  elseif _G.SelectIsland == "Forgotten Island" then
  topos(CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875))
  elseif _G.SelectIsland == "Ussop Island" then
  topos(CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781))
  elseif _G.SelectIsland == "Mini Sky Island" then
  topos(CFrame.new(-288.74060058594, 49326.31640625, -35248.59375))
  elseif _G.SelectIsland == "Great Tree" then
  topos(CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625))
  elseif _G.SelectIsland == "Castle On The Sea" then
  topos(CFrame.new(-5074.45556640625, 314.5155334472656, -2991.054443359375))
  elseif _G.SelectIsland == "MiniSky" then
  topos(CFrame.new(-260.65557861328, 49325.8046875, -35253.5703125))
  elseif _G.SelectIsland == "Port Town" then
            topos(CFrame.new(-290.7376708984375, 6.729952812194824, 5343.5537109375))
  elseif _G.SelectIsland == "Hydra Island" then
  topos(CFrame.new(5228.8842773438, 604.23400878906, 345.0400390625))
  elseif _G.SelectIsland == "Floating Turtle" then
  topos(CFrame.new(-13274.528320313, 531.82073974609, -7579.22265625))
  elseif _G.SelectIsland == "Mansion" then
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
  elseif _G.SelectIsland == "Haunted Castle" then
  topos(CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562))
  elseif _G.SelectIsland == "Ice Cream Island" then
  topos(CFrame.new(-902.56817626953, 79.93204498291, -10988.84765625))
  elseif _G.SelectIsland == "Peanut Island" then
  topos(CFrame.new(-2062.7475585938, 50.473892211914, -10232.568359375))
  elseif _G.SelectIsland == "Cake Island" then
  topos(CFrame.new(-1884.7747802734375, 19.327526092529297, -11666.8974609375))
  elseif _G.SelectIsland == "Noname Island" then
            topos(CFrame.new(231.742981, 25.3354111, -12199.0537, 0.998278677, -5.16006757e-08, 0.0586484075, 4.79685092e-08, 1, 6.33390442e-08, -0.0586484075, -6.04167383e-08, 0.998278677))
  end
  until not _G.TeleportIsland
  end
  StopTween(_G.TeleportIsland)
	end    
})

local DTab = Window:MakeTab({
	Name = "Dungeon",
	Icon = "rbxassetid://11446957539",
	PremiumOnly = false
})

if OldWorld then
TTab:AddLabel("Dungeon Raid Only in Sea 2 and 3")

  if NewWorld or ThreeWorld then
    local Section = TTab:AddSection({
	Name = "USE IN DUNGEON ONLY!!!"
})

    chip = {
	"Flame", 
	"Ice", 
	"Quake", 
	"Light",
	"Dark",
	"String",
	"Rumble",
	"Magma",
	"Human: Buddha",
	"Sand",
	"Bird: Phoenix"
    }

    DTab:AddDropdown({
	Name = "Select Dungeon",
	Default = "",
	Options = chip,
	Callback = function(Value)
		_G.Select_Dungeon = Value
	end    
})

    DTab:AddToggle({
	Name = "Auto Buy Chip",
	Default = false,
	Callback = function(Value)
		_G.Auto_Buy_Chips_Dungeon = Value
	end    
})

    spawn(function()
    while wait() do
		if _G.Auto_Buy_Chips_Dungeon then
			pcall(function()
				local args = {
					[1] = "RaidsNpc",
					[2] = "Select",
					[3] = _G.Select_Dungeon
				}
				
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			end)
		end
    end
end)

    DTab:AddToggle({
	Name = "Auto Start",
	Default = false,
	Callback = function(Value)
		_G.Auto_StartRaid = Value
	end    
})
    spawn(function()
    while wait(.1) do
        pcall(function()
            if _G.Auto_StartRaid then
                if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false then
                    if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip") then
                        if World2 then
                            fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
                      elseif World3 then
                            fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
                        end
                    end
                end
            end
        end)
    end
    end)

    DTab:AddToggle({
	Name = "Auto Next Island",
	Default = false,
	Callback = function(Value)
		_G.Auto_Next_Island = Value
	end    
})

    spawn(function()
    while wait() do
        if _G.Auto_Next_Island then
			if not game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false then
				if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
					topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame * CFrame.new(0,70,100))
				elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
					topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame * CFrame.new(0,70,100))
				elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
			topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame * CFrame.new(0,70,100))
				elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
					topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame * CFrame.new(0,70,100))
				elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
					topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame * CFrame.new(0,70,100))
				end
			end
        end
    end
end)

    DTab:AddToggle({
	Name = "Kill Aura",
	Default = false,
	Callback = function(Value)
		_G.Kill_Aura = Value  
	end    
})

    spawn(function()
    while wait() do
        if _G.Kill_Aura then
            for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                    pcall(function()
                        repeat wait(.1)
                            v.Humanoid.Health = 0
                            v.HumanoidRootPart.CanCollide = false
							sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                        until not _G.Kill_Aura  or not v.Parent or v.Humanoid.Health <= 0
                    end)
                end
            end
        end
    end
end)

    DTab:AddToggle({
	Name = "Auto Awake",
	Default = false,
	Callback = function(Value)
		_G.Auto_Awake = Value 
	end    
})

    spawn(function()
	while wait(.1) do
		if _G.Auto_Awake then
			pcall(function()
				local args = {
					[1] = "Awakener",
					[2] = "Check"
				}
				
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				local args = {
					[1] = "Awakener",
					[2] = "Awaken"
				}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			end)
		end
	end
end)

    local function toTarget(...)
	local RealtargetPos = {...}
	local targetPos = RealtargetPos[1]
	local RealTarget
	if type(targetPos) == "vector" then
		RealTarget = CFrame.new(targetPos)
	elseif type(targetPos) == "userdata" then
		RealTarget = targetPos
	elseif type(targetPos) == "number" then
		RealTarget = CFrame.new(unpack(RealtargetPos))
      end

      if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health == 0 then if tween then tween:Cancel() end repeat wait() until game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health > 0; wait(0.2) end

	local tweenfunc = {}
	local Distance = (RealTarget.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude
	if Distance < 1000 then
		Speed = 315
	elseif Distance >= 1000 then
		Speed = 300
      end

      local Section = DTab:AddSection({
	Name = "Law Dungeon"
})

      DTab:AddToggle({
	Name = "Auto Buy Law Chip",
	Default = false,
	Callback = function(Value)
		_G.Auto_Buy_Law_Chip = Value
	end    
})

      if _G.Auto_Buy_Law_Chip then
			pcall(function()
				if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Microchip") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Microchip") or game:GetService("Workspace").Enemies:FindFirstChild("Order [Lv. 1250] [Raid Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Order [Lv. 1250] [Raid Boss]") then
				
				else
					local args = {
						[1] = "BlackbeardReward",
						[2] = "Microchip",
						[3] = "2"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end
			end)
		end
	end
end

DTab:AddToggle({
	Name = "Auto Start Law Dungeon",
	Default = false,
	Callback = function(Value)
		_G.Auto_Start_Law_Dungeon = Value
	end    
})

spawn(function()
	while wait() do
		if _G.Auto_Start_Law_Dungeon then
			pcall(function()
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Microchip") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Microchip") then
					fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon.Button.Main.ClickDetector)
				end
			end)
		end
	end
end)

DTab:AddToggle({
	Name = "Auto Kill Law",
	Default = false,
	Callback = function(Value)
		_G.Auto_Kill_Law = Value
	end    
})

spawn(function()
	while wait() do
		if _G.Auto_Kill_Law then
			pcall(function()
				if game:GetService("ReplicatedStorage"):FindFirstChild("Order [Lv. 1250] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Order [Lv. 1250] [Raid Boss]") then
					for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
						if _G.Auto_Kill_Law and v.Name == "Order [Lv. 1250] [Raid Boss]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
							repeat task.wait()
								AutoHaki()
                    EquipWeapon(_G.Select_Weapon)
								v.HumanoidRootPart.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(50,50,50)
								topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
								game:GetService'VirtualUser':CaptureController()
								game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
							until not _G.Auto_Kill_Law or v.Humanoid.Health <= 0 or not v.Parent
						end
					end
				end 
			end)
		end
	end
end)
end

local DevilTab = Window:MakeTab({
	Name = "Devil Fruit",
	Icon = "rbxassetid://6031265976",
	PremiumOnly = false
})

FruitList = {
  "Bomb-Bomb",
  "Spike-Spike",
  "Chop-Chop",
  "Spring-Spring",
  "Rocket-Rocket",
  "Spin-Spin",
  "Bird: Falcon",
  "Smoke-Smoke",
  "Flame-Flame",
  "Ice-Ice",
  "Sand-Sand",
  "Dark-Dark",
  "Ghost-Ghost",
  "Diamond-Diamond",
  "Light-Light",
  "Love-Love",
  "Rubber-Rubber",
  "Barrier-Barrier",
  "Magma-Magma",
  "Portal-Portal",
  "Quake-Quake",
  "Human-Human: Buddha",
  "String-String",
  "Bird-Bird: Phoenix",
  "Rumble-Rumble",
  "Paw-Paw",
  "Gravity-Gravity",
  "Dough-Dough",
  "Venom-Venom",
  "Shadow-Shadow",
  "Control-Control",
  "Soul-Soul",
  "Dragon-Dragon"
}

_G.SelectFruit = ""

DevilTab:AddDropdown({
	Name = "Select Fruits Spiner",
	Default = "",
	Options = FruitList,
	Callback = function(Value)
		_G.SelectFruit = Value
	end    
})

DevilTab:AddToggle({
	Name = "Auto Buy Fruit Spiner",
	Default = false,
	Callback = function(Value)
		_G.AutoBuyFruitSniper = Value
	end    
})

spawn(function()
  pcall(function()
   while wait(.1) do
   if _G.AutoBuyFruitSniper then
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PurchaseRawFruit",_G.SelectFruit)
   end
   end
   end)
  end)
 

DevilTab:AddToggle({
	Name = "Auto Random Fruit",
	Default = false,
	Callback = function(Value)
		_G.Random_Auto = Value
	end    
})

spawn(function()
  pcall(function()
   while wait(.1) do
   if _G.Random_Auto then
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
   end
   end
   end)
  end)

DevilTab:AddButton({
	Name = "Random Fruit",
	Callback = function()
      		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
  	end    
})

DevilTab:AddToggle({
	Name = "Auto Store Fruits",
	Default = false,
	Callback = function(Value)
		_G.AutoStoreFruit = Value
	end    
})

spawn(function()
			while task.wait() do
				if _G.AutoStoreFruit then
					pcall(function()
						for i,v in pairs(Fruit) do
						for x,y in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
							if string.find(y.Name,"Fruit") then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit",v,game.Players.LocalPlayer.Backpack[y.Name])
							end
						end
						end
					end)
				end
			end
		end)

DevilTab:AddToggle({
	Name = "Auto Grab Fruits",
	Default = false,
	Callback = function(Value)
		_G.BringFruit = Value
  pcall(function()
   while _G.BringFruit do wait(.1)
   for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
   if v:IsA("Tool") then
   local OldCFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
   game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.Handle.CFrame * CFrame.new(0,0,8)
   v.Handle.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
   wait(.1)
   game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = OldCFrame
   end
   end
   end
   end)
	end    
})

DevilTab:AddToggle({
	Name = "Teleport To Fruits Spawn",
	Default = false,
	Callback = function(Value)
		_G.Grabfruit = Value
	end    
})

spawn(function()
			while wait(.1) do
				if _G.Grabfruit then
					for i,v in pairs(game.Workspace:GetChildren()) do
						if string.find(v.Name, "Fruit") then
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Handle.CFrame
						end
					end
				end
end
end)

DevilTab:AddToggle({
	Name = "Bring All Fruits",
	Default = false,
	Callback = function(Value)
		_G.BringFruitBF = Value
	end    
})

spawn(function()
  while wait() do
  if _G.BringFruitBF then
  pcall(function()
   for i,v in pairs(game.Workspace:GetChildren()) do
   if v:IsA("Tool") then
   v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
   end
   end
   end)
  end
  end
 end)

local ESPTab = Window:MakeTab({
	Name = "Esp",
	Icon = "rbxassetid://11446965348",
	PremiumOnly = false
})

function isnil(thing)
 return (thing == nil)
 end
 local function round(n)
 return math.floor(tonumber(n) + 0.5)
 end
 Number = math.random(1, 1000000)
 function UpdateEspPlayer()
 for i,v in pairs(game:GetService'Players':GetChildren()) do
 pcall(function()
  if not isnil(v.Character) then
  if ESPPlayer then
  if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild('NameEsp'..Number) then
  local bill = Instance.new('BillboardGui',v.Character.Head)
  bill.Name = 'NameEsp'..Number
  bill.ExtentsOffset = Vector3.new(0, 1, 0)

              bill.Size = UDim2.new(1,200,1,30)
  bill.Adornee = v.Character.Head
  bill.AlwaysOnTop = true
  local name = Instance.new('TextLabel',bill)
  name.Font = "Code"
  name.FontSize = "Size14"
  name.TextWrapped = true
  name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M')
  name.Size = UDim2.new(1,0,1,0)
  name.TextYAlignment = 'Top'
  name.BackgroundTransparency = 1
  name.TextStrokeTransparency = 0.5
  if v.Team == game.Players.LocalPlayer.Team then
  name.TextColor3 = Color3.new(0,255,0)
  else
   name.TextColor3 = Color3.new(255,0,0)
  end
            else
              v.Character.Head['NameEsp'..Number].TextLabel.Text = (v.Name ..'  '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M\nHealth : ' .. round(v.Character.Humanoid.Health*100/v.Character.Humanoid.MaxHealth) .. '%')
  end
  else
   if v.Character.Head:FindFirstChild('NameEsp'..Number) then
  v.Character.Head:FindFirstChild('NameEsp'..Number):Destroy()
  end
  end
  end
  end)
 end
end

function UpdateIslandESP()
 for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
 pcall(function()
  if IslandESP then
  if v.Name ~= "Sea" then
  if not v:FindFirstChild('NameEsp') then
  local bill = Instance.new('BillboardGui',v)
  bill.Name = 'NameEsp'
  bill.ExtentsOffset = Vector3.new(0, 1, 0)
  bill.Size = UDim2.new(1,200,1,30)
  bill.Adornee = v
  bill.AlwaysOnTop = true
  local name = Instance.new('TextLabel',bill)
  name.Font = "Code"
  name.FontSize = "Size14"
  name.TextWrapped = true
  name.Size = UDim2.new(1,0,1,0)
              name.TextYAlignment = 'Top'
  name.BackgroundTransparency = 1
  name.TextStrokeTransparency = 0.5
  name.TextColor3 = Color3.fromRGB(80, 245, 245)
  else
   v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
  end
  end
  else
   if v:FindFirstChild('NameEsp') then
  v:FindFirstChild('NameEsp'):Destroy()
  end
  end
  end)
 end
end

function UpdateChestEsp()
 for i,v in pairs(game.Workspace:GetChildren()) do
 pcall(function()
  if v.Name == "Chest1" or v.Name == "Chest2" or v.Name == "Chest3" then
  if ChestESP then
  if (v.Name == "Chest1" or v.Name == "Chest2" or v.Name == "Chest3") and (v.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 60000 then
  if not v:FindFirstChild("ChestESP"..Number) then
  local Bb = Instance.new("BillboardGui", v)
  Bb.Name = "ChestESP"..Number
  Bb.ExtentsOffset = Vector3.new(0, 1, 0)
  Bb.Size = UDim2.new(1, 200, 1, 30)
  Bb.Adornee = v
  Bb.AlwaysOnTop = true
  local Textlb = Instance.new("TextLabel", Bb)
  Textlb.Font = "Code"
  Textlb.FontSize = "Size14"
  Textlb.Size = UDim2.new(1,0,1,0)
  Textlb.BackgroundTransparency = 1
  Textlb.TextStrokeTransparency = 0.5
  if v.Name == "Chest1" then
  Textlb.TextColor3 = Color3.fromRGB(174, 123, 47)
                  Textlb.Text = "Bronze Chest".."\n"..math.round((v.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude/3).." m."
  end
  if v.Name == "Chest2" then
  Textlb.TextColor3 = Color3.fromRGB(255, 255, 127)
  Textlb.Text = "Gold Chest".."\n"..math.round((v.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude/3).." m."
  end
  if v.Name == "Chest3" then
  Textlb.Text = "Diamond Chest".."\n"..math.round((v.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude/3).." m."
  Textlb.TextColor3 = Color3.fromRGB(5, 243, 255)
  end
  else
   v["ChestESP"..Number].TextLabel.Text = v.Name.."\n"..math.round((v.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude/3).." m."
              end
              end
  else
   if v:FindFirstChild("ChestESP"..Number) then
  v:FindFirstChild("ChestESP"..Number):Destroy()
  end
  end
  end
  end)
 end
 end
 
 function UpdateBfEsp()
 for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
 pcall(function()
  if DevilFruitESP then
  if string.find(v.Name, "Fruit") then
  if not v.Handle:FindFirstChild('NameEsp'..Number) then
  local bill = Instance.new('BillboardGui',v.Handle)
  bill.Name = 'NameEsp'..Number
  bill.ExtentsOffset = Vector3.new(0, 1, 0)
              bill.Size = UDim2.new(1,200,1,30)
  bill.Adornee = v.Handle
  bill.AlwaysOnTop = true
  local name = Instance.new('TextLabel',bill)
  name.Font = "Code"
  name.FontSize = "Size14"
  name.TextWrapped = true
  name.Size = UDim2.new(1,0,1,0)
  name.TextYAlignment = 'Top'
  name.BackgroundTransparency = 1
  name.TextStrokeTransparency = 0.5
  name.TextColor3 = Color3.fromRGB(255, 0, 0)
  name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
  else
   v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
  end
          end
          else
   if v.Handle:FindFirstChild('NameEsp'..Number) then
  v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
  end
  end
  end)
 end
 end
 
 function UpdateFlowerEsp()
 for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
 pcall(function()
  if v.Name == "Flower2" or v.Name == "Flower1" then
  if FlowerESP then
  if not v:FindFirstChild('NameEsp'..Number) then
  local bill = Instance.new('BillboardGui',v)
  bill.Name = 'NameEsp'..Number
  bill.ExtentsOffset = Vector3.new(0, 1, 0)
  bill.Size = UDim2.new(1,200,1,30)
  bill.Adornee = v
  bill.AlwaysOnTop = true
  local name = Instance.new('TextLabel',bill)
              name.Font = "Code"
  name.FontSize = "Size14"
  name.TextWrapped = true
  name.Size = UDim2.new(1,0,1,0)
  name.TextYAlignment = 'Top'
  name.BackgroundTransparency = 1
  name.TextStrokeTransparency = 0.5
  name.TextColor3 = Color3.fromRGB(255, 0, 0)
  if v.Name == "Flower1" then
  name.Text = ("Blue Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
  name.TextColor3 = Color3.fromRGB(255, 0, 0)
  end
  if v.Name == "Flower2" then
  name.Text = ("Red Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
  name.TextColor3 = Color3.fromRGB(255, 0, 0)
              end
              else
   v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
  end
  else
   if v:FindFirstChild('NameEsp'..Number) then
  v:FindFirstChild('NameEsp'..Number):Destroy()
  end
  end
  end
  end)
 end
end

local Section = ESPTab:AddSection({
	Name = "Esp + Flowers"
})

if NewWorld then
  ESPTab:AddButton({
	Name = "Tp To Red Flower",
	Callback = function()
      		for i,v in pairs(game.Workspace:GetDescendants()) do
				if v.Name == "Flower2" then
				    topos(v.CFrame)
				end
        end
  	end    
})

  ESPTab:AddButton({
	Name = "Tp To Blue Flower",
	Callback = function()
      		for i,v in pairs(game.Workspace:GetDescendants()) do
				if v.Name == "Flower1" then
				    topos(v.CFrame)
				end
        end
  	end    
})
end
  function isnil(thing)
		return (thing == nil)
	end
	local function round(n)
		return math.floor(tonumber(n) + 0.5)
	end
	Number = math.random(1, 1000000)
	function UpdatePlayerChams()
		for i,v in pairs(game:GetService'Players':GetChildren()) do
			pcall(function()
				if not isnil(v.Character) then
					if ESPPlayer then
						if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild('NameEsp'..Number) then
							local bill = Instance.new('BillboardGui',v.Character.Head)
  bill.Name = 'NameEsp'..Number
							bill.ExtentsOffset = Vector3.new(0, 1, 0)
							bill.Size = UDim2.new(1,200,1,30)
							bill.Adornee = v.Character.Head
							bill.AlwaysOnTop = true
							local name = Instance.new('TextLabel',bill)
							name.Font = "GothamBold"
							name.FontSize = "Size14"
							name.TextWrapped = true
							name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M')
							name.Size = UDim2.new(1,0,1,0)
							name.TextYAlignment = 'Top'
                name.BackgroundTransparency = 1
							name.TextStrokeTransparency = 0.5
							if v.Team == game.Players.LocalPlayer.Team then
								name.TextColor3 = Color3.new(0,255,0)
							else
								name.TextColor3 = Color3.new(255,0,0)
							end
						else
							v.Character.Head['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M')
						end
					else
						if v.Character.Head:FindFirstChild('NameEsp'..Number) then
		v.Character.Head:FindFirstChild('NameEsp'..Number):Destroy()
						end
					end
				end
			end)
		end
	end
  
	function UpdateChestChams() 
		for i,v in pairs(game.Workspace:GetChildren()) do
			pcall(function()
				if string.find(v.Name,"Chest") then
					if ChestESP then
						if string.find(v.Name,"Chest") then
							if not v:FindFirstChild('NameEsp'..Number) then
								local bill = Instance.new('BillboardGui',v)
				bill.Name = 'NameEsp'..Number
								bill.ExtentsOffset = Vector3.new(0, 1, 0)
								bill.Size = UDim2.new(1,200,1,30)
								bill.Adornee = v
								bill.AlwaysOnTop = true
								local name = Instance.new('TextLabel',bill)
								name.Font = "GothamBold"
								name.FontSize = "Size14"
								name.TextWrapped = true
								name.Size = UDim2.new(1,0,1,0)
								name.TextYAlignment = 'Top'
								name.BackgroundTransparency = 1
								name.TextStrokeTransparency = 0.5
								if v.Name == "Chest1" then
									name.TextColor3 = Color3.fromRGB(10, 224, 153)
									name.Text = ("Chest 1" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                  end
                  if v.Name == "Chest2" then
									name.TextColor3 = Color3.fromRGB(10, 224, 153)
									name.Text = ("Chest 2" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
								end
								if v.Name == "Chest3" then
									name.TextColor3 = Color3.fromRGB(10, 224, 153)
									name.Text = ("Chest 3" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
								end
							else
								v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
							end
						end
					else
	if v:FindFirstChild('NameEsp'..Number) then
							v:FindFirstChild('NameEsp'..Number):Destroy()
						end
					end
				end
			end)
		end
  end

  function UpdateDevilChams() 
		for i,v in pairs(game.Workspace:GetChildren()) do
			pcall(function()
				if DevilFruitESP then
					if string.find(v.Name, "Fruit") then   
						if not v.Handle:FindFirstChild('NameEsp'..Number) then
							local bill = Instance.new('BillboardGui',v.Handle)
							bill.Name = 'NameEsp'..Number
							bill.ExtentsOffset = Vector3.new(0, 1, 0)
							bill.Size = UDim2.new(1,200,1,30)
							bill.Adornee = v.Handle
							bill.AlwaysOnTop = true
							local name = Instance.new('TextLabel',bill)
							name.Font = "GothamBold"
                name.FontSize = "Size14"
							name.TextWrapped = true
							name.Size = UDim2.new(1,0,1,0)
							name.TextYAlignment = 'Top'
							name.BackgroundTransparency = 1
							name.TextStrokeTransparency = 0.5
							name.TextColor3 = Color3.fromRGB(10, 224, 153)
							name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
						else
							v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
						end
            end
            else
					if v.Handle:FindFirstChild('NameEsp'..Number) then
						v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
					end
				end
			end)
		end
  end
  function UpdateFlowerChams() 
		for i,v in pairs(game.Workspace:GetChildren()) do
			pcall(function()
				if v.Name == "Flower2" or v.Name == "Flower1" then
					if FlowerESP then 
						if not v:FindFirstChild('NameEsp'..Number) then
							local bill = Instance.new('BillboardGui',v)
							bill.Name = 'NameEsp'..Number
							bill.ExtentsOffset = Vector3.new(0, 1, 0)
							bill.Size = UDim2.new(1,200,1,30)
							bill.Adornee = v
							bill.AlwaysOnTop = true
							local name = Instance.new('TextLabel',bill)
							name.Font = "GothamBold"
                name.FontSize = "Size14"
							name.TextWrapped = true
							name.Size = UDim2.new(1,0,1,0)
							name.TextYAlignment = 'Top'
							name.BackgroundTransparency = 1
							name.TextStrokeTransparency = 0.5
							name.TextColor3 = Color3.fromRGB(10, 224, 153)
							if v.Name == "Flower1" then 
								name.Text = ("Blue Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
								name.TextColor3 = Color3.fromRGB(10, 224, 153)
							end
	if v.Name == "Flower2" then
								name.Text = ("Red Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
								name.TextColor3 = Color3.fromRGB(10, 224, 153)
							end
						else
							v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
						end
					else
						if v:FindFirstChild('NameEsp'..Number) then
							v:FindFirstChild('NameEsp'..Number):Destroy()
						end
					end
				end   
			end)
		end
  end

ESPTab:AddToggle({
	Name = "Esp Players",
	Default = false,
	Callback = function(Value)
		ESPPlayer = Value
		while ESPPlayer do wait()
			UpdatePlayerChams()
      end
	end    
})

ESPTab:AddToggle({
	Name = "Esp Chests",
	Default = false,
	Callback = function(Value)
		ChestESP = Value
		while ChestESP do wait()
			UpdateChestChams() 
		end
	end    
})

ESPTab:AddToggle({
	Name = "Esp Fruits",
	Default = false,
	Callback = function(Value)
		DevilFruitESP = Value
		while DevilFruitESP do wait()
			UpdateDevilChams() 
      end
	end    
})

ESPTab:AddToggle({
	Name = "Esp Flowers",
	Default = false,
	Callback = function(Value)
		FlowerESP = Value
		while FlowerESP do wait()
			UpdateFlowerChams() 
      end
	end    
})

local ShopTab = Window:MakeTab({
	Name = "Shop",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = ShopTab:AddSection({
	Name = "Abilities"
})

ShopTab:AddButton({
	Name = "Buy Geppo",
	Callback = function()
      		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Geppo")
  	end    
})

ShopTab:AddButton({
	Name = "Buy Buso Haki",
	Callback = function()
      		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Buso")
  	end    
})

ShopTab:AddButton({
	Name = "Buy Soru",
	Callback = function()
      		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Soru")
  	end    
})

ShopTab:AddButton({
	Name = "Buy Ken Haki",
	Callback = function()
      		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk","Buy")
  	end    
})

local Section = ShopTab:AddSection({
	Name = "Fighting Styles"
})

ShopTab:AddButton({
	Name = "Buy Black Leg",
	Callback = function()
      		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
  	end    
})

ShopTab:AddButton({
	Name = "Buy Electro",
	Callback = function()
      		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
  	end    
})

ShopTab:AddButton({
	Name = "Buy Fishman Karate",
	Callback = function()
      		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
  	end    
})

ShopTab:AddButton({
	Name = "Buy Dragon Claw",
	Callback = function()
      		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
  	end    
})

ShopTab:AddButton({
	Name = "Buy Superhuman",
	Callback = function()
      		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
  	end    
})

local Section = ShopTab:AddSection({
	Name = "V2 Fighting Styles"
})



ShopTab:AddButton({
	Name = "Buy Death Step",
	Callback = function()
      		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
      
  	end    
})

ShopTab:AddButton({
	Name = "Buy Sharkman Karate",
	Callback = function()
      		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
  	end    
})

ShopTab:AddButton({
	Name = "Buy Electric Claw",
	Callback = function()
      		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
  	end    
})

ShopTab:AddButton({
	Name = "Buy Dragon Talon",
	Callback = function()
      		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
  	end    
})

ShopTab:AddButton({
	Name = "Buy Godhuman",
	Callback = function()
      		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
  	end    
})


local Section = ShopTab:AddSection({
	Name = "Others"
})

ShopTab:AddButton({
	Name = "Race Reroll [Bones]",
	Callback = function()
      		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,3)
  	end    
})

local MiTab = Window:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://11447063791",
	PremiumOnly = false
})


local Section = MiTab:AddSection({
	Name = "Team"
})

MiTab:AddButton({
	Name = "Pirate",
	Callback = function()
		local args = {
			[1] = "SetTeam",
			[2] = "Pirates"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)) 
		local args = {
			[1] = "BartiloQuestProgress"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end    
})

MiTab:AddButton({
	Name = "Marine",
	Callback = function()
      		local args = {
			[1] = "SetTeam",
			[2] = "Marines"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		local args = {
			[1] = "BartiloQuestProgress"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
  	end    
})

MiTab:AddButton({
	Name = "Rejoin",
	Callback = function()
      		local ts = game:GetService("TeleportService")
		local p = game:GetService("Players").LocalPlayer
		ts:Teleport(game.PlaceId, p)
  	end    
})

MiTab:AddButton({
	Name = "Hop Server[Not Work]",
	Callback = function()
      		hop()
  	end    
})

local Section = MiTab:AddSection({
	Name = "Open Menu"
})

MiTab:AddButton({
	Name = "Fruit Shop",
	Callback = function()
      		local args = {
			[1] = "GetFruits"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		game.Players.localPlayer.PlayerGui.Main.FruitShop.Visible = true
  	end    
})

MiTab:AddButton({
	Name = "Title",
	Callback = function()
      		local args = {
			[1] = "getTitles"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		game.Players.localPlayer.PlayerGui.Main.Titles.Visible = true
  	end    
})

MiTab:AddButton({
	Name = "Haki Color",
	Callback = function()
      		game.Players.localPlayer.PlayerGui.Main.Colors.Visible = true
  	end    
})


local Section = MiTab:AddSection({
	Name = "Codes"
})

local x2Code = {
 "EXP_5B",
 "CONTROL",
 "UPDATE11",
 "XMASEXP",
 "1BILLION",
 "ShutDownFix2",
 "UPD14",
 "STRAWHATMAINE",
 "TantaiGaming",
 "Colosseum",
 "Axiore",
 "Sub2Daigrock",
 "Sky Island 3",
 "Sub2OfficialNoobie",
 "SUB2NOOBMASTER123",
 "THEGREATACE",
 "Fountain City",
 "BIGNEWS",
 "FUDD10",
 "SUB2GAMERROBOT_EXP1",
 "UPD15",
 "2BILLION",
 "UPD16",
 "3BVISITS",
 "fudd10_v2",
 "Starcodeheo",
 "Magicbus",
 "JCWK",
 "Bluxxy",
 "Sub2Fer999",
 "Enyu_is_Pro",
  "Secret_Admin"
}
   MiTab:AddButton({
	Name = "Reddem All Codes",
	Callback = function()
      		function RedeemCode(Value)
            game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(value)
        end
        for i,v in pairs(x2Code) do
            RedeemCode(Value)
      end
  	end    
}) 

local Section = MiTab:AddSection({
	Name = "Player"
})

MiTab:AddDropdown({
	Name = "Select Haki State",
	Default = "",
	Options = {"State 0","State 1","State 2","State 3","State 4","State 5"},
	Callback = function(Value)
		_G.SelectStateHaki = Value
	end    
})

MiTab:AddButton({
	Name = "Change Haki State",
	Callback = function()
      		if _G.SelectStateHaki == "State 0" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",0)
        elseif _G.SelectStateHaki == "State 1" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",1)
        elseif _G.SelectStateHaki == "State 2" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",2)
        elseif _G.SelectStateHaki == "State 3" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",3)
        elseif _G.SelectStateHaki == "State 4" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",4)
        elseif _G.SelectStateHaki == "State 5" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",5)
      end
  	end    
})

MiTab:AddToggle({
	Name = "No Clip",
	Default = false,
	Callback = function(Value)
		_G.No_clip = Value
	end    
})

spawn(function()
    pcall(function()
        game:GetService("RunService").Stepped:Connect(function()
            if _G.No_clip then
                for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = false    
                    end
                end
            end
        end)
    end)
end)

function NoDodgeCool()
        if nododgecool then
            for i,v in next, getgc() do
                if game:GetService("Players").LocalPlayer.Character.Dodge then
                    if typeof(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.Character.Dodge then
                        for i2,v2 in next, getupvalues(v) do
                            if tostring(v2) == "0.1" then
                            repeat wait(.1)
                                setupvalue(v,i2,0)
                            until not nododgecool
                            end
                        end
                    end
                end
            end
        end
end

local LocalPlayer = game:GetService'Players'.LocalPlayer
    local originalstam = LocalPlayer.Character.Energy.Value
    function infinitestam()
        LocalPlayer.Character.Energy.Changed:connect(function()
            if InfiniteEnergy then
                LocalPlayer.Character.Energy.Value = originalstam
            end 
        end)
end

MiTab:AddToggle({
	Name = "No Dodge Cooldown",
	Default = false,
	Callback = function(Value)
		nododgecool = Value
        NoDodgeCool()
	end    
})

MiTab:AddToggle({
	Name = "Auto Active Race",
	Default = false,
	Callback = function(Value)
		_G.AutoAgility = Value
	end    
})

spawn(function()
        pcall(function()
            while wait() do
                if _G.AutoAgility then
                    game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("ActivateAbility")
                end
            end
        end)
    end)

MiTab:AddToggle({
	Name = "Infinite Stamina",
	Default = false,
	Callback = function(Value)
		InfAbility = Value
        if Value == false then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility"):Destroy()
        end
    end    
})
    
    spawn(function()
        while wait() do
            if InfAbility then
                InfAb()
            end
      end
  end)

MiTab:AddToggle({
	Name = "Walk On Water",
	Default = true,
	Callback = function(Value)
		_G.WalkWater = Value
	end    
})

spawn(function()
			while task.wait() do
				pcall(function()
					if _G.WalkWater then
						game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000,112,1000)
					else
						game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000,80,1000)
					end
				end)
			end
		end)







OrionLib:Init()