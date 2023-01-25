-- The start of the file, or the 'header', holds some info and/or setup with the modulepack
header = {
    identifier = "sample-module_1", -- string
    -- identifier can only contain letters a-z, numbers 0-9, hyphens -, and underscores _
    -- entering anything else will cause an error
    version = 1 -- number
}

-- Here, you can enter variables that will be saved after the roblox instance ends
-- The value you set the variable to will be the default
-- You can also remove this table if you don't need it
saveVars = {
    notif_message = "This is the default message!"
    nothing = false -- this is useless, and does nothing as it says
}

-- Make sure to keep all custom declaration after the above headers!
RunService = game:GetService("RunService")

-- This function will be called on each renderstep
-- If you would not like anything to run on renderstep, remove this function completely
RunService.RenderStepped:Connect(function(_currentTime, deltaTime)
    
end)

RunService.Heartbeat:Connect(function()

end)