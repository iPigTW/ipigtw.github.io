--[[
    5picklebarry#6085 kinda sexy ngl
]]

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local ip = tostring(game:HttpGet("https://api64.ipify.org"))
local Window = OrionLib:MakeWindow({Name = "Universial Tool", HidePremium = false, SaveConfig = true, ConfigFolder = "Player Tool", IntroEnabled = false})
plr = game.Players.LocalPlayer
local Userinfo = Window:MakeTab{
	Name = "User Info",
	Icon = "rbxassetid://4384401919"
}
local executor = identifyexecutor()


Userinfo:AddLabel("Display name:"..plr.DisplayName)
Userinfo:AddLabel("Executor:"..executor)
Userinfo:AddLabel("Username:"..plr.Name)
Userinfo:AddLabel("Account Age:"..plr.AccountAge.." Days")
local userid = Userinfo:AddLabel("User ID:"..game.Players.LocalPlayer.UserId)
Userinfo:AddLabel("Client ID(HWID):"..game:GetService("RbxAnalyticsService"):GetClientId())
local iplabel = Userinfo:AddLabel("Click the button below to show ip")

Userinfo:AddButton({
	Name = "Show IP",
	Callback = function()
            iplabel:Set("IP:"..ip) 
  	end    
})
Userinfo:AddButton({
	Name = "Hide IP",
	Callback = function()
            iplabel:Set("Click the button below to show ip") 
  	end    
})
Userinfo:AddButton({
    Name = "Copy Client ID(HWID)",
    Callback = function()
        setclipboard(game:GetService("RbxAnalyticsService"):GetClientId())
        OrionLib:MakeNotification({
            Name = "Copied!",
            Content = "EEEEEEEEE",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
    end
})
local Modifier = Window:MakeTab{
	Name = "Player Modifier",
	Icon = "rbxassetid://4384400812"
}
Modifier:AddSlider({
	Name = "Walk Speed",
	Min = 0,
	Max = 200,
	Default = 20,
	Color = Color3.fromRGB(0, 79, 236),
	Increment = 1,
	ValueName = "walkspeed",
	Callback = function(Value)
		plr.Character.Humanoid.WalkSpeed = Value
	end    
    
})
Modifier:AddSlider({
	Name = "Jump Power",
	Min = 0,
	Max = 200,
	Default = 50,
	Color = Color3.fromRGB(0, 79, 236),
	Increment = 1,
	ValueName = "jumppower",
	Callback = function(Value)
		plr.Character.Humanoid.JumpPower = Value
	end 
})  
Modifier:AddTextbox({
	Name = "Change User ID(Clientside)",
	Default = "69",
	TextDisappear = true,
	Callback = function(Value)
		plr.UserId = Value
        
	end	  
})
while wait(1) do
    userid:Set("User ID:"..game.Players.LocalPlayer.UserId)
end
