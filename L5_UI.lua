-- create a script in the workspace
-- create a global variable to hold the score that will be used for purchasing
_G.money = 100
print("you have 100 money")

-- inside the StarterGUI folder, add a Screen GUI
-- inside the Screen GUI, add a button
-- inside the button, add a script

-- create a variable to identify the item you want to be able to purchase
item = game.ServerStorage.Apple
--identify the player & backpack
player = game.Players.ajs510work -- change this
backpack = player.Backpack
-- use the mousebutton clicked function (give students this script from the student github page)
script.Parent.MouseButton1Click:Connect(function()
	if money > 9 then
		money = money - 10
		print("you have this much money")
		print(money)
    -- put the item in the player backpack
		item.Parent = backpack
      -- destroy the button. with this method, things can only be purchased once. 
		script.Parent:Destroy()
	end
end)
