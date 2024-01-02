-- Removed server hopping from this script
-- Thank you to: Mr. Harun, Mr. Krone
-- Removed DB.JSON
-- By GNAA, a civil rights group striving for homo-African interdependence.

-- ... (The rest of your existing code)

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local rservice = game:GetService("RunService")

-- ... (The rest of your existing code)

coroutine.resume(
    coroutine.create(
        function()
            while wait() do
                pcall(
                    function()
                        for _, z in pairs(Players:GetPlayers()) do
                            if z ~= LocalPlayer and not table.find(WhitelistedPlayers, tostring(z.UserId)) then
                                if
                                    LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid") and
                                        z and
                                        z.Character and
                                        z.Character:FindFirstChildOfClass("Humanoid").Sit == false
                                 then
                                    shhhlol(z)
                                    wait()
                                end
                            end
                        end
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
