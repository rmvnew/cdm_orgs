local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
local Tools = module("vrp","lib/Tools")

allGroups = module("cfg/groups")
vRP = Proxy.getInterface("vRP")
local vCraftServer = Proxy.getInterface("mirtin_craft")
vRPclient = Tunnel.getInterface("vRP")

src = {}
Tunnel.bindInterface("dani_orgs",src)
Proxy.addInterface("dani_orgs",src)
local inAdmin = {}

vCLIENT = Tunnel.getInterface("dani_orgs")

vRP.prepare("dani_orgs/getOrg", "SELECT * FROM dani_orgs WHERE org = @org")
vRP.prepare("dani_orgs/updateMembers", "UPDATE dani_orgs SET membros = @membros WHERE org = @org")
vRP.prepare("dani_orgs/updateOffice", "UPDATE dani_orgs SET groupsOffice = @groupsOffice WHERE org = @org")
vRP.prepare("dani_orgs/updateRewards", "UPDATE dani_orgs SET rewards = @rewards WHERE org = @org")
vRP.prepare("dani_orgs/updateBanco", "UPDATE dani_orgs SET banco = @banco, bancoHistorico = @bancoHistorico WHERE org = @org")
vRP.prepare("dani_orgs/initGroups", "INSERT IGNORE INTO dani_orgs(org,maxMembros) VALUES(@org, @maxMembros)")
vRP.prepare("dani_orgs/initTable", "CREATE TABLE IF NOT EXISTS `dani_orgs` (    `org` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',    `membros` TEXT NOT NULL DEFAULT '{}' COLLATE 'latin1_swedish_ci',    `banco` INT(11) NOT NULL DEFAULT '0',    `maxMembros` INT(11) NOT NULL DEFAULT '0',    `bancoHistorico` LONGTEXT NULL DEFAULT '{}' COLLATE 'utf8mb4_bin',    `rewards` LONGTEXT NULL DEFAULT '{\"goals\":{},\"players\":{},\"infoGoals\":{}}' COLLATE 'latin1_swedish_ci',`groupsOffice` LONGTEXT NULL DEFAULT '{}' COLLATE 'latin1_swedish_ci',    PRIMARY KEY (`org`) USING BTREE)COLLATE='latin1_swedish_ci'ENGINE=InnoDB;")
vRP.prepare("dani_orgs/clearArmazem", "UPDATE vrp_srv_data SET dvalue = @dvalue WHERE dkey = @dkey")

RegisterCommand('painelorg', function(source,args)
    local user_id = vRP.getUserId(source)
    local responde = getOrg(user_id)
    if user_id and responde then
        vCLIENT.OpenOrg(source, getOrg(user_id))
    else
        TriggerClientEvent("Notify",source, "negado","Você não faz parte de nenhuma organização.", 5)
    end
end)

RegisterCommand('painelorgadm', function(source,args)
    local user_id = vRP.getUserId(source)
    local org = args[1]
    if user_id and org and vRP.hasPermission(user_id, orgsConfig.admin) and orgsConfig.List[org] ~= nil then
        inAdmin[user_id] = org
        vCLIENT.OpenOrg(source, org)
    end
end)

function getOrg(user_id)
    local groups = vRP.getUserGroups(user_id)

    if inAdmin[user_id] then
        local groupsConfig = orgsConfig.List[inAdmin[user_id]].groups

        for k,v in pairs(groupsConfig) do -- k da o group (Na config do script)
            local kgroup2 = allGroups.groups[tostring(k)]
            return inAdmin[user_id].org, k
        end
    else
        for k,v in pairs(groups) do --k da o group, v da as perms
            local kgroup = allGroups.groups[tostring(k)]

            if kgroup then
                
                if kgroup._config ~= nil and kgroup._config.orgName ~= nil and orgsConfig.List[kgroup._config.orgName] then
                    return kgroup._config.orgName,k
                end
            end
        end
    end
    return false
end

