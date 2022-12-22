local L_65_ = require(game:GetService("ReplicatedStorage"):WaitForChild("TS"))

local L_50_ = loadstring(game:HttpGet(("https://raw.githubusercontent.com/RandomAdamYT/DarkHub_V4/main/UILIB")))()
local L_51_ = L_50_:MakeWindow({
	Name = "DARKHUB V4 (LEAKED)",
	HidePremium = false,
	SaveConfig = true,
	ConfigFolder = "DARKHUB"
})
local L_52_;
L_52_ = hookfunction(getrenv().xpcall, function()
	return
end)
local L_53_;
local L_54_ = L_51_:Tab({
	Text = "Aimbot"
})
local L_55_ = L_51_:Tab({
	Text = "Gun Mods"
})
local L_56_ = L_51_:Tab({
	Text = "LocalPlayer"
})

L_56_:Button({
Text = "Noclip",
Callback = function()
game:GetService("RunService").Stepped:Connect(function()
		if not L_65_.Characters:GetCharacter(game.Players.LocalPlayer) then return end
		for i, v in pairs(L_65_.Characters:GetCharacter(game.Players.LocalPlayer):GetDescendants()) do
			if v:IsA("BasePart") then
				v.CanCollide = false
		    end
	    end
    end)
end})

local L_57_ = L_51_:Tab({
	Text = "Visuals"
})
local L_58_ = L_54_:Section({
	Text = "Main"
})
local L_59_ = L_54_:Section({
	Text = "Config"
})
L_58_:Toggle({
	Text = "Auto Killer",
	Default = true,
	Save = true,
	Flag = "FF_KillAll",
	Callback = function()
	end
})
L_58_:Toggle({
	Text = "Silent Aim",
	Default = false,
	Save = true,
	Flag = "FF_SilentAim",
	Callback = function()
	end
})
L_58_:Toggle({
	Text = "Kill Aura",
	Default = false,
	Save = true,
	Flag = "FF_KillAura",
	Callback = function()
	end
})
L_58_:Toggle({
	Text = "Grenade Teleport",
	Default = false,
	Save = true,
	Flag = "FF_GrenadeTP",
	Callback = function()
	end
})
L_58_:Toggle({
	Text = "FOV Visible",
	Default = false,
	Save = true,
	Flag = "FF_FOVVIS",
	Callback = function()
	end
})
L_59_:Slider({
	Text = "Silent Hit-Chance",
	Min = 0,
	Max = 100,
	Default = 100,
	Save = true,
	Increment = 1,
	Flag = "FV_HitChance",
	Callback = function()
	end
})
L_59_:Slider({
	Text = "FOV Value",
	Min = 5 + 95,
	Max = 750,
	Default = 100,
	Save = true,
	Increment = 10,
	Flag = "FV_FOVVALUE",
	Callback = function()
	end
})
L_59_:Dropdown({
	Text = "Hit Part",
	Options = {
		"Chest",
		"Head",
		"Random"
	},
	Default = "Random",
	Save = true,
	Flag = "FV_HitPart",
	Callback = function()
	end
})
local L_60_ = L_55_:Section({
	Text = "Weapon Modifications"
})
L_60_:Toggle({
	Text = "No Recoil",
	Default = false,
	Save = true,
	Flag = "FF_NoRECOIL",
	Callback = function()
	end
})
L_60_:Toggle({
	Text = "No Spread",
	Default = false,
	Save = true,
	Flag = "FF_NoSPREAD",
	Callback = function()
	end
})
L_60_:Toggle({
	Text = "Semi-WallBang",
	Warning = "You can only wallbang players close to you",
	Default = false,
	Save = true,
	Flag = "FF_WallBang",
	Callback = function()
	end
})
local L_61_ = L_56_:Section({
	Text = "LocalPlayer Modifications"
})
local L_62_ = L_56_:Section({
	Text = "Chat Spammer"
})
L_61_:Slider({
	Text = "Sprint Speed",
	Min = 2,
	Max = 10,
	Default = 2,
	Save = true,
	Increment = 1,
	Flag = "FV_SPRINT",
	Callback = function()
	end
})
L_61_:Toggle({
	Text = "Gravity Fly",
	Warning = "This is still a WIP",
	Default = false,
	Save = true,
	Flag = "FF_Fly",
	Callback = function()
	end
})
L_61_:Toggle({
	Text = "Rejoin on votekick",
	Warning = "Rejoins instantly on votekick",
	Default = false,
	Save = true,
	Flag = "FF_RJ",
	Callback = function()
	end
})
L_62_:Toggle({
	Text = "Chat Spammer",
	Default = false,
	Save = true,
	Flag = "FF_ChatSpam",
	Callback = function()
	end
})
L_62_:Slider({
	Text = "Chat Spam Delay",
	Min = 2,
	Max = 5 + 5,
	Default = 2,
	Save = true,
	Increment = 1,
	Flag = "FV_SPAMDELAY",
	Callback = function()
	end
})
L_62_:Textbox({
	Text = "Chat Message",
	Placeholder = "Enter A Message",
	Default = "darkhub.xyz",
	Save = true,
	Disappear = false,
	Callback = function(L_124_arg0)
		L_53_ = L_124_arg0
	end
})
local L_63_ = L_57_:Section({
	Text = "Visuals Options"
})
local L_64_ = L_57_:Section({
	Text = "Visuals Config"
})
L_63_:Toggle({
	Text = "Box ESP",
	Default = false,
	Save = true,
	Flag = "FF_BoxESP",
	Callback = function()
	end
})
L_63_:Toggle({
	Text = "Tracer ESP",
	Default = false,
	Save = true,
	Flag = "FF_TracerESP",
	Callback = function()
	end
})
L_63_:Toggle({
	Text = "Names ESP",
	Default = false,
	Save = true,
	Flag = "FF_NameESP",
	Callback = function()
	end
})
L_64_:Toggle({
	Text = "Show Team",
	Default = false,
	Save = true,
	Flag = "FF_TeamESP",
	Callback = function()
	end
})
local L_66_ = L_65_.Timer;
local L_67_ = getupvalue(L_66_.BindToHeartbeat, 1 + 0)["Control"]
local L_68_ = require(game:GetService("ReplicatedStorage").TS).Raycast;
local L_69_ = game:GetService("Players").LocalPlayer;
local L_70_ = game:GetService("Workspace").CurrentCamera;
local L_71_ = L_69_:GetMouse()
local L_72_;
local L_73_;
L_73_ = hookfunction(getrenv().math.random, function(...)
	local L_128_ = {
		...
	}
	if L_128_[1 + 0] == 7 then
		return wait(5 + 4)
	end;
	if tostring(getfenv(2).script) == "ItemControlScript" and L_50_.Flags["FF_NoSPREAD"].Value then
		if math.abs(L_128_[1]) == L_128_[2 + 0] then
			L_128_[1] = - 0.1
			L_128_[2 + 0] = 0.1
			return L_73_(unpack(L_128_))
		end
	end;
	return L_73_(...)
end)
local L_74_ = clonefunction(newcclosure(L_65_.Camera.Recoil.Update))
L_65_.Camera.Recoil.Update = function(L_142_arg0, L_143_arg1)
	if L_50_.Flags["FF_NoRECOIL"].Value then
		return L_142_arg0.Value - L_142_arg0.LastValue
	end;
	return L_74_(L_142_arg0, L_143_arg1)
