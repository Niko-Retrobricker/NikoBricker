--==<Retrobricker made by Niko>==-- 
--Some code taken or inspired from Infinite Yield and their team--

local version = 1
local versionText = "0.1.0"

local debug = false

CoreGui = game:GetService("CoreGui")

if not game:IsLoaded() then
	local notLoaded = Instance.new("Message")
	notLoaded.Parent = CoreGui
	notLoaded.Text = 'RetroBricker is waiting for the game to load'
	game.Loaded:Wait()
	notLoaded:Destroy()
end

sethidden = sethiddenproperty or set_hidden_property or set_hidden_prop
gethidden = gethiddenproperty or get_hidden_property or get_hidden_prop
setsimulation = setsimulationradius or set_simulation_radius
queueteleport = (syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport)
httprequest = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request
PlaceId, JobId = game.PlaceId, game.JobId

TextService = game:GetService("TextService")
Players = game:GetService("Players")
RBMouse = Players.LocalPlayer:GetMouse()
UserInputService = game:GetService("UserInputService")
TweenService = game:GetService("TweenService")
HttpService = game:GetService("HttpService")
MarketplaceService = game:GetService("MarketplaceService")
RunService = game:GetService("RunService")
TeleportService = game:GetService("TeleportService")
StarterGui = game:GetService("StarterGui")
GuiService = game:GetService("GuiService")
Lighting = game:GetService("Lighting")
ContextActionService = game:GetService("ContextActionService")
NetworkClient = game:GetService("NetworkClient")
ReplicatedStorage = game:GetService("ReplicatedStorage")
GroupService = game:GetService("GroupService")
PathService = game:GetService("PathfindingService")
SoundService = game:GetService("SoundService")
Teams = game:GetService("Teams")
StarterPlayer = game:GetService("StarterPlayer")
InsertService = game:GetService("InsertService")
ChatService = game:GetService("Chat")
ProximityPromptService = game:GetService("ProximityPromptService")
StatsService = game:GetService("Stats")
MaterialService = game:GetService("MaterialService")

local Player = Players.LocalPlayer
local PlayerId = Player.UserId
local PlayerName = Player.Name
local Character = Player.Character


-------------------------------
------==Base Functions==-------
-------------------------------


