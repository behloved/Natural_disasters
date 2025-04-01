-- Natural Disaster System Script for FiveM
-- Only accessible by ACE groups

RegisterNetEvent('natural_disaster:trigger')
AddEventHandler('natural_disaster:trigger', function(disasterType)
    if disasterType == "earthquake" then
        TriggerEarthquake()
    elseif disasterType == "storm" then
        TriggerStorm()
    elseif disasterType == "flood" then
        TriggerFlood()
    else
        print("Unknown disaster type: " .. disasterType)
    end
end)

function TriggerEarthquake()
    -- Example earthquake effect
    print("Earthquake triggered!")
    ShakeGameplayCam("LARGE_EXPLOSION_SHAKE", 1.0)
    Citizen.Wait(5000)
    ShakeGameplayCam("LARGE_EXPLOSION_SHAKE", 0.0)
end

function TriggerStorm()
    -- Example storm effect
    print("Storm triggered!")
    SetWeatherTypeOverTime("THUNDER", 15.0)
    Citizen.Wait(15000)
    ClearOverrideWeather()
end

function TriggerFlood()
    -- Example flood effect
    print("Flood triggered!")
    -- Add custom flood logic here (e.g., spawning water entities or effects)
end