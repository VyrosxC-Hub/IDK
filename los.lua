local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/VyrosxC-Hub/IDK/refs/heads/main/ui.lua'))()

local Window = Rayfield:CreateWindow({
	Name = "VyrosxC Hub",
	LoadingTitle = "Loading Script...",
	LoadingSubtitle = "by VyrosxC",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = nil, -- Create a custom folder for your hub/game
		FileName = "VyrosxC Hub"
})

local Tab = Window:CreateTab("Tab Example", 4483362458) -- Title, Image

local Section = Tab:CreateSection("Section Example")

Rayfield:Notify({
    Title = "Notification Title",
    Content = "Notification Content",
    Duration = 6.5,
    Image = 4483362458,
    Actions = { -- Notification Buttons
        Ignore = {
            Name = "Okay!",
            Callback = function()
                print("The user tapped Okay!")
            end
		},
	},
})

local Button = Tab:CreateButton({
	Name = "Button Example",
	Callback = function()
		-- The function that takes place when the button is pressed
	end,
})

local Toggle = Tab:CreateToggle({
	Name = "Toggle Example",
	CurrentValue = false,
	Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
		-- The function that takes place when the toggle is pressed
    		-- The variable (Value) is a boolean on whether the toggle is true or false
	end,
})
			
local Input = Tab:CreateInput({
	Name = "Input Example",
	PlaceholderText = "Input Placeholder",
	RemoveTextAfterFocusLost = false,
	Callback = function(Text)
	end,
})

local Dropdown = Tab:CreateDropdown({
	Name = "Dropdown Example",
	Options = {"Option 1","Option 2"},
	CurrentOption = "Option 1",
	Flag = "Dropdown1", 
	Callback = function(Option)
	end,
})


			
Rayfield:Destroy()
