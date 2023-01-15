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

-- load for each playe
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


ESX.RegisterServerCallback('esx_injuries:esxGetInjuriesForPlayer', function(source, cb, param1)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local target = tonumber(param1)
    if(Storage[ESX.GetPlayerFromId(target).identifier] == nil) then
        Storage[ESX.GetPlayerFromId(target).identifier] = {}
    end
    local injury = Storage[ESX.GetPlayerFromId(target).identifier]
    cb(json.encode(injury))
end)

ESX.RegisterServerCallback("esx_injuries:esxHealAllInj",function(source, cb, param1)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local target = tonumber(param1)
    if target ~= nil then
        Storage[ESX.GetPlayerFromId(target).identifier] = {}
        TriggerClientEvent('esx_injuries:healallinjuries', target)
        cb(true)
    else
        cb(false)
    end
end)

RegisterCommand('healallinjuries', function(source, args, rawCommand)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local target = tonumber(args[1])
    if target ~= nil then
        Storage[ESX.GetPlayerFromId(target).identifier] = {}
        TriggerClientEvent('esx_injuries:healallinjuries', target)
    end
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
                end)
        end
        Citizen.Wait(60000 * 1)
    end
end)

