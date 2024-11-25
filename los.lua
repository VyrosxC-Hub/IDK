local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/VyrosxC-Hub/IDK/refs/heads/main/ui.lua", true))()

local AimbotTab = Library:CreateTab("Aimbot", "This is where you modify the Aimbot")

AimbotTab:CreateTextbox("Whitelist Player", function(arg) --arg is what the text is inside the textbox
    print("Whitelisted: " .. arg)
end)

AimbotTab:CreateButton("Inf Jump", function() --you dont need "arg" for a button
    print("Inf Jump is now permanently on.")
end)


AimbotTab:CreateSlider("Fov Radius", 0, 600, function(arg) --the (arg) is the sliders value
    print("Fov Radius is set to:", arg)
end)

AimbotTab:CreateDropDown("Aimbot Part", {"Head", "Torso"}, function(arg) --the (arg) is the option you choose 
    if arg == "Head" then
        print("HEahshoot")
    elseif arg == "Torso" then
        print("trrrrso")
    end
end)

AimbotTab:CreateToggle("Enable Aimbot", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        print("Aimbot is now : Enabled")
    else
        print("Aimbot is now : Disabled")
    end
end)
