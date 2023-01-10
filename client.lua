ESX = exports["es_extended"]:getSharedObject()
Health = {
    Player = {
        Health = GetEntityHealth(PlayerPed)
    }
}

local BodyParts = {
    {
        Name = 'Everything',
        Damaged = false,
        Part = 0,
        BoneID = 0,
        Severity = 0,
        DamageType = {}
    }, {
        Name = 'SKEL_Pelvis',
        Damaged = false,
        Part = 2,
        BoneID = 11816,
        Severity = 0,
        DamageType = {}
    }, {
        Name = 'SKEL_L_Thigh',
        Damaged = false,
        Part = 3,
        BoneID = 58271,
        Severity = 0,
        DamageType = {}
    }, {
        Name = 'SKEL_L_Calf',
        Damaged = false,
        Part = 4,
        BoneID = 63931,
        Severity = 0,
        DamageType = {}
    }, {
        Name = 'SKEL_L_Foot',
        Damaged = false,
        Part = 5,
        BoneID = 14201,
        Severity = 0,
        DamageType = {}
    }, {
        Name = 'IK_L_Foot',
        Damaged = false,
        Part = 7,
        BoneID = 65245,
        Severity = 0,
        DamageType = {}
    }, {
        Name = 'PH_L_Foot',
        Damaged = false,
        Part = 8,
        BoneID = 57717,
        Severity = 0,
        DamageType = {}
    }, {
        Name = 'MH_L_Knee',
        Damaged = false,
        Part = 9,
        BoneID = 46078,
        Severity = 0,
        DamageType = {}
    }, {
        Name = 'SKEL_R_Thigh',
        Damaged = false,
        Part = 10,
        BoneID = 51826,
        Severity = 0,
        DamageType = {}
    }, {
        Name = 'SKEL_R_Calf',
        Damaged = false,
        Part = 11,
        BoneID = 36864,
        Severity = 0,
        DamageType = {}
    }, {
        Name = 'SKEL_R_Foot',
        Damaged = false,
        Part = 12,
        BoneID = 52301,
        Severity = 0,
        DamageType = {}
    }, {
        Name = 'IK_R_Foot',
        Damaged = false,
        Part = 14,
        BoneID = 35502,
        Severity = 0,
        DamageType = {}
    }, {
        Name = 'PH_R_Foot',
        Damaged = false,
        Part = 15,
        BoneID = 24806,
        Severity = 0,
        DamageType = {}
    }, {
        Name = 'MH_R_Knee',
        Damaged = false,
        Part = 16,
        BoneID = 16335,
        Severity = 0,
        DamageType = {}
    }, {
        Name = 'RB_L_ThighRoll',
        Damaged = false,
        Part = 17,
        BoneID = 23639,
        Severity = 0,
        DamageType = {}
    }, {
        Name = 'RB_R_ThighRoll',
        Damaged = false,
        Part = 18,
        BoneID = 6442,
        Severity = 0,
        DamageType = {}
    }, {
        Name = 'SKEL_Spine_Root',
        Damaged = false,
        Part = 19,
        BoneID = 57597,
        Severity = 0,
        DamageType = {}
    }, {
        Name = 'SKEL_Spine0',
        Damaged = false,
        Part = 20,
        BoneID = 23553,
        Severity = 0,
        DamageType = {}
    }, {
        Name = 'SKEL_Spine1',
        Damaged = false,
        Part = 21,
        BoneID = 24816,
        Severity = 0,
        DamageType = {}
    }, {
        Name = 'SKEL_Spine2',
        Damaged = false,
        Part = 22,
        BoneID = 24817,
        Severity = 0,
        DamageType = {}
    }, {
        Name = 'SKEL_Spine3',
        Damaged = false,
        Part = 23,
        BoneID = 24818,
        Severity = 0,
        DamageType = {}
    }, {
        Name = 'SKEL_L_Clavicle',
        Damaged = false,
        Part = 24,
        BoneID = 64729,
        Severity = 0,
        DamageType = {}
    }, {
        Name = 'SKEL_L_UpperArm',
        Damaged = false,
        Part = 25,
        BoneID = 45509,
        Severity = 0,
        DamageType = {}
    }, {
        Name = 'SKEL_L_Forearm',
        Damaged = false,
        Part = 26,
        BoneID = 61163,
        Severity = 0,
        DamageType = {}
    }, {
        Name = 'SKEL_L_Hand',
        Damaged = false,
        Part = 27,
        BoneID = 18905,
        Severity = 0,
        DamageType = {}
    }, {
        Name = 'PH_L_Hand',
        Damaged = false,
        Part = 28,
        BoneID = 60309,
        Severity = 0,
        DamageType = {}
    }, {
        Name = 'IK_L_Hand',
        Damaged = false,
        Part = 29,
        BoneID = 36029,
        Severity = 0,
        DamageType = {}
    }, {
        Name = 'MH_L_Elbow',
        Damaged = false,
        Part = 30,
        BoneID = 22711,
        Severity = 0,
        DamageType = {}
    }, {
        Name = 'SKEL_R_Clavicle',
        Damaged = false,
        Part = 31,
        BoneID = 10706,
        Severity = 0,
        DamageType = {}
    }, {
        Name = 'SKEL_R_UpperArm',
        Damaged = false,
        Part = 32,
        BoneID = 40269,
        Severity = 0,
        DamageType = {}
    }, {
        Name = 'SKEL_R_Forearm',
        Damaged = false,
        Part = 33,
        BoneID = 28252,
        Severity = 0,
        DamageType = {}
    }, {
        Name = 'SKEL_R_Hand',
        Damaged = false,
        Part = 34,
        BoneID = 57005,
        Severity = 0,
        DamageType = {}
    }, {
        Name = 'PH_R_Hand',
        Damaged = false,
        Part = 35,
        BoneID = 58866,
        Severity = 0,
        DamageType = {}
    }, {
        Name = 'IK_R_Hand',
        Damaged = false,
        Part = 36,
        BoneID = 6286,
        Severity = 0,
        DamageType = {}
    }, {
        Name = 'RB_R_ForeArmRoll',
        Damaged = false,
        Part = 37,
        BoneID = 43810,
        Severity = 0,
        DamageType = {}
    }, {
        Name = 'RB_R_ArmRoll',
        Damaged = false,
        Part = 38,
        BoneID = 37119,
        Severity = 0,
        DamageType = {}
    }, {
        Name = 'MH_R_Elbow',
        Damaged = false,
        Part = 39,
        BoneID = 2992,
        Severity = 0,
        DamageType = {}
    }, {
        Name = 'SKEL_Neck_1',
        Damaged = false,
        Part = 40,
        BoneID = 39317,
        Severity = 0,
        DamageType = {}
    }, {
        Name = 'SKEL_Head',
        Damaged = false,
        Part = 41,
        BoneID = 31086,
        Severity = 0,
        DamageType = {}
    }, {
        Name = 'IK_Head',
        Damaged = false,
        Part = 42,
        BoneID = 12844,
        Severity = 0,
        DamageType = {}
    }, {
        Name = 'FACIAL_facialRoot',
        Damaged = false,
        Part = 43,
        BoneID = 65068,
        Severity = 0,
        DamageType = {}
    }, {
        Name = 'FB_L_Brow_Out_000',
        Damaged = false,
        Part = 44,
        BoneID = 58331,
        Severity = 0,
        DamageType = {}
    }, {
        Name = 'FB_L_Lid_Upper_000',
        Damaged = false,
        Part = 45,
        BoneID = 45750,
        Severity = 0,
        DamageType = {}
    }, {
        Name = 'FB_L_Eye_000',
        Damaged = false,
        Part = 46,
        BoneID = 25260,
        Severity = 0,
        DamageType = {}
    }, {
        Name = 'FB_L_CheekBone_000',
        Damaged = false,
        Part = 47,
        BoneID = 21550,
        Severity = 0,
        DamageType = {}
    }, {
        Name = 'FB_L_Lip_Corner_000',
        Damaged = false,
        Part = 48,
        BoneID = 29868,
        Severity = 0,
        DamageType = {}
    }, {
        Name = 'FB_R_Lid_Upper_000',
        Damaged = false,
        Part = 49,
        BoneID = 43536,
        Severity = 0,
        DamageType = {}
    }, {
        Name = 'FB_R_Eye_000',
        Damaged = false,
        Part = 50,
        BoneID = 27474,
        Severity = 0,
        DamageType = {}
    }, {
        Name = 'FB_R_CheekBone_000',
        Damaged = false,
        Part = 51,
        BoneID = 19336,
        Severity = 0,
        DamageType = {}
    }, {
        Name = 'FB_R_Brow_Out_000',
        Damaged = false,
        Part = 52,
        BoneID = 1356,
        Severity = 0,
        DamageType = {}
    }, {
        Name = 'FB_R_Lip_Corner_000',
        Damaged = false,
        Part = 53,
        BoneID = 11174,
        Severity = 0,
        DamageType = {}
    }, {
        Name = 'FB_Brow_Centre_000',
        Damaged = false,
        Part = 54,
        BoneID = 37193,
        Severity = 0,
        DamageType = {}
    }, {
        Name = 'FB_UpperLipRoot_000',
        Damaged = false,
        Part = 55,
        BoneID = 20178,
        Severity = 0,
        DamageType = {}
    }, {
        Name = 'FB_UpperLip_000',
        Damaged = false,
        Part = 56,
        BoneID = 61839,
        Severity = 0,
        DamageType = {}
    }, {
        Name = 'FB_L_Lip_Top_000',
        Damaged = false,
        Part = 57,
        BoneID = 20279,
        Severity = 0,
        DamageType = {}
    }, {
        Name = 'FB_R_Lip_Top_000',
        Damaged = false,
        Part = 58,
        BoneID = 17719,
        Severity = 0,
        DamageType = {}
    }, {
        Name = 'FB_Jaw_000',
        Damaged = false,
        Part = 59,
        BoneID = 46240,
        Severity = 0,
        DamageType = {}
    }, {
        Name = 'FB_LowerLipRoot_000',
        Damaged = false,
        Part = 60,
        BoneID = 17188,
        Severity = 0,
        DamageType = {}
    }, {
        Name = 'FB_LowerLip_000',
        Damaged = false,
        Part = 61,
        BoneID = 20623,
        Severity = 0,
        DamageType = {}
    }, {
        Name = 'FB_L_Lip_Bot_000',
        Damaged = false,
        Part = 62,
        BoneID = 47419,
        Severity = 0,
        DamageType = {}
    }, {
        Name = 'FB_R_Lip_Bot_000',
        Damaged = false,
        Part = 63,
        BoneID = 49979,
        Severity = 0,
        DamageType = {}
    }, {
        Name = 'FB_Tongue_000',
        Damaged = false,
        Part = 64,
        BoneID = 47495,
        Severity = 0,
        DamageType = {}
    }, {
        Name = 'RB_Neck_1',
        Damaged = false,
        Part = 65,
        BoneID = 35731,
        Severity = 0,
        DamageType = {}
    }, {
        Name = 'IK_Root',
        Damaged = false,
        Part = 66,
        BoneID = 56604,
        Severity = 0,
        DamageType = {}
    }
}

