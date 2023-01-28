
COREGUI = game:GetService("CoreGui")
if not game:IsLoaded() then
	local notLoaded = Instance.new("Message")
	notLoaded.Parent = COREGUI
	notLoaded.Text = 'waiting for the game to load'
	game.Loaded:Wait()
	notLoaded:Destroy()
end

wait()
syn.queue_on_teleport("loadstring(game:HttpGet('https://raw.githubusercontent.com/NikoBricker/NikoBricker/main/testing/anti-place-ban.lua'))()")
if game.PlaceId == 5846386835 then
    while true do
        print("Trying to teleport :P")
        game:GetService("ReplicatedStorage").RemoteEvents.RequestPlayerTeleport:FireServer("3256865345_1")
        wait(0.2)
    end
end




-- menu: 5846386835
-- player: 5867227007