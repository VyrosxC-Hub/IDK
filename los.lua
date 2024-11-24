local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/VyrosxC-Hub/IDK/refs/heads/main/ui.lua"))()

-- Criando a Janela
local Window = Library:AddWindow("Preview", {
	main_color = Color3.fromRGB(41, 74, 122),
	min_size = Vector2.new(500, 600),
	toggle_key = Enum.KeyCode.RightShift,
	can_resize = true,
})

-- Criando a Tab
local Tab = Window:AddTab("Main Tab")

-- Adicionando Botões
Tab:AddButton("Say Hello", function()
	print("Hello, World!")
end)

Tab:AddButton("Execute Action", function()
	print("Action Executed!")
end)

-- Adicionando Toggles
local Toggle1 = Tab:AddSwitch("Enable Feature 1", function(state)
	if state then
		print("Feature 1 Enabled")
	else
		print("Feature 1 Disabled")
	end
end)
Toggle1:Set(false) -- Define o estado inicial como desativado

local Toggle2 = Tab:AddSwitch("Enable Feature 2", function(state)
	if state then
		print("Feature 2 Enabled")
	else
		print("Feature 2 Disabled")
	end
end)
Toggle2:Set(true) -- Define o estado inicial como ativado

-- Mostrando a Tab e Formatando a Janela
Tab:Show()
Library:FormatWindows()