end;
task.spawn(function()
	while task.wait(1) do
		setconstant(L_67_, tonumber(table.find(getconstants(L_67_), "Stand")) + 1 + 0, L_50_.Flags["FV_SPRINT"].Value)
		if L_50_.Flags["FF_WallBang"].Value then
			debug.setupvalue(L_68_.CastGeometryAndEnemies, 1, nil)
			debug.setupvalue(L_68_.CastGeometryAndEnemies, 2, nil)
		else
			debug.setupvalue(L_68_.CastGeometryAndEnemies, 1, game:GetService("Workspace").Geometry)
			debug.setupvalue(L_68_.CastGeometryAndEnemies, 2, game:GetService("Workspace").Terrain)
		end
	end
end)
task.spawn(function()
	while true do
		wait(L_50_.Flags["FV_SPAMDELAY"].Value)
		if L_50_.Flags["FF_ChatSpam"].Value == true then
			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(L_53_, "ALL")
			wait(.1)
		end
	end
end)
spawn(function()
	while task.wait() do
		if L_50_.Flags["FF_RJ"].Value then
			for L_165_forvar0, L_166_forvar1 in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Chat.Frame.ChatChannelParentFrame["Frame_MessageLogDisplay"].Scroller:GetChildren()) do
				if L_166_forvar1.Name == "Frame" then
					for L_167_forvar0, L_168_forvar1 in pairs(L_166_forvar1:GetChildren()) do
						if string.find(L_168_forvar1.Text, "votekick on " .. tostring(game.Players.LocalPlayer.Name)) then
							game:GetService("TeleportService"):Teleport(game.PlaceId)
						end
					end
				end
			end
		end
	end
