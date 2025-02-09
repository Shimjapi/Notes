local Host = game.Players.LocalPlayer

local Part = Instance.new('Part')
Part.Parent = Host.Character.Torso

local Part2 = Instance.new('Part', Host.Character.Torso)

-- Remember Host.Torso is indexing the Players section
-- Host.Character indexes the Workspace (Where your Torso is located)
