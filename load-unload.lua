--local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
--local DataStoreService = game:GetService("DataStoreService")
--local DataStore = DataStoreService:GetOrderedDataStore("DataTest") 

local function givePlayerValues(player)
	for _, value in pairs(script:GetChildren()) do
		if player:FindFirstChild(value.Name) == nil then
			local clone = value:Clone()
			clone.Parent = player
		end
	end
end
 
--local function loadAsync(player)
--	local key = player.Name--"user_" .. player.userId
--	local cash = getPlayerCash(player)
--	
--	if cash then
--		local previousAmount = DataStore:GetAsync(key)
--		if previousAmount then
--			cash.Value = previousAmount
--		else
--			cash.Value = 100
--		end 
--		if player.Name == "Nightcaller" then
--			cash.Value = 1000
--		end
--	end
--end
--
--local function updateAsync(player)
--	local key = player.Name --"user_" .. player.userId
--	local cash = getPlayerCash(player)
--	if cash then
--		local datastore = DataStore:UpdateAsync(key, function(oldValue)
--			return cash.Value
--		end)
--	end
--end
 
game.Players.PlayerAdded:connect(function(player)
	givePlayerValues(player)
	--loadAsync(player)
end)

game.Players.PlayerRemoving:Connect(function(player)
	--updateAsync(player)
end)