local weapons = { --[[ Small Caliber ]] --
    {
        Name = 'WEAPON_PISTOL',
        WeaponClasses = 'Mały Kaliber'
    }, {
        Name = 'WEAPON_COMBATPISTOL',
        WeaponClasses = 'Mały Kaliber'
    }, {
        Name = 'WEAPON_APPISTOL',
        WeaponClasses = 'Mały Kaliber'
    }, {
        Name = 'WEAPON_COMBATPDW',
        WeaponClasses = 'Mały Kaliber'
    }, {
        Name = 'WEAPON_MACHINEPISTOL',
        WeaponClasses = 'Mały Kaliber'
    }, {
        Name = 'WEAPON_MICROSMG',
        WeaponClasses = 'Mały Kaliber'
    }, {
        Name = 'WEAPON_MINISMG',
        WeaponClasses = 'Mały Kaliber'
    }, {
        Name = 'WEAPON_PISTOL_MK2',
        WeaponClasses = 'Mały Kaliber'
    }, {
        Name = 'WEAPON_SNSPISTOL',
        WeaponClasses = 'Mały Kaliber'
    }, {
        Name = 'WEAPON_SNSPISTOL_MK2',
        WeaponClasses = 'Mały Kaliber'
    }, {
        Name = 'WEAPON_VINTAGEPISTOL',
        WeaponClasses = 'Mały Kaliber'
    }, --[[ Medium Caliber ]] --
    {
        Name = 'WEAPON_ADVANCEDRIFLE',
        WeaponClasses = 'Średni Kaliber'
    }, {
        Name = 'WEAPON_ASSAULTSMG',
        WeaponClasses = 'Średni Kaliber'
    }, {
        Name = 'WEAPON_BULLPUPRIFLE',
        WeaponClasses = 'Średni Kaliber'
    }, {
        Name = 'WEAPON_BULLPUPRIFLE_MK2',
        WeaponClasses = 'Średni Kaliber'
    }, {
        Name = 'WEAPON_CARBINERIFLE',
        WeaponClasses = 'Średni Kaliber'
    }, {
        Name = 'WEAPON_CARBINERIFLE_MK2',
        WeaponClasses = 'Średni Kaliber'
    }, {
        Name = 'WEAPON_COMPACTRIFLE',
        WeaponClasses = 'Średni Kaliber'
    }, {
        Name = 'WEAPON_DOUBLEACTION',
        WeaponClasses = 'Średni Kaliber'
    }, {
        Name = 'WEAPON_GUSENBERG',
        WeaponClasses = 'Średni Kaliber'
    }, {
        Name = 'WEAPON_HEAVYPISTOL',
        WeaponClasses = 'Średni Kaliber'
    }, {
        Name = 'WEAPON_MARKSMANPISTOL',
        WeaponClasses = 'Średni Kaliber'
    }, {
        Name = 'WEAPON_PISTOL50',
        WeaponClasses = 'Średni Kaliber'
    }, {
        Name = 'WEAPON_REVOLVER',
        WeaponClasses = 'Średni Kaliber'
    }, {
        Name = 'WEAPON_REVOLVER_MK2',
        WeaponClasses = 'Średni Kaliber'
    }, {
        Name = 'WEAPON_SMG',
        WeaponClasses = 'Średni Kaliber'
    }, {
        Name = 'WEAPON_SMG_MK2',
        WeaponClasses = 'Średni Kaliber'
    }, {
        Name = 'WEAPON_SPECIALCARBINE',
        WeaponClasses = 'Średni Kaliber'
    }, {
        Name = 'WEAPON_SPECIALCARBINE_MK2',
        WeaponClasses = 'Średni Kaliber'
    }, --[[ High Caliber ]] --
    {
        Name = 'WEAPON_ASSAULTRIFLE',
        WeaponClasses = 'Wysoki Kaliber'
    }, {
        Name = 'WEAPON_ASSAULTRIFLE_MK2',
        WeaponClasses = 'Wysoki Kaliber'
    }, {
        Name = 'WEAPON_COMBATMG',
        WeaponClasses = 'Wysoki Kaliber'
    }, {
        Name = 'WEAPON_COMBATMG_MK2',
        WeaponClasses = 'Wysoki Kaliber'
    }, {
        Name = 'WEAPON_HEAVYSNIPER',
        WeaponClasses = 'Wysoki Kaliber'
    }, {
        Name = 'WEAPON_HEAVYSNIPER_MK2',
        WeaponClasses = 'Wysoki Kaliber'
    }, {
        Name = 'WEAPON_MARKSMANRIFLE',
        WeaponClasses = 'Wysoki Kaliber'
    }, {
        Name = 'WEAPON_MARKSMANRIFLE_MK2',
        WeaponClasses = 'Wysoki Kaliber'
    }, {
        Name = 'WEAPON_MG',
        WeaponClasses = 'Wysoki Kaliber'
    }, {
        Name = 'WEAPON_MINIGUN',
        WeaponClasses = 'Wysoki Kaliber'
    }, {
        Name = 'WEAPON_MUSKET',
        WeaponClasses = 'Wysoki Kaliber'
    }, {
        Name = 'WEAPON_RAILGUN',
        WeaponClasses = 'Wysoki Kaliber'
    }, --[[ Strzelbas ]] --
    {
        Name = 'WEAPON_ASSAULTStrzelba',
        WeaponClasses = 'Strzelba'
    }, {
        Name = 'WEAPON_BULLUPStrzelba',
        WeaponClasses = 'Strzelba'
    }, {
        Name = 'WEAPON_DBStrzelba',
        WeaponClasses = 'Strzelba'
    }, {
        Name = 'WEAPON_HEAVYStrzelba',
        WeaponClasses = 'Strzelba'
    }, {
        Name = 'WEAPON_PUMPStrzelba',
        WeaponClasses = 'Strzelba'
    }, {
        Name = 'WEAPON_PUMPStrzelba_MK2',
        WeaponClasses = 'Strzelba'
    }, {
        Name = 'WEAPON_SAWNOFFStrzelba',
        WeaponClasses = 'Strzelba'
    }, {
        Name = 'WEAPON_SWEEPERStrzelba',
        WeaponClasses = 'Strzelba'
    }, --[[ Animals ]] --
    {
        Name = 'WEAPON_ANIMAL',
        WeaponClasses = 'Dzikie zwierzęta'
    }, {
        Name = 'WEAPON_COUGAR',
        WeaponClasses = 'Dzikie zwierzęta'
    }, {
        Name = 'WEAPON_BARBED_WIRE',
        WeaponClasses = 'Dzikie zwierzęta'
    }, --[[ Cięte Weapons ]] --
    {
        Name = 'WEAPON_BATTLEAXE',
        WeaponClasses = 'Cięte'
    }, {
        Name = 'WEAPON_BOTTLE',
        WeaponClasses = 'Cięte'
    }, {
        Name = 'WEAPON_DAGGER',
        WeaponClasses = 'Cięte'
    }, {
        Name = 'WEAPON_HATCHET',
        WeaponClasses = 'Cięte'
    }, {
        Name = 'WEAPON_KNIFE',
        WeaponClasses = 'Cięte'
    }, {
        Name = 'WEAPON_MACHETE',
        WeaponClasses = 'Cięte'
    }, {
        Name = 'WEAPON_SWITCHBLADE',
        WeaponClasses = 'Cięte'
    }, {
        Name = 'WEAPON_HATCHET',
        WeaponClasses = 'Cięte'
    }, --[[ Light Impact ]] --
    {
        Name = 'WEAPON_BALL',
        WeaponClasses = 'Lekkie uderzenie'
    }, {
        Name = 'WEAPON_FLASHLIGHT',
        WeaponClasses = 'Lekkie uderzenie'
    }, {
        Name = 'WEAPON_KNUCKLE',
        WeaponClasses = 'Lekkie uderzenie'
    }, {
        Name = 'WEAPON_GARBAGEBAG',
        WeaponClasses = 'Lekkie uderzenie'
    }, {
        Name = 'WEAPON_BRIEFCASE',
        WeaponClasses = 'Lekkie uderzenie'
    }, {
        Name = 'WEAPON_BRIEFCASE_02',
        WeaponClasses = 'Lekkie uderzenie'
    }, {
        Name = 'WEAPON_NIGHTSTICK',
        WeaponClasses = 'Lekkie uderzenie'
    }, {
        Name = 'WEAPON_SNOWBALL',
        WeaponClasses = 'Lekkie uderzenie'
    }, {
        Name = 'WEAPON_UNARMED',
        WeaponClasses = 'Lekkie uderzenie'
    }, {
        Name = 'WEAPON_PARACHUTE',
        WeaponClasses = 'Lekkie uderzenie'
    }, {
        Name = 'WEAPON_NIGHTVISION',
        WeaponClasses = 'Lekkie uderzenie'
    }, --[[ Heavy Impact ]] --
    {
        Name = 'WEAPON_BAT',
        WeaponClasses = 'Mocne uderzenie'
    }, {
        Name = 'WEAPON_CROWBAR',
        WeaponClasses = 'Mocne uderzenie'
    }, {
        Name = 'WEAPON_FIREEXTINGUISHER',
        WeaponClasses = 'Mocne uderzenie'
    }, {
        Name = 'WEAPON_FIRWORK',
        WeaponClasses = 'Mocne uderzenie'
    }, {
        Name = 'WEAPON_GOLFLCUB',
        WeaponClasses = 'Mocne uderzenie'
    }, {
        Name = 'WEAPON_HAMMER',
        WeaponClasses = 'Mocne uderzenie'
    }, {
        Name = 'WEAPON_PETROLCAN',
        WeaponClasses = 'Mocne uderzenie'
    }, {
        Name = 'WEAPON_POOLCUE',
        WeaponClasses = 'Mocne uderzenie'
    }, {
        Name = 'WEAPON_WRENCH',
        WeaponClasses = 'Mocne uderzenie'
    }, --[[ Eksplozjas ]] --
    {
        Name = 'WEAPON_EXPLOSION',
        WeaponClasses = 'Eksplozja'
    }, {
        Name = 'WEAPON_GRENADE',
        WeaponClasses = 'Eksplozja'
    }, {
        Name = 'WEAPON_COMPACTLAUNCHER',
        WeaponClasses = 'Eksplozja'
    }, {
        Name = 'WEAPON_HOMINGLAUNCHER',
        WeaponClasses = 'Eksplozja'
    }, {
        Name = 'WEAPON_PIPEBOMB',
        WeaponClasses = 'Eksplozja'
    }, {
        Name = 'WEAPON_PROXMINE',
        WeaponClasses = 'Eksplozja'
    }, {
        Name = 'WEAPON_RPG',
        WeaponClasses = 'Głośniczek komendanta'
    }, {
        Name = 'WEAPON_STICKYBOMB',
        WeaponClasses = 'Eksplozja'
    }, --[[ Other ]] --
    {
        Name = 'WEAPON_FALL',
        WeaponClasses = 'Obrażenia od upadku'
    }, {
        Name = 'WEAPON_HIT_BY_WATER_CANNON',
        WeaponClasses = 'Mocne uderzenie'
    }, {
        Name = 'WEAPON_RAMMED_BY_CAR',
        WeaponClasses = 'Bardzo Mocne uderzenie'
    }, {
        Name = 'WEAPON_RUN_OVER_BY_CAR',
        WeaponClasses = 'Bardzo Mocne uderzenie'
    }, {
        Name = 'WEAPON_HELI_CRASH',
        WeaponClasses = 'Bardzo Mocne uderzenie'
    }, {
        Name = 'WEAPON_STUNGUN',
        WeaponClasses = 'Lekkie porażenie prądem'
    }, --[[ Fire ]] --
    {
        Name = 'WEAPON_ELECTRIC_FENCE',
        WeaponClasses = 'Średnie porażenie prądem'
    }, {
        Name = 'WEAPON_FIRE',
        WeaponClasses = 'Ogień'
    }, {
        Name = 'WEAPON_MOLOTOV',
        WeaponClasses = 'Ogień'
    }, {
        Name = 'WEAPON_FLARE',
        WeaponClasses = 'Ogień'
    }, {
        Name = 'WEAPON_FLAREGUN',
        WeaponClasses = 'Ogień'
    }, --[[ Suffocate ]] --
    {
        Name = 'WEAPON_DROWNING',
        WeaponClasses = 'Uduszenie'
    }, {
        Name = 'WEAPON_DROWNING_IN_VEHICLE',
        WeaponClasses = 'Uduszenie'
    }, {
        Name = 'WEAPON_EXHAUSTION',
        WeaponClasses = 'Uduszenie'
    }, {
        Name = 'WEAPON_BZGAS',
        WeaponClasses = 'Uduszenie'
    }, {
        Name = 'WEAPON_SMOKEGRENADE',
        WeaponClasses = 'Uduszenie'
    }
}

