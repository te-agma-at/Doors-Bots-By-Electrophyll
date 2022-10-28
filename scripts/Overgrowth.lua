function doSpawn()
    local Creator = loadstring(game:HttpGet(
        "https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()
    -- Create entity
    local entity = Creator.createEntity({
        CustomName = "Overgrowth",
        Model = "https://github.com/te-agma-at/Doors-Bots-By-Electrophyll/raw/main/Overgrowth.rbxm",
        Speed = 70,
        DelayTime = 0,
        HeightOffset = 0,
        CanKill = true,
        BreakLights = true,
        FlickerLights = {true, 2},
        Cycles = {
            Min = 2,
            Max = 2,
            WaitTime = 0.1
        },
        CamShake = {true, {5, 15, 0.1, 1}, 10},
        Jumpscare = {true, -- Enabled ('false' if you don't want jumpscare)
        {
            Image1 = "rbxassetid://2647482524", -- Image1 url
            Image2 = "rbxassetid://2647482524", -- Image2 url
            Shake = true,
            Sound1 = {6467894576, -- SoundId
            {
                Volume = 0.5
            } -- Sound properties
            },
            Sound2 = {6467894576, -- SoundId
            {
                Volume = 0.5
            } -- Sound properties
            },
            Flashing = {true, -- Enabled
            Color3.fromRGB(166, 255, 133) -- Color
            },
            Tease = {
                false, -- Enabled ('false' if you don't want tease)
                Min = 1,
                Max = 1
            }
        }},
        CustomDialog = {"You died to Overgrowth...", "It is similar to Rush, except slower.",
                        "And the lights flicker for 2 seconds before it arrives instead of 1 second.",
                        "It spawns every 90-95 seconds, too.", "So use what you have learned from Rush!"}
    })
end

while true do
    wait(math.random(90, 95))
    doSpawn()
    -----[[ Advanced ]]-----
    entity.Debug.OnEntitySpawned = function(entityModel)
    end

    entity.Debug.OnEntityDespawned = function(entityModel)
    end

    entity.Debug.OnEntityStartMoving = function(entityModel)
    end

    entity.Debug.OnEntityFinishedRebound = function(entityModel)
    end

    entity.Debug.OnDeath = function()
    end
    ---------------------------

    -- Run the created entity
    Creator.runEntity(entity)
end
