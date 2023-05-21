Config = {}

-- QB-Target
Config.Target = true -- simpelt du kan fjerne rebet via qb-target

Config.Physics = "both" -- can be both, detach or ragdoll

Config.RopeItem = "tow_rope"

-- How long the tow rope should be (in meters) I strongly recommend keeping it between 6 and 10 meters
Config.ropeLength = 7

-- Time in seconds, how long should pass between each re-sync of the ropes, (30 seconds works well, for large servers you can make it higher)
Config.ropeSyncDuration = 10

-- Max. speed (in MPH) of vehicles being towed or towed (set to -1 to disable speed limit)
Config.maxTowingSpeed = 50

-- Whether we should disallow players from attaching ropes to locked vehicles
-- (For example. To prevent them from stealing vehicles of other players)
Config.checkForLocks = true


-- Classes of which vehicles may not be towed or tow another vehicle
Config.blacklistedClasses = {
    8, -- Motorcycles
    13, -- Cycles
    14, -- Boats
    15, -- Helicopters
    16, -- Planes
    21, -- Trains
}

--[[ All vehicle classes
    0: Compacts
    1: Sedans
    2: SUVs
    3: Coupes
    4: Muscle
    5: Sports Classics
    6: Sports
    7: Super
    8: Motorcycles
    9: Off-road
    10: Industrial
    11: Utility
    12: Vans
    13: Cycles
    14: Boats
    15: Helicopters
    16: Planes
    17: Service
    18: Emergency
    19: Military
    20: Commercial
    21: Trains
]]
