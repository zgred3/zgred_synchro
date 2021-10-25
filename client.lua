RegisterNetEvent("zgred:synchro")
AddEventHandler("zgred:synchro", function()
  TriggerEvent('esx_ambulancejob:revivee') -- jezeli masz inny trigger na revive, to go podmień
  Citizen.Wait(1000)
  SetEntityHealth(PlayerPedId(), 0)
  print("Synchronizacja udana.")
end)