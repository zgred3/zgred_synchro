local przerwa = 0

function z_przerwa(czas)
        przerwa = czas
        repeat
        przerwa = przerwa - 1
		Citizen.Wait(1000)
        until(przerwa == 0)
end

RegisterCommand("synchro", function(source, args, raw)
    if przerwa == 0 then
        TriggerClientEvent("zgred:synchro", source)
		TriggerClientEvent("FeedM:showNotification", source, '~g~Synchronizacja udana!', 2000, success)
        z_przerwa(120)
    elseif  przerwa > 0 then
	    TriggerClientEvent("FeedM:showNotification", source, 'Poczekaj '.. przerwa ..'s przed następnym użyciem.', 2000, success)
    end
end)