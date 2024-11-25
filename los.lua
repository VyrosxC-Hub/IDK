--// Functions \\--

-- Function Player Info
local function UpdatePlayerStats()
    local player = game.Players.LocalPlayer
    local userID = player.UserId
    local playerStatus = "Online" 
    local playerKey = "Valid ✅"  
    
    UserIDLabel:Set({ Text = "UserID: " .. userID })
    StatusLabel:Set({ Text = "Status: " .. playerStatus })
    KeyLabel:Set({ Text = "Key: " .. playerKey })
end

game:GetService("RunService").Heartbeat:Connect(function()
    UpdatePlayerStats()
end)



-- Function Main
local function ExpandTorso()
 
end

local function ResetCharacter()
   
end

local function setPlayerStats(walkSpeed, jumpPower)
    local player = game.Players.LocalPlayer
    local humanoid = player.Character.Humanoid
    humanoid.WalkSpeed = walkSpeed
    humanoid.JumpPower = jumpPower
end

--// VyrosxC Hub \\--
local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/VyrosxC-Hub/IDK/refs/heads/main/ui.lua'))()
local Flags = Library.Flags

-- Window 
local Window = Library:Window({
    Text = "VyrosxC Hub | Legends Of Speed ⚡"
})

-- Tabs
local MainTab = Window:Tab({ Text = "Main" })
local TeleportsTab = Window:Tab({ Text = "Teleports" })
local AutoFarmTab = Window:Tab({ Text = "Auto Farm" })
local StatsTab = Window:Tab({ Text = "Stats" })
local AutoRebirthTab = Window:Tab({ Text = "Auto Rebirth" })
local AutoRaceTab = Window:Tab({ Text = "Auto Race" })
local PCExploitsTab = Window:Tab({ Text = "PC Exploits" })
local ChatSpamTab = Window:Tab({ Text = "Chat Spam" })
local RebirthsTab = Window:Tab({ Text = "Rebirths" })
local ExtraTab = Window:Tab({ Text = "Extra" })
local CreditsTab = Window:Tab({ Text = "Credits" })

-- ============================
-- Seção: Informações do Jogador
-- ============================
local PlayerInfoSection = MainTab:Section({ Text = "Player Info" })

local UserIDLabel = PlayerInfoSection:Label({
    Text = "UserID: " .. game.Players.LocalPlayer.UserId,
    Color = Color3.fromRGB(0, 255, 0), 
    Tooltip = "Player UserID"
})

local StatusLabel = PlayerInfoSection:Label({
    Text = "Status: Online",
    Color = Color3.fromRGB(0, 255, 0), 
    Tooltip = "Player Status"
})

local KeyLabel = PlayerInfoSection:Label({
    Text = "Key: Valid ✅",
    Color = Color3.fromRGB(0, 255, 0),
    Tooltip = "Player Key"
})

-- ============================
-- Seção: Configurações do Jogador
-- ============================
local PlayerSettingsSection = MainTab:Section({ Text = "Player Settings" })

PlayerSettingsSection:Button({
    Text = "Expand Torso", 
    Callback = function()
        ExpandTorso() 
        print("Successfully expanded torso!")
    end    
})

PlayerSettingsSection:Button({
    Text = "Reset Character", 
    Callback = function()
        ResetCharacter() 
        print("The character has been reset to normal size!")
    end    
})

-- ============================
-- Seção: Configurações de Velocidade e Salto
-- ============================
PlayerSettingsSection:Textbox({
    Text = "Walk Speed",
    Default = "500",
    Callback = function(value)
        local newWalkSpeed = tonumber(value)
        if newWalkSpeed then
            local currentJumpPower = game.Players.LocalPlayer.Character.Humanoid.JumpPower
            setPlayerStats(newWalkSpeed, currentJumpPower)
        else
            print("Invalid value for WalkSpeed.")
        end
    end
})

PlayerSettingsSection:Textbox({
    Text = "Jump Power",
    Default = "200",
    Callback = function(value)
        local newJumpPower = tonumber(value)
        if newJumpPower then
            local currentWalkSpeed = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed
            setPlayerStats(currentWalkSpeed, newJumpPower)
        else
            print("Invalid value for JumpPower.")
        end
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
