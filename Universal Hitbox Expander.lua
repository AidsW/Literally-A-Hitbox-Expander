local Config = {
    WindowName = "NecoWare.kys",
	Color = Color3.fromRGB(222,22,66),
	Keybind = Enum.KeyCode.RightBracket
}

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/AlexR32/Roblox/main/BracketV3.lua"))()
local Window = Library:CreateWindow(Config, game:GetService("CoreGui"))

local Tab1 = Window:CreateTab("Home")

local Section1 = Tab1:CreateSection("| Home |")
----HomePage----

local Label1 = Section1:CreateLabel("Necoware.kys was made by: puqvs#0001")

local Label1 = Section1:CreateLabel([[Thanks too: rat#8611 & cirno &,
Memester (miss u) for, being helpful,
highly respected by me, cute asff <33]])

local Label1 = Section1:CreateLabel([[Thank you guys for support me,
This whole time, I love you man ong]])

local Label1 = Section1:CreateLabel([[Again, thank you:
rat, cirno, memester for fucking,
being there for me, I really,
really fucking love you guys <3]])

local Section1 = Tab1:CreateSection("Account Info")

local Label1 = Section1:CreateLabel([[Your Roblox Username Is:
]] .. game.Players.LocalPlayer.Name)

local Label1 = Section1:CreateLabel([[Your Roblox DisplayName Is:
]] .. game.Players.LocalPlayer.DisplayName)

local Label1 = Section1:CreateLabel([[Your Roblox UserId Is:
]] .. game.Players.LocalPlayer.UserId)

local Label1 = Section1:CreateLabel([[Your Roblox AccountAge Is:
]] .. game.Players.LocalPlayer.AccountAge)

local Section1 = Tab1:CreateSection("Donations")

local Button1 = Section1:CreateButton("Donate too: puqvs#0001 (Robux)", function()
	print("Not out yet!")
end)

local Button2 = Section1:CreateButton("Donate too: rat#8611 (Robux)", function()
	print("Not out yet!")
end)

local Button3 = Section1:CreateButton([[buy a coffee too: 
	puqvs#0001 (PayPal | Cashapp)]], function()
	print("Not out yet!")
end)

local Button4 = Section1:CreateButton("Donate too: rat#8611 (PayPal | Cashapp)", function()
	print("Not out yet!")
end)

local Button5 = Section1:CreateButton("Buy a pc too: rat#8611 (PayPal | Cashapp)", function()
	print("Not out yet!")
end)

local Button6 = Section1:CreateButton([[Buy pc-specs too: 
	puqvs#0001 (PayPal | Cashapp)]], function()
	print("Not out yet!")
end)

Button1:AddToolTip("Not out yet!")

Button2:AddToolTip("Not out yet!")

Button3:AddToolTip("Not out yet!")

Button4:AddToolTip("Not out yet!")

Button5:AddToolTip("Not out yet!")

Button6:AddToolTip("Not out yet!")

local Tab1 = Window:CreateTab("HitBoxes")

local Section1 = Tab1:CreateSection("| HumanoidRootPart Configuration's |")

local Slider1 = Section1:CreateSlider("Size X", 0,255,nil,true, function(v)
    _G.SizeX = v
end)

local Slider1 = Section1:CreateSlider("Size Y", 0,255,nil,true, function(v)
    _G.SizeY = v
end)

local Slider1 = Section1:CreateSlider("Size Z", 0,255,nil,true, function(v)
    _G.SizeZ = v
end)

local Slider1 = Section1:CreateSlider("Transparency", 0,1,nil,false, function(v)
    _G.Transp = v
end)

local Label1 = Section1:CreateLabel("Misc Options")

local Toggle1 = Section1:CreateToggle("CanCollide | Collision", false, function(v)
    _G.Collide = v
end)

local Label1 = Section1:CreateLabel("Color Options")

local Slider1 = Section1:CreateSlider("Color Red", 0,255,nil,true, function(v)
    _G.ColorR = v
end)

local Slider1 = Section1:CreateSlider("Color Green", 0,255,nil,true, function(v)
    _G.ColorG = v
end)

local Slider1 = Section1:CreateSlider("Color Blue", 0,255,nil,true, function(v)
    _G.ColorB = v
end)

local Section1 = Tab1:CreateSection("| HumanoidRootPart Toggle |")

local Toggle1 = Section1:CreateToggle("Toggle Hitboxes", false, function(v)
    if v == true then
        for i,v in pairs(game.Players:GetPlayers()) do
            if v ~= game.Players.LocalPlayer then
                v.Character.HumanoidRootPart.Size = Vector3.new(_G.SizeX, _G.SizeY, _G.SizeZ)
                v.Character.HumanoidRootPart.Transparency = _G.Transp
                v.Character.HumanoidRootPart.CanCollide = _G.Collide
                v.Character.HumanoidRootPart.Color = Color3.fromRGB(_G.ColorR, _G.ColorG, _G.ColorB)
            end
        end
    end

    if v ~= true then
        for i,v in pairs(game.Players:GetPlayers()) do
                if v ~= game.Players.LocalPlayer then
                v.Character.HumanoidRootPart.Size = Vector3.new(2,2.1,1)
                v.Character.HumanoidRootPart.Transparency = 1
                v.Character.HumanoidRootPart.CanCollide = true
                v.Character.HumanoidRootPart.Color = Color3.fromRGB(163, 162, 165)
            end
        end
    end        
end)

Toggle1:CreateKeybind("[NONE]", function(Key)

end)
