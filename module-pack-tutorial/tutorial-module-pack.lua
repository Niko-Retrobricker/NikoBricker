-- Note, each thing here is treated as an individual lua file, therfore anything can be run anywhere.
-- Different things may not execute the same as others.

-- Here holds information about the modulepack
-- The return must hold a table
-- To make a module, add another table to the modules table.
-- The name of the table will be the modules identifier that will fire the moduleEvent
-- identifiers can only contain letters a-z, numbers 0-9, and underscores _
-- entering anything else will cause an error
-- capital letters will be made lowercase, so don't use those
-- Some functions have been supplied to ease module designing
-- These functions are listed below

---- Objects
--- moduleBlank()
--- A blank module used with moduleMultiple to help with positioning.
-- example - Switch, Blank, Switch, Blank

--- moduleMultiple(<objects> - table)
--- Used to have multiple objects in one horizontal spot
-- example - Text, Switch

--- moduleSwitch(<Switch Identifer> - string, <Switchable?> - bool, <state> - bool, <centering> - number)
--- Creates a switch that will be displayed in the module
-- Switch Identifier - The identifier of the switch
-- Switchable? - determines if the switch can be switched by the user or not.
-- state - the default state of the switch, true or false
-- centering - The centering of the switch <0 = left, 1 = center, 2 = right



header = {
    return {
        identifier = "sample_modulepack_1", -- string
        version = 1, -- number
        group = "Tutorial" -- string
        -- The group will be where your module is held
        -- Defaults
        -- "Character"
        -- "Tool Tampering"
        -- "Visual"
        modules = {
            tutorial_module_1 = {
                name = "Tutorial Module 1", -- The name that will be displayed as the title of the module
                switchable = true, -- Determines if there will be a switch next to the name
                warningType = 0
                -- 0 = no warning
                -- 1 = Detectable warning
                -- 2 = Client-side warning
                body = { -- the first thing will be on top of the modules body, the second will be below the first, and so on
                    moduleSwitch("switch1"),
                }
            }
        }
    }
},

-- Here, you can enter variables that will be saved after the roblox instance ends
-- The value you set the variable to will be the default
-- You can also remove this table if you don't need it
saveVars = {
    return {
        notif_message = "This is the default message!"
        nothing = false -- this is useless, and does nothing as it says
    }
},

-- This is the setup that **will only be ran once**, but will be kept in a coroutine
-- Use ':connect' functions to loop!
setup = {
    --Here is a template looper
    RunService = game:GetService("RunService")
    
    -- This function will be called on each renderstep
    -- If you would not like anything to run on renderstep, remove this function completely
    RunService.RenderStepped:Connect(function(deltaTime) -- Renderstepped fires before each frame is rendered to the screen
    
    end)
    
    RunService.Stepped:Connect(function(deltaTime) -- Stepped run's **before** each physics simulation
    
    end)

    RunService.Heartbeat:Connect(function(deltaTime) -- Heartbeat run's **after** each physics simulation
    
    end)
}