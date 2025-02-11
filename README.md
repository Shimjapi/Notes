# This is a collection of notes for you to practice <br />
 > [!NOTE]\
 > Start with
 > [FindFirstChild](https://github.com/Shimjapi/Notes/blob/main/FindFirstChild/All.lua)

## Homework for FindFirstChild <br />
 > [!IMPORTANT]\
 > **Homework** <br />
 > Make a string that changes your Heads color using FindFirstChild while also using a string that grabs the players service **GetService** and the localplayer
 
<details>

<summary>Cheatsheet or Answers</summary>

```lua
   local Players = game:GetService('Players')
   local Host = Players.LocalPlayer
   
   Host.Character:FindFirstChild("Head").Color = Color3.fromRGB(255,0,0)
```

</details>