function src.RequestOrg()
    local source = source
    local user_id = vRP.getUserId(source)
    local myOrg,group = getOrg(user_id)
    if (inAdmin[user_id]) then
         myOrg = inAdmin[user_id]
    end
    local rows = vRP.query("dani_orgs/getOrg", { org = myOrg })
    local info = {}
    local orgMembers = {}
    if #rows > 0 then
        local members = json.decode(rows[1].membros)
        local groupsOffice = json.decode(rows[1].groupsOffice)
        local membrosTotais = 0
        local totalOnline = 0
        info["Permissions"] = {invite = false, chat = false, message = false, demote = false, withdraw = false, deposit = false, promove = false}
        if rows[1] then
            for k,v in pairs(members) do
                local member_id = parseInt(k)
                local nsource = vRP.getUserSource(member_id)
                local nome, org = src.requestPlayerName(member_id)
                local offices2 = {}
                local infos = {}

                if nsource then
                    infos['online'] = true
                    totalOnline = totalOnline + 1
                else
                    infos['online'] = false
                end

                infos["name"] = nome
                infos["user_id"] = member_id
                infos["groupPrefix"] = members[k].groupPrefix
                infos["last_login"] = os.date("%d/%m/%Y as %H:%M", members[k].last_login)
                if member_id == user_id then
                    for k2,v2 in pairs(groupsOffice) do
                        if v2.groupPrefix == members[k].groupPrefix then
                            info["Permissions"] = v2.permissions
                        end
                    end

                end
                membrosTotais = membrosTotais + 1
                table.insert(orgMembers, infos)
            end
            info["Members"] = orgMembers
            info["TotalMembers"] = membrosTotais
            info["BankValue"] = vRP.format(rows[1].banco) 
            info["Description"] = "Descrição teste" -- Ainda falta config
            info["TotalMembersActive"] = totalOnline
            info["Organization"] = myOrg
            info["Chat"] = {} -- Ainda falta config
            info["Name"] = src.requestPlayerName(user_id)
            info["User_id"] = user_id
            info["tipo"] = orgsConfig.List[myOrg].config.tipo or "legal"
            info["tipo"] = orgsConfig.List[myOrg].config.tipo or "ilegal"
            if (vRP.hasPermission(user_id, orgsConfig.admin))  then
                info["Leader"] = true -- Modo Admin
            else 
                info["Leader"] = orgsConfig.List[myOrg].groups[group].leader or false
            end
            --info["Avatar"] = 0
            return info
        end
    end
    return false
end

function src.leaveOrg(myOrg)
    local source = source
    local user_id = vRP.getUserId(source)
    local myOrg = getOrg(user_id)
    if (inAdmin[user_id]) then
         myOrg = inAdmin[user_id]
    end

    local rows = vRP.query("dani_orgs/getOrg", { org = myOrg })
    
    if rows[1] then
        local members = json.decode(rows[1].membros)

        local groups = orgsConfig.List[myOrg].groups
        
        for k,v in pairs(groups) do
            if vRP.hasGroup(user_id, k) then
                vRP.removeUserGroup(user_id, k)
            end
        end

        TriggerClientEvent('Notify', source, "Sucesso", "Você saiu da organização "..myOrg.."!", 5)

        --Adiciona blacklist
        members[tostring(user_id)] = nil
        vRP.execute("dani_orgs/updateMembers", { org = myOrg, membros = tostring(json.encode(members)) })
    end
end

function src.invitePlayer(player_id, org, group)
    local source = source
    local user_id = vRP.getUserId(source)
    local myOrg = getOrg(user_id)
    if (inAdmin[user_id]) then
         myOrg = inAdmin[user_id]
    end
    if(myOrg == org) then
        if hasPermissionInvite(org) then
            if user_id == player_id and not vRP.hasPermission(user_id, orgsConfig.admin) then return TriggerClientEvent("Notify",source, "negado","Você não pode fazer isso em si mesmo.", 5) end
            if getOrg(player_id) then return TriggerClientEvent("Notify",source, "negado","Este Jogador já possui uma organização.", 5) end
            local rows = vRP.query("dani_orgs/getOrg", { org = myOrg })

            --Fazer sistema de blacklist
            --Verificar se n esta cheio a org

            if #rows > 0 then
                local members = json.decode(rows[1].membros)
                local nsource = vRP.getUserSource(player_id) 
                local totalMembers = 0
                local totalMembrosNoGrupo = 0

                for k,v in pairs(members) do
                    totalMembers = totalMembers + 1
                end
                if totalMembers >= rows[1].maxMembros then
                    return TriggerClientEvent('Notify', source, "NEGADO!", "A organização está cheia", 5)
                end

                for k,v in pairs(members) do
                    if v.groupPrefix == groupPrefix then
                        totalMembrosNoGrupo = totalMembrosNoGrupo + 1
                    end
                end

                if orgsConfig.List[org].groups[group].maxSets ~= nil and orgsConfig.List[org].groups[group].maxSets <= totalMembrosNoGrupo then
                   return TriggerClientEvent('Notify', source, "NEGADO", "Está organização permite no maximo <b>"..orgsConfig.List[org].groups[group].maxSets.."</b> pessoa(s) nesse cargo.")
                end

                if nsource then
                local request = vRP.request(nsource, "Você está sendo convidado para a <b>"..org.."</b> deseja aceitar?", 30)

                    if request then
                        TriggerClientEvent("Notify",source, "sucesso","O Jogador <b>aceitou</b> o convite da sua organização.", 5)
                        TriggerClientEvent("Notify",nsource, "sucesso","Parabens! Você acaba de entrar para a organização <b>"..org.."</b>", 5)
                        vRP.addUserGroup(parseInt(player_id), group)
                        local groupPrefix = orgsConfig.List[myOrg].groups[group].prefix

                        members[tostring(player_id)] = { groupPrefix = groupPrefix, last_login = os.time()} --, permissions = {invite = 0, chat = 0, message = 0, demote = 0, withdraw = 0, deposit = 0, Promove = 0} 
                        vRP.execute("dani_orgs/updateMembers", { org = org, membros = json.encode(members) })
                    end
                else
                    return TriggerClientEvent('Notify',source, "NEGADO", "Essa pessoa esta forá da cidade.", 5)
                end
            end
        end
    end
