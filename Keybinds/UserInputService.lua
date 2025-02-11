
-- Lets make a togglable noclip

local UserInputService = game:GetService('UserInputService') -- grabs the UserInput service
local Players = game:GetService('Players') -- grabs the Players service

local Host = Players.LocalPlayer -- Your player

local NoClip = false; -- The boolean


UserInputService.InputBegan:Connect(Arguments, OnChatted)
    if OnChatted then
        return nil -- Disables the chat
    end

    if Arguments.KeyCode == Enum.KeyCode.G then -- The Keybind is G
        NoClip = not NoClip

        if NoClip == true then
            Host.Character:FindFirstChild('Head').CanCollide = false -- In roblox R15 there are 15 limbs
            Host.Character:FindFirstChild('UpperTorso').CanCollide = false -- Regular R6 uses just Torso, but in R15 you just do LowerTorso and UpperTorso
            Host.Character:FindFirstChild('LowerTorso').CanCollide = false

        elseif NoClip == false then -- This is saying, If the Noclip boolean is false then do this
            Host.Character:FindFirstChild('Head').CanCollide = true 
            Host.Character:FindFirstChild('UpperTorso').CanCollide = true
            Host.Character:FindFirstChild('LowerTorso').CanCollide = true -- We sets these to true so when your character Collides with something it will stop
        end
    end
end
