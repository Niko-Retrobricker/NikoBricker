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

-- This function will be called on each renderstep or heartbeat
-- If you would not like anything to be looped, remove this function completely
-- DO NOT USE ANY FOREVER LOOPS (while true...) IT WILL HANG THE SCRIPT!
-- Event is a string that contains how moduleLoop was called
--- "renderstep" if called from renderstep
--- "heartbeat" if called from heartbeat
-- Entering anything that will cause the script to yield (wait) will cause it to miss future loops until that has completed
function moduleLoop(event)
    if event = "renderstep" then

    else if event = "heartbeat" then

    end
end