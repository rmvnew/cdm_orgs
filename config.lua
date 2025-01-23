orgsConfig = {}

orgsConfig.blackList = 1
orgsConfig.admin = "admin.permissao"
orgsConfig.langs = {
	isBlackList = function(source, tempo) return TriggerClientEvent("Notify",source, "negado","Atenção: Você está proibido de entrar em uma organização até <b>"..tempo.."</b>.", 5) end,
    haveBlackList = function(source, tempo) return TriggerClientEvent("Notify",source, "negado","Este jogador está proibido de entrar em qualquer organização até <b>"..tempo.."</b>", 5) end,
}


orgsConfig.main = {
	createAutomatic = true, -- Criar Automaticamente Organizações no banco de dados.
	atualizeOfficesAutomatic = true, -- Atualiza Automaticamente o groupsOffice no banco de dados.
	atualizeRewardsInfoGoalAutomatic = true, -- Atualiza Automaticamente as infos das metas no banco de dados.
}

orgsConfig.Permissions = {
	invite = { -- Permissao Para Convidar
		name = "Convidar",
		description = "Esta permissao permite vc convidar as pessoas para sua facção."
	},
	demote = { -- Permissao Para Demitir
		name = "Demitir",
		description = "Essa permissão permite que o cargo selecionado demita um cargo inferior."
	}, 
	promove = { -- Permissao Para Promover
		name = "Promover",
		description = "Essa permissão permite que o cargo selecionado promova um cargo."
	}, 
	withdraw = { -- Permissao Para Sacar Dinheiro
		name = "Sacar dinheiro",
		description = "Permite que esse cargo selecionado possa sacar dinheiro do banco da facção."
	}, 
	deposit = { -- Permissao Para Depositar Dinheiro
		name = "Depositar dinheiro",
		description = "Permite que esse cargo selecionado possa depositar dinheiro no banco da facção."
	}, 
	message = { -- Permissao para Escrever nas anotaçoes
		name = "Escrever anotações",
		description = "Permite que esse cargo selecionado possa escrever anotações."
	},
	pix = {  -- Permissao para Alterar o Pix
		name = "Alterar a chave PIX",
		description = "Permite que esse cargo selecionado possa alterar a chave PIX do banco da facção"
	},
	chat = { -- Permissao para Falar no chat
		name = "Escrever no chat",
		description = "Permite que esse cargo selecionado possa se comunicar no chat da facção"
	},
}