function getInjuries()
    local Injuries = {}
    for _, BodyPart in pairs(BodyParts) do
        if BodyPart.Damaged then
            table.insert(Injuries, BodyPart)
        end
    end
    return Injuries
end

RegisterNetEvent('esx_injuries:healallinjuries')
AddEventHandler('esx_injuries:healallinjuries', function()
    for _, BodyPart in pairs(BodyParts) do
        BodyPart.Damaged = false
        BodyPart.DamageType = {}
    end
end)

RegisterNetEvent('esx_injuries:setInjuredBodyParts')
AddEventHandler('esx_injuries:setInjuredBodyParts', function(Injuries)
    print("Setting injured body parts")
    for _, BodyPart in pairs(BodyParts) do
        for _, Injury in pairs(Injuries) do
            if BodyPart.Name == Injury.Name then
                BodyPart.Damaged = true
                BodyPart.DamageType = Injury.DamageType
            end
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local PlayerPed = PlayerPedId()
        local PlayerPosition = GetEntityCoords(PlayerPed, false)
        local PlayerHealth = GetEntityHealth(PlayerPed)
        if Health.Player.Health ~= PlayerHealth then
            local _, DamagedBone = GetPedLastDamageBone(PlayerPed)
            print("Damaged bone: " .. DamagedBone)
            for _, BodyPart in pairs(BodyParts) do
                if BodyPart.BoneID == DamagedBone then
                    local weaponclass = GetDamageType(PlayerPed)
                    if (weaponclass ~= nil) then
                        print("Damaged body part: " .. BodyPart.Name)
                        if BodyPart.Damaged == false then
                            BodyPart.Damaged = true
                        end
                        table.insert(BodyPart.DamageType, weaponclass)
                        print(BodyPart.Name .. " is damaged by " .. weaponclass)
                        TriggerServerEvent('esx_injuries:saveInjuredBodyParts', getInjuries())
                    end
                end
            end
            Health.Player.Health = PlayerHealth
        end
    end
end)

