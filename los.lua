-- Carregar a biblioteca
local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/VyrosxC-Hub/IDK/refs/heads/main/ui.lua'))()
local Flags = Library.Flags

-- Criar a janela principal
local Window = Library:Window({
    Text = "VyrosxC Hub | Legends Of Speed ⚡"
})

-- Criar abas
local MainTab = Window:Tab({ Text = "Main" })
local TeleportsTab = Window:Tab({ Text = "Teleports" })

-- ============================
-- Seção: Informações do Jogador
-- ============================
local PlayerInfoSection = MainTab:Section({ Text = "Player Info" })

PlayerInfoSection:Label({
    Text = "UserID:",
    Color = Color3.fromRGB(217, 97, 99),
    Tooltip = "Player UserID"
})

PlayerInfoSection:Label({
    Text = "Status:",
    Color = Color3.fromRGB(217, 97, 99),
    Tooltip = "Player Status"
})

PlayerInfoSection:Label({
    Text = "Key:",
    Color = Color3.fromRGB(217, 97, 99),
    Tooltip = "Player Key"
})

-- ============================
-- Seção: Configurações Gerais
-- ============================
local MainSection = MainTab:Section({ Text = "Main" })

MainSection:Toggle({ Text = "Enabled" })
MainSection:Toggle({ Text = "Wall Check" })
MainSection:Toggle({ Text = "Smooth Aimbot" })

MainSection:Dropdown({
    Text = "Dropdown",
    List = {"Head", "Torso", "Random"},
    Flag = "Choosen",
    Callback = function(v)
        warn(v)
    end
})

MainSection:RadioButton({
    Text = "RadioButton",
    Options = {"Legit", "Blatant"},
    Callback = function(v)
        warn(v)
    end
})

MainSection:Toggle({ Text = "Silent Aimbot" })

MainSection:Input({
    Placeholder = "Webhook URL",
    Flag = "URL"
})

MainSection:Keybind({
    Default = Enum.KeyCode.E,
    Text = "Aimbot Key",
    Callback = function()
        warn("Pressed")
    end
})

MainSection:Slider({
    Text = "Slider Test",
    Default = 5,
    Minimum = 0,
    Maximum = 50,
    Flag = "SliderFlag",
    Callback = function(v)
        warn(v)
    end
})

-- ============================
-- Seção: Configurações Avançadas
-- ============================
local MiscSection = MainTab:Section({
    Text = "Misc",
    Side = "Right"
})

MiscSection:Toggle({ Text = "Infinite Ammo" })
MiscSection:Toggle({ Text = "No Spread" })
MiscSection:Toggle({ Text = "No Bullet Drop", Default = true })
MiscSection:Toggle({ Text = "Full Auto" })

local NoRecoilToggle = MiscSection:Toggle({ Text = "No Recoil" })

MiscSection:Label({
    Text = "This is a label.",
    Color = Color3.fromRGB(217, 97, 99),
    Tooltip = "This is a label."
})

-- ============================
-- Seção: Chams (Aparências)
-- ============================
local ChamsSection = MainTab:Section({ Text = "Chams" })

ChamsSection:Toggle({ Text = "Enabled" })
ChamsSection:Toggle({ Text = "Color" })
ChamsSection:Toggle({ Text = "Filled" })
ChamsSection:Toggle({ Text = "Team Check" })

-- ============================
-- Configuração de Inicialização
-- ============================
MainTab:Select()

-- Atualização de elementos após 5 segundos
wait(5)

NoRecoilToggle:Set(true)

-- Atualizar o texto do label
PlayerInfoSection:Label({
    Text = "This is a red label.",
    Color = Color3.fromRGB(217, 97, 99)
})
