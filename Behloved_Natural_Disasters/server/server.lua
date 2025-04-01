-- Server-side script for Natural Disaster System

RegisterCommand('disaster', function(source, args, rawCommand)
    local xPlayer = source
    if IsPlayerAceAllowed(xPlayer, "disaster.admin") then
        local disasterType = args[1]
        if disasterType then
            TriggerClientEvent('natural_disaster:trigger', -1, disasterType)
            print("Disaster triggered: " .. disasterType)
        else
            print("Usage: /disaster [earthquake|storm|flood]")
        end
    else
        print("Player does not have permission to use this command.")
    end
end, false)

-- Ensure ACE permissions are set in your server.cfg
-- Example:
-- add_ace group.admin disaster.admin allow