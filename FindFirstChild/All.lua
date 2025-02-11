
-- [ FindFirstChild ]

-- The purpose of FindFirstChild is not finding the first child from the parent
-- It's purpose is to check if a child is in the parent

-- This may seem useless, but it actually has a great use
-- If the name of the item you put inside of the findfirstchild is not there then your script will still proceed
-- but without erroring

-- Heres a use of findfirstchild

local Players = game:GetService("Players") -- Grabs the player service
local Host = Players.LocalPlayer -- Sets the value of Host to your players

local NoCheck = Host.Character.Humanoid -- Grabs the humanoid without findfirstchild
local Check = Host.Character:FindFirstChild("Humanoid") -- Grabs the humanoid with findfirstchild

-- If a developer changes the name of your humanoid when you load the game
NoCheck.WalkSpeed = 50;
-- This will error, this errors because there is no child named "Humanoid"
-- When calling a child Host.Character.Humanoid, you're just telling the computer to find these names
-- Since there is no item named Humanoid, your script errors and will not proceed

-- Here if a developer changes the humanoid name when you load in
Check.WalkSpeed = 50;
-- It will skip this line of code and proceed with the rest of the code






-- [ FindFirstChildOfClass ]

-- In Roblox the Humanoid is it's own class, thats how you make NPC's.
-- The Humanoid stores the NPC's WalkSpeed, HitBox, Health and other stuff

-- Lets say we don't want the line to be skipped and we need to grab the humanoid
-- This is where FindFirstChildOfClass comes into play

-- Just like the FindFirstChild, if a developer changes the name of the humanoid
-- You can still grab the humanoid with FindFirstChildOfClass


Host.Character:FindFirstChildOfClass('Humanoid').WalkSpeed = 50 -- Proceeds

Host.Character.Humanoid.WalkSpeed = 50 -- Errors


-- The reason why FindFirstChildOfClass proceeds is because instead of looking for the name of the item like FindFirstChild
-- Our script instead looks for an item that matches the class we provided FindFirstChildOfClass('Humanoid')
-- Spots it, hooks it and you can change the values of it



-- [ FindFirstChildWhichIsA ]

-- FindFirstChildWhichIsA 
-- May seem like it has the same functionality to FindFirstChildOfClass which it kind of does
-- But there is a thing called SubClasses in roblox

-- These arent hard or difficult

-- Parts, Wedges SpawnLocations etc is all a subclass of the the class BasePart
-- The players Head,Torso,HumanoidRootPart and other body parts all have the SubClass "Part"
-- Parts actual parents are "BasePart"

-- BaseParts SubClasses, Parts, SpawnLocations, Wedges, MeshParts, Terrain and other stuff
-- https://roblox.fandom.com/wiki/Category:Subclasses_of_Instance, Here is a list of all the subclasses in roblox (Instance.new)

-- Don't look for a SubClass in a parts properties, you just want to look for the class name

-- If we want to find any part thats parent is a SubClass to BasePart

-- Now lets say we want to make a noclip using this function

for _,v in next, Host.Character:GetChildren() do -- We are grabbing all of the children on the surface level of Host.Character
    if v:FindFirstChildWhichIsA('BasePart') then -- Now we only want to find the baseparts, Parts, Wedges, Meshes etc
        v.CanCollide = false -- We change all of the baseparts CanCollide value into false
    end
end

-- The for loop functions all the baseparts in your character
-- and sets their CanCollide value to false
