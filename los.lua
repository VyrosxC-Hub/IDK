local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/VyrosxC-Hub/IDK/refs/heads/main/ui.lua", true))()

-- Criar uma janela principal
local Window = Library:CreateWindow("Main Window")

-- Adicionar uma pasta (opcional para organizar)
local Folder = Window:AddFolder("Main")

-- Adicionar um rótulo (label)
Folder:AddLabel({text = "Bem-vindo à Interface"})

-- Adicionar um botão
Folder:AddButton({
    text = "Clique Aqui",
    flag = "button",
    callback = function()
        print("Botão clicado!")
    end
})

-- Adicionar um toggle
Folder:AddToggle({
    text = "Ativar Função",
    flag = "toggle_function",
    state = false,
    callback = function(state)
        print("Função está:", state and "Ativada" or "Desativada")
    end
})

-- Adicionar um TextBox
Folder:AddBox({
    text = "Digite algo",
    flag = "textbox_input",
    value = "Texto padrão",
    callback = function(input)
        print("Texto digitado:", input)
    end
})

-- Adicionar uma lista suspensa (List)
Folder:AddList({
    text = "Selecione uma Opção",
    flag = "option_list",
    value = "Opção 1",
    values = {"Opção 1", "Opção 2", "Opção 3"},
    callback = function(selected)
        print("Opção selecionada:", selected)
    end
})

-- Inicializar a biblioteca
Library:Init()
