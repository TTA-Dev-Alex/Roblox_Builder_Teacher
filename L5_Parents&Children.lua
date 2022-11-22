-- THIS IS SAMPLE CODE
-- In order to run this code, adjust lines 6, 8, 12, 13, 24, 25

-- wait is necessary to find player in the game successfully
wait(10)
player = game.Players.ajs510work -- change this to the users player name
backpack = player.Backpack 
torch = game.ReplicatedStorage.Torch --Change this to the item in your game you want to craft
print("Variables initialized...")
while true do
	-- find the items required to 'craft' the item from replicated storage
	hasThing = backpack:FindFirstChild("Wood")
	otherThing = backpack:FindFirstChild("Coal")
  
	print("checking for things...")
  -- buffer to keep loop from running too fast and crashing
	wait(5)
	if hasThing and otherThing then
		print("combining, please wait...")
		wait(2)
		-- give the new item
		torch.Parent = backpack	
		-- remove the original items
		backpack.Wood:Destroy()
		backpack.Coal:Destroy()
	end
end
