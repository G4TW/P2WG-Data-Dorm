local Players = game:GetService("Players")
local TeleportService = game:GetService("TeleportService")
local http = game:GetService("HttpService")
Players.PlayerAdded:Connect(function(player)
	local banlist = http:GetAsync("https://raw.githubusercontent.com/G4TW/P2WG-Data-Dorm/master/globalbanlist.lua") -- get just the text for the banlist from github in a function called banlist
	function checkforban() -- no roblox if i change it to local it breaks aaaaaaaaaaaaaaaaaaaaa
		while wait(1) do -- every 0.1 seconds
			if string.find(banlist, player.UserId) then -- if banlist has player's id then
				TeleportService:Teleport(4964623834, player) -- teleport plr to the forbidden ban realm
			end
		end
	end
	spawn(checkforban) -- spawn the function
end)