function randomString(length)
    local characters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
    local instanceName = ""

    for i = 1, length do
        local randomIndex = math.random(1, #characters)
        instanceName = instanceName .. string.sub(characters, randomIndex, randomIndex)
    end

    return instanceName
end

function writefileExploit()
	if writefile then
		return true
	end
end

function isNumber(str)
	if tonumber(str) ~= nil or str == 'inf' then
		return true
	end
end

function getRoot(char)
	local rootPart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
	return rootPart
end

function tools(plr)
	if plr:FindFirstChildOfClass("Backpack"):FindFirstChildOfClass('Tool') or plr.Character:FindFirstChildOfClass('Tool') then
		return true
	end
end

function r15(plr)
	if plr.Character:FindFirstChildOfClass('Humanoid').RigType == Enum.HumanoidRigType.R15 then
		return true
	end
end

function toClipboard(String)
	local clipBoard = setclipboard or toclipboard or set_clipboard or (Clipboard and Clipboard.set)
	if clipBoard then
		clipBoard(String)
		print("Copied to clipboard")
	else
		error("Your exploit doesn't have the ability to use the clipboard")
	end
end

function getHierarchy(obj)
	local fullname
	local period

	if string.find(obj.Name,' ') then
		fullname = '["'..obj.Name..'"]'
		period = false
	else
		fullname = obj.Name
		period = true
	end

	local getS = obj
	local parent = obj
	local service = ''

	if getS.Parent ~= game then
		repeat
			getS = getS.Parent
			service = getS.ClassName
		until getS.Parent == game
	end

	if parent.Parent ~= getS then
		repeat
			parent = parent.Parent
			if string.find(tostring(parent),' ') then
				if period then
					fullname = '["'..parent.Name..'"].'..fullname
				else
					fullname = '["'..parent.Name..'"]'..fullname
				end
				period = false
			else
				if period then
					fullname = parent.Name..'.'..fullname
				else
					fullname = parent.Name..''..fullname
				end
				period = true
			end
		until parent.Parent == getS
	elseif string.find(tostring(parent),' ') then
		fullname = '["'..parent.Name..'"]'
		period = false
	end

	if period then
		return 'game:GetService("'..service..'").'..fullname
	else
		return 'game:GetService("'..service..'")'..fullname
	end
end
-------------------------------
---==End of base Functions==---
-------------------------------
-------------------------------
-----------== Gui ==-----------
-------------------------------

plus_image = "http://www.roblox.com/asset/?id=12072054746"
minus_image = "http://www.roblox.com/asset/?id=11622919444"

local function CreateInstance(cls,props)
local inst = Instance.new(cls)
for i,v in pairs(props) do
	inst[i] = v
end
return inst
end

--Instances:

local Main = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local SearchBox = Instance.new("TextBox")
local Title = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")
local VersionLabel = Instance.new("TextLabel")
local SettingsButton = Instance.new("ImageButton")
local UICorner_3 = Instance.new("UICorner")
local ToggleMenu = Instance.new("ImageButton")
local UICorner_4 = Instance.new("UICorner")
local ScrollingFrame = Instance.new("ScrollingFrame")
local ModuleGroup = Instance.new("Frame")
local UICorner_5 = Instance.new("UICorner")
local ModuleGroupName = Instance.new("TextLabel")
local UICorner_6 = Instance.new("UICorner")
local ToggleGroup = Instance.new("ImageButton")
local UICorner_7 = Instance.new("UICorner")

--Properties:

Main.Name = randomString(10)
Main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Main.DisplayOrder = 0
Main.ResetOnSpawn = false

Frame.Parent = game.StarterGui.Main
Frame.AnchorPoint = Vector2.new(1, 1)
Frame.BackgroundColor3 = Color3.fromRGB(120, 10, 10)
Frame.BorderColor3 = Color3.fromRGB(27, 42, 53)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(1, -250, 1, 10)
Frame.Size = UDim2.new(0, 250, 0, 230)

UICorner.CornerRadius = UDim.new(0, 10)
UICorner.Parent = Frame

SearchBox.Name = "SearchBox"
SearchBox.Parent = Frame
SearchBox.BackgroundColor3 = Color3.fromRGB(160, 40, 40)
SearchBox.BorderSizePixel = 0
SearchBox.Position = UDim2.new(0, 2, 0, 20)
SearchBox.Size = UDim2.new(0, 246, 0, 20)
SearchBox.Font = Enum.Font.Ubuntu
SearchBox.PlaceholderText = "Search through modules"
SearchBox.Text = ""
SearchBox.TextColor3 = Color3.fromRGB(255, 255, 255)
SearchBox.TextSize = 14.000
SearchBox.TextXAlignment = Enum.TextXAlignment.Left

Title.Name = "Title"
Title.Parent = Frame
Title.BackgroundColor3 = Color3.fromRGB(120, 10, 10)
Title.Size = UDim2.new(0, 250, 0, 20)
Title.ZIndex = -1
Title.Font = Enum.Font.FredokaOne
Title.Text = "RetroBricker"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 14.000

UICorner_2.CornerRadius = UDim.new(0, 6)
UICorner_2.Parent = Title

VersionLabel.Name = "VersionLabel"
VersionLabel.Parent = Title
VersionLabel.BackgroundColor3 = Color3.fromRGB(121, 10, 8)
VersionLabel.BackgroundTransparency = 1.000
VersionLabel.Position = UDim2.new(0, 4, 0, 0)
VersionLabel.Size = UDim2.new(0, 50, 0, 20)
VersionLabel.ZIndex = -1
VersionLabel.Font = Enum.Font.FredokaOne
VersionLabel.Text = "v.0.1.0"
VersionLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
VersionLabel.TextSize = 14.000
VersionLabel.TextXAlignment = Enum.TextXAlignment.Left

SettingsButton.Name = "SettingsButton"
SettingsButton.Parent = Title
SettingsButton.AnchorPoint = Vector2.new(1, 0)
SettingsButton.BackgroundColor3 = Color3.fromRGB(163, 13, 11)
SettingsButton.Position = UDim2.new(1, -20, 0, 2)
SettingsButton.Size = UDim2.new(0, 16, 0, 16)
SettingsButton.Image = "http://www.roblox.com/asset/?id=7059346373"

UICorner_3.CornerRadius = UDim.new(0, 6)
UICorner_3.Parent = SettingsButton

ToggleMenu.Name = "ToggleMenu"
ToggleMenu.Parent = Title
ToggleMenu.AnchorPoint = Vector2.new(1, 0)
ToggleMenu.BackgroundColor3 = Color3.fromRGB(163, 13, 11)
ToggleMenu.Position = UDim2.new(1, -2, 0, 2)
ToggleMenu.Size = UDim2.new(0, 16, 0, 16)
ToggleMenu.Image = "http://www.roblox.com/asset/?id=2557513744"

UICorner_4.CornerRadius = UDim.new(0, 6)
UICorner_4.Parent = ToggleMenu

ScrollingFrame.Parent = Frame
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(120, 10, 10)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(0, 0, 0, 42)
ScrollingFrame.Size = UDim2.new(0, 250, 0, 178)
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 1, 0)
ScrollingFrame.ScrollBarThickness = 4

