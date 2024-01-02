-- Removed server hopping from this script
-- Thank you to: Mr. Harun, Mr. Krone
-- Removed DB.JSON
-- By GNAA, a civil rights group striving for homo-African interdependence.

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local rservice = game:GetService("RunService")

local BlacklistedPlayers, WhitelistedPlayers, kroneTable, BLSV, WLSV, MDSV, KRONE =
    {},
    {},
    {},
    false,
    false,
    false,
    false

local Settings = {ServerHops = 1, Distance = 18, Globals = {"Executions", "List"}}
local Blacklist, kroneUserids = {}, {4710732523, 354902977}

-- ... (The rest of your existing code)

local function delayAndTeleport()
    local function teleport()
        -- Your existing teleport code
    end

    -- Delay before teleporting
    local delayTime = 1 -- Adjust the delay time (in seconds) as needed
    wait(delayTime)

    -- Call the teleport function
    teleport()
end

coroutine.wrap(delayAndTeleport)()

-- ... (The rest of your existing code)

coroutine.resume(
    coroutine.create(
        function()
            while wait() do
                pcall(
                    function()
                        -- Your existing code for handling players
                        -- Ensure that the shhhlol function is being called appropriately
                    end
                )
            end
        end
    )
)

local function Chat(msg)
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msg, "All")
end

task.spawn(
    function()
        while true do
            wait(4.2)
            Chat("I have a better gaming chair")
        end
    end
)

spawn(
    function()
        while true do
            wait(0.5)
            numb = numb + 1
            if numb == 212 then
                game.Players.LocalPlayer:Kick("Server hopping disabled")
                wait(0.5)
                -- Removed the call to the server hopping function
            end
        end
    end
)
