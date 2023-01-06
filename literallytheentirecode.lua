--[[
 __          ___             _   _            _    _ ______ _      _                                             _                   
 \ \        / / |           | | | |          | |  | |  ____| |    | |                                           | |                  
  \ \  /\  / /| |__  _   _  | |_| |__   ___  | |__| | |__  | |    | |        __ _ _ __ ___   _   _  ___  _   _  | |__   ___ _ __ ___ 
   \ \/  \/ / | '_ \| | | | | __| '_ \ / _ \ |  __  |  __| | |    | |       / _` | '__/ _ \ | | | |/ _ \| | | | | '_ \ / _ \ '__/ _ \
    \  /\  /  | | | | |_| | | |_| | | |  __/ | |  | | |____| |____| |____  | (_| | | |  __/ | |_| | (_) | |_| | | | | |  __/ | |  __/
     \/  \/   |_| |_|\__, |  \__|_| |_|\___| |_|  |_|______|______|______|  \__,_|_|  \___|  \__, |\___/ \__,_| |_| |_|\___|_|  \___|
                      __/ |                                                                   __/ |                                  
                     |___/                                                                   |___/   
LEAVE NOW UNLESS YOU'RE MYSELF 😡😡😡😡😡😡😡😡🤬🤬🤬🤬🤬🤬🤬🤬
]]

local THEJ = false

local EVENTERROR = true
local GUIERROR = true

createsprintonstart = nil
impossiblemode = nil

if game.Workspace:FindFirstChild("SprintCheck") then
	createsprintonstart = game.Workspace:FindFirstChild("SprintCheck").Value
else
	createsprintonstart = false
end

if game.Workspace:FindFirstChild("ImpossibleCheck") then
	impossiblemode = game.Workspace:FindFirstChild("ImpossibleCheck").Value
else
	impossiblemode = false
end

local Functions = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Functions.lua"))()

function HasDoomsDayUI()
	if game.Players.LocalPlayer.PlayerGui:FindFirstChild("DoomsDayUI") then
		return true
	else
		return false
	end
end

function createevents()
	if not game.ReplicatedStorage:FindFirstChild("ModEvents") then
		local ModEvents = game:GetObjects("rbxassetid://11910951647")[1]
		ModEvents.Name = "ModEvents"
		ModEvents.Parent = game.ReplicatedStorage
		wait(1)
		if game.ReplicatedStorage:FindFirstChild("ModEvents") then
			print("Doomsday events loaded")
			EVENTERROR = false
		else
			firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, "Something went wrong whilst adding the Doomsday Events.")
			EVENTERROR = true
		end
	else
		print("Doomsday events already loaded")
		--firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, "Doomsday events already loaded")
	end
end

function creategui()
	if not HasDoomsDayUI() then
		local MainUI = game:GetObjects("rbxassetid://11904519412")[1]
		MainUI.Name = "DoomsDayUI"
		MainUI.Parent = game.Players.LocalPlayer.PlayerGui
		wait(1)
		if HasDoomsDayUI() then
			print("Doomsday UI loaded")
			GUIERROR = false
		else
			firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, "Something went wrong whilst adding the Doomsday UI.")
			GUIERROR = true
		end
	else
		print("Doomsday UI already loaded")
		--firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, "Doomsday UI already loaded")
	end
end

function createsprint()
	if not game.Players.LocalPlayer.PlayerGui:FindFirstChild("StaminaGui") then

		local Parent = game.Players.LocalPlayer.PlayerGui

		local Sprint = Instance.new("Frame")
		local ImageLabel = Instance.new("ImageLabel")
		local UICorner = Instance.new("UICorner")
		local UIPadding = Instance.new("UIPadding")
		local Bar = Instance.new("Frame")
		local UICorner_2 = Instance.new("UICorner")
		local UIPadding_2 = Instance.new("UIPadding")
		local Fill = Instance.new("Frame")
		local UICorner_3 = Instance.new("UICorner")

		--Properties:

		local StaminaGui = Instance.new("ScreenGui")

		--Properties:

		StaminaGui.Name = "StaminaGui"
		StaminaGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
		StaminaGui.Enabled = true
		StaminaGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

		Sprint.Name = "Sprint"
		Sprint.Parent = StaminaGui
		Sprint.AnchorPoint = Vector2.new(0, 1)
		Sprint.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Sprint.BackgroundTransparency = 1.000
		Sprint.Position = UDim2.new(0.931555569, 0, 0.987179458, 0)
		Sprint.Size = UDim2.new(0.0556001104, 0, 0.0756410286, 0)
		Sprint.SizeConstraint = Enum.SizeConstraint.RelativeYY
		Sprint.ZIndex = 1005

		ImageLabel.Parent = Sprint
		ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 222, 189)
		ImageLabel.Size = UDim2.new(1, 0, 1, 0)
		ImageLabel.SizeConstraint = Enum.SizeConstraint.RelativeYY
		ImageLabel.Visible = false

		UICorner.CornerRadius = UDim.new(1, 0)
		UICorner.Parent = ImageLabel

		UIPadding.Parent = Sprint
		UIPadding.PaddingBottom = UDim.new(0.300000012, -5)
		UIPadding.PaddingLeft = UDim.new(0.0199999996, 0)
		UIPadding.PaddingRight = UDim.new(0.0500000007, -15)
		UIPadding.PaddingTop = UDim.new(0.300000012, -5)

		Bar.Name = "Bar"
		Bar.Parent = Sprint
		Bar.AnchorPoint = Vector2.new(0, 0.5)
		Bar.BackgroundColor3 = Color3.fromRGB(56, 46, 39)
		Bar.BackgroundTransparency = 0.700
		Bar.Position = UDim2.new(-2.72600269, 0, 0.499999672, 0)
		Bar.Size = UDim2.new(3.60599804, 0, 0.600000083, 0)
		Bar.ZIndex = 0

		UICorner_2.CornerRadius = UDim.new(0.25, 0)
		UICorner_2.Parent = Bar

		UIPadding_2.Parent = Bar
		UIPadding_2.PaddingBottom = UDim.new(0, 4)
		UIPadding_2.PaddingLeft = UDim.new(0, 4)
		UIPadding_2.PaddingRight = UDim.new(0, 4)
		UIPadding_2.PaddingTop = UDim.new(0, 4)

		Fill.Name = "Fill"
		Fill.Parent = Bar
		Fill.AnchorPoint = Vector2.new(0, 0.5)
		Fill.BackgroundColor3 = Color3.fromRGB(213, 185, 158)
		Fill.Position = UDim2.new(0, 0, 0.5, 0)
		Fill.Size = UDim2.new(1, 0, 1, 0)
		Fill.ZIndex = 2

		UICorner_3.CornerRadius = UDim.new(0.25, 0)
		UICorner_3.Parent = Fill

		local erm = Instance.new("ScreenGui")
		local ImageLabel = Instance.new("ImageLabel")
		erm.IgnoreGuiInset = true
		erm.Name = "erm"
		erm.Parent = Parent
		erm.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

		ImageLabel.Parent = erm
		ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ImageLabel.BackgroundTransparency = 1.000
		ImageLabel.Size = UDim2.new(1, 0, 0.998717964, 0)
		ImageLabel.Image = "rbxassetid://190596490"
		ImageLabel.ImageColor3 = Color3.fromRGB(0, 0, 0)

		ImageLabel.ImageTransparency = 1

		-- Services

		local Players = game:GetService("Players")
		local UIS = game:GetService("UserInputService")

		-- Variables

		local Plr = Players.LocalPlayer
		local Char = Plr.Character or Plr.CharacterAdded:Wait()
		local Hum = Char:WaitForChild("Humanoid")

		local stamina, staminaMax = nil, nil
		if impossiblemode then
			staminaMax = 150
			stamina = 150
		else
			staminaMax = 100
			stamina = 100
		end
		local sprintTime = 7
		local cooldown = false

		local ModuleScripts = {
			MainGame = require(Plr.PlayerGui.MainUI.Initiator.Main_Game),
		}

		-- Setup

		local nIdx; nIdx = hookmetamethod(game, "__newindex", newcclosure(function(t, k, v)
			if k == "WalkSpeed" then
				if ModuleScripts.MainGame.chase then
					v = ModuleScripts.MainGame.crouching and 15 or 22
				elseif ModuleScripts.MainGame.crouching then
					v = 8
				else
					v = isSprinting and 20 or 12
				end
			end

			return nIdx(t, k, v)
		end))

		-- Scripts

		sprintTime = math.max(sprintTime - 1, 1)
		local zerostamtween = game.TweenService:Create(ImageLabel,TweenInfo.new(12),{ImageTransparency = 0})
		UIS.InputBegan:Connect(function(key, gameProcessed)
			if not gameProcessed and key.KeyCode == Enum.KeyCode.Q and not cooldown and not ModuleScripts.MainGame.crouching then
				-- Sprinting

				isSprinting = true
				if impossiblemode then
					Hum:SetAttribute("SpeedBoost", 5)
				else
					Hum:SetAttribute("SpeedBoost", 4)
				end
				zerostamtween:Play()
				while UIS:IsKeyDown(Enum.KeyCode.Q) and stamina > 0 do
					stamina = math.max(stamina - 1, 0)
					Fill.Size = UDim2.new(1 / staminaMax * stamina, 1, 1, 0)
					task.wait(sprintTime / 100)

				end

				-- Reset
				zerostamtween:Pause()
				isSprinting = false
				Hum:SetAttribute("SpeedBoost", 0)
				game.TweenService:Create(ImageLabel,TweenInfo.new(1),{ImageTransparency = 1}):Play()
				Hum.WalkSpeed = 12

				if stamina == 0 then
					-- Cooldown
					firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent,"You're exhausted.")
					local noStamernaSound = Instance.new("Sound",workspace)
					noStamernaSound.SoundId = "rbxassetid://8258601891"
					noStamernaSound.Volume = 0.8
					noStamernaSound.PlayOnRemove = true
					noStamernaSound:Destroy()
					cooldown = true
					game.TweenService:Create(ImageLabel,TweenInfo.new(0.3),{ImageTransparency = 0}):Play()
					wait(0.3)
					game.TweenService:Create(ImageLabel,TweenInfo.new(10),{ImageTransparency = 1}):Play()
					for i = 1, staminaMax, 1 do
						stamina = i
						Fill.Size = UDim2.new(1 / staminaMax * i, 1, 1, 0)

						task.wait(sprintTime / 50)
					end

					cooldown = false
				else
					-- Refill
					cooldown = false
					Spawn(function()
						--wait(1)
						cooldown = false
					end)
					game.TweenService:Create(ImageLabel,TweenInfo.new(1),{ImageTransparency = 1}):Play()
					while not UIS:IsKeyDown(Enum.KeyCode.Q) do
						stamina = math.min(stamina + 1, staminaMax)
						Fill.Size = UDim2.new(1 / staminaMax * stamina, 1, 1, 0)

						task.wait(sprintTime / 50)
					end
				end        
			end
		end)
		Hum:SetAttribute("SpeedBoost", 0)
		Hum.WalkSpeed = 12

	else
		firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent,"You're already able to use your legs to their fullest potential!")	
	end
end

if not game.Workspace:FindFirstChild("DoomsDayInitiated") then
	local epic = Instance.new("BoolValue")
	epic.Parent = game.Workspace
	epic.Name = "DoomsDayInitiated"
	epic.Value = false
	THEJ = false
else
	firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, "You've already executed the doomsday script")
	THEJ = true
end

if not THEJ then
	if game.ReplicatedStorage.GameData.LatestRoom.Value > 0 then
		game.ReplicatedStorage.GameStats["Player_" .. game.Players.LocalPlayer.Name].Total.DeathCause.Value = "Dementia"
		firesignal(game.ReplicatedStorage.Bricks.DeathHint.OnClientEvent, {"Execute the Doomsday script at Door 0 next time please"})
		game.Players.LocalPlayer.Character.Humanoid.Health = 0
	else if game.ReplicatedStorage.GameData.LatestRoom.Value == 0 then
			if createsprintonstart then
				createsprint()
			end
			creategui()
			createevents()
			local thehard = nil
			game.ReplicatedStorage.GameData.LatestRoom:GetPropertyChangedSignal("Value"):Wait()
			if not GUIERROR and not EVENTERROR then
				if game.Workspace:FindFirstChild("hardcoreInit") then
					thehard = true
					wait(9)
					firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, "Doomsday Initiated aswell")
				else
					thehard = false
					firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, "Doomsday Initiated")
				end
				wait(2)
				firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, "Made by nick_#3705")
				wait(2)
				--firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, "Also credits to zavaled and nicorocks5555 for certain things...")
				--wait(5)
				if not game.Players.LocalPlayer.PlayerGui:FindFirstChild("StaminaGui") then
					if impossiblemode then
						firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, "Stamina Script Reccomended with doomsday btw")
					else
						firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, "Stamina Script HEAVILY Reccomended with doomsday on impossible mode btw")
						wait(2)
					end
					wait(4)
				else
					firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, "Credits to Vynixu for sprint script")
					wait(3)
				end
				if not thehard then
					if impossiblemode then
						firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, "Have fun... :)")
					else
						firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, "Have fun.")
					end
				else
					if impossiblemode then
						firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, "Have fun. (You really will not with hardcore and doomsday)")				
					else
						firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, "you know what you have activated.")
						wait(3)
						--firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, "i'm going to tell you right now that this won't be fun.")
						--wait(4)
						firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, "suffering will ensue.")
					end
				end
			else
				if game.Workspace:FindFirstChild("hardcoreInit") then
					wait(9)
				end
				if GUIERROR and not EVENTERROR then
					firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, "Doomsday UI was not loaded correctly. please report to nick_#3705")
				elseif not GUIERROR and EVENTERROR then
					firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, "Doomsday events was not loaded correctly. please report to nick_#3705")
				elseif GUIERROR and EVENTERROR then
					firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, "Doomsday UI and events were not loaded correctly. please report to nick_#3705")
				end
			end
		end
	end

	--variables

	local EntityVars = {
		A200roomcooldown = 0,
		A200Active = false,
		BlinkActive = false,
		BlinkMode = nil,
		BlinkCanBlink = true,
		BlinkCanKill = false,
		BlinkKillDistance = 75,
		Blinkroomcooldown = math.random(5,11),
		ClaimSpawned = false,
		ClaimClaiming = false,
		ClaimKillDistance = 100,
		Claimroomcooldown = 0,
		DaturaNext = false,
		RuinActive = false,
		RuinLapsRemaining = 0,
		Ruinroomcooldown = math.random(8,11),
		TrickChanceMin = 1,
		TrickChanceMax = 20,
		TrickMaxPerRoom = 1,
		Smileremaininggamespawns = 3,
		Greenremaininggamespawns = 15,
		MouthSpeedMultiplier = 1,
		GreenSpeedMultiplier = 1,
		ExploitSpeedMultiplier = 1,
		SmileSpeedMultiplier= 1,
		RuinSpeedMultiplier = 1,
		A200SpeedMultiplier = 1,
		MatcherSpeedMultiplier = 1,
		BlinkLikelihoodMultiplier = 1
	}

	local AchievementVars = {
		MouthAchievementAchieved = false,
		GreenAchievementAchieved = false,
		ExploitAchievementAchieved = false,
		SmileAchievementAchieved = false,
		RuinAchievementAchieved = false,
		DaturaAchievementAchieved = false,
		A200AchievementAchieved = false,
		MatcherAchievementAchieved = false,
		ClaimAchievementAchieved = false,
		BlinkAchievementAchieved = false
	}

	if impossiblemode then
		EntityVars.MouthSpeedMultiplier = 2.5
		EntityVars.GreenSpeedMultiplier = 2.5
		EntityVars.ExploitSpeedMultiplier = 3.5
		EntityVars.SmileSpeedMultiplier = 2
		EntityVars.RuinSpeedMultiplier = 2.5
		EntityVars.A200SpeedMultiplier = 2
		EntityVars.MatcherSpeedMultiplier = 3
		EntityVars.BlinkLikelihoodMultiplier = Random.new():NextNumber(0.5, 5)
	else
		EntityVars.MouthSpeedMultiplier = 1
		EntityVars.GreenSpeedMultiplier = 1
		EntityVars.ExploitSpeedMultiplier = 1
		EntityVars.SmileSpeedMultiplier = 1
		EntityVars.RuinSpeedMultiplier = 1
		EntityVars.A200SpeedMultiplier = 1
		EntityVars.MatcherSpeedMultiplier = 1
		EntityVars.BlinkLikelihoodMultiplier = 1
	end

	--misc

	local TweenService = game:GetService("TweenService")

	function PlayerMovementCheck()
		local vartoreturn = nil
		if game.Players.LocalPlayer.Character.Humanoid.MoveDirection.Magnitude == 0 then --if the movedirection is equal to 0 then the following will happen;
			vartoreturn = false
		elseif game.Players.LocalPlayer.Character.Humanoid.MoveDirection.Magnitude > 0 then --if the movedirection is greater than 0 then the following will happen;
			vartoreturn = true
		end
		return vartoreturn
	end

	function GetGitSound(GithubSnd,SoundName)
		local url=GithubSnd
		if not isfile(SoundName..".mp3") then
			writefile(SoundName..".mp3", game:HttpGet(url))
		end
		local sound=Instance.new("Sound")
		sound.SoundId=(getcustomasset or getsynasset)(SoundName..".mp3")
		return sound
	end

	--entities related stuff that aren't events !!

	local Spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()
	
	function breakclosets(room: number)
		for i,part in pairs (game.Workspace.CurrentRooms:FindFirstChild(room).Assets:GetChildren()) do
			if part.Name == "Wardrobe" then
				part.HidePrompt:Destroy()
				part.Door1:Destroy()
				part.Door2:Destroy()
				part.Main.CanCollide = false
				part.Main.SoundEnter:Destroy()
				part.Main.SoundExit:Destroy()
				part.Main.Peek:Destroy()

				local braekdoors = game:GetObjects("rbxassetid://12026933579")[1]
				braekdoors.Parent = game.Workspace.CurrentRooms:FindFirstChild(room).Assets

				braekdoors:PivotTo(part.Main.CFrame)
				braekdoors.Door1.Anchored = false
				braekdoors.Door1.Knob.Anchored = false
				braekdoors.Door2.Anchored = false
				braekdoors.Door2.Knob.Anchored = false
				braekdoors.Door1.MaterialVariant = "PlywoodALT"
				braekdoors.Door2.MaterialVariant = "PlywoodALT"
				local random1 = math.random(1,3)
				local random2 = math.random(1,3)
				braekdoors.Door1:FindFirstChild(random1):Play()
				braekdoors.Door2:FindFirstChild(random2):Play()
			end
		end
	end
	
	function anyissues(normalcare: boolean, megacare: boolean, hardcorecheck: boolean)
		local heyman = false
		if normalcare then
			if game.Workspace.CurrentRooms:FindFirstChild("49") then
				heyman = true
			end
			if game.Workspace.CurrentRooms:FindFirstChild("50") then
				heyman = true
			end
			if game.Workspace.CurrentRooms:FindFirstChild("51") then
				heyman = true
			end
			if game.Workspace.CurrentRooms:FindFirstChild("99") then
				heyman = true
			end
			if game.Workspace.CurrentRooms:FindFirstChild("100") then
				heyman = true
			end
			if game.Workspace:FindFirstChild("SeekMoving") then
				heyman = true
			end
		end
		if megacare then
			if game.Workspace:FindFirstChild("RushMoving") then
				heyman = true
			end
			if game.Workspace:FindFirstChild("AmbushMoving") then
				heyman = true
			end
		end
		if hardcorecheck then
			if game.Workspace:FindFirstChild("ReboundMoving") then
				heyman = true
			end
		end
		if heyman == true then
			return true
		else
			return false
		end
	end

	--[[
	function entityrandomization()
		local entitytable = {
			--["Nothing"] = 10 - game.ReplicatedStorage.GameData.LatestRoom / 10
			["Mouth"] = 1,
			["Smile"] = 1,
			["Green"] = 1,
			["Exploit"] = 1,
			["Ruin"] = 1,
			["Datura"] = 1,
		}
		local b = 0
		for _, Chance in pairs(entitytable) do
			b += (Chance * 10)
		end
		local ranNumber = math.random(1, b)
		local b = 0
		for Entity, Chance in pairs(entitytable) do
			b += (Chance * 10)
			if b >= ranNumber then
				print("Entity " ..Entity)
				local ok = Entity
				return ok
			end
		end
	end
	]]

	game.ReplicatedStorage.ModEvents.MouthSpawn.Event:Connect(function()
		local entityTable = Spawner.createEntity({
			CustomName = "Mouth", -- Custom name of your entity
			Model = "http://www.roblox.com/asset/?id=11892852076", -- Can be GitHub file or rbxassetid
			Speed = 135 * EntityVars.MouthSpeedMultiplier, -- Percentage, 100 = default Rush speed
			DelayTime = 0, -- Time before starting cycles (seconds)
			HeightOffset = 0,
			CanKill = true,
			KillRange = 27.5,
			BackwardsMovement = true,
			BreakLights = true,
			FlickerLights = {
				false, -- Enabled/Disabled
				0.01072, -- Time (seconds)
			},
			Cycles = {
				Min = 1,
				Max = 1,
				WaitTime = 0,
			},
			CamShake = {
				true, -- Enabled/Disabled
				{2, 17.5, 0.1, 0.6}, -- Magnitude, Roughnes, Fade in, Fade out
				72.5, -- Shake start distance (from Entity to you)
			},
			Jumpscare = {
				false, -- Enabled/Disabled
				{
					Image1 = "rbxassetid://10483855823", -- Image1 url
					Image2 = "rbxassetid://10483999903", -- Image2 url
					Shake = true,
					Sound1 = {
						10483790459, -- SoundId
						{ Volume = 0.5 }, -- Sound properties
					},
					Sound2 = {
						10483837590, -- SoundId
						{ Volume = 0.5 }, -- Sound properties
					},
					Flashing = {
						true, -- Enabled/Disabled
						Color3.fromRGB(255, 255, 255), -- Color
					},
					Tease = {
						true, -- Enabled/Disabled
						Min = 1,
						Max = 3,
					},
				},
			},
			CustomDialog = {"You died to Mouth...", "Pay attention to any sort of laugh you may hear.", "That is related to their arrival."}, -- Custom death message
		})


		-----[[  Debug -=- Advanced  ]]-----
		entityTable.Debug.OnEntitySpawned = function()
		end

		entityTable.Debug.OnEntityDespawned = function()
			if game.Players.LocalPlayer.Character.Humanoid.Health ~= 0 then
				game.ReplicatedStorage.ModEvents.FakeAchievement:Fire("Mouth", true)
			end
		end

		entityTable.Debug.OnEntityStartMoving = function()
		end

		entityTable.Debug.OnEntityFinishedRebound = function()
		end

		entityTable.Debug.OnEntityEnteredRoom = function(room)
			--firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, "Matcher reached room " .. room.Name)
			--print(CustomEntity, "reached room", room)
			if room == game.Workspace.CurrentRooms:FindFirstChild(game.ReplicatedStorage.GameData.LatestRoom.Value) then
				local curroomvalue = game.ReplicatedStorage.GameData.LatestRoom
				local curroom = game.Workspace.CurrentRooms:FindFirstChild(curroomvalue.Value)
				curroom.Door.ClientOpen:FireServer()
			end
		end

		entityTable.Debug.OnLookAtEntity = function()
		end

		entityTable.Debug.OnDeath = function()
		end
		------------------------------------

		game.Players.LocalPlayer.PlayerGui.DoomsDayUI.Sounds.Ambience_Mouth:Play()

		wait(2.5)

		-- Run the created entity
		Spawner.runEntity(entityTable)
	end)

	game.ReplicatedStorage.ModEvents.GreenSpawn.Event:Connect(function()
		task.wait(0.01)
		EntityVars.Greenremaininggamespawns -= 1
		for i,part in pairs (game.Workspace.CurrentRooms:FindFirstChild(game.ReplicatedStorage.GameData.LatestRoom.Value):GetDescendants()) do
			if part.Name == "LightFixture" then
				for i,miniparts in pairs (part:GetDescendants()) do
					if miniparts.Name == "Neon" then
						if miniparts.Color == Color3.fromRGB(195, 161, 141) then
							miniparts.Color = Color3.new(0, 1, 0)
						elseif miniparts.Color == Color3.fromRGB(202, 191, 150) then
							miniparts.Color = Color3.fromRGB(0, 125, 0)
						end
					end
					if miniparts.ClassName == "PointLight" or miniparts.ClassName == "SpotLight" or miniparts.ClassName == "SurfaceLight" then
						miniparts.Color = Color3.new(0, 1, 0)
						miniparts.Brightness = 0.6
					end
				end
			end
		end

		local entityTable = Spawner.createEntity({
			CustomName = "Green", -- Custom name of your entity
			Model = "http://www.roblox.com/asset/?id=11892853479", -- Can be GitHub file or rbxassetid
			Speed = 70 * EntityVars.GreenSpeedMultiplier, -- Percentage, 100 = default Rush speed
			DelayTime = 0.5, -- Time before starting cycles (seconds)
			HeightOffset = 0,
			CanKill = true,
			KillRange = 95.1,
			BackwardsMovement = false,
			BreakLights = false,
			FlickerLights = {
				false, -- Enabled/Disabled
				0, -- Time (seconds)
			},
			Cycles = {
				Min = 1,
				Max = 1,
				WaitTime = 0,
			},
			CamShake = {
				true, -- Enabled/Disabled
				{1.5, 15, 0.875, 0.875}, -- Shake values (don't change if you don't know)
				150, -- Shake start distance (from Entity to you)
			},
			Jumpscare = {
				false, -- Enabled/Disabled
				{
					Image1 = "rbxassetid://10483855823", -- Image1 url
					Image2 = "rbxassetid://10483999903", -- Image2 url
					Shake = true,
					Sound1 = {
						10483790459, -- SoundId
						{ Volume = 0.5 }, -- Sound properties
					},
					Sound2 = {
						10483837590, -- SoundId
						{ Volume = 0.5 }, -- Sound properties
					},
					Flashing = {
						true, -- Enabled/Disabled
						Color3.fromRGB(255, 255, 255), -- Color
					},
					Tease = {
						true, -- Enabled/Disabled
						Min = 1,
						Max = 3,
					},
				},
			},
			CustomDialog = {"You died to Green...", "Pay attention to the light colors in the room you are in.", "When they turn green, that is his cue.", "You will need to hide!"}, -- Custom death message
		})


		-----[[  Debug -=- Advanced  ]]-----
		entityTable.Debug.OnEntitySpawned = function()
		end

		entityTable.Debug.OnEntityDespawned = function()
			if game.Players.LocalPlayer.Character.Humanoid.Health ~= 0 then
				game.ReplicatedStorage.ModEvents.FakeAchievement:Fire("Green", true)
			end
		end

		entityTable.Debug.OnEntityStartMoving = function()
		end

		entityTable.Debug.OnEntityFinishedRebound = function()
		end

		entityTable.Debug.OnEntityEnteredRoom = function(room)
			--firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, "Matcher reached room " .. room.Name)
			--print(CustomEntity, "reached room", room)
			if room == game.Workspace.CurrentRooms:FindFirstChild(game.ReplicatedStorage.GameData.LatestRoom.Value) then
				local curroomvalue = game.ReplicatedStorage.GameData.LatestRoom
				local curroom = game.Workspace.CurrentRooms:FindFirstChild(curroomvalue.Value)
				curroom.Door.ClientOpen:FireServer()
			end
		end

		entityTable.Debug.OnLookAtEntity = function()
		end

		entityTable.Debug.OnDeath = function()
		end
		------------------------------------

		-- Run the created entity
		Spawner.runEntity(entityTable)
	end)

	game.ReplicatedStorage.ModEvents.MatcherSpawn.Event:Connect(function()
		local entityTable = Spawner.createEntity({
			CustomName = "Matcher", -- Custom name of your entity
			Model = "http://www.roblox.com/asset/?id=11892532883", -- Can be GitHub file or rbxassetid
			Speed = 123.5 * EntityVars.MatcherSpeedMultiplier, -- Percentage, 100 = default Rush speed
			DelayTime = 0.1, -- Time before starting cycles (seconds)
			HeightOffset = 0,
			CanKill = true,
			KillRange = 35,
			BackwardsMovement = false,
			BreakLights = true,
			FlickerLights = {
				true, -- Enabled/Disabled
				0.2, -- Time (seconds)
			},
			Cycles = {
				Min = 1,
				Max = 1,
				WaitTime = 0,
			},
			CamShake = {
				true, -- Enabled/Disabled
				{3, 15, 0.08, 0.85}, -- Magnitude, Roughnes, Fade in, Fade out
				75, -- Shake start distance (from Entity to you)
			},
			Jumpscare = {
				false, -- Enabled/Disabled
				{
					Image1 = "rbxassetid://10483855823", -- Image1 url
					Image2 = "rbxassetid://10483999903", -- Image2 url
					Shake = true,
					Sound1 = {
						10483790459, -- SoundId
						{ Volume = 0.5 }, -- Sound properties
					},
					Sound2 = {
						10483837590, -- SoundId
						{ Volume = 0.5 }, -- Sound properties
					},
					Flashing = {
						true, -- Enabled/Disabled
						Color3.fromRGB(255, 255, 255), -- Color
					},
					Tease = {
						true, -- Enabled/Disabled
						Min = 1,
						Max = 3,
					},
				},
			},
			CustomDialog = {}, -- Custom death message
		})


		-----[[  Debug -=- Advanced  ]]-----
		entityTable.Debug.OnEntitySpawned = function()
			game.Players.LocalPlayer.PlayerGui.DoomsDayUI.Sounds["Ambience_Matcher"]:Play()
		end

		entityTable.Debug.OnEntityDespawned = function()
			game.Workspace.CurrentRooms:FindFirstChild(game.ReplicatedStorage.GameData.LatestRoom.Value).Door.ClientOpen:FireServer()
			if game.Players.LocalPlayer.Character.Humanoid.Health ~= 0 then
				game.ReplicatedStorage.ModEvents.FakeAchievement:Fire("Matcher", true)
			end
		end

		entityTable.Debug.OnEntityStartMoving = function()
		end

		entityTable.Debug.OnEntityFinishedRebound = function()
		end

		entityTable.Debug.OnEntityEnteredRoom = function(room)
			--firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, "Matcher reached room " .. room.Name)
			--print(CustomEntity, "reached room", room)
			if room == game.Workspace.CurrentRooms:FindFirstChild(game.ReplicatedStorage.GameData.LatestRoom.Value + 1) then
				game.Workspace.CurrentRooms:FindFirstChild(game.ReplicatedStorage.GameData.LatestRoom.Value).Door.ClientOpen:FireServer()
			end
		end

		entityTable.Debug.OnLookAtEntity = function()
		end

		entityTable.Debug.OnDeath = function()
			game.ReplicatedStorage.ModEvents.JumpscareEvent:Fire("Matcher")
			local player = game.Players.LocalPlayer
			if player.Character:GetAttribute("ForceOut") and player.Character:GetAttribute("ForceOut") == true or player.Character:GetAttribute("HideSickness") and player.Character:GetAttribute("HideSickness") == true or player.Character:GetAttribute("HideSemiSickness") and player.Character:GetAttribute("HideSemiSickness") == true then
				firesignal(game.ReplicatedStorage.Bricks.DeathHint.OnClientEvent, {"You died to Matcher..", "It can appear at any time.", "So pay attention for cues that hint its arrival!"})
			else
				firesignal(game.ReplicatedStorage.Bricks.DeathHint.OnClientEvent, {"What a predicament...", "You died to Matcher, because you could hide..", "Remember, you only have to hide when Matcher is near!"})
			end
		end
		------------------------------------


		-- Run the created entity
		Spawner.runEntity(entityTable)
	end)

	game.ReplicatedStorage.ModEvents.A200Spawn.Event:Connect(function()
		local entityTable = Spawner.createEntity({
			CustomName = "A-200", -- Custom name of your entity
			Model = "http://www.roblox.com/asset/?id=11892860347", -- Can be GitHub file or rbxassetid
			Speed = 275 * EntityVars.A200SpeedMultiplier, -- Percentage, 100 = default Rush speed
			DelayTime = 3.5, -- Time before starting cycles (seconds)
			HeightOffset = 0,
			CanKill = true,
			KillRange = 150,
			BackwardsMovement = true,
			BreakLights = false,
			FlickerLights = {
				false, -- Enabled/Disabled
				0, -- Time (seconds)
			},
			Cycles = {
				Min = 1,
				Max = 1,
				WaitTime = 0,
			},
			CamShake = {
				true, -- Enabled/Disabled
				{0.7, 10, 0.05, 0.2}, -- Magnitude, Roughnes, Fade in, Fade out
				50, -- Shake start distance (from Entity to you)
			},
			Jumpscare = {
				false, -- Enabled/Disabled
				{
					Image1 = "rbxassetid://10483855823", -- Image1 url
					Image2 = "rbxassetid://10483999903", -- Image2 url
					Shake = true,
					Sound1 = {
						10483790459, -- SoundId
						{ Volume = 0.5 }, -- Sound properties
					},
					Sound2 = {
						10483837590, -- SoundId
						{ Volume = 0.5 }, -- Sound properties
					},
					Flashing = {
						true, -- Enabled/Disabled
						Color3.fromRGB(255, 255, 255), -- Color
					},
					Tease = {
						true, -- Enabled/Disabled
						Min = 1,
						Max = 3,
					},
				},
			},
			CustomDialog = {}, -- Custom death message
		})


		-----[[  Debug -=- Advanced  ]]-----
		entityTable.Debug.OnEntitySpawned = function()
			--game.Players.LocalPlayer.PlayerGui.DoomsDayUI.Sounds["Ambience_Matcher"]:Play()
			EntityVars.A200Active = true
			EntityVars.A200roomcooldown = 189274798
		end

		entityTable.Debug.OnEntityDespawned = function()
			game.Workspace.CurrentRooms:FindFirstChild(game.ReplicatedStorage.GameData.LatestRoom.Value).Door.ClientOpen:FireServer()
			if game.Players.LocalPlayer.Character.Humanoid.Health ~= 0 then
				game.ReplicatedStorage.ModEvents.FakeAchievement:Fire("A200", true)
			end
			EntityVars.A200Active = false
			EntityVars.A200roomcooldown = 2
		end

		entityTable.Debug.OnEntityStartMoving = function()
		end

		entityTable.Debug.OnEntityFinishedRebound = function()
		end

		entityTable.Debug.OnEntityEnteredRoom = function(room)
			--firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, "Matcher reached room " .. room.Name)
			--print(CustomEntity, "reached room", room)
			if room == game.Workspace.CurrentRooms:FindFirstChild(game.ReplicatedStorage.GameData.LatestRoom.Value) then
				local curroomvalue = game.ReplicatedStorage.GameData.LatestRoom
				local curroom = game.Workspace.CurrentRooms:FindFirstChild(curroomvalue.Value)
				curroom.Door.ClientOpen:FireServer()
				wait(1.5)
				--[[
					if curroomvalue.Value ~= game.ReplicatedStorage.GameData.LatestRoom.Value then
						curroom.Door.Door:FindFirstChild("Break").PlayOnRemove = true
						curroom.Door.Door:FindFirstChild("Break"):Play()
						curroom.Door.Door:Destroy()
						curroom.Door.Sign:Destroy()
						curroom.Door.Hinge:Destroy()
						curroom.Door.Hidden:Destroy()
						curroom.Door.Light:FindFirstChild("Error"):play()
						curroom.Door.Light.Attachment.PointLight.Color = Color3.new(1, 0, 0)
						curroom.Door.Light.Attachment.PointLight.Brightness = 0.5
						curroom.Door.Light.Attachment.PointLight.Enabled = true
					else
						--print("bozo")
					end
				]]
			end
		end

		entityTable.Debug.OnLookAtEntity = function()
		end

		entityTable.Debug.OnDeath = function()
			game.ReplicatedStorage.ModEvents.JumpscareEvent:Fire("A200")
			local player = game.Players.LocalPlayer
			if player.Character:GetAttribute("ForceOut") == true or player.Character:GetAttribute("HideSickness") and player.Character:GetAttribute("HideSickness") == true or player.Character:GetAttribute("HideSemiSickness") and player.Character:GetAttribute("HideSemiSickness") == true then
				firesignal(game.ReplicatedStorage.Bricks.DeathHint.OnClientEvent, {"You died to A-200...because you couldn't hide.", "You only have to hide when A-200 is near!"})
			else
				firesignal(game.ReplicatedStorage.Bricks.DeathHint.OnClientEvent, {"You died to A-200...", "Pay attention to any deep banging.", "That is related to their arrival."})
			end
		end
		------------------------------------


		-- Run the created entity
		Spawner.runEntity(entityTable)
	end)	
	
	game.ReplicatedStorage.ModEvents.RuinSpawn.Event:Connect(function(initial: boolean)
		local entityTable = Spawner.createEntity({
			CustomName = "Ruin", -- Custom name of your entity
			Model = "http://www.roblox.com/asset/?id=11892857355", -- Can be GitHub file or rbxassetid
			Speed = 275 * EntityVars.RuinSpeedMultiplier, -- Percentage, 100 = default Rush speed
			DelayTime = 0.2, -- Time before starting cycles (seconds)
			HeightOffset = 0,
			CanKill = true,
			KillRange = 75,
			BackwardsMovement = true,
			BreakLights = false,
			FlickerLights = {
				false, -- Enabled/Disabled
				0, -- Time (seconds)
			},
			Cycles = {
				Min = 1,
				Max = 1,
				WaitTime = 0,
			},
			CamShake = {
				true, -- Enabled/Disabled
				{1, 35, 0.025, 0.75}, -- Magnitude, Roughnes, Fade in, Fade out
				85, -- Shake start distance (from Entity to you)
			},
			Jumpscare = {
				false, -- Enabled/Disabled
				{
					Image1 = "rbxassetid://10483855823", -- Image1 url
					Image2 = "rbxassetid://10483999903", -- Image2 url
					Shake = true,
					Sound1 = {
						10483790459, -- SoundId
						{ Volume = 0.5 }, -- Sound properties
					},
					Sound2 = {
						10483837590, -- SoundId
						{ Volume = 0.5 }, -- Sound properties
					},
					Flashing = {
						true, -- Enabled/Disabled
						Color3.fromRGB(255, 255, 255), -- Color
					},
					Tease = {
						true, -- Enabled/Disabled
						Min = 1,
						Max = 3,
					},
				},
			},
			CustomDialog = {}, -- Custom death message
		})


		-----[[  Debug -=- Advanced  ]]-----
		entityTable.Debug.OnEntitySpawned = function()
			--game.Players.LocalPlayer.PlayerGui.DoomsDayUI.Sounds["Ambience_Matcher"]:Play()
			EntityVars.RuinActive = true
		end

		entityTable.Debug.OnEntityDespawned = function()
			game.Workspace.CurrentRooms:FindFirstChild(game.ReplicatedStorage.GameData.LatestRoom.Value).Door.ClientOpen:FireServer()
			EntityVars.RuinActive = false 
			EntityVars.RuinLapsRemaining -= 1
			if EntityVars.RuinLapsRemaining == 0 then
				if game.Players.LocalPlayer.Character.Humanoid.Health ~= 0 then
					game.ReplicatedStorage.ModEvents.FakeAchievement:Fire("Ruin", true)
				end
			end
			EntityVars.Ruinroomcooldown = math.random(15,35)
		end

		entityTable.Debug.OnEntityStartMoving = function()
		end

		entityTable.Debug.OnEntityFinishedRebound = function()
		end

		entityTable.Debug.OnEntityEnteredRoom = function(room)
			breakclosets(room.Name)
		end

		entityTable.Debug.OnLookAtEntity = function()
		end

		entityTable.Debug.OnDeath = function()
			game.ReplicatedStorage.ModEvents.JumpscareEvent:Fire("A200")
			local player = game.Players.LocalPlayer
			if player.Character:GetAttribute("ForceOut") == true or player.Character:GetAttribute("HideSickness") and player.Character:GetAttribute("HideSickness") == true or player.Character:GetAttribute("HideSemiSickness") and player.Character:GetAttribute("HideSemiSickness") == true then
				firesignal(game.ReplicatedStorage.Bricks.DeathHint.OnClientEvent, {"You died to Ruin, because you couldn't hide..", "Remember, you only need to hide when Ruin is near."})
			else
				firesignal(game.ReplicatedStorage.Bricks.DeathHint.OnClientEvent, {"You died to who you call Ruin..", "They are a unique one.", "Pay attention to when the lights turn red, and you hear a loud noise.", "This is their que!", "You may also need to go into future rooms to find new hiding spots."})
			end
		end
		------------------------------------
		
		if initial then
			
		end

		-- Run the created entity
		Spawner.runEntity(entityTable)
	end)	

	game.ReplicatedStorage.ModEvents.ClaimSpawn.Event:Connect(function()
		if not EntityVars.ClaimSpawned then
			EntityVars.ClaimSpawned = true
			EntityVars.ClaimClaiming = false
			local ClaimMain = Functions.LoadCustomInstance("http://www.roblox.com/asset/?id=11892865124")
			local Claim = ClaimMain:FindFirstChild("Claim")
			ClaimMain.Parent = game.Workspace
			for i,descendant in pairs (Claim:GetDescendants()) do
				if descendant:IsA("Sound") and descendant.Name ~= "Kill" then
					descendant.SoundGroup = game.SoundService.Main
				end
			end
			if not ClaimMain:GetAttribute("Use") then
				ClaimMain:SetAttribute("Use", true)
			end
			Claim.CFrame = game.Workspace.CurrentRooms:FindFirstChild(game.ReplicatedStorage.GameData.LatestRoom.Value).Parts:FindFirstChild("Floor").CFrame * CFrame.new(math.random(-200,200) / 100, math.random(400,600) / 100, math.random(-200,200) / 100)
			Claim:FindFirstChild("Spawn"):Play()
			Claim.Attachment.PointLight1.Brightness = 0
			Claim.Attachment.PointLight2.Brightness = 0
			Claim.Attachment.Sparkles.Enabled = true
			Claim.Attachment.Eyes.Enabled = false
			wait(3.1)
			--print("CLAIM IS CLAIMING")
			EntityVars.ClaimClaiming = true
			Claim.Attachment.Eyes.Enabled = true
			Claim:FindFirstChild("Whisper").PlaybackSpeed = 4
			Claim:FindFirstChild("Whisper").TimePosition = 0
			TweenService:Create(Claim.Attachment.PointLight1, TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.In, 0, false), {Brightness = 3}):Play()
			TweenService:Create(Claim.Attachment.PointLight2, TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.In, 0, false), {Brightness = 1.5}):Play() Claim:FindFirstChild("Whisper"):Play()
			wait(9.5)
			print("ok go away or somethin idk lol")
			ClaimMain:SetAttribute("Use", false)
			EntityVars.ClaimClaiming = false
			TweenService:Create(Claim:FindFirstChild("Whisper"), TweenInfo.new(1.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.In, 0, false), {PlaybackSpeed = 0}):Play()
			wait(0.4)
			Claim.Attachment.Sparkles.Enabled = false
			Claim.Attachment.Eyes:Destroy()
			wait(0.4)
			TweenService:Create(Claim.Attachment.PointLight1, TweenInfo.new(0.7, Enum.EasingStyle.Cubic, Enum.EasingDirection.In, 0, false), {Brightness = 0}):Play()
			TweenService:Create(Claim.Attachment.PointLight2, TweenInfo.new(0.7, Enum.EasingStyle.Cubic, Enum.EasingDirection.In, 0, false), {Brightness = 0}):Play()
			wait(2)
			if game.Players.LocalPlayer.Character.Humanoid.Health ~= 0 then
				game.ReplicatedStorage.ModEvents.FakeAchievement:Fire("Claim", true)
			end
			EntityVars.Claimroomcooldown = math.random(5,25)
			EntityVars.ClaimSpawned = false
			Claim:FindFirstChild("Whisper"):Stop()
			Claim:FindFirstChild("Whisper").TimePosition = 0
		end
	end)

	game.ReplicatedStorage.ModEvents.BlinkSpawn.Event:Connect(function()
		if not EntityVars.BlinkActive then
			EntityVars.BlinkActive = true
			EntityVars.BlinkCanBlink = true
			EntityVars.BlinkMode = "closed"
			local BlinkMain = Functions.LoadCustomInstance("http://www.roblox.com/asset/?id=11894400118")
			local Blink = BlinkMain:FindFirstChild("Blink")
			local offset = Vector3.new(math.random(1, 1), 5, math.random(1, 1))
			Blink.CFrame = game.Workspace.CurrentRooms:FindFirstChild(game.ReplicatedStorage.GameData.LatestRoom.Value).Parts:FindFirstChild("Floor").CFrame * CFrame.new(offset)
			for i,descendant in pairs (Blink:GetDescendants()) do
				if descendant:IsA("Sound") and descendant.Name ~= "Kill" then
					descendant.SoundGroup = game.SoundService.Main
				end
			end
			if not BlinkMain:GetAttribute("Use") then
				BlinkMain:SetAttribute("Use", true)
			end
			local savedcurroom = game.ReplicatedStorage.GameData.LatestRoom
			local blinkcurroom = Instance.new("NumberValue", Blink)
			blinkcurroom.Name = "RoomIn"
			blinkcurroom.Value = savedcurroom.Value
			BlinkMain.Parent = game.Workspace
			Blink.Attachment.PointLightFar.Enabled = false
			if Blink:FindFirstChild("Spawn") then
				Blink.Spawn:Play()
			end
			if Blink:FindFirstChild("ChangePhase") then
				Blink:FindFirstChild("ChangePhase").Event:Connect(function()
					--print(EntityVars.BlinkCanBlink)
					if EntityVars.BlinkCanBlink then
						EntityVars.BlinkCanBlink = false
						if Blink:FindFirstChild("BlinkForeshadow") then
							Blink:FindFirstChild("BlinkForeshadow"):Play()
						end
						wait(0.742)
						if Blink:FindFirstChild("Blink") and Blink:FindFirstChild("Blink").ClassName == "Sound" then
							Blink:FindFirstChild("Blink"):Play()
						end
						if EntityVars.BlinkMode == "open" then
							EntityVars.BlinkMode = "closed"
							EntityVars.BlinkCanKill = false
							Blink.Attachment.OpenParticle.Enabled = false
							Blink.Attachment.ClosedParticle.Enabled = true
							Blink.Attachment.PointLightFar.Enabled = false
						elseif EntityVars.BlinkMode == "closed" then
							EntityVars.BlinkCanKill = false
							EntityVars.BlinkMode = "open"
							Blink.Attachment.OpenParticle.Enabled = true
							Blink.Attachment.ClosedParticle.Enabled = false
							Blink.Attachment.PointLightFar.Enabled = true
						end
						wait(0.65)
						if EntityVars.BlinkMode == "open" then
							EntityVars.BlinkCanKill = true
						end
						if impossiblemode then
							wait(math.random(400, 600) / 1000)
						else
							wait(math.random(1000, 2000) / 1000)
						end
						EntityVars.BlinkCanBlink = true
					end
				end)
			end
			repeat
				local CURTICK = tick()
				for i = 1, 1000 do
					wait(0.1)
					if CURTICK + 0.5 <= tick() then
						break
					end
				end
				local speedrando = math.random(50, 500) / 100
				Blink:FindFirstChild("Whisper").PlaybackSpeed = speedrando
				firesignal(game.ReplicatedStorage.Bricks.CamShakeRelative.OnClientEvent, Blink.Position, 0.875, 8.9, 0, 1, Vector3.new(0.025,0.065,0.025))
				local possibleblinkchance = math.random(1,math.random(math.random(math.round(4 * (EntityVars.BlinkLikelihoodMultiplier / 10)), math.round(5 * (EntityVars.BlinkLikelihoodMultiplier / 10))), math.random(math.round(6 * (EntityVars.BlinkLikelihoodMultiplier / 10)), math.round(7 * (EntityVars.BlinkLikelihoodMultiplier / 10)))))
				if possibleblinkchance == 1 then
					Blink:FindFirstChild("ChangePhase"):Fire()
				end
				--print(blinkcurroom.Value, game.ReplicatedStorage.GameData.LatestRoom.Value)
				if PlayerMovementCheck() then
					--print("player is moving!")
				else
					--print("player is not moving!")
				end
			until blinkcurroom.Value ~= game.ReplicatedStorage.GameData.LatestRoom.Value
			EntityVars.Blinkroomcooldown = math.random(1,4)
			EntityVars.BlinkActive = false
			BlinkMain:SetAttribute("Use", false)
			if game.Players.LocalPlayer.Character.Humanoid.Health ~= 0 then
				game.ReplicatedStorage.ModEvents.FakeAchievement:Fire("Blink", true)
			end
			BlinkMain:Destroy()
		end
	end)

	game.ReplicatedStorage.ModEvents.DaturaSpawn.Event:Connect(function()
		local DaturaMain = Functions.LoadCustomInstance("http://www.roblox.com/asset/?id=11892858588")
		DaturaMain.Parent = game.Workspace
		local Datura = DaturaMain:FindFirstChild("Datura")
		Datura.CFrame = game.Workspace.CurrentRooms:FindFirstChild(game.ReplicatedStorage.GameData.LatestRoom.Value - 1):FindFirstChild("Door").Hidden.CFrame * CFrame.new(0, 0, -15)
		for i,descendant in pairs (Datura:GetDescendants()) do
			if descendant:IsA("Sound") then
				descendant.SoundGroup = game.SoundService.Main
			end
		end
		Datura:FindFirstChild("SpawnSound"):Play()
		TweenService:Create(Datura, TweenInfo.new(0.6, Enum.EasingStyle.Cubic, Enum.EasingDirection.In, 0, false), {CFrame = game.Workspace.CurrentRooms:FindFirstChild(game.ReplicatedStorage.GameData.LatestRoom.Value - 1):FindFirstChild("Door").Hidden.CFrame}):Play()
		wait(0.6)
		TweenService:Create(Datura, TweenInfo.new(1, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out, 0, false), {CFrame = Datura.CFrame * CFrame.new(0, -100, 0)}):Play()
		wait(1)
		DaturaMain:Destroy()
		if game.Players.LocalPlayer.Character.Humanoid.Health ~= 0 then
			game.ReplicatedStorage.ModEvents.FakeAchievement:Fire("Datura", true)
		end
	end)

	game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
		if EntityVars.Claimroomcooldown > 0 then
			EntityVars.Claimroomcooldown -= 1
		end
		if EntityVars.A200roomcooldown > 0 then
			EntityVars.A200roomcooldown -= 1
		end
		if EntityVars.Blinkroomcooldown > 0 then
			EntityVars.Blinkroomcooldown -= 1
		end
		if EntityVars.DaturaNext == true then
			EntityVars.DaturaNext = false
			game.ReplicatedStorage.ModEvents.DaturaSpawn:Fire()
		else
			local DaturaPossibility = math.random(1,60)
			if DaturaPossibility == 1 then
				EntityVars.DaturaNext = true
				if HasDoomsDayUI() then
					game.Players.LocalPlayer.PlayerGui.DoomsDayUI.Sounds.Ambience_Datura:Play()
				end
			end
		end
		local mouthpossibility = math.random(1,math.random(9,13))
		if mouthpossibility == 1 then

		end
	end)

	--entity animation

	game.ReplicatedStorage.ModEvents.AnimationFrame.Event:Connect(function(part: Instance, billboard: boolean)
		if part:FindFirstChild("animating", true).Value == false then
			if billboard then
				local partbill = part:FindFirstChild("BillboardGui", true)
				for i,child in pairs (partbill:GetChildren()) do
					if child:IsA("ImageLabel") then
						if part:FindFirstChild("animating", true) then
							part:FindFirstChild("animating", true).Value = true
						end
						--print(part, "animate frame")
						if child.Image == "rbxassetid://11883236766" then
							child.Image = "rbxassetid://11883236637"
							--print("A200 : frame 2")
						elseif child.Image == "rbxassetid://11883236637" then
							child.Image = "rbxassetid://11883236508"
							--print("A200 : frame 3")
						elseif child.Image == "rbxassetid://11883236508" then
							child.Image = "rbxassetid://11883236402"
							--print("A200 : frame 4")
						elseif child.Image == "rbxassetid://11883236402" then
							child.Image = "rbxassetid://11883236251"
							--print("A200 : frame 5")
						elseif child.Image == "rbxassetid://11883236251" then
							child.Image = "rbxassetid://11883236766"
							--print("A200 : frame 1")
						end
						--print(part, "animate frame complete")
						wait(0.1)
						if part:FindFirstChild("animating", true) then
							part:FindFirstChild("animating", true).Value = false
						end
					end
				end
			end
		else
			--warn(part, "already animating STUPIRD!")
		end
	end)

	--jumpscares

	game.ReplicatedStorage.ModEvents.JumpscareEvent.Event:Connect(function(jumpscaretype: string)
		if jumpscaretype == "Matcher" or jumpscaretype == "matcher" then
			local sound = game.Players.LocalPlayer.PlayerGui.DoomsDayUI.Sounds.Jumpscare_Matcher
			local imag = game.Players.LocalPlayer.PlayerGui.DoomsDayUI.Matcher
			--{1.1, 0},{1.4, 0}
			sound:Play()
			imag.Size = UDim2.new(0.096, 0, 0.148, 0)
			imag.Visible = true
			TweenService:Create(imag, TweenInfo.new(0.55), {Size = UDim2.new(1.1, 0, 1.4, 0)}):Play()
			local curtick = tick()
			for i = 1, 1000 do
				imag.Position = UDim2.new(math.random(450, 550) / 1000, 0, math.random(450, 550) / 1000, 0)
				task.wait(0.05)
				if curtick + 0.55 <= tick() then
					break
				end
			end
			imag.Visible = false
		elseif jumpscaretype == "him" then
			for i,child in pairs (game.Players.LocalPlayer.PlayerGui:GetChildren()) do
				if child.Name ~= "DoomsDayUI" or child.Name ~= "BubbleChat" or child.Name ~= "Chat" or child.Name ~= "MainUI" or child.Name ~= "PermUI" then
					child:Destroy()
				end
			end
			local plasyy = game.Players.LocalPlayer
			plasyy.Character.Humanoid.WalkSpeed = 0
			plasyy.Character:PivotTo(plasyy.Character.HumanoidRootPart.CFrame * CFrame.new(0, 1915.134, 0))
			plasyy.Character.HumanoidRootPart.Anchored = true
			local Static = GetGitSound("https://github.com/nicktheepicmemer/goofday-doors/blob/main/VHS%20Static%20noise.mp3?raw=true","something is here")
			local gui = game.Players.LocalPlayer.PlayerGui.DoomsDayUI
			local frame = gui.HimFrame
			frame.ImageLabel.Visible = true
			Static.Name = "something is here"
			Static.Parent = frame
			Static.Volume = 1
			Static:Play()
			frame.Visible = true
			game.SoundService.Main.Volume = 0
			game.SoundService.Main.Ambience.Volume = 0
			game.SoundService.Main.Music.Volume = 0
			game.SoundService.Main.Music_Priority.Volume = 0
			game.SoundService.Main.Sound.Volume = 0
			local amount = Random.new():NextNumber(3.11,4.73)
			wait(amount)
			frame.Nick.ImageTransparency = 1
			frame.Nick.Visible = true
			local firstween = Random.new():NextNumber(1.5, 2.2)
			TweenService:Create(frame.Nick, TweenInfo.new(firstween), {ImageTransparency = 0}):Play()
			wait(firstween + Random.new():NextNumber(1.7, 2.8))
			frame:FindFirstChildOfClass("TextLabel").TextStrokeTransparency = 1
			frame:FindFirstChildOfClass("TextLabel").TextTransparency = 1
			frame:FindFirstChildOfClass("TextLabel").Text = "You"
			frame:FindFirstChildOfClass("TextLabel").Visible = true
			local secondtween = Random.new():NextNumber(1,1.2)
			TweenService:Create(frame:FindFirstChildOfClass("TextLabel"), TweenInfo.new(secondtween), {TextTransparency = 0}):Play()
			wait(secondtween + Random.new():NextNumber(1.5, 2))
			frame.Nick.Size = UDim2.new(0.1, 0, 0.25, 0)
			Static.PlaybackSpeed = Random.new():NextNumber(0.875, 0.93)
			wait(0.25)
			frame:FindFirstChildOfClass("TextLabel").Visible = false
			frame.ImageLabel.Visible = false
			Static:Stop()
			frame.Nick.Size = UDim2.new(0.2, 0, 0.5, 0)
			wait(1.5)
			frame.Nick.Visible = false
			wait(0.1)
			frame.Nick.Image = "rbxassetid://11905265556"
			wait(Random.new():NextNumber(1,2.5))
			frame.Sound:Play()
			wait(1.6 + Random.new():NextNumber(2,4))
			frame.Nick.Visible = true
			repeat
				frame.Nick.Image = "rbxassetid://11905265556"
				task.wait()
			until frame.Nick.IsLoaded == true and frame.Nick.Image == "rbxassetid://11905265556"
			wait(Random.new():NextNumber(3,5))
			local Forever = true
			repeat
				local lol = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "0", "!", "@", "#", "$", "%", "^", "&", "*", ".", ",", "<", ">", "?",
					"!", ";", ":", "-", "=", "/", "X"}
				local amount = math.random(42,125)
				local text = ""
				for i = 1, amount do
					text = text .. lol[math.random(1, #lol)]
				end
				--print("You", text)
				game.Players.LocalPlayer:Kick("You " .. text)
				wait(0.25)
			until not Forever
		end
	end)

	--misc

	game.ReplicatedStorage.ModEvents.FakeAchievement.Event:Connect(function(the: string, needalive: boolean)
		local canachievetheachievingachievement = nil
		if needalive then
			if game.Players.LocalPlayer.Character.Humanoid.Health ~= 0 then
				canachievetheachievingachievement = true
			else
				canachievetheachievingachievement = false
			end
		else
			canachievetheachievingachievement = true
		end
		if canachievetheachievingachievement then
			if the == "Mouth" or the == "mouth" then
				if not AchievementVars.MouthAchievementAchieved then
					AchievementVars.MouthAchievementAchieved = true
					getgenv().Title = "Nom"
					getgenv().Description = "he he he haw.. gr... he he he haw.. gr... "
					getgenv().Reason = "Survive These BALLLS YEAAAAAHHHHHHHHH i am so funny"
					getgenv().BadgeId = 2130136021
					getgenv().Category = 69 --Im Very Funny

					local Unlock = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Lobby.RemoteListener.Modules.AchievementUnlock)
					local Achievements = debug.getupvalue(Unlock, 1)
					for i,v in pairs(require(game:GetService("ReplicatedStorage").Achievements)) do
						v.Title = getgenv().Title
						v.Desc = getgenv().Description
						v.Reason = getgenv().Reason
						v.BadgeId = getgenv().BadgeId
						v.Category = getgenv().Category
					end
					Unlock(nil,"Join")
				end
			elseif the == "Ruin" or the == "ruin" then
				if not AchievementVars.RuinAchievementAchieved then
					AchievementVars.RuinAchievementAchieved = true
					getgenv().Title = "In Ruins"
					getgenv().Description = "😎😎😎😎"
					getgenv().Reason = "Encounter Juan"
					getgenv().BadgeId = 0
					getgenv().Category = 69 --Im Very Funny

					local Unlock = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Lobby.RemoteListener.Modules.AchievementUnlock)
					local Achievements = debug.getupvalue(Unlock, 1)
					for i,v in pairs(require(game:GetService("ReplicatedStorage").Achievements)) do
						v.Title = getgenv().Title
						v.Desc = getgenv().Description
						v.Reason = getgenv().Reason
						v.BadgeId = getgenv().BadgeId
						v.Category = getgenv().Category
					end
					Unlock(nil,"Join")
				end
			elseif the == "Datura" or the == "datura" then
				if not AchievementVars.DaturaAchievementAchieved then
					AchievementVars.DaturaAchievementAchieved = true
					getgenv().Title = "Boo!"
					getgenv().Description = "Did I scare ya?"
					getgenv().Reason = "Encounter Datura"
					getgenv().BadgeId = 2130148606
					getgenv().Category = 69 --Im Very Funny

					local Unlock = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Lobby.RemoteListener.Modules.AchievementUnlock)
					local Achievements = debug.getupvalue(Unlock, 1)
					for i,v in pairs(require(game:GetService("ReplicatedStorage").Achievements)) do
						v.Title = getgenv().Title
						v.Desc = getgenv().Description
						v.Reason = getgenv().Reason
						v.BadgeId = getgenv().BadgeId
						v.Category = getgenv().Category
					end
					Unlock(nil,"Join")
				end
			elseif the == "Matcher" or the == "matcher" then
				if not AchievementVars.MatcherAchievementAchieved then
					AchievementVars.MatcherAchievementAchieved = true
					getgenv().Title = "No match for me!"
					getgenv().Description = "Meet your Match."
					getgenv().Reason = "Survive Matcher"
					getgenv().BadgeId = 2128765393
					getgenv().Category = 69 --Im Very Funny

					local Unlock = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Lobby.RemoteListener.Modules.AchievementUnlock)
					local Achievements = debug.getupvalue(Unlock, 1)
					for i,v in pairs(require(game:GetService("ReplicatedStorage").Achievements)) do
						v.Title = getgenv().Title
						v.Desc = getgenv().Description
						v.Reason = getgenv().Reason
						v.BadgeId = getgenv().BadgeId
						v.Category = getgenv().Category
					end
					Unlock(nil,"Join")
				end
			elseif the == "A200" or the == "A-200" or the == "a200" or the == "a-200" then
				if not AchievementVars.A200AchievementAchieved then
					AchievementVars.A200AchievementAchieved = true
					getgenv().Title = "Scribbled Smiles"
					getgenv().Description = "guh guh guh guh guh guh guh guh guh guh guh"
					getgenv().Reason = "Survive A-200"
					getgenv().BadgeId = 2130133446
					getgenv().Category = 69 --Im Very Funny

					local Unlock = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Lobby.RemoteListener.Modules.AchievementUnlock)
					local Achievements = debug.getupvalue(Unlock, 1)
					for i,v in pairs(require(game:GetService("ReplicatedStorage").Achievements)) do
						v.Title = getgenv().Title
						v.Desc = getgenv().Description
						v.Reason = getgenv().Reason
						v.BadgeId = getgenv().BadgeId
						v.Category = getgenv().Category
					end
					Unlock(nil,"Join")
				end
			elseif the == "Nick" or the == "nick" or the == "Him" or the == "him" or the == "NICK" or the == "HIM" then
				getgenv().Title = "something"
				getgenv().Description = "is"
				getgenv().Reason = "here"
				getgenv().BadgeId = 2130136234
				getgenv().Category = 69 --Im Very Funny
				local Unlock = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Lobby.RemoteListener.Modules.AchievementUnlock)
				local Achievements = debug.getupvalue(Unlock, 1)
				for i,v in pairs(require(game:GetService("ReplicatedStorage").Achievements)) do
					v.Title = getgenv().Title
					v.Desc = getgenv().Description
					v.Reason = getgenv().Reason
					v.BadgeId = getgenv().BadgeId
					v.Category = getgenv().Category
				end
				Unlock(nil,"Join")
			elseif the == "Claim" or the == "claim" then
				if not AchievementVars.ClaimAchievementAchieved then
					AchievementVars.ClaimAchievementAchieved = true
					getgenv().Title = "In Sight"
					getgenv().Description = "👁👁👁👁👀👀👀👁‍🗨👁‍🗨👀👀👁👁👁👁‍🗨👁‍🗨👁‍🗨👁‍🗨👀👀"
					getgenv().Reason = "Encounter and Survive THE CLAIMER!!!!!!!!!!!!!!!!!!!!!"
					getgenv().BadgeId = 2128765398
					getgenv().Category = 69 --Im Very Funny

					local Unlock = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Lobby.RemoteListener.Modules.AchievementUnlock)
					local Achievements = debug.getupvalue(Unlock, 1)
					for i,v in pairs(require(game:GetService("ReplicatedStorage").Achievements)) do
						v.Title = getgenv().Title
						v.Desc = getgenv().Description
						v.Reason = getgenv().Reason
						v.BadgeId = getgenv().BadgeId
						v.Category = getgenv().Category
					end
					Unlock(nil,"Join")
				end
			elseif the == "Blink" or the == "blink" then
				if not AchievementVars.BlinkAchievementAchieved then
					AchievementVars.BlinkAchievementAchieved = true
					getgenv().Title = "DigzIGNDIKKkSE0ji3"
					getgenv().Description = "👁"
					getgenv().Reason = "Survive Bing"
					getgenv().BadgeId = 2130136234
					getgenv().Category = 69 --Im Very Funny

					local Unlock = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Lobby.RemoteListener.Modules.AchievementUnlock)
					local Achievements = debug.getupvalue(Unlock, 1)
					for i,v in pairs(require(game:GetService("ReplicatedStorage").Achievements)) do
						v.Title = getgenv().Title
						v.Desc = getgenv().Description
						v.Reason = getgenv().Reason
						v.BadgeId = getgenv().BadgeId
						v.Category = getgenv().Category
					end
					Unlock(nil,"Join")
				end
			elseif the == "orang" then
				getgenv().Title = "FORBIDDEN"
				getgenv().Description = "Instruction #301130311"
				getgenv().Reason = "||||||||||||||||"
				getgenv().BadgeId = 2130136234
				getgenv().Category = 69 --Im Very Funny
				local Unlock = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Lobby.RemoteListener.Modules.AchievementUnlock)
				local Achievements = debug.getupvalue(Unlock, 1)
				for i,v in pairs(require(game:GetService("ReplicatedStorage").Achievements)) do
					v.Title = getgenv().Title
					v.Desc = getgenv().Description
					v.Reason = getgenv().Reason
					v.BadgeId = getgenv().BadgeId
					v.Category = getgenv().Category
				end
				Unlock(nil,"Join")
			end
		end
	end)

	game.ReplicatedStorage.ModEvents.QuestionToggle.Event:Connect(function(question: string, reccomended: boolean, confirmtext: string, declinetext:string, questionevent: string)
		local questiontoggle = game.Players.LocalPlayer.PlayerGui.DoomsDayUI.QuestionFrame
		questiontoggle.TextLabel.Text = question
		local laquerstioneventt = Instance.new("BoolValue", questiontoggle)
		laquerstioneventt.Name = questionevent .. " Active"
		if reccomended then
			questiontoggle.ReccomendedText.Visible = true
		else
			questiontoggle.ReccomendedText.Visible = false
		end
		questiontoggle.ConfirmButton.Visible = true
		questiontoggle.ConfirmButton.Text = confirmtext
		questiontoggle.NoConfirmoButton.Visible = true
		questiontoggle.NoConfirmoButton.Text = confirmtext
		questiontoggle.Visible = true
		questiontoggle.ConfirmButton.MouseButton1Click:Connect(function()
			if laquerstioneventt.Value == true then
				laquerstioneventt.Value = false
				if questionevent == "Sprint" or questionevent == "sprint" then
					createsprint()
				end
			end
		end)
		questiontoggle.NoConfirmoButton.MouseButton1Click:Connect(function()
			if laquerstioneventt.Value == true then
				questiontoggle.Visible = false
			end
		end)
	end)

	game.ReplicatedStorage.ModEvents.FakeDarkRoomEvent.Event:Connect(function(room: number)
		if room ~= 100 then
			game.Workspace.CurrentRooms:FindFirstChild(game.ReplicatedStorage.GameData.LatestRoom.Value):SetAttribute("Ambient", Color3.new(0, 0, 0))
			game.Workspace:FindFirstChild("Ambience_Dark"):Play()
			for i,part in pairs (game.Workspace.CurrentRooms:FindFirstChild(room):GetDescendants()) do
				if part.Name == "LightFixture" then
					if part.Parent.Name == "Lantern" or part.Parent.Name == "Lantern_Tall" then
						for i,miniparts in pairs (part:GetDescendants()) do
							if miniparts.Name == "Neon" then
								miniparts.Material = Enum.Material.Glass
								miniparts.Changed:Connect(function()
									if miniparts.Material ~= Enum.Material.Glass then
										miniparts.Material = Enum.Material.Glass
									end
								end)
							end
							if part.Parent:FindFirstChild("Stand", true) then
								part.Parent.Stand:ClearAllChildren()
							end
							if miniparts.ClassName == "PointLight" or miniparts.ClassName == "SpotLight" or miniparts.ClassName == "SurfaceLight" then
								miniparts:Destroy()
							end
						end
					else
						for i,miniparts in pairs (part:GetDescendants()) do
							if miniparts.Name == "Neon" then
								miniparts.Material = Enum.Material.Glass
								miniparts.Changed:Connect(function()
									if miniparts.Material ~= Enum.Material.Glass then
										miniparts.Material = Enum.Material.Glass
									end
								end)
							end
							if miniparts.ClassName == "PointLight" or miniparts.ClassName == "SpotLight" or miniparts.ClassName == "SurfaceLight" then
								miniparts:Destroy()
							end
						end
					end
				elseif part.Name == "Fireplace_Logs" then
					for i,chillll in pairs (part:GetDescendants()) do
						if chillll:IsA("Sound") or chillll:IsA("PointLight") or chillll:IsA("ParticleEmitter") and chillll.Parent.Name == "Log" then
							chillll:Destroy()
						end
					end
				elseif part.Name == "Fake_Window_Tall" then
					if part:FindFirstChild("Neon", true) then
						part.Neon.Color = Color3.new(0, 0, 0)
						part.Neon:ClearAllChildren()
					end
				end
			end
			local curroom = game.Workspace.CurrentRooms:FindFirstChild(game.ReplicatedStorage.GameData.LatestRoom.Value)
			wait(25)
			curroom.Door.Door.LightAttach.HelpLight.Brightness = 0
			curroom.Door.Door.LightAttach.HelpLight.Angle = 72
			curroom.Door.Door.LightAttach.HelpLight.Enabled = true
			curroom.Door.Door.LightAttach.HelpParticle.Enabled = true
			local light = curroom.Door.Door.LightAttach.HelpLight
			TweenService:Create(light, TweenInfo.new(20), {Brightness = 0.5, Angle = 160}):Play()
		end
		local curroom =game.Workspace.CurrentRooms:FindFirstChild(game.ReplicatedStorage.GameData.LatestRoom.Value)
		wait(25)
		curroom.Door.Door.LightAttach.HelpLight.Brightness = 0
		curroom.Door.Door.LightAttach.HelpLight.Angle = 72
		curroom.Door.Door.LightAttach.HelpLight.Enabled = true
		curroom.Door.Door.LightAttach.HelpParticle.Enabled = true
		local light = curroom.Door.Door.LightAttach.HelpLight
		TweenService:Create(light, TweenInfo.new(20), {Brightness = 0.5, Angle = 160}):Play()
	end)

	game.ReplicatedStorage.ModEvents.SeekInfestedRoom.Event:Connect(function(amount: number, room: number, creejy: boolean)
		if not game.Workspace.CurrentRooms:FindFirstChild(game.ReplicatedStorage.GameData.LatestRoom.Value):GetAttribute("IsDark") then
			game.ReplicatedStorage.ModEvents.FakeDarkRoomEvent:Fire(game.ReplicatedStorage.GameData.LatestRoom.Value)
		end
		require(game:GetService("ReplicatedStorage").ClientModules.EntityModules.Seek).tease(nil, workspace.CurrentRooms:WaitForChild(room), amount, 1665596753, false)
		if creejy then
			game.Workspace.CurrentRooms:FindFirstChild(game.ReplicatedStorage.GameData.LatestRoom.Value).ChildAdded:Connect(function(partadded)
				if amount ~= 0 then
					if partadded.Name == "Eye" and partadded:IsA("Model") then
						--print(partadded, partadded.Parent, partadded.ClassName)
						amount -= 1
						partadded.Eye.Color = Color3.new(1, 0, 0)
						partadded.Eye.Material = Enum.Material.SmoothPlastic
						partadded.Eye:WaitForChild("Decal").Color3 = Color3.new(0,0,0)
						partadded.Part:FindFirstChild("ParticleEmitter").Rate = math.random(4,8)
						partadded.Part.Attachment.Veins.Enabled = true
						partadded.Part.Attachment.PointLight.Brightness = 0.75
						partadded.Part.Attachment.PointLight.Color = Color3.new(1, 0, 0)
						partadded.Part.Attachment.PointLight.Enabled = true
						partadded.Part.Attachment.PointLight.Range = math.random(4000, 7500) / 1000
					end
				end
			end)
		end
	end)

	game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function() --misc random events
		wait(0.02)
		if game.Workspace.CurrentRooms:FindFirstChild(game.ReplicatedStorage.GameData.LatestRoom.Value):GetAttribute("OriginalName")
			and game.Workspace.CurrentRooms:FindFirstChild(game.ReplicatedStorage.GameData.LatestRoom.Value):GetAttribute("OriginalName") == "Hotel_MazeGate" then
			local modularbookshelfDELETE = math.random(1,math.random(3,6))
			local allornothing = math.random(1,3)

			if modularbookshelfDELETE == 1 then
				for i,child in pairs (game.Workspace.CurrentRooms:FindFirstChild(game.ReplicatedStorage.GameData.LatestRoom.Value).Assets:GetChildren()) do
					if child.Name == "Modular_Bookshelf" then
						if allornothing == 1 then
							child:Destroy()
						else
							local chance = math.random(1,math.random(3,4))
							if chance == 1 then
								child:Destroy()
							end
						end
					end
				end
			end
		end

		if game.ReplicatedStorage.GameData.LatestRoom.Value == 50 then
			local possiblebaddayforyou = math.random(1,10)
			if possiblebaddayforyou == 1 then
				game.ReplicatedStorage.ModEvents.FakeDarkRoomEvent:Fire(game.ReplicatedStorage.GameData.LatestRoom.Value)
			end
		end


		if game.ReplicatedStorage.GameData.LatestRoom.Value ~= 50 then
			if not game.Workspace.CurrentRooms:FindFirstChild(game.ReplicatedStorage.GameData.LatestRoom.Value):FindFirstChild("Eye") then
				local seekeyesforsomereason = math.random(1,40)
				if seekeyesforsomereason == 1 then
					game.ReplicatedStorage.ModEvents.SeekInfestedRoom:Fire(math.random(50,100), game.ReplicatedStorage.GameData.LatestRoom.Value, true)
				end
			else
				local seekeyesforsomereason = math.random(1,80)
				if seekeyesforsomereason == 1 then
					game.ReplicatedStorage.ModEvents.SeekInfestedRoom:Fire(math.random(math.random(1,2), math.random(3,5)), game.ReplicatedStorage.GameData.LatestRoom.Value, true)
				end
			end
			if game.Workspace.CurrentRooms:FindFirstChild(game.ReplicatedStorage.GameData.LatestRoom.Value):GetAttribute("OriginalName") and game.Workspace.CurrentRooms:FindFirstChild(game.ReplicatedStorage.GameData.LatestRoom.Value):GetAttribute("OriginalName") == "Hotel_SeekChaseIntersection" or game.Workspace.CurrentRooms:FindFirstChild(game.ReplicatedStorage.GameData.LatestRoom.Value):GetAttribute("OriginalName") == "Hotel_SeekChaseIntersectionAlt" then
				local generosity = math.random(1,100)
				if generosity == 1 then
					local possiblymoreconfusion = math.random(1,math.random(2, math.random(3, 4)))
					if possiblymoreconfusion == 1 then
						game.Workspace.CurrentRooms:FindFirstChild(game.ReplicatedStorage.GameData.LatestRoom.Value).Door.Door.LightAttach:Destroy()
						local honestlyscrewyou = math.random(1,math.random(2, 3))
						if honestlyscrewyou == 1 then
							game.Workspace.CurrentRooms:FindFirstChild(game.ReplicatedStorage.GameData.LatestRoom.Value).Door.Light:Destroy()
						end
					else
						game.Workspace.CurrentRooms:FindFirstChild(game.ReplicatedStorage.GameData.LatestRoom.Value).Door.Light:Destroy()
					end
					warn("Confusion moment :troll:")
				else
					game.Workspace.CurrentRooms:FindFirstChild(game.ReplicatedStorage.GameData.LatestRoom.Value).Door.Door.LightAttach:Destroy()
					game.Workspace.CurrentRooms:FindFirstChild(game.ReplicatedStorage.GameData.LatestRoom.Value).Door.Light:Destroy()
					warn("Confusion moment :riportrol:")
				end
				local nohands = math.random(1, math.random(4, math.random(5, 6)))
				if nohands == 1 then
					game.Workspace.CurrentRooms:FindFirstChild(game.ReplicatedStorage.GameData.LatestRoom.Value).Door.Door.Knob:Destroy()
					game.Workspace.CurrentRooms:FindFirstChild(game.ReplicatedStorage.GameData.LatestRoom.Value).Door.Door.Plate:Destroy()
				else
					game.Workspace.CurrentRooms:FindFirstChild(game.ReplicatedStorage.GameData.LatestRoom.Value).Door.Door.Knob.Material = Enum.Material.Glass
					game.Workspace.CurrentRooms:FindFirstChild(game.ReplicatedStorage.GameData.LatestRoom.Value).Door.Door.Plate.Material = Enum.Material.Glass
					game.Workspace.CurrentRooms:FindFirstChild(game.ReplicatedStorage.GameData.LatestRoom.Value).Door.Door.Knob.Color = Color3.fromRGB(151, 152, 161)
					game.Workspace.CurrentRooms:FindFirstChild(game.ReplicatedStorage.GameData.LatestRoom.Value).Door.Door.Plate.Color = Color3.fromRGB(151, 152, 161)
				end
				game.Workspace.CurrentRooms:FindFirstChild(game.ReplicatedStorage.GameData.LatestRoom.Value).Door.Door.Sign:Destroy()
				game.Workspace.CurrentRooms:FindFirstChild(game.ReplicatedStorage.GameData.LatestRoom.Value).Door.Sign:Destroy()
			else
				if game.ReplicatedStorage.GameData.LatestRoom.Value ~= 49 then
					local possibleconfusion = math.random(1,math.random(8,13))
					if possibleconfusion == 1 then
						warn("Skill issue detected")
						--local maybelessconfusion = math.random(1,6)
						--if maybelessconfusion ~= 1 then
						game.Workspace.CurrentRooms:FindFirstChild(game.ReplicatedStorage.GameData.LatestRoom.Value).Door.Light:Destroy()
						--end
						local nohands = math.random(1, 3)
						if nohands == 1 then
							game.Workspace.CurrentRooms:FindFirstChild(game.ReplicatedStorage.GameData.LatestRoom.Value).Door.Door.Knob:Destroy()
							game.Workspace.CurrentRooms:FindFirstChild(game.ReplicatedStorage.GameData.LatestRoom.Value).Door.Door.Plate:Destroy()
						else
							game.Workspace.CurrentRooms:FindFirstChild(game.ReplicatedStorage.GameData.LatestRoom.Value).Door.Door.Knob.Material = Enum.Material.Glass
							game.Workspace.CurrentRooms:FindFirstChild(game.ReplicatedStorage.GameData.LatestRoom.Value).Door.Door.Plate.Material = Enum.Material.Glass
							game.Workspace.CurrentRooms:FindFirstChild(game.ReplicatedStorage.GameData.LatestRoom.Value).Door.Door.Knob.Color = Color3.fromRGB(151, 152, 161)
							game.Workspace.CurrentRooms:FindFirstChild(game.ReplicatedStorage.GameData.LatestRoom.Value).Door.Door.Plate.Color = Color3.fromRGB(151, 152, 161)
						end
						game.Workspace.CurrentRooms:FindFirstChild(game.ReplicatedStorage.GameData.LatestRoom.Value).Door.Door.Sign:Destroy()
						game.Workspace.CurrentRooms:FindFirstChild(game.ReplicatedStorage.GameData.LatestRoom.Value).Door.Sign:Destroy()
					end
				end
			end
		end
	end)

	--main check

	game:GetService("RunService").RenderStepped:Connect(function()
		if EntityVars.ClaimSpawned and EntityVars.ClaimClaiming then
			for i,part in pairs (game.Workspace:GetChildren()) do
				if part.Name == "Claimer" and part:GetAttribute("Use") and part:GetAttribute("Use") == true then
					local Player = game.Players.LocalPlayer
					--print(part, part:GetChildren()[1])
					firesignal(game.ReplicatedStorage.Bricks.CamShakeRelative.OnClientEvent, part:GetChildren()[1].Position, 1, 10, 0.1, 1.5, Vector3.new(0.05,0.05,0.05))
					if Player.Character.Humanoid.Health > 0 then
						local Params = RaycastParams.new()
						Params.FilterDescendantsInstances = {
							part:GetChildren()[1],
							part or part:GetChildren()[1].Parent,
							game.Workspace.SpawnLocation
						}

						Params.CollisionGroup = "Default"
						Params.RespectCanCollide = true

						--print(part:GetChildren()[1], part)

						local dir = CFrame.lookAt(part:GetChildren()[1].Position, Player.Character.PrimaryPart.Position).LookVector * EntityVars.ClaimKillDistance
						local Cast = workspace:Raycast(part:GetChildren()[1].Position, dir)

						if Cast and Cast.Instance then
							local Hit = Cast.Instance

							--print("Raycast from Claim hit", Hit, ", parent of", Hit, "is", Hit.Parent)

							--if Hit:IsDescendantOf(Player.Character) and Player.Character:GetAttribute("Hiding") and (Player.Character:GetAttribute("Hiding") == false or Player.Character:GetAttribute("Hiding") == nil) then
							if Hit:IsDescendantOf(Player.Character) then
								game.ReplicatedStorage.GameStats["Player_" .. game.Players.LocalPlayer.Name].Total.DeathCause.Value = "Claim"
								firesignal(game.ReplicatedStorage.Bricks.DeathHint.OnClientEvent, {"You died to Claim...", "It will consume anyone on sight.", "Pay attention for any water-drop like noises, or a black sparkle in the middle of a room.", "When any of these are apparant, make sure Claim can not see you!"})
								if part:GetChildren()[1]:FindFirstChild("Kill", true) then
									part:GetChildren()[1]:FindFirstChild("Kill", true):Play()
								end
								task.wait()
								Player.Character.Humanoid.Health = 0
								for i = 1, 100 do
									firesignal(game.ReplicatedStorage.Bricks.DeathHint.OnClientEvent, {"You died to Claim...", "It will consume anyone on sight.", "Pay attention for any water-drop like noises, or a black sparkle in the middle of a room.", "When any of these are apparant, make sure Claim can not see you!"})
									task.wait()
								end
							end
						end
					end
					--print("Claimer finished render check")
				end
			end
		end
		if EntityVars.BlinkActive then
			if EntityVars.BlinkCanKill and EntityVars.BlinkMode == "open" then
				for i,part in pairs (game.Workspace:GetChildren()) do
					if part.Name == "Blinker" and part:GetAttribute("Use") and part:GetAttribute("Use") == true then
						--print("Blinker is sensing")
						local Player = game.Players.LocalPlayer
						--firesignal(game.ReplicatedStorage.Bricks.CamShakeRelative.OnClientEvent, part:GetChildren()[1].Position, 0.75, 7.5, 0.075, 1, Vector3.new(0.025,0.065,0.025))
						if Player.Character.Humanoid.Health > 0 then
							local Params = RaycastParams.new()
							Params.FilterDescendantsInstances = {
								part:GetChildren()[1],
								part or part:GetChildren()[1].Parent,
								game.Workspace.SpawnLocation
							}

							Params.CollisionGroup = "Default"
							Params.RespectCanCollide = true

							--print(part:GetChildren()[1], part)

							local dir = CFrame.lookAt(part:GetChildren()[1].Position, Player.Character.PrimaryPart.Position).LookVector * EntityVars.BlinkKillDistance
							local Cast = workspace:Raycast(part:GetChildren()[1].Position, dir)

							if Cast and Cast.Instance then
								local Hit = Cast.Instance

								if Hit:IsDescendantOf(Player.Character) and PlayerMovementCheck() then
									game.ReplicatedStorage.GameStats["Player_" .. game.Players.LocalPlayer.Name].Total.DeathCause.Value = "Blink"
									firesignal(game.ReplicatedStorage.Bricks.DeathHint.OnClientEvent, {"You died to who you call Blink...", "You cannot move when Blink's eye is open!"})
									if part:GetChildren()[1]:FindFirstChild("Kill", true) then
										part:GetChildren()[1]:FindFirstChild("Kill", true):Play()
									end
									task.wait()
									Player.Character.Humanoid.Health = 0
									for i = 1, 100 do
										firesignal(game.ReplicatedStorage.Bricks.DeathHint.OnClientEvent, {"You died to who you call Blink...", "You cannot move when Blink's eye is open!"})
										task.wait()
									end
								end
							end
						end
					end
				end
			end
		end
		--if EntityVars.A200Active then
		if game.Workspace:FindFirstChild("A-200") then
			for i,child in pairs (game.Workspace:GetChildren()) do
				if child.Name == "A-200" and child:GetChildren()[1]:FindFirstChild("animating").Value == false then
					game.ReplicatedStorage.ModEvents.AnimationFrame:Fire(child:GetChildren()[1], true)
				end
			end
		end
	end)
end
