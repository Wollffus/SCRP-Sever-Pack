data = {}
TriggerEvent("redemrp_inventory:getData",function(call)
    data = call
end)


RegisterServerEvent("RegisterUsableItem:lockpick")
AddEventHandler("RegisterUsableItem:lockpick", function(source)
    TriggerClientEvent('scrp_Robbing:TriggerRobbery', source)
end)

RegisterNetEvent("scrp_Robbing:Complete")
AddEventHandler("scrp_Robbing:Complete", function()
    local item = "goldnugget"
    local item2 = "bread"
	local item3 = "22_ammo"
	local item4 = "water"
	local item5 = "love"
	local item6 = "cigar"
	local item7 = "lockpick"
	local item8 = "moonshineflask"
	local item9 = "cig"
    local r = math.random(1,100)
    if r < 10 then
        TriggerEvent('redemrp:getPlayerFromId', source, function(user)
            data.addItem(source, item, math.random(1,6))
            data.addItem(source, item2, math.random(1,5))
			data.addItem(source, item3, math.random(1,1))
			data.addItem(source, item4, math.random(1,5))
			data.addItem(source, item5, math.random(1,2))
			data.addItem(source, item6, math.random(1,1))
			data.addItem(source, item7, math.random(2,4))
			data.addItem(source, item8, math.random(1,2))
			data.addItem(source, item9, math.random(1,2))
        end)
        TriggerClientEvent("redemrp_notification:start",source, "You found something!", 2)
    else
        TriggerClientEvent("redemrp_notification:start",source, "You didnt find anything!", 2)
    end
end)