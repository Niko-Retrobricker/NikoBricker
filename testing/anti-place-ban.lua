local ReplicatedStorage = game:GetService("ReplicatedStorage")
local args = {
    [1] = "3256865345_1"
}
if game.PlaceId == 5846386835 then
    ReplicatedStorage.RemoteEvents.RequestPlayerTeleport:FireServer(args)
end

syn.queue_on_teleport("loadstring(game:HttpGet('https://raw.githubusercontent.com/NikoBricker/NikoBricker/main/testing/anti-place-ban.lua'))()")


-- menu: 5846386835
-- player: 5867227007