local ReplicatedStorage = game:GetService("ReplicatedStorage")
local args = {
    [1] = "3256865345_1"
}
if game.PlaceId == 5846386835 then
    ReplicatedStorage.RemoteEvents.RequestPlayerTeleport:FireServer(args)
end


-- menu: 5846386835
-- player: 5867227007