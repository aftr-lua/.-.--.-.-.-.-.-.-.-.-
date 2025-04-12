-- toggle from scriptblox
repeat task.wait(0.25) until game:IsLoaded();
getgenv().Image = "rbxassetid://15915524325"; -- put a asset id in here to make it work
getgenv().ToggleUI = "E" -- This where you can Toggle the Fluent ui library

task.spawn(function()
    if not getgenv().LoadedMobileUI == true then getgenv().LoadedMobileUI = true
        local OpenUI = Instance.new("ScreenGui");
        local ImageButton = Instance.new("ImageButton");
        local UICorner = Instance.new("UICorner");
        OpenUI.Name = "OpenUI";
        OpenUI.Parent = game:GetService("CoreGui");
        OpenUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
        ImageButton.Parent = OpenUI;
        ImageButton.BackgroundColor3 = Color3.fromRGB(105,105,105);
        ImageButton.BackgroundTransparency = 0.8
        ImageButton.Position = UDim2.new(0.9,0,0.1,0);
        ImageButton.Size = UDim2.new(0,50,0,50);
        ImageButton.Image = getgenv().Image;
        ImageButton.Draggable = true;
        ImageButton.Transparency = 1;
        UICorner.CornerRadius = UDim.new(0,200);
        UICorner.Parent = ImageButton;
        ImageButton.MouseButton1Click:Connect(function()
            game:GetService("VirtualInputManager"):SendKeyEvent(true,getgenv().ToggleUI,false,game);
        end)
    end
end)

local Fluent = loadstring(game:HttpGet("https://raw.githubusercontent.com/AntiOderHubLtd/ThereIsASecretRepoButYouCantSkid/refs/heads/main/UILib.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/AntiOderHubLtd/ThereIsASecretRepoButYouCantSkid/refs/heads/main/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/AntiOderHubLtd/ThereIsASecretRepoButYouCantSkid/refs/heads/main/InterfaceManager.lua"))()

local Show_Button = true
local Window = Fluent:CreateWindow({
    Title = "AntiOder Hub TROLL",
    SubTitle = "antioderhub.lol",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.E -- Used when theres no MinimizeKeybind
})

local Tabs = {
    Main = Window:AddTab({ Title = "Info", Icon = "info" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

Tabs.Main:AddParagraph({
        Title = "Script info",
        Content = "I created this version because old script not stable now and don't editable :(/nAuthor: aftermath-dev"
    })

local Options = Fluent.Options
SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)

-- Ignore keys that are used by ThemeManager.
-- (we dont want configs to save themes, do we?)

-- use case for doing it this way:
-- a script hub could have themes in a global folder
-- and game configs in a separate folder per game
InterfaceManager:SetFolder("FluentScriptHub")
SaveManager:SetFolder("FluentScriptHub/specific-game")

InterfaceManager:BuildInterfaceSection(Tabs.Settings)
SaveManager:BuildConfigSection(Tabs.Settings)


Window:SelectTab(1)

Fluent:Notify({
    Title = "Fluent",
    Content = "The script has been loaded.",
    Duration = 8
})

-- You can use the SaveManager:LoadAutoloadConfig() to load a config
-- which has been marked to be one that auto loads!
SaveManager:LoadAutoloadConfig()