orgsConfig.List = {
	["Hospital"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
			tipo = "legal",
		},
		
		groups = {
			["Diretor"] = { -- CARGO
				prefix = "Diretor", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 7, -- Nivel do Cargo ( Para ter uma Ordem )
				maxSets = 3,
			},

			["Vice Diretor"] = { -- CARGO
				prefix = "Vice Diretor", -- PREFIX
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
				maxSets = 3,
			},

			["Gestao"] = { -- CARGO
				prefix = "Gestao", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
				maxSets = 5,
			},

			["Medico Psiquiatra"] = { -- CARGO
				prefix = "Medico Psiquiatra", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Medico"] = { -- CARGO
				prefix = "Medico", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
				maxSets = 10,
			},

			["Enfermeiro"] = { -- CARGO
				prefix = "Enfermeiro", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Socorrista"] = { -- CARGO
				prefix = "Socorrista", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		},
	},

	["Judiciario"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
			tipo = "legal",
		},
		
		groups = {
			["Ministro"] = { -- CARGO
				prefix = "Ministro", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
				maxSets = 2,
			},

			["Juiz"] = { -- CARGO
				prefix = "Juiz", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
				maxSets = 3,
			},

			["Desembargador"] = { -- CARGO
				prefix = "Desembargador", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
				maxSets = 5,
			},

			["Promotor"] = { -- CARGO
				prefix = "Promotor", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Advogado"] = { -- CARGO
				prefix = "Advogado", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
				maxSets = 10,
			},
		}
	},

	["Policia"] = { --Mesmo nome que esta no orgName do vrp/cfg/groups.lua
		config = {
			maxMembers = 999, -- Maximo de Jogadores
			tipo = "legal",
		},
		
		groups = {
			["Coronel"] = { -- CARGO
				prefix = "Coronel", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 15, -- Nivel do Cargo ( Para ter uma Ordem )
				maxSets = 3,
			},

			["Tenente Coronel"] = { -- CARGO
				prefix = "Tenente Coronel", -- PREFIX
				tier = 14, -- Nivel do Cargo ( Para ter uma Ordem )
				maxSets = 5,
			},

			["Major"] = { -- CARGO
				prefix = "Major", -- PREFIX
				tier = 13, -- Nivel do Cargo ( Para ter uma Ordem )
				maxSets = 7,
			},

			["Comando Rocam"] = { -- CARGO
				prefix = "Comando Rocam", -- PREFIX
				tier = 12, -- Nivel do Cargo ( Para ter uma Ordem )
				maxSets = 7,
			},
						
			["Capitao"] = { -- CARGO
				prefix = "Capitao", -- PREFIX
				tier = 11, -- Nivel do Cargo ( Para ter uma Ordem )
			},
						
			["Primeiro Tenente"] = { -- CARGO
				prefix = "Primeiro Tenente", -- PREFIX
				tier = 10, -- Nivel do Cargo ( Para ter uma Ordem )
			},
									
			["Segundo Tenente"] = { -- CARGO
				prefix = "Segundo Tenente", -- PREFIX
				tier = 9, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Sub Tenente"] = { -- CARGO
				prefix = "Sub Tenente", -- PREFIX
				tier = 8, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Primeiro Sargento"] = { -- CARGO
				prefix = "Primeiro Sargento", -- PREFIX
				tier = 7, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Segundo Sargento"] = { -- CARGO
				prefix = "Segundo Sargento", -- PREFIX
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Rocam"] = { -- CARGO
				prefix = "Rocam", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Terceiro Sargento"] = { -- CARGO
				prefix = "Terceiro Sargento", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Cabo"] = { -- CARGO
				prefix = "Cabo", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Soldado"] = { -- CARGO
				prefix = "Soldado", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Aluno"] = { -- CARGO
				prefix = "Aluno", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["Bope"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
			tipo = "legal",
		},
		
		groups = {
			["Coronel Bope"] = { -- CARGO
				prefix = "Coronel Bope", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 14, -- Nivel do Cargo ( Para ter uma Ordem )
				maxSets = 2,
			},

			["Tenente Coronel Bope"] = { -- CARGO
				prefix = "Tenente Coronel Bope", -- PREFIX
				tier = 13, -- Nivel do Cargo ( Para ter uma Ordem )
				maxSets = 5,
			},
			
			["Major Bope"] = { -- CARGO
				prefix = "Major Bope", -- PREFIX
				tier = 12, -- Nivel do Cargo ( Para ter uma Ordem )
				maxSets = 7,
			},
			
			["Capitao Bope"] = { -- CARGO
				prefix = "Capitao Bope", -- PREFIX
				tier = 11, -- Nivel do Cargo ( Para ter uma Ordem )
				maxSets = 10,
			},
			
			["Primeiro Tenente Bope"] = { -- CARGO
				prefix = "Primeiro Tenente Bope", -- PREFIX
				tier = 10, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Segundo Tenente Bope"] = { -- CARGO
				prefix = "Segundo Tenente Bope", -- PREFIX
				tier = 9, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Terceiro Tenente Bope"] = { -- CARGO
				prefix = "Terceiro Tenente Bope", -- PREFIX
				tier = 8, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["SubTenente Bope"] = { -- CARGO
				prefix = "SubTenente Bope", -- PREFIX
				tier = 7, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Primeiro Sargento Bope"] = { -- CARGO
				prefix = "Primeiro Sargento Bope", -- PREFIX
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Segundo Sargento Bope"] = { -- CARGO
				prefix = "Segundo Sargento Bope", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Terceiro Sargento Bope"] = { -- CARGO
				prefix = "Terceiro Sargento Bope", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Cabo Bope"] = { -- CARGO
				prefix = "Cabo Bope", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Soldado Bope"] = { -- CARGO
				prefix = "Soldado Bope", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Aluno Bope"] = { -- CARGO
				prefix = "Aluno Bope", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},
	-- ["PoliciaCot"] = {
	-- 	config = {
	-- 		maxMembers = 999, -- Maximo de Jogadores
	-- 		tipo = "legal",
	-- 	},
		
	-- 	groups = {
	-- 		["ComandoCot"] = { -- CARGO
	-- 			prefix = "ComandoCot", -- PREFIX
    --             leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
	-- 			tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
	-- 			maxSets = 2,
	-- 		},

	-- 		["Cot"] = { -- CARGO
	-- 			prefix = "Cot", -- PREFIX
	-- 			tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
	-- 		},
	-- 	}
	-- },
	
	["PoliciaCivil"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
			tipo = "legal",
		},
		
		groups = {
			["DelegadoGeral"] = { -- CARGO
				prefix = "DelegadoGeral", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 10, -- Nivel do Cargo ( Para ter uma Ordem )
				maxSets = 2,
			},

			["ComandanteCore"] = { -- CARGO
				prefix = "ComandanteCore", -- PREFIX
				leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 9, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["SubComandanteCore"] = { -- CARGO
				prefix = "SubComandanteCore", -- PREFIX
				leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 8, -- Nivel do Cargo ( Para ter uma Ordem )
			},
						
			["Delegado"] = { -- CARGO
				prefix = "Delegado", -- PREFIX
				leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 7, -- Nivel do Cargo ( Para ter uma Ordem )
			},
									
			["Core"] = { -- CARGO
				prefix = "Core", -- PREFIX
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},
												
			["Perito"] = { -- CARGO
				prefix = "Perito", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},
															
			["Escrivao"] = { -- CARGO
				prefix = "Escrivao", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},
																		
			["Investigador"] = { -- CARGO
				prefix = "Investigador", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},
																					
			["Agente"] = { -- CARGO
				prefix = "Agente", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},
																								
			["Recruta"] = { -- CARGO
				prefix = "Recruta", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},
	
	["Mecanica"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
			tipo = "legal",
		},
		
		groups = {
			["Lider [MECANICA]"] = { -- CARGO
				prefix = "Lider [MECANICA]", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
				maxSets = 5,

			},

			["Sub-Lider [MECANICA]"] = { -- CARGO
				prefix = "Sub-Lider [MECANICA]", -- PREFIX
				leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Gerente [MECANICA]"] = { -- CARGO
				prefix = "Gerente [MECANICA]", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},
						
			["Membro [MECANICA]"] = { -- CARGO
				prefix = "Membro [MECANICA]", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},
						
			["Novato [MECANICA"] = { -- CARGO
				prefix = "Novato [MECANICA", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
									
		}
	},

	
	["CatCafe"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
			tipo = "legal",
		},
		
		groups = {
			["Lider [CATCAFE]"] = { -- CARGO
				prefix = "Lider [CATCAFE]", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
				maxSets = 2,
			},
			
			["Sub-Lider [CATCAFE]"] = { -- CARGO
				prefix = "Sub-Lider [CATCAFE]", -- PREFIX
				leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Gerente [CATCAFE]"] = { -- CARGO
				prefix = "Gerente [CATCAFE]", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Membro [CATCAFE]"] = { -- CARGO
				prefix = "Membro [CATCAFE]", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},
						
			["Novato [CATCAFE]"] = { -- CARGO
				prefix = "Novato [CATCAFE]", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},
	
	
	["Mafia"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
			tipo = "ilegal",
		},
		
		groups = {
			["Lider [MAFIA]"] = { -- CARGO
				prefix = "Lider [MAFIA]", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
				maxSets = 2,
			},
			
			["Sub-Lider [MAFIA]"] = { -- CARGO
				prefix = "Sub-Lider [MAFIA]", -- PREFIX
				leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Gerente [MAFIA]"] = { -- CARGO
				prefix = "Gerente [MAFIA]", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Membro [MAFIA]"] = { -- CARGO
				prefix = "Membro [MAFIA]", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},
						
			["Novato [MAFIA]"] = { -- CARGO
				prefix = "Novato [MAFIA]", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},
	
	
	["Alemanha"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
			tipo = "ilegal",
		},
		
		groups = {
			["Lider [ALEMANHA]"] = { -- CARGO
				prefix = "Lider [ALEMANHA]", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
				maxSets = 2,
			},
			
			["Sub-Lider [ALEMANHA]"] = { -- CARGO
				prefix = "Sub-Lider [ALEMANHA]", -- PREFIX
				leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Gerente [ALEMANHA]"] = { -- CARGO
				prefix = "Gerente [ALEMANHA]", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Membro [ALEMANHA]"] = { -- CARGO
				prefix = "Membro [ALEMANHA]", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},
						
			["Novato [ALEMANHA]"] = { -- CARGO
				prefix = "Novato [ALEMANHA]", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},
	
	["Russia"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
			tipo = "ilegal",
		},
		
		groups = {
			["Lider [RUSSIA]"] = { -- CARGO
				prefix = "Lider [RUSSIA]", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
				maxSets = 2,
			},
			
			["Sub-Lider [RUSSIA]"] = { -- CARGO
				prefix = "Sub-Lider [RUSSIA]", -- PREFIX
				leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Gerente [RUSSIA]"] = { -- CARGO
				prefix = "Gerente [RUSSIA]", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Membro [RUSSIA]"] = { -- CARGO
				prefix = "Membro [RUSSIA]", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},
						
			["Novato [RUSSIA]"] = { -- CARGO
				prefix = "Novato [RUSSIA]", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},
	
	["Egito"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
			tipo = "ilegal",
		},
		
		groups = {
			["Lider [EGITO]"] = { -- CARGO
				prefix = "Lider [EGITO]", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
				maxSets = 2,
			},
			
			["Sub-Lider [EGITO]"] = { -- CARGO
				prefix = "Sub-Lider [EGITO]", -- PREFIX
				leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Gerente [EGITO]"] = { -- CARGO
				prefix = "Gerente [EGITO]", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Membro [EGITO]"] = { -- CARGO
				prefix = "Membro [EGITO]", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},
						
			["Novato [EGITO]"] = { -- CARGO
				prefix = "Novato [EGITO]", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},
		
	["Croacia"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
			tipo = "ilegal",
		},
		
		groups = {
			["Lider [CROACIA]"] = { -- CARGO
				prefix = "Lider [CROACIA]", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
				maxSets = 2,
			},
			
			["Sub-Lider [CROACIA]"] = { -- CARGO
				prefix = "Sub-Lider [CROACIA]", -- PREFIX
				leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Gerente [CROACIA]"] = { -- CARGO
				prefix = "Gerente [CROACIA]", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Membro [CROACIA]"] = { -- CARGO
				prefix = "Membro [CROACIA]", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},
						
			["Novato [CROACIA]"] = { -- CARGO
				prefix = "Novato [CROACIA]", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},
			
	["Franca"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
			tipo = "ilegal",
		},
		
		groups = {
			["Lider [FRANCA]"] = { -- CARGO
				prefix = "Lider [FRANCA]", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
				maxSets = 2,
			},
			
			["Sub-Lider [FRANCA]"] = { -- CARGO
				prefix = "Sub-Lider [FRANCA]", -- PREFIX
				leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Gerente [FRANCA]"] = { -- CARGO
				prefix = "Gerente [FRANCA]", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Membro [FRANCA]"] = { -- CARGO
				prefix = "Membro [FRANCA]", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},
						
			["Novato [FRANCA]"] = { -- CARGO
				prefix = "Novato [FRANCA]", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},
				
	["Yakuza"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
			tipo = "ilegal",
		},
		
		groups = {
			["Lider [YAKUZA]"] = { -- CARGO
				prefix = "Lider [YAKUZA]", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
				maxSets = 2,
			},
			
			["Sub-Lider [YAKUZA]"] = { -- CARGO
				prefix = "Sub-Lider [YAKUZA]", -- PREFIX
				leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Gerente [YAKUZA]"] = { -- CARGO
				prefix = "Gerente [YAKUZA]", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Membro [YAKUZA]"] = { -- CARGO
				prefix = "Membro [YAKUZA]", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},
						
			["Novato [YAKUZA]"] = { -- CARGO
				prefix = "Novato [YAKUZA]", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},
					
	["China"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
			tipo = "ilegal",
		},
		
		groups = {
			["Lider [CHINA]"] = { -- CARGO
				prefix = "Lider [CHINA]", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
				maxSets = 2,
			},
			
			["Sub-Lider [CHINA]"] = { -- CARGO
				prefix = "Sub-Lider [CHINA]", -- PREFIX
				leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Gerente [CHINA]"] = { -- CARGO
				prefix = "Gerente [CHINA]", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Membro [CHINA]"] = { -- CARGO
				prefix = "Membro [CHINA]", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},
						
			["Novato [CHINA]"] = { -- CARGO
				prefix = "Novato [CHINA]", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},
						
	["MS-13"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
			tipo = "ilegal",
		},
		
		groups = {
			["Lider [MS-13]"] = { -- CARGO
				prefix = "Lider [MS-13]", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
				maxSets = 2,
			},
			
			["Sub-Lider [MS-13]"] = { -- CARGO
				prefix = "Sub-Lider [MS-13]", -- PREFIX
				leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Gerente [MS-13]"] = { -- CARGO
				prefix = "Gerente [MS-13]", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Membro [MS-13]"] = { -- CARGO
				prefix = "Membro [MS-13]", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},
						
			["Novato [MS-13]"] = { -- CARGO
				prefix = "Novato [MS-13]", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},
							
	["Cartel"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
			tipo = "ilegal",
		},
		
		groups = {
			["Lider [CARTEL]"] = { -- CARGO
				prefix = "Lider [CARTEL]", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
				maxSets = 2,
			},
			
			["Sub-Lider [CARTEL]"] = { -- CARGO
				prefix = "Sub-Lider [CARTEL]", -- PREFIX
				leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Gerente [CARTEL]"] = { -- CARGO
				prefix = "Gerente [CARTEL]", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Membro [CARTEL]"] = { -- CARGO
				prefix = "Membro [CARTEL]", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},
						
			["Novato [CARTEL]"] = { -- CARGO
				prefix = "Novato [CARTEL]", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},
								
	["Triade"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
			tipo = "ilegal",
		},
		
		groups = {
			["Lider [TRIADE]"] = { -- CARGO
				prefix = "Lider [TRIADE]", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
				maxSets = 2,
			},
			
			["Sub-Lider [TRIADE]"] = { -- CARGO
				prefix = "Sub-Lider [TRIADE]", -- PREFIX
				leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Gerente [TRIADE]"] = { -- CARGO
				prefix = "Gerente [TRIADE]", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Membro [TRIADE]"] = { -- CARGO
				prefix = "Membro [TRIADE]", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},
						
			["Novato [TRIADE]"] = { -- CARGO
				prefix = "Novato [TRIADE]", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},
									
	["Furious"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
			tipo = "ilegal",
		},
		
		groups = {
			["Lider [FURIOUS]"] = { -- CARGO
				prefix = "Lider [FURIOUS]", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
				maxSets = 2,
			},
			
			["Sub-Lider [FURIOUS]"] = { -- CARGO
				prefix = "Sub-Lider [FURIOUS]", -- PREFIX
				leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Gerente [FURIOUS]"] = { -- CARGO
				prefix = "Gerente [FURIOUS]", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Membro [FURIOUS]"] = { -- CARGO
				prefix = "Membro [FURIOUS]", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},
						
			["Novato [FURIOUS]"] = { -- CARGO
				prefix = "Novato [FURIOUS]", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},
										
	["Elements"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
			tipo = "ilegal",
		},
		
		groups = {
			["Lider [ELEMENTS]"] = { -- CARGO
				prefix = "Lider [ELEMENTS]", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
				maxSets = 2,
			},
			
			["Sub-Lider [ELEMENTS]"] = { -- CARGO
				prefix = "Sub-Lider [ELEMENTS]", -- PREFIX
				leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Gerente [ELEMENTS]"] = { -- CARGO
				prefix = "Gerente [ELEMENTS]", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Membro [ELEMENTS]"] = { -- CARGO
				prefix = "Membro [ELEMENTS]", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},
						
			["Novato [ELEMENTS]"] = { -- CARGO
				prefix = "Novato [ELEMENTS]", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},
											
	["Turquia"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
			tipo = "ilegal",
		},
		
		groups = {
			["Lider [TURQUIA]"] = { -- CARGO
				prefix = "Lider [TURQUIA]", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
				maxSets = 2,
			},
			
			["Sub-Lider [TURQUIA]"] = { -- CARGO
				prefix = "Sub-Lider [TURQUIA]", -- PREFIX
				leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Gerente [TURQUIA]"] = { -- CARGO
				prefix = "Gerente [TURQUIA]", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Membro [TURQUIA]"] = { -- CARGO
				prefix = "Membro [TURQUIA]", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},
						
			["Novato [TURQUIA]"] = { -- CARGO
				prefix = "Novato [TURQUIA]", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},
												
	["Grecia"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
			tipo = "ilegal",
		},
		
		groups = {
			["Lider [GRECIA]"] = { -- CARGO
				prefix = "Lider [GRECIA]", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
				maxSets = 2,
			},
			
			["Sub-Lider [GRECIA]"] = { -- CARGO
				prefix = "Sub-Lider [GRECIA]", -- PREFIX
				leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Gerente [GRECIA]"] = { -- CARGO
				prefix = "Gerente [GRECIA]", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Membro [GRECIA]"] = { -- CARGO
				prefix = "Membro [GRECIA]", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},
						
			["Novato [GRECIA]"] = { -- CARGO
				prefix = "Novato [GRECIA]", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},
													
	["Bloods"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
			tipo = "ilegal",
		},
		
		groups = {
			["Lider [BLOODS]"] = { -- CARGO
				prefix = "Lider [BLOODS]", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
				maxSets = 2,
			},
			
			["Sub-Lider [BLOODS]"] = { -- CARGO
				prefix = "Sub-Lider [BLOODS]", -- PREFIX
				leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Gerente [BLOODS]"] = { -- CARGO
				prefix = "Gerente [BLOODS]", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Membro [BLOODS]"] = { -- CARGO
				prefix = "Membro [BLOODS]", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},
						
			["Novato [BLOODS]"] = { -- CARGO
				prefix = "Novato [BLOODS]", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},
													
	["Vanilla"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
			tipo = "ilegal",
		},
		
		groups = {
			["Lider [VANILLA]"] = { -- CARGO
				prefix = "Lider [VANILLA]", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
				maxSets = 2,
			},
			
			["Sub-Lider [VANILLA]"] = { -- CARGO
				prefix = "Sub-Lider [VANILLA]", -- PREFIX
				leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Gerente [VANILLA]"] = { -- CARGO
				prefix = "Gerente [VANILLA]", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Membro [VANILLA]"] = { -- CARGO
				prefix = "Membro [VANILLA]", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},
						
			["Novato [VANILLA]"] = { -- CARGO
				prefix = "Novato [VANILLA]", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},
															
	["Bahamas"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
			tipo = "ilegal",
		},
		
		groups = {
			["Lider [BAHAMAS]"] = { -- CARGO
				prefix = "Lider [BAHAMAS]", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
				maxSets = 2,
			},
			
			["Sub-Lider [BAHAMAS]"] = { -- CARGO
				prefix = "Sub-Lider [BAHAMAS]", -- PREFIX
				leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Gerente [BAHAMAS]"] = { -- CARGO
				prefix = "Gerente [BAHAMAS]", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Membro [BAHAMAS]"] = { -- CARGO
				prefix = "Membro [BAHAMAS]", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},
						
			["Novato [BAHAMAS]"] = { -- CARGO
				prefix = "Novato [BAHAMAS]", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},
															
	["Cassino"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
			tipo = "ilegal",
		},
		
		groups = {
			["Lider [CASSINO]"] = { -- CARGO
				prefix = "Lider [CASSINO]", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
				maxSets = 2,
			},
			
			["Sub-Lider [CASSINO]"] = { -- CARGO
				prefix = "Sub-Lider [CASSINO]", -- PREFIX
				leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Gerente [CASSINO]"] = { -- CARGO
				prefix = "Gerente [CASSINO]", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Membro [CASSINO]"] = { -- CARGO
				prefix = "Membro [CASSINO]", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},
						
			["Novato [CASSINO]"] = { -- CARGO
				prefix = "Novato [CASSINO]", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["Galaxy"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
			tipo = "ilegal",
		},
		
		groups = {
			["Lider [GALAXY]"] = { -- CARGO
				prefix = "Lider [GALAXY]", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
				maxSets = 2,
			},
			
			["Sub-Lider [GALAXY]"] = { -- CARGO
				prefix = "Sub-Lider [GALAXY]", -- PREFIX
				leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Gerente [GALAXY]"] = { -- CARGO
				prefix = "Gerente [GALAXY]", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Membro [GALAXY]"] = { -- CARGO
				prefix = "Membro [GALAXY]", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},
						
			["Novato [GALAXY]"] = { -- CARGO
				prefix = "Novato [GALAXY]", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},
	
	["LifeInvader"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
			tipo = "ilegal",
		},
		
		groups = {
			["Lider [LIFEINVADER]"] = { -- CARGO
				prefix = "Lider [LIFEINVADER]", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
				maxSets = 2,
			},
			
			["Sub-Lider [LIFEINVADER]"] = { -- CARGO
				prefix = "Sub-Lider [LIFEINVADER]", -- PREFIX
				leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Gerente [LIFEINVADER]"] = { -- CARGO
				prefix = "Gerente [LIFEINVADER]", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Membro [LIFEINVADER]"] = { -- CARGO
				prefix = "Membro [LIFEINVADER]", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},
						
			["Novato [LIFEINVADER]"] = { -- CARGO
				prefix = "Novato [LIFEINVADER]", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},
		
	["Tequila"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
			tipo = "ilegal",
		},
		
		groups = {
			["Lider [TEQUILA]"] = { -- CARGO
				prefix = "Lider [TEQUILA]", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
				maxSets = 2,
			},
			
			["Sub-Lider [TEQUILA]"] = { -- CARGO
				prefix = "Sub-Lider [TEQUILA]", -- PREFIX
				leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Gerente [TEQUILA]"] = { -- CARGO
				prefix = "Gerente [TEQUILA]", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Membro [TEQUILA]"] = { -- CARGO
				prefix = "Membro [TEQUILA]", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},
						
			["Novato [TEQUILA]"] = { -- CARGO
				prefix = "Novato [TEQUILA]", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["Canada"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
			tipo = "ilegal",
		},
		
		groups = {
			["Lider [CANADA]"] = { -- CARGO
				prefix = "Lider [CANADA]", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
				maxSets = 2,
			},
			
			["Sub-Lider [CANADA]"] = { -- CARGO
				prefix = "Sub-Lider [CANADA]", -- PREFIX
				leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Gerente [CANADA]"] = { -- CARGO
				prefix = "Gerente [CANADA]", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Membro [CANADA]"] = { -- CARGO
				prefix = "Membro [CANADA]", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},
						
			["Novato [CANADA]"] = { -- CARGO
				prefix = "Novato [CANADA]", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},
	
	["Nigeria"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
			tipo = "ilegal",
		},
		
		groups = {
			["Lider [NIGERIA]"] = { -- CARGO
				prefix = "Lider [NIGERIA]", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
				maxSets = 2,
			},
			
			["Sub-Lider [NIGERIA]"] = { -- CARGO
				prefix = "Sub-Lider [NIGERIA]", -- PREFIX
				leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Gerente [NIGERIA]"] = { -- CARGO
				prefix = "Gerente [NIGERIA]", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Membro [NIGERIA]"] = { -- CARGO
				prefix = "Membro [NIGERIA]", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},
						
			["Novato [NIGERIA]"] = { -- CARGO
				prefix = "Novato [NIGERIA]", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},
		
	["Escocia"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
			tipo = "ilegal",
		},
		
		groups = {
			["Lider [ESCOCIA]"] = { -- CARGO
				prefix = "Lider [ESCOCIA]", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
				maxSets = 2,
			},
			
			["Sub-Lider [ESCOCIA]"] = { -- CARGO
				prefix = "Sub-Lider [ESCOCIA]", -- PREFIX
				leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Gerente [ESCOCIA]"] = { -- CARGO
				prefix = "Gerente [ESCOCIA]", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Membro [ESCOCIA]"] = { -- CARGO
				prefix = "Membro [ESCOCIA]", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},
						
			["Novato [ESCOCIA]"] = { -- CARGO
				prefix = "Novato [ESCOCIA]", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},
			
	["Suecia"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
			tipo = "ilegal",
		},
		
		groups = {
			["Lider [SUECIA]"] = { -- CARGO
				prefix = "Lider [SUECIA]", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
				maxSets = 2,
			},
			
			["Sub-Lider [SUECIA]"] = { -- CARGO
				prefix = "Sub-Lider [SUECIA]", -- PREFIX
				leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Gerente [SUECIA]"] = { -- CARGO
				prefix = "Gerente [SUECIA]", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Membro [SUECIA]"] = { -- CARGO
				prefix = "Membro [SUECIA]", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},
						
			["Novato [SUECIA]"] = { -- CARGO
				prefix = "Novato [SUECIA]", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},
				
	["Espanha"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
			tipo = "ilegal",
		},
		
		groups = {
			["Lider [ESPANHA]"] = { -- CARGO
				prefix = "Lider [ESPANHA]", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
				maxSets = 2,
			},
			
			["Sub-Lider [ESPANHA]"] = { -- CARGO
				prefix = "Sub-Lider [ESPANHA]", -- PREFIX
				leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Gerente [ESPANHA]"] = { -- CARGO
				prefix = "Gerente [ESPANHA]", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Membro [ESPANHA]"] = { -- CARGO
				prefix = "Membro [ESPANHA]", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},
						
			["Novato [ESPANHA]"] = { -- CARGO
				prefix = "Novato [ESPANHA]", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},
					
	["Mexico"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
			tipo = "ilegal",
		},
		
		groups = {
			["Lider [MEXICO]"] = { -- CARGO
				prefix = "Lider [MEXICO]", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
				maxSets = 2,
			},
			
			["Sub-Lider [MEXICO]"] = { -- CARGO
				prefix = "Sub-Lider [MEXICO]", -- PREFIX
				leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Gerente [MEXICO]"] = { -- CARGO
				prefix = "Gerente [MEXICO]", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Membro [MEXICO]"] = { -- CARGO
				prefix = "Membro [MEXICO]", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},
						
			["Novato [MEXICO]"] = { -- CARGO
				prefix = "Novato [MEXICO]", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},
						
	["Roxos"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
			tipo = "ilegal",
		},
		
		groups = {
			["Lider [ROXOS]"] = { -- CARGO
				prefix = "Lider [ROXOS]", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
				maxSets = 2,
			},
			
			["Sub-Lider [ROXOS]"] = { -- CARGO
				prefix = "Sub-Lider [ROXOS]", -- PREFIX
				leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Gerente [ROXOS]"] = { -- CARGO
				prefix = "Gerente [ROXOS]", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Membro [ROXOS]"] = { -- CARGO
				prefix = "Membro [ROXOS]", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},
						
			["Novato [ROXOS]"] = { -- CARGO
				prefix = "Novato [ROXOS]", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},
							
	["Paquistao"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
			tipo = "ilegal",
		},
		
		groups = {
			["Lider [PAQUISTAO]"] = { -- CARGO
				prefix = "Lider [PAQUISTAO]", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
				maxSets = 2,
			},
			
			["Sub-Lider [PAQUISTAO]"] = { -- CARGO
				prefix = "Sub-Lider [PAQUISTAO]", -- PREFIX
				leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Gerente [PAQUISTAO]"] = { -- CARGO
				prefix = "Gerente [PAQUISTAO]", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Membro [PAQUISTAO]"] = { -- CARGO
				prefix = "Membro [PAQUISTAO]", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},
						
			["Novato [PAQUISTAO]"] = { -- CARGO
				prefix = "Novato [PAQUISTAO]", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},
								
	["Belgica"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
			tipo = "ilegal",
		},
		
		groups = {
			["Lider [BELGICA]"] = { -- CARGO
				prefix = "Lider [BELGICA]", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
				maxSets = 2,
			},
			
			["Sub-Lider [BELGICA]"] = { -- CARGO
				prefix = "Sub-Lider [BELGICA]", -- PREFIX
				leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Gerente [BELGICA]"] = { -- CARGO
				prefix = "Gerente [BELGICA]", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Membro [BELGICA]"] = { -- CARGO
				prefix = "Membro [BELGICA]", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},
						
			["Novato [BELGICA]"] = { -- CARGO
				prefix = "Novato [BELGICA]", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},
									
	["Israel"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
			tipo = "ilegal",
		},
		
		groups = {
			["Lider [ISRAEL]"] = { -- CARGO
				prefix = "Lider [ISRAEL]", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
				maxSets = 2,
			},
			
			["Sub-Lider [ISRAEL]"] = { -- CARGO
				prefix = "Sub-Lider [ISRAEL]", -- PREFIX
				leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Gerente [ISRAEL]"] = { -- CARGO
				prefix = "Gerente [ISRAEL]", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Membro [ISRAEL]"] = { -- CARGO
				prefix = "Membro [ISRAEL]", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},
						
			["Novato [ISRAEL]"] = { -- CARGO
				prefix = "Novato [ISRAEL]", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},
										
	["Colombia"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
			tipo = "ilegal",
		},
		
		groups = {
			["Lider [COLOMBIA]"] = { -- CARGO
				prefix = "Lider [COLOMBIA]", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
				maxSets = 2,
			},
			
			["Sub-Lider [COLOMBIA]"] = { -- CARGO
				prefix = "Sub-Lider [COLOMBIA]", -- PREFIX
				leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Gerente [COLOMBIA]"] = { -- CARGO
				prefix = "Gerente [COLOMBIA]", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Membro [COLOMBIA]"] = { -- CARGO
				prefix = "Membro [COLOMBIA]", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},
						
			["Novato [COLOMBIA]"] = { -- CARGO
				prefix = "Novato [COLOMBIA]", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},
											
	["CostaRica"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
			tipo = "ilegal",
		},
		
		groups = {
			["Lider [COSTARICA]"] = { -- CARGO
				prefix = "Lider [COSTARICA]", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
				maxSets = 2,
			},
			
			["Sub-Lider [COSTARICA]"] = { -- CARGO
				prefix = "Sub-Lider [COSTARICA]", -- PREFIX
				leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Gerente [COSTARICA]"] = { -- CARGO
				prefix = "Gerente [COSTARICA]", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Membro [COSTARICA]"] = { -- CARGO
				prefix = "Membro [COSTARICA]", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},
						
			["Novato [COSTARICA]"] = { -- CARGO
				prefix = "Novato [COSTARICA]", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},
												
	["Malta"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
			tipo = "ilegal",
		},
		
		groups = {
			["Lider [MALTA]"] = { -- CARGO
				prefix = "Lider [MALTA]", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
				maxSets = 2,
			},
			
			["Sub-Lider [MALTA]"] = { -- CARGO
				prefix = "Sub-Lider [MALTA]", -- PREFIX
				leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Gerente [MALTA]"] = { -- CARGO
				prefix = "Gerente [MALTA]", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Membro [MALTA]"] = { -- CARGO
				prefix = "Membro [MALTA]", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},
						
			["Novato [MALTA]"] = { -- CARGO
				prefix = "Novato [MALTA]", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},
													
	["Vagos"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
			tipo = "ilegal",
		},
		
		groups = {
			["Lider [VAGOS]"] = { -- CARGO
				prefix = "Lider [VAGOS]", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
				maxSets = 2,
			},
			
			["Sub-Lider [VAGOS]"] = { -- CARGO
				prefix = "Sub-Lider [VAGOS]", -- PREFIX
				leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Gerente [VAGOS]"] = { -- CARGO
				prefix = "Gerente [VAGOS]", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Membro [VAGOS]"] = { -- CARGO
				prefix = "Membro [VAGOS]", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},
						
			["Novato [VAGOS]"] = { -- CARGO
				prefix = "Novato [VAGOS]", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},
}