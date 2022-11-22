-- need to wait at the start or the script cant find the player
wait(5)
-- substitute the students player name in this line
backpack = game.Players.ajs510work.Backpack
--this is our score variable, this MUST be a global variable
_G.score = 0
weapon1 = game.ReplicatedStorage.ClassicSword
weapon2 = game.ReplicatedStorage.MP5K
--this is our surviva script
print("The game has started")


while true do
	wait(1)
	_G.score = _G.score + 1
	print(_G.score)
	if _G.score == 5 then
		weapon1.Parent = backpack
	end
	if _G.score == 10 then
		weapon2.Parent = backpack
	end
	--NEW-------------------------------------------------------------------------
	--if score hits 15, make the door invisible and possible to pass through
	if _G.score == 15 then
		workspace.Door.Transparency = 1
		workspace.Door.CanCollide = false
	end
	--if the player dies and the score is reset, the door is closed again
	if _G.score < 15 then
		workspace.Door.Transparency = 0
		workspace.Door.CanCollide = true
	end	
end


-- this section should be placed in a SEPERATE script
-- this script will reset the Global points variable on player death.
game:GetService('Players').PlayerAdded:Connect(function(player)
	player.CharacterAdded:Connect(function(character)
		character:WaitForChild("Humanoid").Died:Connect(function()
			print(player.Name .. " has died!")
			_G.score = 0
		end)
	end)
end)
