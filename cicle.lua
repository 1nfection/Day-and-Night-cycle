local lighting = game:GetService("Lighting")
local startTime = 8
local cycleDuration = 120
local moonIntensityNight = 0.1

local function updatecycle()
    local elapsedTime = (tick() % cycleDuration) / cycleDuration
    local sunAngle = (elapsedTime * 360) -90 
    lighting:SetMinutesAfterMidnight(startTime * 60)
    lighting:SetRotation(sunAngle, 0)


    if elapsedTime < 0.5 then 
        lighting.Sky.moonIntensity = moonIntensityNight
    else 
        lighting.Sky.moonIntensity = 1
    end
end


game:GetService("RunService").Heartbeat:Connect(updatecycle)
