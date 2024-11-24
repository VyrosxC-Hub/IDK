-- Carregar o Rayfield Interface Suite
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/VyrosxC-Hub/IDK/refs/heads/main/ui.lua'))()

-- Configuração para salvar os dados e habilitar o KeySystem (opcional)
local Window = Rayfield:CreateWindow({
    Name = "Rayfield Example Window",
    LoadingTitle = "Rayfield Interface Suite",
    LoadingSubtitle = "by Sirius",
    ConfigurationSaving = {
        Enabled = true,
        FolderName = nil, -- Deixe nil para a pasta padrão
        FileName = "MainHub"
    },
    KeySystem = false, -- Altere para true se quiser ativar o sistema de chave
})

-- Criar uma aba chamada "Main"
local Tab = Window:CreateTab("Tab Example", 4483362458) -- Title, Image

-- Adicionar um botão
Tab:CreateButton({
    Name = "Press Me",
    Callback = function()
        print("Button Pressed!")
    end,
})

-- Adicionar um toggle
Tab:CreateToggle({
    Name = "Enable Feature",
    CurrentValue = false,
    Flag = "FeatureToggle", -- Identificador para salvar a configuração
    Callback = function(Value)
        print("Feature is:", Value and "Enabled" or "Disabled")
    end,
})

-- Adicionar um campo de entrada (TextBox)
Tab:CreateInput({
    Name = "Enter Text",
    PlaceholderText = "Type something...",
    RemoveTextAfterFocusLost = false,
    Callback = function(Text)
        print("Input received:", Text)
    end,
})

-- Adicionar um menu suspenso (Dropdown)
Tab:CreateDropdown({
    Name = "Choose an Option",
    Options = {"Option 1", "Option 2", "Option 3"},
    CurrentOption = "Option 1",
    Flag = "DropdownChoice", -- Identificador para salvar a configuração
    Callback = function(Option)
        print("Selected option:", Option)
    end,
})

-- Notificação de exemplo ao inicializar
Rayfield:Notify({
    Title = "Welcome",
    Content = "Interface loaded successfully!",
    Duration = 5,
    Actions = {
        Okay = {
            Name = "Close",
            Callback = function()
                print("Notification dismissed.")
            end,
        },
    },
})

Rayfield:Destroy()
