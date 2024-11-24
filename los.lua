-- Carregando a biblioteca
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/VyrosxC-Hub/IDK/refs/heads/main/ui.lua", true))()

-- Criando a janela principal
local Window = Library:CreateWindow("Main")

-- Adicionando um botão
Window:AddButton({
    text = "Click Me", 
    flag = "button_click", 
    callback = function() 
        print("Button pressed!") 
    end
})

-- Adicionando um toggle
Window:AddToggle({
    text = "Enable Feature", 
    flag = "toggle_feature", 
    state = false, 
    callback = function(state) 
        print("Feature state:", state) 
    end
})

-- Adicionando um campo de texto (TextBox)
Window:AddBox({
    text = "Enter Value", 
    flag = "textbox_value", 
    value = "Default", 
    callback = function(value) 
        print("Text entered:", value) 
    end
})

-- Adicionando uma lista suspensa (List)
Window:AddList({
    text = "Choose Option", 
    flag = "list_option", 
    value = "Option 1", 
    values = {"Option 1", "Option 2", "Option 3"}, 
    callback = function(selected) 
        print("Selected option:", selected) 
    end
})

-- Inicializando a biblioteca
Library:Init()
