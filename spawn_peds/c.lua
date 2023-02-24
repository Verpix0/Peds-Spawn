Citizen.CreateThread(function()
    for _, v in pairs(Config.Peds) do
        RequestModel(GetHashKey(v.model))
        
        while not HasModelLoaded(GetHashKey(v.model)) do
            Wait(100)
        end
        ped = CreatePed(4, v.model, v.coords.x, v.coords.y, v.coords.z -1.0, v.coords.w, false, true)
        FreezeEntityPosition(ped, true)
        SetEntityInvincible(ped, true)
        SetBlockingOfNonTemporaryEvents(ped, true)
        TaskStartScenarioInPlace(ped, v.scenario, 0, true)
    end
end)