ModuleGroup.Name = "ModuleGroup"
ModuleGroup.Parent = ScrollingFrame
ModuleGroup.BackgroundColor3 = Color3.fromRGB(160, 40, 40)
ModuleGroup.BorderColor3 = Color3.fromRGB(27, 42, 53)
ModuleGroup.BorderSizePixel = 0
ModuleGroup.Position = UDim2.new(0, 2, 0, 0)
ModuleGroup.Size = UDim2.new(1, -8, 0, 77)

UICorner_5.CornerRadius = UDim.new(0, 10)
UICorner_5.Parent = ModuleGroup

ModuleGroupName.Name = "ModuleGroupName"
ModuleGroupName.Parent = ModuleGroup
ModuleGroupName.BackgroundColor3 = Color3.fromRGB(140, 20, 20)
ModuleGroupName.Position = UDim2.new(0, 2, 0, 2)
ModuleGroupName.Size = UDim2.new(0, 238, 0, 20)
ModuleGroupName.ZIndex = -1
ModuleGroupName.Font = Enum.Font.FredokaOne
ModuleGroupName.Text = "Module Group"
ModuleGroupName.TextColor3 = Color3.fromRGB(255, 255, 255)
ModuleGroupName.TextSize = 14.000
ModuleGroupName.TextWrapped = true

UICorner_6.Parent = ModuleGroupName

ToggleGroup.Name = "ToggleGroup"
ToggleGroup.Parent = ModuleGroupName
ToggleGroup.AnchorPoint = Vector2.new(1, 0)
ToggleGroup.BackgroundColor3 = Color3.fromRGB(163, 13, 11)
ToggleGroup.Position = UDim2.new(1, -2, 0, 2)
ToggleGroup.Size = UDim2.new(0, 16, 0, 16)
ToggleGroup.Image = "http://www.roblox.com/asset/?id=11622919444"

UICorner_7.CornerRadius = UDim.new(0, 6)
UICorner_7.Parent = ToggleGroup

-------------------------------------------

PARENT = nil
if get_hidden_gui or gethui then
	local hiddenUI = get_hidden_gui or gethui
	Main.Parent = hiddenUI()
	PARENT = Main
elseif (not is_sirhurt_closure) and (syn and syn.protect_gui) then
	syn.protect_gui(Main)
	Main.Parent = CoreGui
	PARENT = Main
elseif CoreGui:FindFirstChild('RobloxGui') then
	PARENT = CoreGui.RobloxGui
else
	Main.Parent = CoreGui
	PARENT = Main
end

-------------------------------
-------== End of Gui ==--------
-------------------------------


local RootPart = getRoot()
local Head = Character:WaitForChild("Head")
local Torso = Character:WaitForChild("Torso")
local LeftArm = Character:WaitForChild("Left Arm")
local RightArm = Character:WaitForChild("Right Arm")
local LeftLeg = Character:WaitForChild("Left Leg")
local RightLeg = Character:WaitForChild("Right Leg")

game:GetService("RunService").RenderStepped:Connect(function(_currentTime, deltaTime)
    for _, OtherPlayer in pairs(Players:GetPlayers()) do
         if OtherPlayer ~= Player then
                local OtherCharacter = OtherPlayer.Character
                if OtherCharacter then
                    local OtherPlayerId = OtherPlayer.UserId
                    local OtherPlayerName = OtherPlayer.Name
                    local OtherRootPart = otherCharacter:FindFirstChild("HumanoidRootPart")
                    local OtherHead = otherCharacter:FindFirstChild("Head")
                    local OtherTorso = otherCharacter:FindFirstChild("Torso")
                    local OtherLeftArm = otherCharacter:FindFirstChild("Left Arm")
                    local OtherRightArm = otherCharacter:FindFirstChild("Right Arm")
                    local OtherLeftLeg = otherCharacter:FindFirstChild("Left Leg")
                    local OtherRightLeg = otherCharacter:FindFirstChild("Right Leg")
                    
                    if OtherRootPart then
                        
                    end
                    local OtherHead = OtherCharacter:FindFirstChild("Head")
                    if OtherHead then
                        
                    end
                    local OtherTorso = OtherCharacter:FindFirstChild("Torso")
                    if OtherTorso then
                        
                    end
                    local OtherLeftArm = OtherCharacter:FindFirstChild("Left Arm")
                    if OtherLeftArm then
                        
                    end
                    local OtherRightArm = OtherCharacter:FindFirstChild("Right Arm")
                    if OtherRightArm then
                        
                    end
                    local OtherLeftLeg = OtherCharacter:FindFirstChild("Left Leg")
                    if OtherLeftLeg then
                        
                    end
                    local OtherRightLeg = OtherCharacter:FindFirstChild("Right Leg")
                    if OtherRightLeg then
                        
                    end
                end
            end
    end
end)
