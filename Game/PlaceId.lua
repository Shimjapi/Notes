-- In Roblox there is hidden features

-- When you type local Players = game.Players

-- game actually has more features than just hooking to services

--https://create.roblox.com/docs/reference/engine/classes/DataModel#PlaceId
print(game.PlaceId) -- Outputs the place id of the game

-- PlaceId is very simple it's only function is to output the placeId of the game

-- You're probably asking, why is this a thing, whats this for?

-- Lets build a block of code

print(game.PlaceId) -- Copy the placeID

-- Then make this 

if game.PlaceId == 4483381587 then -- The number is (A literal baseplate's place Id)
    workspace:FindFirstChild("Baseplate").Color = Color3.fromRGB(85,85,255)
end


-- The functionality of PlaceId is if you have a script that can be used in a bunch of games
-- But theres an item in the script that isn't in any other game except this one
-- Without the PlaceId check your script will error, if you have the check it will proceed
