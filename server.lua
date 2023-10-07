TriggerEvent("getCore",function(core)
    VorpCore = core
end)

local VORPInv = exports.vorp_inventory:vorp_inventoryApi()

VORPInv.RegisterUsableItem("soap", function(data)
    local source = data.source
    TriggerClientEvent("usewashcloth", source)
    VORPInv.subItem(source, 'soap', 1)
end)