end

function src.promovePlayer(player_id, org, group)
    local source = source
    local user_id = vRP.getUserId(source)
    local myOrg = getOrg(user_id)

    if (inAdmin[user_id]) then
         myOrg = inAdmin[user_id]
    end

    if org == myOrg then
        if hasPermissionPromove(org) then
            if user_id == player_id and not vRP.hasPermission(user_id, orgsConfig.admin) then return TriggerClientEvent("Notify",source, "negado","Você não pode fazer isso em si mesmo.", 5) end
            local rows = vRP.query("dani_orgs/getOrg", { org = myOrg })

            if rows[1] then
                local members = json.decode(rows[1].membros)
                if members[tostring(player_id)] then
                local nome = src.requestPlayerName(player_id)
                local totalMembrosNoGrupo = 0
                local groupPrefix = orgsConfig.List[myOrg].groups[group].prefix
                    

                    for k,v in pairs(members) do
                        if v.groupPrefix == groupPrefix then
                            totalMembrosNoGrupo = totalMembrosNoGrupo + 1
                        end
                    end

                    if orgsConfig.List[org].groups[group].maxSets ~= nil and orgsConfig.List[org].groups[group].maxSets <= totalMembrosNoGrupo then
                       return TriggerClientEvent('Notify', source, "NEGADO", "Está organização permite no maximo <b>"..orgsConfig.List[org].groups[group].maxSets.."</b> pessoa(s) nesse cargo.")
                    end

                    local nsource = vRP.getUserSource(player_id)

                    if nsource then
                        TriggerClientEvent('Notify', nsource, "SUCESSO", "Você foi promovido para o cargo "..groupPrefix)
                        vRP.addUserGroup(player_id, group)
                    end

                    TriggerClientEvent("Notify", source, "SUCESSO", "Você promoveu o "..nome.." para o cargo "..groupPrefix, 5)
                    members[tostring(player_id)].groupPrefix = groupPrefix
                    vRP.execute("dani_orgs/updateMembers", { org = org, membros = json.encode(members) })
                end
            end
        end
    end
end

function src.demotePlayer(player_id, org)
    local source = source
    local user_id = vRP.getUserId(source)
    local myOrg, group = getOrg(user_id)
    local nMyOrg, nGroup = getOrg(player_id)

    if (inAdmin[user_id]) then
         myOrg = inAdmin[user_id]
    end

    if org == myOrg then
        if hasPermissionDemote(org) then
            if user_id == player_id and not vRP.hasPermission(user_id, orgsConfig.admin) then return TriggerClientEvent("Notify",source, "negado","Você não pode fazer isso em si mesmo.", 5) end
            local rows = vRP.query("dani_orgs/getOrg", { org = myOrg })

            if rows[1] then
                local members = json.decode(rows[1].membros)
                if members[tostring(player_id)] then
                    local nome = src.requestPlayerName(player_id)
                    local groupPrefix = orgsConfig.List[myOrg].groups[nGroup].prefix

                    local nsource = vRP.getUserSource(player_id)

                    if nsource then
                        -- TriggerClientEvent('Notify', nsource, "SUCESSO", "Você foi demitido do cargo "..groupPrefix[1])
                        vRP.removeUserGroup(player_id, nGroup)
                    end

                    --Add blacklist
                    TriggerClientEvent("Notify", source, "SUCESSO", "Você dimitiu o "..nome.." para o cargo ", 5)
                    members[tostring(player_id)] = nil
                    vRP.execute("dani_orgs/updateMembers", { org = org, membros = json.encode(members) })
                end
            end
        end
    end
end

function src.requestPromovePlayer(player_id)
    local source = source
    local user_id = vRP.getUserId(source)
    local myOrg = getOrg(user_id)
    local nMyOrg = getOrg(player_id)
    local isAdmin = false

    if (inAdmin[user_id]) then
         myOrg = inAdmin[user_id]
         isAdmin = true
    end
    if myOrg ~= nMyOrg then return print("Diferente aqui") end
    return myOrg, isAdmin
    -- ira retornar org e AdminMode
