ESX = exports["es_extended"]:getSharedObject()

Storage = {}

-- Create in database if not exists to store injured body parts for each player 
MySQL.ready(function()
    MySQL.Async.execute(
        'CREATE TABLE if not exists `injuries` (        `identifier` varchar(46) NOT NULL,        `Injuries` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`Injuries`))      )',
        {}, function(rowsChanged)
            print("Created table 'injuries' if not exists")
        end)
end)

-- on player load get injured body parts from database
AddEventHandler('esx:playerLoaded', function(source)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    -- Check if player is in storageF
    if Storage[xPlayer.identifier] == nil then
        Storage[xPlayer.identifier] = {}
        MySQL.Async.fetchAll('SELECT * FROM injuries WHERE identifier = @identifier', {
            ['@identifier'] = xPlayer.identifier
        }, function(result)
            if result[1] ~= nil then
                local Injuries = json.decode(result[1].Injuries)
                TriggerClientEvent('esx_injuries:setInjuredBodyParts', _source, Injuries)
            end
        end)
        Storage[xPlayer.identifier] = Injuries
    else -- if player is in storage, load from storage
        TriggerClientEvent('esx_injuries:setInjuredBodyParts', _source, Storage[xPlayer.identifier])
    end
end)

RegisterNetEvent('esx_injuries:loadInjuredBodyParts')

AddEventHandler('esx_injuries:loadInjuredBodyParts', function(bodyParts)
    local xPlayer = ESX.GetPlayerFromId(source)
    if Storage[xPlayer.identifier] == nil then
        Storage[xPlayer.identifier] = {}
        MySQL.Async.fetchAll('SELECT * FROM injuries WHERE identifier = @identifier', {
            ['@identifier'] = xPlayer.identifier
        }, function(result)
            if result[1] ~= nil then
                local Injuries = json.decode(result[1].Injuries)
                TriggerClientEvent('esx_injuries:setInjuredBodyParts', _source, Injuries)
            end
        end)
        Storage[xPlayer.identifier] = Injuries
    else
        TriggerClientEvent('esx_injuries:setInjuredBodyParts', _source, Storage[xPlayer.identifier])
    end
end)

-- Save injured body parts to database
RegisterNetEvent('esx_injuries:saveInjuredBodyParts')

AddEventHandler('esx_injuries:saveInjuredBodyParts', function(bodyParts)
    local xPlayer = ESX.GetPlayerFromId(source)
    Storage[xPlayer.identifier] = bodyParts
end)

RegisterCommand("showinjuries", function(source, args, rawCommand)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local target = tonumber(args[1])

    if target ~= nil then
        print(target, _source, "if")
        if Storage[ESX.GetPlayerFromId(target).identifier] ~= nil then
            TriggerClientEvent('esx_injuries:OpenInjuryWindow', _source, Storage[ESX.GetPlayerFromId(target).identifier])
            print("Injuries: " .. json.encode(Storage[ESX.GetPlayerFromId(target).identifier]), _source)
        else
            print(target, _source, "else")
            MySQL.Async.fetchAll('SELECT * FROM injuries WHERE identifier = @identifier', {
                ['@identifier'] = ESX.GetPlayerFromId(target).identifier
            }, function(result)
                if result[1] ~= nil then
                    local Injuries = json.decode(result[1].Injuries)
                    print("Injuries: " .. json.encode(Injuries), _source)
                    TriggerClientEvent('esx_injuries:OpenInjuryWindow', _source,
                        Storage[ESX.GetPlayerFromId(target).identifier])
                end
            end)
        end
    end
end)

RegisterCommand('healallinjuries', function(source, args, rawCommand)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local target = tonumber(args[1])
    if target ~= nil then
        Storage[ESX.GetPlayerFromId(target).identifier] = {}
        TriggerClientEvent('esx_injuries:setInjuredBodyParts', target, {})
    end
end)

RegisterCommand('closeui', function(source, args, rawCommand)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_injuries:CloseInjuryWindow', _source)
end)


Citizen.CreateThread(function()
    while true do
        print("Saving body parts to database")
        for k, v in pairs(Storage) do
            MySQL.Async.execute(
                'INSERT INTO injuries (identifier, Injuries) VALUES (@identifier, @Injuries) ON DUPLICATE KEY UPDATE Injuries = @Injuries',
                {
                    ['@identifier'] = k,
                    ['@Injuries'] = json.encode(v)
                }, function(rowsChanged)
                    print("Saved body parts to database: " .. json.encode(v))
                end)
        end
        Citizen.Wait(60000)
    end
end)
