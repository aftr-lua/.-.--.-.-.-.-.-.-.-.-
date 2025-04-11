local Fluent = loadstring(game:HttpGet("https://raw.githubusercontent.com/AntiOderHubLtd/ThereIsASecretRepoButYouCantSkid/refs/heads/main/UILib.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/AntiOderHubLtd/ThereIsASecretRepoButYouCantSkid/refs/heads/main/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/AntiOderHubLtd/ThereIsASecretRepoButYouCantSkid/refs/heads/main/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "AntiOder Hub TROLL",
    SubTitle = "antioderhub.lol",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})

local Tabs = {
    Main = Window:AddTab({ Title = "Info", Icon = "info" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

Tabs.Main:AddParagraph({
        Title = "Script info",
        Content = "I created this version because old script not stable now and don't editable :(/nAuthor: aftermath-dev"
    })