end

function src.requestPlayerName(player_id)
    local source = source
    local user_id = vRP.getUserId(source)
    local myOrg,group = getOrg(user_id)
    local identity = vRP.getUserIdentity(player_id)
    local isAdmin = false
    if not identity then return TriggerClientEvent("Notify",source, "negado","Esse ID não existe no servidor.", 5) end
    if vRP.hasPermission(user_id, orgsConfig.admin) then isAdmin = true end
    if (inAdmin[user_id]) then
        myOrg = inAdmin[user_id]
   end
    return identity.nome.. " " ..identity.sobrenome,myOrg,isAdmin
    -- ira retornar playername, org e AdminMode
end

function src.requestBank()
    local source = source
    local user_id = vRP.getUserId(source)
    local myOrg,group = getOrg(user_id)
    local rows = vRP.query("dani_orgs/getOrg", { org = myOrg })
    if #rows > 0 then
        local info = {}

        info["BankValue"] = vRP.format(rows[1].banco)
        info["Historic"] = rows[1].bancoHistorico
        
        return info
    end
end

function src.executeBank(data)
    local source = source
    local user_id = vRP.getUserId(source)
    local myOrg, group = getOrg(user_id)
    local value = data.value
    local org = data.org
    local action = data.action
    local nome = src.requestPlayerName(user_id)

    if (inAdmin[user_id]) then
         myOrg = inAdmin[user_id]
    end

    if GetPlayerPing(source) <= 0 then
        return
    end

    if org ~= myOrg then return false end

    --{"value":1,"org":"Egito","action":"withdraw"}
    --{"value":1,"org":"Egito","action":"deposit"}
    local rows = vRP.query("dani_orgs/getOrg", { org = myOrg })
    if rows[1] then
        local bankValue = rows[1].banco
        local bankHistory = json.decode(rows[1].bancoHistorico)
        if action == 'withdraw' then
            if hasPermissionWithdraw(user_id, myOrg) then
                if value <= 0 then
                    value = 0
                end
                local iraFicar = bankValue - value
                if bankValue <= 0 or value <= 0 or iraFicar < 0 then return {bankValue = bankValue, Historic = rows[1].bancoHistorico} end

                bankValue = iraFicar

                -- Guardar nome ação valor
                -- vRP.giveMoney(user_id, value)
                vRP.giveBankMoney(user_id, value)

                bankHistory[os.time()] = {nome = nome, acao = "retirou", valor = value, user_id = user_id}
                vRP.execute("dani_orgs/updateBanco", { org = myOrg, banco = bankValue, bancoHistorico = json.encode(bankHistory)})
                local rows2 = vRP.query("dani_orgs/getOrg", { org = myOrg })

                local bankHistory2 = rows2[1].bancoHistorico
                
                local info = {bankValue = vRP.format(bankValue), Historic = bankHistory2}

                return info
            end
        elseif action == "deposit" then
            if hasPermissionDeposit(user_id, myOrg) then
                if vRP.tryPayment(user_id, parseInt(value)) then
                    
                    if value <= 0 then
                        value = 0
                    end
                    
                    bankValue = bankValue + value
                    
                    -- Guardar nome ação valor
                    bankHistory[os.time()] = {nome = nome, acao = "depositou", valor = value, user_id = user_id}
                    vRP.execute("dani_orgs/updateBanco", { org = myOrg, banco = bankValue, bancoHistorico = json.encode(bankHistory)})
                    local rows2 = vRP.query("dani_orgs/getOrg", { org = myOrg })
                    
                    local bankHistory2 = rows2[1].bancoHistorico
                    
                    local info = {bankValue = vRP.format(bankValue), Historic = bankHistory2}
                    
                    return info
                else
                    local rows2 = vRP.query("dani_orgs/getOrg", { org = myOrg })

                    local bankHistory2 = rows2[1].bancoHistorico
                    TriggerClientEvent("Notify", source, "NEGADO", "Você não tem esse dinheiro na mão.",6)
                    return {bankValue = vRP.format(bankValue)   , Historic = bankHistory2}
                end
            end
        end
    end
end

function src.registerChat(message)
   -- print("registerChat")
end

