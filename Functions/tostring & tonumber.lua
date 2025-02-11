
-- What if we want to make a variable with our WalkSpeed value

local WalkSpeed = 50 -- This is a number value
local WalkSpeed2 = "50" -- Now because of the "" this a string

-- If you set both of those to the Humanoid.WalkSpeed one of them will error

local Players = game:GetService('Players')
local Host = Players.LocalPlayer

Host.Character:FindFirstChildOfClass("Humanoid").WalkSpeed = WalkSpeed -- This one will work
Host.Character:FindFirstChildOfClass("Humanoid").WalkSpeed = WalkSpeed2 -- This one will error

--[[
It errors because WalkSpeed2 is a string, Humanoid.WalkSpeed only wants a number value

How do we fix this?

Theres a function to convert strings into numbers in lua
tonumber()

I want WalkSpeed2 to be a number
]]--

Host.Character:FindFirstChildOfClass("Humanoid").WalkSpeed = tonumber(WalkSpeed2)

-- the tonumber() function will now set WalkSpeed2 as a number so now the game thinks its a number and gives Humanoid.WalkSpeed whatever value is in the variable

--[[

Lets say we have a variable with numbers and letters

local Whatever = "6 is a cool number 2"

the tonumber(Whatever) function will look and identify 6 and 2 as numbers and only give those as a result

]]--

-- What if we want to print out WalkSpeed

print('WalkSpeed is now '..WalkSpeed) -- Output: error
-- this will error because the print function only wants strings

-- If you have caught on, there is one for strings too
--tostring

print('WalkSpeed is now '..tostring(WalkSpeed)) -- Output: WalKSpeed is now 50
-- this now converts everything into a string or a printable text

-- you can also do this with booleans to know if its off or on

local Boolean = false

print("Boolean is now "..tostring(Boolean)) -- Output Boolean is now false
