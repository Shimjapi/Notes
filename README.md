# This is a collection of notes for you to practice <br />
 ## Lesson 1 <br />
 > [!NOTE]\
 > **Learn the functionalities of FindFirstChild** <br />
 > Ignore FindFirstChildWhichIsA and if you feel confident enough then proceed with FindFirstChildOfClass <br />
 > [FindFirstChild](https://github.com/Shimjapi/Notes/blob/main/FindFirstChild/All.lua) **<- Click the link**

## Homework for FindFirstChild <br />
 > [!IMPORTANT]\
 > **Homework** <br />
 > Make a string that changes your Heads color using FindFirstChild while also using a string that grabs the players service **GetService** and the localplayer
  <br />

## Cheatsheet
 <br />
<details>

<summary>Cheatsheet for FindFirstChild </summary>

```lua
   local Players = game:GetService('Players')
   local Host = Players.LocalPlayer
   
   Host.Character:FindFirstChild("Head").Color = Color3.fromRGB(255,0,0)
```

</details>
<br />

 ## Lesson 2 <br />
 > [!NOTE]\
 > **Learn the functionalities of tostring and tonumber** <br />
 > [Tostring & Tonumber](https://github.com/Shimjapi/Notes/blob/main/Functions/tostring%20%26%20tonumber.lua) **<- Click the link**

## Homework for tostring and tonumber <br />
 > [!IMPORTANT]\
 > **Homework** <br />
 > Make a print function that turns a boolean into a string using tostring() and print out of its false or true
 <br />

## Cheatsheet
 <br />
<details>

<summary>Cheatsheet for tostring </summary>

```lua
   local Boolean = true

   print("Boolean is now "..tostring(Boolean))
```

</details>
<br />
 
 ## Bonus <br />
 > [!NOTE]\
 > **Learn the functionalities game.PlaceId** <br />
 > [game.PlaceId](https://github.com/Shimjapi/Notes/blob/main/Game/PlaceId.lua) **<- Click the link**

## Homework for tostring and tonumber <br />
 > [!IMPORTANT]\
 > **Homework** <br />
 > Make an if and else statement that changes the transparency of an object in the baseplate game
 <br />

## Cheatsheet
 <br />
<details>

<summary>Cheatsheet for placeId </summary>

```lua
   print(game.PlaceId)

   local Workspace = game:GetService('Workspace')
   
   if game.PlaceId == 4483381587 then
       Workspace:FindFirstChild('Spawns').SpawnLocation.Transparency = 0
   end
```

</details>
<br />