function src.requestOffices()
    local source = source
    local user_id = vRP.getUserId(source)
    local myOrg,group = getOrg(user_id)
    if (inAdmin[user_id]) then
         myOrg = inAdmin[user_id]
    end

    local rows = vRP.query("dani_orgs/getOrg", { org = myOrg })
    local offices = json.decode(rows[1].groupsOffice)
    local offices2 = {}
    if #offices > 0 then
        for k,v in pairs(offices) do
            local info = {}
            info["prefix"] = v.groupPrefix
            info["index"] = myOrg
            table.insert(offices2, info)
        end

        return {offices2,offices[#offices].permissions}
    end
    return {{},{}}
end

function src.requestSelectOffices(index)
    local source = source
    local user_id = vRP.getUserId(source)
    local myOrg,group = getOrg(user_id)
    if (inAdmin[user_id]) then
         myOrg = inAdmin[user_id]
    end

    local rows = vRP.query("dani_orgs/getOrg", { org = myOrg })
    local offices = json.decode(rows[1].groupsOffice)
    
    for k,v in pairs(offices) do

        if v.groupPrefix == index then
            return v.permissions
        end

    end

    return {offices[1].permissions}

end

function src.updateOffice(index, formatOffices)
    local source = source
    local user_id = vRP.getUserId(source)
    local myOrg,group = getOrg(user_id)
    if (inAdmin[user_id]) then
         myOrg = inAdmin[user_id]
    end
    local rows = vRP.query("dani_orgs/getOrg", { org = myOrg })
    local offices = json.decode(rows[1].groupsOffice)
    if hasPermissionLeader(user_id, myOrg) then
        for k, v in pairs(offices) do
            if index == v.groupPrefix and formatOffices then
                v.permissions = formatOffices
            end
        end
        vRP.execute("dani_orgs/updateOffice", { org = myOrg, groupsOffice = tostring(json.encode(offices)) })
    end
end

function src.requestConfigDatas(item, dia, mes, ano)
    local source = source
    local user_id = vRP.getUserId(source)
    local myOrg,group = getOrg(user_id)
    if (inAdmin[user_id]) then
         myOrg = inAdmin[user_id]
    end
    local rows = vRP.query("dani_orgs/getOrg", { org = myOrg })
    local goals = {}
    local player = {}
    local dayOfMonth = string.format("%02d", tonumber(os.date("%d", os.time())))
    local Month = string.format("%02d", tonumber(os.date("%m", os.time())))
    local Year = tonumber(os.date("%Y", os.time()))
    if dia == nil and mes == nil and ano == nil then
        dia = dayOfMonth
        mes = Month
        ano = Year
    end
    local data = dia.."/"..mes.."/"..ano

    local rowRewards = json.decode(rows[1].rewards)
    
    for k,v in pairs(rowRewards.players) do
        local nuser_id = k
        local nOrg, nGroup = getOrg(tonumber(k))
        if rowRewards.players[tostring(k)] and rowRewards.players[tostring(k)].dailyData[tostring(data)] and rowRewards.players[tostring(k)].dailyData[tostring(data)][item]  then
            local info = rowRewards.players[tostring(k)].dailyData[tostring(data)][item]
            local groupPrefix = orgsConfig.List[nOrg].groups[nGroup].prefix
            local nome = src.requestPlayerName(k)
            table.insert(goals, {user_id=k, item=vRP.getItemName(item), rank=groupPrefix, name=nome,amount = info.playerDailyFarm})
            if  rowRewards.players[tostring(user_id)] and rowRewards.players[tostring(user_id)].dailyData[tostring(data)][item] then
                local myInfo = rowRewards.players[tostring(user_id)].dailyData[tostring(data)][item]
                table.insert(player, {itemName=vRP.getItemName(item), playerDailyFarm=myInfo.playerDailyFarm, maxDaily=rowRewards.infoGoals[item].maxDaily, payment=rowRewards.infoGoals[item].payment, playerRewarded=myInfo.playerRewarded})
            end
        end
    end
    table.insert(player, {itemName=vRP.getItemName(item), playerDailyFarm=0, maxDaily=rowRewards.infoGoals[item].maxDaily, payment=rowRewards.infoGoals[item].payment, playerRewarded=true})

    return {goals = goals,player = player}
end

function src.storageItens(org)
    local a = vCraftServer.ServerConfig()
    local itens = {}
    if a.table[org] then 
        for k, v in pairs(a.table[org].craft) do
            for k2, v2 in pairs(a.table[org].craft[k].requires) do
                local encontrou = false
        
                for _, valor in pairs(itens) do
                    if valor.value == v2.item then
                        encontrou = true
                        break
                    end
                end
        
                if not encontrou then
                    local info = {
                        name = vRP.getItemName(v2.item),
                        value = v2.item
                    }
                    table.insert(itens, info)
                end
            end
        end
        return itens
        --return 
    end
    return {}
end

function src.updateGoals(data)
    local source = source
    local user_id = vRP.getUserId(source)
    local myOrg,group = getOrg(user_id)
    if (inAdmin[user_id]) then
         myOrg = inAdmin[user_id]
    end
    
    local rows = vRP.query("dani_orgs/getOrg", { org = myOrg })
    local rewards = json.decode(rows[1].rewards)
    local infoGoals = rewards.infoGoals[data.currentType]
    if infoGoals then
        if tonumber(data.daily) > 0 then
            infoGoals.maxDaily = data.daily
        end

        if tonumber(data.payment) > 0 then
            infoGoals.payment = data.payment
        end

        return vRP.execute("dani_orgs/updateRewards", {org = myOrg, rewards = json.encode(rewards)})
    end
end

function src.reward(data)
    local source = source
    local user_id = vRP.getUserId(source)
    local myOrg,group = getOrg(user_id)
    if (inAdmin[user_id]) then
        myOrg = inAdmin[user_id]
    end

    if GetPlayerPing(source) <= 0 then
        return
    end
    local nome = src.requestPlayerName(user_id)
    local item = data.currentType
    local rows = vRP.query("dani_orgs/getOrg", { org = myOrg })
    local rewards = json.decode(rows[1].rewards)

    
    local day = string.format("%02d", tonumber(os.date("%d", os.time())))
    local month = string.format("%02d", tonumber(os.date("%m", os.time())))
    local year = tonumber(os.date("%Y", os.time()))
    local data = day.."/"..month.."/"..year
    
    local playerTodayByItem = rewards.players[tostring(user_id)].dailyData[data][item]
    if not rewards.players[tostring(user_id)].dailyData[data][item] then return end
    local playerDailyFarm = playerTodayByItem.playerDailyFarm
    local playerRewarded = playerTodayByItem.playerRewarded

    local infoGoalsByItem = rewards.infoGoals[item]
    local GoalsMaxDaily = rewards.infoGoals[item].maxDaily
    local GoalsPayment = rewards.infoGoals[item].payment

    local bankValue = rows[1].banco
    local bankHistory = json.decode(rows[1].bancoHistorico)

    local iraFicar = bankValue - tonumber(GoalsPayment)
    if bankValue <= 0 or iraFicar < 0 then
        return TriggerClientEvent("Notify", source,"NEGADO", "O organização não tem dinheiro para te pagar.", 5)
    end

    if not playerRewarded then
        if tonumber(playerDailyFarm) >= tonumber(GoalsMaxDaily) then
            bankValue = iraFicar

            -- Guardar nome ação valor
            vRP.giveMoney(user_id, tonumber(GoalsPayment))
            bankHistory[os.time()] = {nome = nome, acao = "pagamento de recompensa", valor = GoalsPayment, user_id = user_id}
            vRP.execute("dani_orgs/updateBanco", { org = myOrg, banco = bankValue, bancoHistorico = json.encode(bankHistory)})

            rewards.players[tostring(user_id)].dailyData[data][item].playerRewarded = true
            vRP.execute("dani_orgs/updateRewards", {org = myOrg, rewards = json.encode(rewards)})
            return TriggerClientEvent("Notify", source, "SUCESSO", "Parabens! Você recebeu "..GoalsPayment.." reais como pagamento.", 5)

        end 
    else
        return TriggerClientEvent("Notify", source, "NEGADO", "Você ja resgatou o premio de hoje.", 5)
    end
    
end

function src.onClose(data)
    local source = source
    local user_id = vRP.getUserId(source)
    if inAdmin[user_id] then inAdmin[user_id] = nil end
end

function hasPermissionInvite(myOrg)
    local source = source
    local user_id = vRP.getUserId(source)
    local myOrg,group = getOrg(user_id)

    if (inAdmin[user_id]) then
        myOrg = inAdmin[user_id]
    end
        local rows = vRP.query("dani_orgs/getOrg", { org = myOrg })
        local groupPrefix = orgsConfig.List[myOrg].groups[group].prefix
        
        
        if myOrg == myOrg then
            if #rows > 0 then
                
                if vRP.hasPermission(user_id, orgsConfig.admin) then return true end
                local offices = json.decode(rows[1].groupsOffice)
                for k,v in pairs(offices) do
                    if v.groupPrefix == groupPrefix  then
                        if orgsConfig.List[myOrg].groups[group].leader then
                            return true
                        else 
                           return v.permissions.invite
                        end
                    end
                end
                return false
            end
        return false
    end
    return false
end

function hasPermissionPromove(org)
    local source = source
    local user_id = vRP.getUserId(source)
    local myOrg,group = getOrg(user_id)

    if (inAdmin[user_id]) then
        myOrg = inAdmin[user_id]
    end
        local rows = vRP.query("dani_orgs/getOrg", { org = myOrg })
        local groupPrefix = orgsConfig.List[myOrg].groups[group].prefix
        
        
        if myOrg == org then
            if #rows > 0 then
                
                if vRP.hasPermission(user_id, orgsConfig.admin) then return true end
                local offices = json.decode(rows[1].groupsOffice)
                for k,v in pairs(offices) do
                    if v.groupPrefix == groupPrefix  then
                        if orgsConfig.List[myOrg].groups[group].leader then
                            return true
                        else 
                           return v.permissions.promove
                        end
                    end
                end
                return false
            end
        return false
    end
    return false
end

function hasPermissionDemote(org)
    local source = source
    local user_id = vRP.getUserId(source)
    local myOrg,group = getOrg(user_id)

    if (inAdmin[user_id]) then
        myOrg = inAdmin[user_id]
    end
        local rows = vRP.query("dani_orgs/getOrg", { org = myOrg })
        local groupPrefix = orgsConfig.List[myOrg].groups[group].prefix
        
        
        if myOrg == org then
            if #rows > 0 then
                
                if vRP.hasPermission(user_id, orgsConfig.admin) then return true end
                local offices = json.decode(rows[1].groupsOffice)
                for k,v in pairs(offices) do
                    if v.groupPrefix == groupPrefix  then
                        if orgsConfig.List[myOrg].groups[group].leader then
                            return true
                        else 
                           return v.permissions.demote
                        end
                    end
                end
                return false
            end
        return false
    end
    return false
end

function hasPermissionDeposit(user_id, org)
    local myOrg,group = getOrg(user_id)

    if (inAdmin[user_id]) then
        myOrg = inAdmin[user_id]
    end
        local rows = vRP.query("dani_orgs/getOrg", { org = myOrg })
        local groupPrefix = orgsConfig.List[myOrg].groups[group].prefix
        
        
        if myOrg == org then
            if #rows > 0 then
                
                if vRP.hasPermission(user_id, orgsConfig.admin) then return true end
                local offices = json.decode(rows[1].groupsOffice)
                for k,v in pairs(offices) do
                    if v.groupPrefix == groupPrefix  then
                        if orgsConfig.List[myOrg].groups[group].leader then
                            return true
                        else 
                           return v.permissions.deposit
                        end
                    end
                end
                return false
            end
        return false
    end
    return false
end

function hasPermissionWithdraw(user_id, org)
    local myOrg,group = getOrg(user_id)

    if (inAdmin[user_id]) then
        myOrg = inAdmin[user_id]
    end
        local rows = vRP.query("dani_orgs/getOrg", { org = myOrg })
        local groupPrefix = orgsConfig.List[myOrg].groups[group].prefix
        
        if myOrg == org then
            if #rows > 0 then
                
                if vRP.hasPermission(user_id, orgsConfig.admin) then return true end
                local offices = json.decode(rows[1].groupsOffice)
                for k,v in pairs(offices) do
                    if v.groupPrefix == groupPrefix  then
                        if orgsConfig.List[myOrg].groups[group].leader then
                            return true
                        else 
                           return v.permissions.withdraw
                        end
                    end
                end
                return false
            end
        return false
    end
    return false
end

function hasPermissionLeader(user_id, org)
    local myOrg,group = getOrg(user_id)

    if (inAdmin[user_id]) then
        myOrg = inAdmin[user_id]
    end
        local rows = vRP.query("dani_orgs/getOrg", { org = myOrg })
        local groupPrefix = orgsConfig.List[myOrg].groups[group].prefix
        
        if myOrg == org then
            if #rows > 0 then
                
                if vRP.hasPermission(user_id, orgsConfig.admin) then return true end
                local offices = json.decode(rows[1].groupsOffice)
                for k,v in pairs(offices) do
                    if v.groupPrefix == groupPrefix  then
                        if orgsConfig.List[myOrg].groups[group].leader then
                            return true
                        end
                    end
                end
                return false
            end
        return false
    end
    return false
end

function src.registerRewards(user_id, item, amount)
    local myOrg,group = getOrg(user_id)
    if (inAdmin[user_id]) then
         myOrg = inAdmin[user_id]
    end
    if amount <= 0 then
        amount = 0
    end


    local rows = vRP.query("dani_orgs/getOrg", { org = myOrg })
    local rowRewards = json.decode(rows[1].rewards)

    local dayOfMonth = string.format("%02d", tonumber(os.date("%d", os.time())))
    local Month = string.format("%02d", tonumber(os.date("%m", os.time())))
    local Year = tonumber(os.date("%Y", os.time()))

    local data = dayOfMonth.."/"..Month.."/"..Year
    if not rowRewards.players[tostring(user_id)] then
        rowRewards.players[tostring(user_id)] = {}
    end
    
    if not rowRewards.players[tostring(user_id)].dailyData then
        rowRewards.players[tostring(user_id)].dailyData = {}
    end
    
    if not rowRewards.players[tostring(user_id)].dailyData[data] then
        rowRewards.players[tostring(user_id)].dailyData[data] = {}
    end
    
    if not rowRewards.players[tostring(user_id)].dailyData[data][item] then
        rowRewards.players[tostring(user_id)].dailyData[data][item] = {
            playerDailyFarm = amount,
            playerRewarded = false,
        }
    else
        rowRewards.players[tostring(user_id)].dailyData[data][item].playerDailyFarm = rowRewards.players[tostring(user_id)].dailyData[data][item].playerDailyFarm + amount
    end

    vRP.execute("dani_orgs/updateRewards", {org = myOrg, rewards = json.encode(rowRewards)})
end

CreateThread(function()
    vRP.execute("dani_orgs/initTable", {})
    
    if orgsConfig.main.createAutomatic then
        for k,v in pairs(orgsConfig.List) do
            vRP.execute("dani_orgs/initGroups", { org = k, maxMembros = v.config.maxMembers})
        end
    end

    if orgsConfig.main.atualizeOfficesAutomatic then
        local novosGruposPorOrg = {}
        
        local function verificaPrefix(org, prefix)
            local rowsOrg = vRP.execute("dani_orgs/getOrg", {org = org})
            for k3, v3 in pairs(json.decode(rowsOrg[1].groupsOffice)) do
                if v3.groupPrefix == prefix then
                    return true
                end
            end
            return false
        end


        for org, orgData in pairs(orgsConfig.List) do
            local rowsOrg = vRP.execute("dani_orgs/getOrg", {org = org})

            novosGruposPorOrg[org] = json.decode(rowsOrg[1].groupsOffice) -- Inicialize a tabela para esta organização
            for group, cargoData in pairs(orgData.groups) do
                local prefix = cargoData.prefix
                if not verificaPrefix(org, prefix) then
                    local novoGrupo = {
                        groupPrefix = prefix,
                        permissions = {
                            chat = false,
                            demote = false,
                            message = false,
                            withdraw = false,
                            invite = false,
                            promove = false,
                            deposit = false
                        }
                    }
                    table.insert(novosGruposPorOrg[org], novoGrupo)
                end
            end
        end

        for org, novosGrupos in pairs(novosGruposPorOrg) do
            vRP.execute("dani_orgs/updateOffice", {groupsOffice = json.encode(novosGrupos), org = org})
        end
    end

    if orgsConfig.main.atualizeRewardsInfoGoalAutomatic then
        for org, orgData in pairs(orgsConfig.List) do
            local rowsOrg = vRP.execute("dani_orgs/getOrg", {org = org})
            local rewardsList = json.decode(rowsOrg[1].rewards)
            for group, cargoData in pairs(src.storageItens(org)) do
                local item = cargoData.value
                if not rewardsList.infoGoals[item] then
                    rewardsList.infoGoals[item] = {
                        maxDaily= 0,
                        payment= 0
                    }
                end
            end
            vRP.execute("dani_orgs/updateRewards", {rewards = json.encode(rewardsList), org = org})
        end
    end

end)

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- VALIDAÇÃO DA CHECAGENS DOS GRUPOS
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler("vRP:playerSpawn",function(user_id,source,first_spawn)
    if user_id then
        local myOrg,group = getOrg(user_id)
        if myOrg then
            local rows = vRP.query("dani_orgs/getOrg", { org = myOrg })
            if #rows > 0 then
                local members = json.decode(rows[1].membros)
                
                if members[tostring(user_id)] == nil then
                    TriggerClientEvent("Notify", source, "IMPORTANTE", "Você já não faz parte da organização "..myOrg, 10)
                    vRP.removeUserGroup(parseInt(user_id), group)
                    return
                end
                
                local groupPrefix = members[tostring(user_id)].groupPrefix
                if orgsConfig.List[myOrg].groups[group].prefix ~= groupPrefix then
                    for k,v in pairs(orgsConfig.List[myOrg].groups) do

                        print("Teste 1: ",orgsConfig.List[myOrg].groups[k].prefix)
                        print("Teste 2: ",groupPrefix)

                        if orgsConfig.List[myOrg].groups[k].prefix == groupPrefix then
                            TriggerClientEvent("Notify", source, "IMPORTANTE", "Parabens você foi promovido/rebaixado para  "..groupPrefix, 10)
                            vRP.addUserGroup(user_id, k)
                            
                        end
                    end
                end
                
                members[tostring(user_id)]['last_login'] = os.time()
                vRP.execute("dani_orgs/updateMembers", { org = myOrg, membros = json.encode(members) })
            end
        end
    end
end)