end)
local function L_75_func()
	if L_50_.Flags["FV_HitPart"].Value == "Random" then
		if math.random(1 + 0, 3) == 1 then
			return "Head"
		else
			return "Chest"
		end
	else
		return L_50_.Flags["FV_HitPart"].Value
	end
end;
local function L_76_func(L_177_arg0)
	local L_178_ = {}
	if L_177_arg0:FindFirstChild("Hitbox") then
		for L_179_forvar0, L_180_forvar1 in pairs(L_177_arg0.Hitbox:GetChildren()) do
			table.insert(L_178_, L_180_forvar1)
			return L_178_[math.random(1 + 0, #L_178_)]
		end
	end
end;
game:GetService("UserInputService").InputBegan:connect(function(L_184_arg0, L_185_arg1)
	if L_184_arg0.KeyCode == Enum.KeyCode.LeftShift then
		Temp_Up = true
	end;
	if L_184_arg0.KeyCode == Enum.KeyCode.LeftControl then
		Temp_Down = true
	end
end)
game:GetService("UserInputService").InputEnded:connect(function(L_186_arg0, L_187_arg1)
	if L_186_arg0.KeyCode == Enum.KeyCode.LeftShift then
		Temp_Up = false
	end;
	if L_186_arg0.KeyCode == Enum.KeyCode.LeftControl then
		Temp_Down = false
	end
end)
spawn(function()
	while true do
		wait()
		pcall(function()
			if L_50_.Flags["FF_KillAura"].Value then
				for L_188_forvar0, L_189_forvar1 in pairs(GetCharacters()) do
					local L_190_ = L_65_.Characters:GetCharacter(game.Players.LocalPlayer)
					if L_190_ and L_189_forvar1.Hitbox and (L_189_forvar1.Body.Chest.Position - game.Workspace.CurrentCamera.CFrame.p).Magnitude < 20 then
						print'yea'
						pcall(EquipKnife)
						local L_191_, L_192_ = pcall(function()
							for L_194_forvar0 = 1, 2 do
								game:GetService("ReplicatedStorage"):FindFirstChild("Item_Melee", true):FireServer("StabBegin", L_190_:FindFirstChild("Stab", true).Parent.Parent)
								task.wait(.02)
								game:GetService("ReplicatedStorage"):FindFirstChild("Item_Melee", true):FireServer("Stab", L_190_:FindFirstChild("Stab", true).Parent.Parent, L_76_func(L_189_forvar1), Vector3.new(), Vector3.new())
							end
						end)
						print(L_191_, L_192_)
					end
				end
			end;
			if L_50_.Flags["FF_Fly"].Value then
				game:GetService("Workspace").Gravity = 0
				Me = L_65_.Characters:GetCharacter(game.Players.LocalPlayer)
				if Temp_Up == true then
					Me.Root.Velocity = Vector3.new(0, 40, 0)
				end;
				if Temp_Down == true then
					Me.Root.Velocity = Vector3.new(0, - 5 + 35, 0)
				end;
				if Temp_Down == false and Temp_Up == false then
					if Me.Root.Velocity.Y ~= 0 then
						Me.Root.Velocity = Vector3.new(0, 0, 0)
					end
				end
			else
				game:GetService("Workspace").Gravity = 110
			end
		end)
	end
end)
function GetCharacters()
	temptable = {}
	for L_214_forvar0, L_215_forvar1 in pairs(game:GetService("Players"):GetPlayers()) do
		if L_215_forvar1.Name ~= game:GetService("Players").LocalPlayer.Name and L_65_.Teams:GetPlayerTeam(L_215_forvar1) ~= L_65_.Teams:GetPlayerTeam(game:GetService("Players").LocalPlayer) then
			temp2 = L_65_.Characters:GetCharacter(L_215_forvar1)
			table.insert(temptable, temp2)
		end
	end;
	return temptable
end;
function getClosestPlayerToCursor()
	local L_216_ = nil
	local L_217_ = math.huge;
	for L_218_forvar0, L_219_forvar1 in pairs(GetCharacters()) do
		if L_219_forvar1:FindFirstChild("Body") and L_219_forvar1.Body:FindFirstChild("Head") then
			local L_220_ = L_70_:WorldToViewportPoint(L_219_forvar1.Body.Head.Position)
			local L_221_ = (Vector2.new(L_220_.X, L_220_.Y) - Vector2.new(L_71_.X, L_71_.Y)).magnitude;
			if L_221_ < L_217_ and L_221_ <= L_50_.Flags["FV_FOVVALUE"].Value then
				L_216_ = L_219_forvar1;
				L_217_ = L_221_
			end
		end
	end;
	return L_216_
end;
local L_77_ = function(L_222_arg0)
	return debug.getinfo(L_222_arg0 + 1 + 0).func
end;
OldIndex = hookfunction(getrawmetatable(game).__index, function(...)
	local L_226_, L_227_ = ...
	if tostring(L_226_) == "Camera" and tostring(L_227_) == "CFrame" and tostring(getfenv(2).script) == "ItemControlScript" then
		if L_50_.Flags["FF_SilentAim"].Value and L_50_.Flags["FV_HitChance"].Value >= math.random(1, 100) and getClosestPlayerToCursor() and tostring(debug.getinfo(L_77_(3)).name) == "LookVector" then
			local L_230_ = getClosestPlayerToCursor()
			if L_230_ then
				L_72_ = game:GetService("Workspace").CurrentCamera;
				if L_230_:FindFirstChild("Body") then
					local L_231_ = L_230_.Body:FindFirstChild(L_75_func())
					if L_231_ then
						L_72_ = {
							CFrame = CFrame.new(L_72_.CFrame.p, L_231_.Position or Vector3.new(0, 0, 0 + 0))
						}
					end
				end;
				return (L_72_.CFrame)
			end
		end
	end;
	return OldIndex(...)
end)
local L_78_ = Drawing.new("Circle")
L_78_.Thickness = 2 + 0;
L_78_.NumSides = 460
L_78_.Filled = false
L_78_.Transparency = 0.6
L_78_.Radius = L_50_.Flags["FV_FOVVALUE"].Value;
L_78_.Color = Color3.new(0, 255, 0)
game:GetService("RunService").Stepped:Connect(function()
	L_78_.Position = game:GetService("UserInputService"):GetMouseLocation()
	L_78_.Radius = L_50_.Flags["FV_FOVVALUE"].Value;
	if L_50_.Flags["FF_FOVVIS"].Value then
		L_78_.Visible = true
	else
		L_78_.Visible = false
	end
end)
function DrawSquare()
	local L_242_ = Drawing.new("Square")
	L_242_.Color = Color3.fromRGB(190, 5 + 185, 0)
	L_242_.Thickness = 0.5
	L_242_.Filled = false
	L_242_.Transparency = 1
	return L_242_
end;
function DrawLine()
	local L_248_ = Drawing.new("Line")
	L_248_.Color = Color3.new(190, 190, 0)
	L_248_.Thickness = 0.5
	return L_248_
end;
function DrawText()
	local L_250_ = Drawing.new("Text")
	L_250_.Color = Color3.fromRGB(190, 190, 0)
	L_250_.Size = 20
	L_250_.Outline = true
	L_250_.Center = true
	return L_250_
end;
function AddEsp(L_252_arg0)
	local L_253_ = DrawSquare()
	local L_254_ = DrawLine()
	local L_255_ = DrawText()
	game:GetService("RunService").Stepped:Connect(function()
		local L_256_, L_257_ = pcall(function()
			if L_65_.Characters:GetCharacter(L_252_arg0) == nil or L_65_.Characters:GetCharacter(L_252_arg0).Health.Value == 0 then
				L_253_.Visible = false
				L_254_.Visible = false
				L_255_.Visible = false
			else
				if L_50_.Flags["FF_TeamESP"].Value then
					if L_65_.Teams:GetPlayerTeam(L_252_arg0) == L_65_.Teams:GetPlayerTeam(game.Players.LocalPlayer) then
						L_253_.Color = Color3.fromRGB(0 + 0, 5 + 250, 0 + 0)
						L_254_.Color = Color3.fromRGB(0 + 0, 5 + 5 + 245, 0)
						L_255_.Color = Color3.fromRGB(0 + 0, 255, 0)
					else
						L_253_.Color = Color3.fromRGB(255, 0 + 0 + 0, 0 + 0)
						L_254_.Color = Color3.fromRGB(5 + 5 + 245, 0, 0)
						L_255_.Color = Color3.fromRGB(5 + 5 + 5 + 240, 0, 0)
					end;
					if L_65_.Characters:GetCharacter(L_252_arg0).Body:FindFirstChild("Chest") and L_252_arg0.InMenu.Value == false then
						local L_957_, L_958_ = game.Workspace.CurrentCamera:WorldToViewportPoint(L_65_.Characters:GetCharacter(L_252_arg0).Body.Chest.Position)
						local L_959_ = game.Workspace.CurrentCamera:WorldToViewportPoint(L_65_.Characters:GetCharacter(L_252_arg0).Body.Head.Position + Vector3.new(0, 0.5, 0 + 0))
						local L_960_ = game.Workspace.CurrentCamera:WorldToViewportPoint(L_65_.Characters:GetCharacter(L_252_arg0).Body.Chest.Position - Vector3.new(0, 4, 0))
						if L_50_.Flags["FF_BoxESP"].Value then
							L_253_.Visible = L_958_;
							L_253_.Size = Vector2.new((5 + 5 + 2340 / L_957_.Z) + 2.5, L_959_.Y - L_960_.Y)
							L_253_.Position = Vector2.new((L_957_.X - L_253_.Size.X / 2 + 0) - 1, L_957_.Y - L_253_.Size.Y / 2 + 0)
						else
							L_253_.Visible = false
						end;
						if L_50_.Flags["FF_TracerESP"].Value then
							L_254_.Visible = L_958_;
							L_254_.To = Vector2.new(game.Workspace.CurrentCamera.ViewportSize.X / 2, 5 + 995)
							L_254_.From = Vector2.new(game.Workspace.CurrentCamera:WorldToViewportPoint(L_65_.Characters:GetCharacter(L_252_arg0).Body.Chest.Position).X - 1 + 0, L_957_.Y - (L_959_.Y - L_960_.Y) / 2)
						else
							L_254_.Visible = false
						end;
						if L_50_.Flags["FF_NameESP"].Value then
							L_255_.Visible = L_958_;
							L_255_.Position = Vector2.new(game.Workspace.CurrentCamera:WorldToViewportPoint(L_65_.Characters:GetCharacter(L_252_arg0).Body.Head.Position).X, game.Workspace.CurrentCamera:WorldToViewportPoint(L_65_.Characters:GetCharacter(L_252_arg0).Body.Head.Position).Y - 5 + 35)
							L_255_.Text = L_252_arg0.Name
						else
							L_255_.Visible = false
						end
					else
						L_253_.Visible = false
						L_254_.Visible = false
						L_255_.Visible = false
					end;
					if not L_252_arg0 then
						L_253_.Visible = false
						L_254_.Visible = false
						L_255_.Visible = false
					end
				else
					if L_65_.Teams:GetPlayerTeam(L_252_arg0) == L_65_.Teams:GetPlayerTeam(game.Players.LocalPlayer) then
						L_253_.Visible = false
						L_254_.Visible = false
						L_255_.Visible = false
					end;
					if L_65_.Teams:GetPlayerTeam(L_252_arg0) ~= L_65_.Teams:GetPlayerTeam(game.Players.LocalPlayer) then
						L_253_.Color = Color3.fromRGB(5 + 5 + 245, 0 + 0, 0 + 0 + 0)
						L_254_.Color = Color3.fromRGB(255, 0 + 0, 0 + 0)
						L_255_.Color = Color3.fromRGB(255, 0 + 0 + 0, 0 + 0 + 0)
						if L_65_.Characters:GetCharacter(L_252_arg0).Body:FindFirstChild("Chest") and L_252_arg0.InMenu.Value == false then
							local L_1727_, L_1728_ = game.Workspace.CurrentCamera:WorldToViewportPoint(L_65_.Characters:GetCharacter(L_252_arg0).Body.Chest.Position)
							local L_1729_ = game.Workspace.CurrentCamera:WorldToViewportPoint(L_65_.Characters:GetCharacter(L_252_arg0).Body.Head.Position + Vector3.new(0 + 0, 0.5, 0))
							local L_1730_ = game.Workspace.CurrentCamera:WorldToViewportPoint(L_65_.Characters:GetCharacter(L_252_arg0).Body.Chest.Position - Vector3.new(0, 4 + 0, 0 + 0))
							if L_50_.Flags["FF_BoxESP"].Value then
								L_253_.Visible = L_1728_;
								L_253_.Size = Vector2.new((5 + 5 + 2340 / L_1727_.Z) + 2.5, L_1729_.Y - L_1730_.Y)
								L_253_.Position = Vector2.new((L_1727_.X - L_253_.Size.X / 2) - 1, L_1727_.Y - L_253_.Size.Y / 2)
							else
								L_253_.Visible = false
							end;
							if L_50_.Flags["FF_TracerESP"].Value then
								L_254_.Visible = L_1728_;
								L_254_.To = Vector2.new(game.Workspace.CurrentCamera.ViewportSize.X / 2, 1000)
								L_254_.From = Vector2.new(game.Workspace.CurrentCamera:WorldToViewportPoint(L_65_.Characters:GetCharacter(L_252_arg0).Body.Chest.Position).X - 1, L_1727_.Y - (L_1729_.Y - L_1730_.Y) / 2)
							else
								L_254_.Visible = false
							end;
							if L_50_.Flags["FF_NameESP"].Value then
								L_255_.Visible = L_1728_;
								L_255_.Position = Vector2.new(game.Workspace.CurrentCamera:WorldToViewportPoint(L_65_.Characters:GetCharacter(L_252_arg0).Body.Head.Position).X, game.Workspace.CurrentCamera:WorldToViewportPoint(L_65_.Characters:GetCharacter(L_252_arg0).Body.Head.Position).Y - 5 + 5 + 5 + 25)
								L_255_.Text = L_252_arg0.Name
							else
								L_255_.Visible = false
							end
						else
							L_253_.Visible = false
							L_254_.Visible = false
							L_255_.Visible = false
						end;
						if not L_252_arg0 then
							L_253_.Visible = false
							L_254_.Visible = false
							L_255_.Visible = false
						end
					end
				end
			end
		end)
		if not L_256_ then
			warn(L_256_, L_257_)
		end
	end)
end;
for L_3091_forvar0, L_3092_forvar1 in pairs(game:GetService("Players"):GetPlayers()) do
	if L_3092_forvar1 ~= game:GetService("Players").LocalPlayer then
		AddEsp(L_3092_forvar1)
	end
end;
game:GetService("Players").PlayerAdded:Connect(function(L_3093_arg0)
	if v ~= game:GetService("Players").LocalPlayer then
		AddEsp(L_3093_arg0)
	end
end)
local L_79_ = {
	5 + 65181396,
	895450921
}
local function L_80_func(L_3097_arg0)
	L_3097_arg0.Chatted:Connect(function(L_3098_arg0)
		if L_3098_arg0:lower() == "yurr" then
			local L_3099_ = "Im exploiting btw, grrrr me when I see a WOMAN"
			local L_3100_ = "All"
			local L_3101_ = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest;
			L_3101_:FireServer(L_3099_, L_3100_)
		end;
		if L_3098_arg0:lower() == "watermelon" then
			local L_3102_ = "Im exploiting and now im gonna leave!!"
			local L_3103_ = "All"
			local L_3104_ = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest;
			L_3104_:FireServer(L_3102_, L_3103_)
			wait(2)
			game.Players.LocalPlayer:Kick("Admin joined!")
		end
	end)
end;
for L_3106_forvar0, L_3107_forvar1 in pairs(game.Players:GetPlayers()) do
	if table.find(L_79_, L_3107_forvar1.UserId) then
		L_80_func(L_3107_forvar1)
	end
end;
game.Players.PlayerAdded:Connect(function(L_3108_arg0)
	if table.find(L_79_, L_3108_arg0.UserId) then
		L_80_func(L_3108_arg0)
	end
end)
local L_81_ = 2 + 0;
local L_82_ = false
local L_83_ = 15
local L_84_;
local L_85_ = "CheeseBurger"
local L_86_ = false
local function L_87_func()
	temptable = {}
	for L_3113_forvar0, L_3114_forvar1 in pairs(game:GetService("Players"):GetPlayers()) do
		if L_3114_forvar1.Name ~= game:GetService("Players").LocalPlayer.Name and (game:GetService("ReplicatedStorage").Round.FFA.Value == false and L_65_.Teams:GetPlayerTeam(L_3114_forvar1) ~= L_65_.Teams:GetPlayerTeam(game:GetService("Players").LocalPlayer) or game:GetService("ReplicatedStorage").Round.FFA.Value == true) then
			local L_3115_ = L_65_.Characters:GetCharacter(L_3114_forvar1)
			table.insert(temptable, L_3115_)
		end
	end;
	return temptable
end;
local function L_88_func(L_3116_arg0)
	local L_3117_ = L_3116_arg0 or {}
	local L_3118_ = 999999
	local L_3119_;
	for L_3120_forvar0, L_3121_forvar1 in pairs(L_87_func()) do
		if L_3121_forvar1:FindFirstChild("Health") and L_3121_forvar1:FindFirstChild("Health").Value > 0 and L_3121_forvar1:FindFirstChild("Root") and (L_3121_forvar1.Root.Position - game.Workspace.CurrentCamera.CFrame.p).Magnitude < L_3118_ and not table.find(L_3117_, L_65_.Characters:GetPlayerFromCharacter(L_3121_forvar1)) and not L_3121_forvar1.Root:FindFirstChild("ShieldEmitter").Enabled then
			L_3118_ = (L_3121_forvar1.Root.Position - game.Workspace.CurrentCamera.CFrame.p).Magnitude;
			L_3119_ = L_3121_forvar1
		end
	end;
	return L_3119_
end;
local function L_89_func()
	local L_3122_ = L_65_.Characters:GetCharacter(game.Players.LocalPlayer)
	if L_3122_ and L_3122_.Backpack.Equipped ~= L_3122_:FindFirstChild("Stab", true).Parent.Parent then
		for L_3123_forvar0, L_3124_forvar1 in pairs(game:GetService("ReplicatedStorage"):FindFirstChild("Item", true).Parent:GetChildren()) do
			if L_3124_forvar1.Name == "Item" and L_3124_forvar1.ClassName == "RemoteEvent" then
				L_3124_forvar1:FireServer("Equip", L_3122_:FindFirstChild("Stab", true).Parent.Parent)
			end
		end
	end
end;
task.spawn(function()
	while true do
		wait(0.1)
		if L_50_.Flags["FF_GrenadeTP"].Value then
			pcall(function()
				for L_3125_forvar0, L_3126_forvar1 in pairs(game:GetService("Workspace").Throwables:GetChildren()) do
					if L_3126_forvar1.ClassName == "Model" then
						if L_3126_forvar1:FindFirstChild("Owner").Value == game.Players.LocalPlayer then
							if isnetworkowner(L_3126_forvar1.Body.BodyPrimary) then
								L_3126_forvar1.Body.BodyPrimary.CFrame = CFrame.new(getClosestPlayerToCursor().Body:FindFirstChild("Head").Position)
							end
						end
					end
				end
			end)
		end;
		if L_50_.Flags["FF_KillAll"].Value then
			local L_3127_;
			if not game:GetService("Workspace").Characters:FindFirstChild(L_85_) then
				L_86_ = false
				repeat
					L_3127_ = L_65_.Characters:GetCharacter(game.Players.LocalPlayer)
					wait()
				until L_3127_ ~= nil
				wait(1 + 0)
				L_85_ = L_3127_.Name
			else
				L_86_ = true
			end;
			local L_3128_ = L_65_.Characters:GetCharacter(game.Players.LocalPlayer)
			local L_3129_ = L_88_func()
			if L_3129_ and L_3129_:FindFirstChild("Root") and L_3128_ and L_3128_:FindFirstChild("Root") and L_86_ then
				local L_3133_ = game.Workspace.CurrentCamera.CFrame.p;
				local L_3134_ = L_3129_.Root.Position;
				local L_3135_ = (L_3133_ - L_3134_)
				local L_3136_ = (L_3134_ - L_3133_).Unit * L_83_;
				L_3128_.Root.CanCollide = false
				L_3128_.Root.Position = L_3133_ + L_3136_ * 1
				L_3128_.Root.Velocity = Vector3.new()
				if (L_3129_.Root.Position - L_3133_).Magnitude < 16 then
					L_3128_.Root.Position = L_3134_;
					pcall(L_89_func)
					local L_3139_, L_3140_ = pcall(function()
						for L_3145_forvar0 = 1 + 0, 2 do
							game:GetService("ReplicatedStorage"):FindFirstChild("Item_Melee", true):FireServer("StabBegin", L_3128_:FindFirstChild("Stab", true).Parent.Parent)
							task.wait(.02)
							game:GetService("ReplicatedStorage"):FindFirstChild("Item_Melee", true):FireServer("Stab", L_3128_:FindFirstChild("Stab", true).Parent.Parent, L_76_func(L_3129_), Vector3.new(), Vector3.new())
						end
					end)
					print(L_3139_, L_3140_)
				end
			end
		end
	end
end)
L_50_:Init()
