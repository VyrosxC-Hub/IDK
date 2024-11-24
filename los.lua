local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/VyrosxC-Hub/IDK/refs/heads/main/ui.lua"))()

local Window = library:AddWindow("VyroxC Hub", {
		main_color = Color3.fromRGB(41, 74, 122),
		min_size = Vector2.new(500, 600),
		toggle_key = Enum.KeyCode.RightShift,
		can_resize = true,
	})

local Tab = Window:AddTab("Main")

Tab:AddLabel("Hello World!")

Tab:AddButton("Button", function()
	print("Button clicked.")
end)



library:FormatWindows()
