----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPserver = Tunnel.getInterface("vRP","dani_orgs")
src = {}
Tunnel.bindInterface("dani_orgs",src)
vSERVER = Tunnel.getInterface("dani_orgs")

local DelayTimer = GetGameTimer()
local OrgOpen
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- TUNNELS
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function src.OpenOrg(groupType, tipo)
    OrgOpen = groupType

    SetNuiFocus(true, true)
    SetCursorLocation(0.5,0.5)
    SendNUIMessage({ action = "orgs", tipo = tipo })

    ExecuteCommand("e tablet")
end

function src.UpdateMessages(content)
    SendNUIMessage({ action = "UPDATE_MESSAGES-ORGS", content = content })
end

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- CALLBACKS
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback('onClose', function(data, cb)
    SetNuiFocus(false, false)
    SendNUIMessage({ action = "hideMenu" })
    ExecuteCommand("e")
    vRP.DeletarObjeto()
    vSERVER.onClose()
end)


RegisterNUICallback('requestOrgs', function(data, cb)
    cb((vSERVER.RequestOrg() or {}))
end)

RegisterNUICallback('leaveOrg', function(data, cb)
    cb((vSERVER.leaveOrg(data.org)))

    vRP.DeletarObjeto()
end)

RegisterNUICallback('invitePlayer', function(data, cb)
    cb((vSERVER.invitePlayer(data.plyid, data.org, data.group)))
end)

RegisterNUICallback('promovePlayer', function(data, cb)
    cb((vSERVER.promovePlayer(data.plyid, data.org, data.group)))
end)

RegisterNUICallback('demotePlayer', function(data, cb)
    cb((vSERVER.demotePlayer(data.plyid, data.org)))
end)

RegisterNUICallback('requestPromovePlayer', function(data, cb)
    local Org,AdminMode = vSERVER.requestPromovePlayer(data.plyid)

    local FormatOrg = {}
    for index in pairs(orgsConfig.List[Org].groups) do
        if not orgsConfig.List[Org].groups[index].leader or AdminMode then
            FormatOrg[orgsConfig.List[Org].groups[index].tier] = { group = index, prefix = orgsConfig.List[Org].groups[index].prefix }
        end
    end


    cb({ list = FormatOrg})
end)

RegisterNUICallback('requestPlayerName', function(data, cb)
    local PlayerName,Org,AdminMode = vSERVER.requestPlayerName(data.plyid)
    if not PlayerName then return end
    
    local FormatOrg = {}
    for index in pairs(orgsConfig.List[Org].groups) do
        if not orgsConfig.List[Org].groups[index].leader or AdminMode then
            FormatOrg[orgsConfig.List[Org].groups[index].tier] = { group = index, prefix = orgsConfig.List[Org].groups[index].prefix }
        end
    end

    cb({ name = (PlayerName or "Não encontrado"), list = FormatOrg })
end)

RegisterNUICallback('requestBank', function(data, cb)
    cb((vSERVER.requestBank()))
end)

RegisterNUICallback('confirmBank', function(data, cb)
    cb((vSERVER.executeBank(data)))
end)

RegisterNUICallback('addMessage', function(data, cb)
    cb((vSERVER.registerChat(data.message)))
end)

RegisterNUICallback('requestOffices', function(data, cb)
    local Response = vSERVER.requestOffices()
    for index,status in pairs(Response[2]) do
        Response[2][index] = { status = status, name = orgsConfig.Permissions[index].name, description = orgsConfig.Permissions[index].description  }
    end

    cb(Response or {})
end)

RegisterNUICallback('requestSelectOffice', function(data, cb)
    local Response = vSERVER.requestSelectOffices(data.index)
    for index,status in pairs(Response) do
        Response[index] = { status = status, name = orgsConfig.Permissions[index].name, description = orgsConfig.Permissions[index].description }
    end

    cb(Response or {})
end)

RegisterNUICallback('saveOffice', function(data, cb)
    local formatOffices = {}
    for index,v in pairs(data.offices) do
        formatOffices[index] = v.status
    end
    vSERVER._updateOffice(data.index, formatOffices)
end)

RegisterNUICallback('requestConfigDatas', function(data, cb)
    local Storage = GetSelectStorage(OrgOpen)
    if not Storage then return end
    
    local Response = vSERVER.requestConfigDatas(Storage[1].value)

    cb({ 
        firstType = Storage[1].value,
        options = Storage,
        goal = Response.goals or {},
        info = Response.player or {}    
    })
end)

RegisterNUICallback('setConfigType', function(data, cb)
    local Response = vSERVER.requestConfigDatas(data.type)
    cb({ 
        goal = Response.goals or {},
        info = Response.player or {}   
    })
end)

RegisterNUICallback('newDate', function(data, cb)
    local Response = vSERVER.requestConfigDatas(data.type, data.day, data.month, data.year)
    cb({ 
        goal = Response.goals or {},
        info = Response.player or {}   
    })
end)

RegisterNUICallback('newGoals', function(data, cb)
    local Response1 = vSERVER.updateGoals(data)
    local Response = vSERVER.requestConfigDatas(data.currentType)

    cb({ 
        goal = Response.goals or {},
        info = Response.player or {}   
    })
end)

RegisterNUICallback('reward', function(data, cb)
    vSERVER.reward(data)
end)

function GetSelectStorage(org)
    return vSERVER.storageItens(org)
end