function GetDamageType(ped)
    for k, v in pairs(weapons) do
        if HasPedBeenDamagedByWeapon(ped, v.Name, 0) then
            ClearEntityLastDamageEntity(ped)
            return v.WeaponClasses
        end
    end
end

local display = false

function SetDisplay(bool)
    display = bool
    SetNuiFocus(bool, bool)
    SendNUIMessage({
        type = "ui",
        display = bool,
    })
end

RegisterNUICallback('closeUi', function(data, cb)
    SetDisplay(false)
end)

RegisterNUICallback("exit", function(data)
    SetDisplay(false)
end)

RegisterNUICallback("Heal", function(data,cb)
    local Status = nil
    ESX.TriggerServerCallback('esx_injuries:esxHealAllInj', function(status)
        Status = status
    end, data.playerid)
    while Status == nil do
        Citizen.Wait(0)
    end
    cb(Status)
end)

RegisterNUICallback("error", function(data)
    print(data.error)
    SetDisplay(false)
end)
local ret = {}
RegisterNUICallback("GetInjuries", function(data, cb)
    ESX.TriggerServerCallback('esx_injuries:esxGetInjuriesForPlayer', function(Injuries)
        print("Injuries: " .. Injuries)
        ret = Injuries
    end, data.playerid)
    print("Ret: " .. json.encode(ret))
    while ret == {} do
        Citizen.Wait(0)
    end
    print("Ret: " .. json.encode(ret))
    cb(ret)
    ret={}
end)


RegisterNetEvent("esx_injuries:OpenTablet")
AddEventHandler("esx_injuries:OpenTablet", function()
    SetDisplay(true)
end)

Citizen.CreateThread(function()
    while display do
        Citizen.Wait(0)
        DisableControlAction(0, 1, display) -- LookLeftRight
        DisableControlAction(0, 2, display) -- LookUpDown
        DisableControlAction(0, 24, display) -- Attack
        DisablePlayerFiring(PlayerPedId(), display) -- Disable weapon firing
        DisableControlAction(0, 142, display) -- MeleeAttackAlternate
        DisableControlAction(0, 106, display) -- VehicleMouseControlOverride
        DisableControlAction(0, 18, display) -- Enter
        DisableControlAction(0, 322, display) -- ESC
        DisableControlAction(0, 106, display) -- VehicleMouseControlOverride
    end
end)
