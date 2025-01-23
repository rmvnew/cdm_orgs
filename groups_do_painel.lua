local cfg = {}

cfg.groups = {
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ADMINISTRAÇÃO
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	["developer"] = { _config = { gtype = "staff", salario = 0 }, "admin.permissao","moderador.permissao", "suporte.permissao", "attachs.permissao", "perm.verify", "dv.permissao", "ticket.permissao", "developer.permissao","player.blips", "player.noclip", "player.teleport", "player.secret", "player.spec", "player.wall","spec.permissao", "mqcu.permissao", "perm.ptr.staff","player.som", "perm.algemar" },
	["developeroff"] = { _config = { gtype = "staff", salario = 0 }, "perm.user", "staffoff.permissao", "perm.ptr.staff", "perm.algemar" },
	["diretoria"] = { _config = { gtype = "staff", salario = 20000 }, "admin.permissao","diretoria.permissao", "dv.permissao", "ticket.permissao", "player.blips", "player.noclip", "player.teleport", "player.secret", "player.spec", "player.wall","spec.permissao", "mqcu.permissao", "perm.ptr.staff", "perm.algemar" },
	["diretoriaoff"] = { _config = { gtype = "staff", salario = 0 }, "perm.user", "staffoff.permissao", "perm.ptr.staff", "perm.algemar" },
	["admin"] = { _config = { gtype = "staff", salario = 20000 }, "admin.permissao", "dv.permissao", "ticket.permissao", "player.blips", "player.noclip", "player.teleport", "player.secret", "player.spec", "player.wall","spec.permissao", "mqcu.permissao", "perm.ptr.staff", "perm.algemar" },
	["adminoff"] = { _config = { gtype = "staff", salario = 0 }, "perm.user", "staffoff.permissao", "perm.ptr.staff", "perm.algemar" },
	["moderador"] = { _config = { gtype = "staff", salario = 15000 }, "moderador.permissao", "dv.permissao", "ticket.permissao", "player.blips", "player.noclip", "player.teleport", "player.secret", "player.spec", "player.wall","spec.permissao", "mqcu.permissao", "perm.ptr.staff", "perm.algemar" },
	["moderadoroff"] = { _config = { gtype = "staff", salario = 0 }, "perm.user", "staffoff.permissao", "perm.ptr.staff", "perm.algemar" },
	["suporte"] = { _config = { gtype = "staff", salario = 10000 }, "suporte.permissao", "dv.permissao", "ticket.permissao", "player.blips", "player.noclip", "player.teleport", "player.secret", "player.spec", "player.wall","spec.permissao", "mqcu.permissao", "perm.ptr.staff", "perm.algemar" },
	["suporteoff"] = { _config = { gtype = "staff", salario = 0 }, "perm.user", "staffoff.permissao", "perm.ptr.staff", "perm.algemar" },
	["user"] = { "perm.user"},
	["streamer"] = { _config = { gtype = "staff" }, "player.blips", "player.noclip", "player.teleport", "player.secret", "player.spec", "player.wall", "mqcu.permissao", "streamer.permissao", "perm.algemar" },

	------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	-- VIPS
	------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	["Inicial"] = { _config = { gtype = "inicial", salario = 3000, ptr = nil }, "perm.vips","player.som", "perm.inicial" },
	["Bronze"] = { _config = { gtype = "bronze", salario = 2000, ptr = nil }, "perm.vips", "perm.bronze","perm.booster" },
	["Prata"] = { _config = { gtype = "prata", salario = 4000, ptr = nil }, "perm.vips", "perm.prata", "perm.booster" },
	["Ouro"] = { _config = { gtype = "ouro", salario = 6000, ptr = nil }, "perm.vips", "perm.ouro", "perm.booster","perm.roupas" },
	["Platina"] = { _config = { gtype = "platina", salario = 8000, ptr = nil }, "perm.vips", "perm.platina", "perm.booster","perm.roupas" },
	["Diamante"] = { _config = { gtype = "diamante", salario = 10000, ptr = nil }, "perm.vips", "perm.diamante", "perm.booster","perm.roupas","perm.mochila"},
	["Esmeralda"] = { _config = { gtype = "esmeralda", salario = 15000, ptr = nil }, "perm.vips", "perm.esmeralda", "perm.booster", "perm.roupas", "perm.mochila","player.som" },
	["Safira"] = { _config = { gtype = "safira", salario = 20000, ptr = nil }, "perm.vips", "perm.safira", "perm.booster", "perm.roupas", "perm.mochila","player.som" },
	["Rubi"] = { _config = { gtype = "rubi", salario = 25000, ptr = nil }, "perm.vips", "perm.rubi", "perm.booster", "perm.roupas", "perm.mochila","player.som"},
	["RubiPlus"] = { _config = { gtype = "rubiplus", salario = 30000, ptr = nil }, "perm.vips", "perm.rubiplus", "perm.booster", "perm.roupas", "perm.mochila","player.som" },
	["Natal"] = { _config = { gtype = "natal", salario = 25000, ptr = nil }, "perm.vips", "perm.natal", "perm.booster", "perm.roupas", "perm.mochila","player.som" },
	["Virada"] = { _config = { gtype = "virada", salario = 25000, ptr = nil }, "perm.vips", "perm.virada", "perm.booster", "perm.roupas", "perm.mochila","player.som" },

	["Kids"] = { _config = { gtype = "Kids", salario = 25000, ptr = nil }, "perm.vips", "perm.Kids", "perm.booster", "perm.roupas", "perm.mochila","player.som" },

	["Kids"] = { _config = { gtype = "KIDA", salario = 30000, ptr = nil }, "perm.vips", "perm.kids", "perm.booster", "perm.roupas", "perm.mochila","player.som" },
	["Exclusivo Pascoa"] = { _config = { gtype = "vippascoa", salario = 30000, ptr = nil }, "perm.vips", "perm.vippascoa", "perm.booster", "perm.roupas", "perm.mochila","player.som" },
	["Carnaval"] = { _config = { gtype = "vipcarnaval", salario = 30000, ptr = nil }, "perm.vips", "perm.vipcarnaval", "perm.booster", "perm.roupas", "perm.mochila","player.som" },

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- BENEFICIOS
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	["Estagiario"] = { _config = { gtype = "jobdois", salario = 2000, ptr = nil }, "perm.estagiario"},
	["Funcionario"] = { _config = { gtype = "jobtres", salario = 4000, ptr = nil }, "perm.funcionario"},
	["Gerente"] = { _config = { gtype = "jobquatro", salario = 6000, ptr = nil }, "perm.gerente"},
	["Patrao"] = { _config = { gtype = "jobcinco", salario = 8000, ptr = nil }, "perm.patrao"},
	["CasaDoFranklin"] = { _config = { gtype = "jobseis", salario = 0, ptr = nil }, "perm.franklin"},
	["spotify"] = { _config = { gtype = "spotify", salario = 0, ptr = nil },"player.som"},
	["Booster"] = { _config = { salario = nil, ptr = nil }, "perm.booster" },
	["Verificado"] = { _config = { salario = nil, ptr = nil }, "perm.verify"},
	["Vagas"] = { _config = { salario = nil, ptr = nil }, "perm.vagastres"},
	["VagasQuarenta"] = { _config = { salario = nil, ptr = nil }, "perm.vagasquarenta"},


	
	["valecasa"] = { _config = { salario = nil, ptr = nil }, "valecasa.permissao"}, 
	["valegaragem"] = { _config = { salario = nil, ptr = nil }, "valegaragem.permissao"}, 

	
	["Attachs"] = { _config = { salario = nil, ptr = nil }, "attachs.permissao"}, 

	["cam"] = { _config = { salario = nil, ptr = nil }, "perm.cam"}, 

	["ifood"] = { _config = { salario = 1000, ptr = nil }, "perm.ifood"}, 

	["ValeCasaEsmeralda"] = { _config = { salario = nil, ptr = nil }, "valecasaesmeralda.permissao"}, 
	["ValeCasaRubi"] = { _config = { salario = nil, ptr = nil }, "valecasarubi.permissao"}, 

	--["playboy"] = { _config = { salario = nil, ptr = nil }, "playboy.permissao"}, 
	["biel"] = { _config = { salario = nil, ptr = nil }, "perm.biel"}, 

	["starckhouse"] = { _config = { salario = nil, ptr = nil }, "perm.starckhouse"}, 
	["snakehouse"] = { _config = { salario = nil, ptr = nil }, "perm.snakehouse"}, 
	["beiramarhouse"] = { _config = { salario = nil, ptr = nil }, "perm.beiramarhouse"}, 
	["casadolado"] = { _config = { salario = nil, ptr = nil }, "perm.casadolago"}, 
	["herreracasa"] = { _config = { salario = nil, ptr = nil }, "perm.herreracasa"},
	["manobras"] = { _config = { salario = nil, ptr = nil }, "perm.manobras"}, 
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- OUTROS
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	["paintball"] = { _config = { salario = nil, ptr = nil }, "player.blips", "player.noclip", "player.teleport", "player.secret", "player.spec", "player.wall" },
	["Porte de Armas"] = { _config = { salario = nil, ptr = nil }, "perm.portearmas" },

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- HOSPITAL
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
["Diretor"] = { _config = { gtype = "org", salario = 27000, ptr = true, orgName = "Hospital" },"dv.permissao", "perm.unizk" },
["Vice Diretor"] = { _config = { gtype = "org", salario = 25000, ptr = true, orgName = "Hospital"},"dv.permissao", "perm.unizk" },
["Gestao"] = { _config = { gtype = "org", salario = 23000, ptr = true, orgName = "Hospital"},"dv.permissao", "perm.unizk" },
["Medico Psiquiatra"] = { _config = { gtype = "org", salario = 20000, ptr = true, orgName = "Hospital"},"dv.permissao", "perm.unizk" },
["Medico"] = { _config = { gtype = "org", salario = 17000, ptr = true, orgName = "Hospital"},"dv.permissao", "perm.unizk" },
["Enfermeiro"] = { _config = { gtype = "org", salario = 15000, ptr = true, orgName = "Hospital"}, "perm.unizk" },
["Socorrista"] = { _config = { gtype = "org", salario = 10000, ptr = true, orgName = "Hospital"}, "perm.unizk" },

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- JUDICIARIO
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
["Ministro"] = { _config = { gtype = "org", salario = 20000, ptr = true, orgName = "Judiciario"}, "perm.judiciario" },
["Juiz"] = { _config = { gtype = "org", salario = 10000, ptr = nil, orgName = "Judiciario"}, "perm.judiciario" },
["Desembargador"] = { _config = { gtype = "org", salario = 10000, orgName = "Judiciario"}, "perm.judiciario" },
["Promotor"] = { _config = { gtype = "org", salario = 8000, ptr = nil, orgName = "Judiciario"}, "perm.judiciario" },
["Advogado"] = { _config = { gtype = "org", salario = 5000, ptr = nil, orgName = "Judiciario"}, "perm.judiciario" },

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- RESTAURANTE
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
["Chefe Restaurante"] = { _config = { gtype = "org", salario = 10000, ptr = true, orgName = "Restaurante"}, "perm.restaurante", "perm.ifood" },
["Gerente Restaurante"] = { _config = { gtype = "org", salario = 6000, ptr = nil, orgName = "Restaurante"}, "perm.restaurante", "perm.ifood" },
["Membro Restaurante"] = { _config = { gtype = "org", salario = 3500, orgName = "Restaurante"}, "perm.restaurante", "perm.ifood" },
["Aprendiz Restaurante"] = { _config = { gtype = "org", salario = 2100, ptr = nil, orgName = "Restaurante"}, "perm.restaurante", "perm.ifood" },

["Chefe Shot"] = { _config = { gtype = "org", salario = 10000, ptr = true, orgName = "BurguerShot"}, "perm.burguershot", "perm.ifood" },
["Gerente Shot"] = { _config = { gtype = "org", salario = 6000, ptr = nil, orgName = "BurguerShot"}, "perm.burguershot", "perm.ifood" },
["Membro Shot"] = { _config = { gtype = "org", salario = 3500, orgName = "BurguerShot"}, "perm.burguershot", "perm.ifood" },
["Aprendiz Shot"] = { _config = { gtype = "org", salario = 2100, ptr = nil, orgName = "BurguerShot"}, "perm.burguershot", "perm.ifood" },

["Chefe Japao"] = { _config = { gtype = "org", salario = 10000, ptr = true, orgName = "Japao"}, "perm.japao", "perm.ifood" },
["Gerente Japao"] = { _config = { gtype = "org", salario = 6000, ptr = nil, orgName = "Japao"}, "perm.japao", "perm.ifood" },
["Membro Japao"] = { _config = { gtype = "org", salario = 3500, orgName = "Japao"}, "perm.japao", "perm.ifood" },
["Aprendiz Japao"] = { _config = { gtype = "org", salario = 2100, ptr = nil, orgName = "Japao"}, "perm.japao", "perm.ifood" },


-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- MECANICA
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

["LiderMec"] = { _config = { gtype = "org", salario = 20000, ptr = true, orgName = "Mecanica"}, "perm.mecanica" },
["SubLiderMec"] = { _config = { gtype = "org", salario = 10000, ptr = nil, orgName = "Mecanica"}, "perm.mecanica" },
["SupervisorMec"] = { _config = { gtype = "org", salario = 10000, orgName = "Mecanica"}, "perm.mecanica" },
["GerenteMec"] = { _config = { gtype = "org", salario = 8000, ptr = nil, orgName = "Mecanica"}, "perm.mecanica" },
["MecanicoMec"] = { _config = { gtype = "org", salario = 5000, ptr = nil, orgName = "Mecanica"}, "perm.mecanica" },
["AprendizMec"] = { _config = { gtype = "org", salario = 5000, ptr = nil, orgName = "Mecanica"}, "perm.mecanica" },

-- MECÂNICA
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- POLICIA
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
["Coronel"] = { _config = { gtype = "org", salario = 17000, ptr = true, orgName = "Policia" }, "perm.policia", "perm.baupolicialider", "player.blips","perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia" },
["Tenente Coronel"] = { _config = { gtype = "org", salario = 18000, ptr = true, orgName = "Policia" }, "perm.policia", "perm.baupolicialider", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia"  },
["Major"] = { _config = { gtype = "org", salario = 17000, ptr = true, orgName = "Policia" }, "perm.policia", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia"  },

["Comando BOPE"] = { _config = { gtype = "org", salario = 17000, ptr = true, orgName = "PoliciaBOPE" }, "perm.BOPE", "perm.policia", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia"  },
["BOPE"] = { _config = { gtype = "org", salario = 17000, ptr = true, orgName = "PoliciaBOPE" }, "perm.BOPE", "perm.policia", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia"  },

["Comando Speed"] = { _config = { gtype = "org", salario = 17000, ptr = true, orgName = "Policia" }, "perm.speed", "perm.policia", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia"  },
["Speed"] = { _config = { gtype = "org", salario = 17000, ptr = true, orgName = "Policia" }, "perm.speed", "perm.policia", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia"  },
["Comando Rocam"] = { _config = { gtype = "org", salario = 17000, ptr = true, orgName = "Policia" }, "perm.rocam", "perm.policia", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia"  },
["Rocam"] = { _config = { gtype = "org", salario = 17000, ptr = true, orgName = "Policia" }, "perm.rocam", "perm.policia", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia"  },
["Comando Grpae"] = { _config = { gtype = "org", salario = 17000, ptr = true, orgName = "Policia" }, "perm.grpae", "perm.policia", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia" },
["Grpae"] = { _config = { gtype = "org", salario = 17000, ptr = true, orgName = "Policia" }, "perm.grpae", "perm.policia", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia"  },
["Comando Choque"] = { _config = { gtype = "org", salario = 17000, ptr = true, orgName = "Policia" }, "perm.choque", "perm.policia", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia"  },
["Choque"] = { _config = { gtype = "org", salario = 17000, ptr = true, orgName = "Policia" }, "perm.choque", "perm.policia", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia"  },

["Capitao"] = { _config = { gtype = "org", salario = 16000, ptr = true , orgName = "Policia"}, "perm.policia", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia"  },
["Primeiro Tenente"] = { _config = { gtype = "org", salario = 15000, ptr = true, orgName = "Policia" }, "perm.policia", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia"  },
["Segundo Tenente"] = { _config = { gtype = "org", salario = 14000, ptr = true, orgName = "Policia" }, "perm.policia", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia"  },
["Sub Tenente"] = { _config = { gtype = "org", salario = 13000, ptr = true, orgName = "Policia" }, "perm.policia", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia"  },
["Primeiro Sargento"] = { _config = { gtype = "org", salario = 12000, ptr = true, orgName = "Policia" }, "perm.policia", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia"  },
["Segundo Sargento"] = { _config = { gtype = "org", salario = 11000, ptr = true, orgName = "Policia" }, "perm.policia", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia"  },
["Terceiro Sargento"] = { _config = { gtype = "org", salario = 10000, ptr = true, orgName = "Policia" }, "perm.policia", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia"  },
["Cabo"] = { _config = { gtype = "org", salario = 9000, ptr = true, orgName = "Policia" }, "perm.policia", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia"  },
["Soldado"] = { _config = { gtype = "org", salario = 8000, ptr = true, orgName = "Policia" }, "perm.policia", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia"  },
["Aluno"] = { _config = { gtype = "org", salario = 7000, ptr = true, orgName = "Policia" }, "perm.policia", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia"  },
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- POLICIA TATICA
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
["ComandoCot"] = { _config = { gtype = "org", salario = 18000, ptr = true, orgName = "PoliciaCot" }, "perm.policia", "perm.tatica", "perm.baupolicialider", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia"  },
["Cot"] = { _config = { gtype = "org", salario = 16000, ptr = true, orgName = "PoliciaCot" }, "perm.policia", "perm.tatica", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia"  },

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- POLICIA CIVIL
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
["DelegadoGeral"] = { _config = { gtype = "org", salario = 25000, ptr = true, orgName = "PoliciaCivil" }, "perm.policiacivil", "perm.baupoliciacivillider", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia"  },
["ComandanteCore"] = { _config = { gtype = "org", salario = 25000, ptr = true, orgName = "PoliciaCivil" }, "perm.policiacivil", "perm.baupoliciacivillider", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia"  },
["SubComandanteCore"] = { _config = { gtype = "org", salario = 20000, ptr = true, orgName = "PoliciaCivil" }, "perm.policiacivil", "perm.baupoliciacivillider", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia"  },
["Delegado"] = { _config = { gtype = "org", salario = 15000, ptr = true, orgName = "PoliciaCivil" }, "perm.policiacivil", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia"  },
["Core"] = { _config = { gtype = "org", salario = 15000, ptr = true, orgName = "PoliciaCivil" }, "perm.policiacivil", "player.blips", "perm.disparo", "perm.policia.radio", "perm.portasolicia", "perm.algemar", "perm.countpolicia" },
["Perito"] = { _config = { gtype = "org", salario = 12000, ptr = true, orgName = "PoliciaCivil" }, "perm.policiacivil", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia"  },
["Escrivao"] = { _config = { gtype = "org", salario = 10000, ptr = true, orgName = "PoliciaCivil" }, "perm.policiacivil", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia"  },
["Investigador"] = { _config = { gtype = "org", salario = 8000, ptr = true, orgName = "PoliciaCivil" }, "perm.policiacivil", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia"  },
["Agente"] = { _config = { gtype = "org", salario = 6000, ptr = true, orgName = "PoliciaCivil" }, "perm.policiacivil", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia"  },
["Recruta"] = { _config = { gtype = "org", salario = 4000, ptr = true, orgName = "PoliciaCivil" }, "perm.policiacivil", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia"  },

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------  /groupadd 1 "lider bloods"
-- ARMAS
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--MAFIA--
["Lider [MAFIA]"] = { _config = { gtype = "org", salario = 4000, ptr = nil, orgName = "Mafia", orgType = "fArmas"}, "perm.mafia", "perm.lidermafia", "perm.arma", "perm.ilegal", "perm.baumafia"},
["Sub-Lider [MAFIA]"] = { _config = { gtype = "org", salario = 4000, ptr = nil, orgName = "Mafia", orgType = "fArmas" }, "perm.lidermafia", "perm.mafia", "perm.arma", "perm.ilegal", "perm.baumafia"},
["Gerente [MAFIA]"] = { _config = { gtype = "org", salario = 4000, ptr = nil, orgName = "Mafia", orgType = "fArmas" }, "perm.mafia", "perm.arma", "perm.ilegal", "perm.baumafia"},
["Membro [MAFIA]"] = { _config = { gtype = "org", salario = 4000, ptr = nil, orgName = "Mafia", orgType = "fArmas" }, "perm.mafia", "perm.arma", "perm.ilegal", "perm.baumafia"},
["Novato [MAFIA]"] = { _config = { gtype = "org", salario = 4000, ptr = nil, orgName = "Mafia", orgType = "fArmas" }, "perm.mafia", "perm.arma", "perm.ilegal"},

--ALEMANHA--
["Lider [ALEMANHA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Alemanha", orgType = "fArmas"}, "perm.alemanha", "perm.lideralemanha", "perm.arma", "perm.ilegal", "perm.baualemanha"},
["Sub-Lider [ALEMANHA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Alemanha", orgType = "fArmas" }, "perm.lideralemanha", "perm.alemanha", "perm.arma", "perm.ilegal", "perm.baualemanha"},
["Gerente [ALEMANHA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Alemanha", orgType = "fArmas" }, "perm.alemanha", "perm.arma", "perm.ilegal", "perm.baualemanha"},
["Membro [ALEMANHA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Alemanha", orgType = "fArmas" }, "perm.alemanha", "perm.arma", "perm.ilegal", "perm.baualemanha"},
["Novato [ALEMANHA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Alemanha", orgType = "fArmas" }, "perm.alemanha", "perm.arma", "perm.ilegal"},

--RUSSIA--
["Lider [RUSSIA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Russia", orgType = "fArmas"}, "perm.russia", "perm.liderrussia", "perm.arma", "perm.ilegal", "perm.baurussia"},
["Sub-Lider [RUSSIA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Russia", orgType = "fArmas" }, "perm.liderrussia", "perm.russia", "perm.arma", "perm.ilegal", "perm.baurussia"},
["Gerente [RUSSIA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Russia", orgType = "fArmas" }, "perm.russia", "perm.arma", "perm.ilegal", "perm.baurussia"},
["Membro [RUSSIA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Russia", orgType = "fArmas" }, "perm.russia", "perm.arma", "perm.ilegal", "perm.baurussia"},
["Novato [RUSSIA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Russia", orgType = "fArmas" }, "perm.russia", "perm.arma", "perm.ilegal"},

--EGITO--
["Lider [EGITO]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Egito", orgType = "fArmas"}, "perm.lideregito", "perm.egito", "perm.arma", "perm.ilegal", "perm.bauegito"},
["Sub-Lider [EGITO]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Egito", orgType = "fArmas"}, "perm.lideregito", "perm.egito", "perm.arma", "perm.ilegal", "perm.bauegito"},
["Gerente [EGITO]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Egito", orgType = "fArmas"}, "perm.egito", "perm.arma", "perm.ilegal", "perm.bauegito"},
["Membro [EGITO]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Egito", orgType = "fArmas"}, "perm.egito", "perm.arma", "perm.ilegal", "perm.bauegito"},
["Novato [EGITO]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Egito", orgType = "fArmas"}, "perm.egito", "perm.arma", "perm.ilegal"},

--CROACIA--
["Lider [CROACIA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Croacia", orgType = "fArmas"}, "perm.croacia", "perm.lidercroacia", "perm.arma", "perm.ilegal", "perm.baucroacia"},
["Sub-Lider [CROACIA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Croacia", orgType = "fArmas" }, "perm.lidercroacia", "perm.croacia", "perm.arma", "perm.ilegal", "perm.baucroacia"},
["Gerente [CROACIA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Croacia", orgType = "fArmas" }, "perm.croacia", "perm.arma", "perm.ilegal", "perm.baucroacia"},
["Membro [CROACIA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Croacia", orgType = "fArmas" }, "perm.croacia", "perm.arma", "perm.ilegal", "perm.baucroacia"},
["Novato [CROACIA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Croacia", orgType = "fArmas" }, "perm.croacia", "perm.arma", "perm.ilegal"},

--FRANCA--
["Lider [FRANCA]"] = { _config = { gtype = "org", salario = 8000, ptr = nil, orgName = "Franca", orgType = "fArmas"}, "perm.franca", "perm.liderfranca", "perm.arma", "perm.ilegal", "perm.baufranca"},
["Sub-Lider [FRANCA]"] = { _config = { gtype = "org", salario = 8000, ptr = nil, orgName = "Franca", orgType = "fArmas"}, "perm.liderfranca", "perm.franca", "perm.arma", "perm.ilegal", "perm.baufranca"},
["Gerente [FRANCA]"] = { _config = { gtype = "org", salario = 8000, ptr = nil, orgName = "Franca", orgType = "fArmas"}, "perm.franca", "perm.arma", "perm.ilegal", "perm.baufranca"},
["Membro [FRANCA]"] = { _config = { gtype = "org", salario = 8000, ptr = nil, orgName = "Franca", orgType = "fArmas"}, "perm.franca", "perm.arma", "perm.ilegal", "perm.baufranca"},
["Novato [FRANCA]"] = { _config = { gtype = "org", salario = 8000, ptr = nil, orgName = "Franca", orgType = "fArmas"}, "perm.franca", "perm.arma", "perm.ilegal"},

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- MUNIÇÃO
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--YAKUZA--
["Lider [YAKUZA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Yakuza", orgType = "fMunicao"}, "perm.yakuza", "perm.lideryakuza", "perm.muni", "perm.ilegal", "perm.bauyakuza"},
["Sub-Lider [YAKUZA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Yakuza", orgType = "fMunicao"}, "perm.lideryakuza", "perm.yakuza", "perm.muni", "perm.ilegal", "perm.bauyakuza"},
["Gerente [YAKUZA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Yakuza", orgType = "fMunicao"}, "perm.yakuza", "perm.muni", "perm.ilegal", "perm.bauyakuza"},
["Membro [YAKUZA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Yakuza", orgType = "fMunicao"}, "perm.yakuza", "perm.muni", "perm.ilegal", "perm.bauyakuza"},
["Novato [YAKUZA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Yakuza", orgType = "fMunicao"}, "perm.yakuza", "perm.muni", "perm.ilegal"},

--CHINA--
["Lider [CHINA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "China", orgType = "fMunicao"}, "perm.liderchina", "perm.china", "perm.muni", "perm.ilegal", "perm.bauchina"},
["Sub-Lider [CHINA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "China", orgType = "fMunicao"}, "perm.liderchina", "perm.china", "perm.muni", "perm.ilegal", "perm.bauchina"},
["Gerente [CHINA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "China", orgType = "fMunicao"}, "perm.china", "perm.muni", "perm.ilegal", "perm.bauchina"},
["Membro [CHINA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "China", orgType = "fMunicao"}, "perm.china", "perm.muni", "perm.ilegal", "perm.bauchina"},
["Novato [CHINA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "China", orgType = "fMunicao"}, "perm.china", "perm.muni", "perm.ilegal"},

--MS-13--
["Lider [MS-13]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "MS-13", orgType = "fMunicao"}, "perm.liderms-13", "perm.ms-13", "perm.muni", "perm.ilegal", "perm.baums-13"},
["Sub-Lider [MS-13]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "MS-13", orgType = "fMunicao"}, "perm.liderms-13", "perm.ms-13", "perm.muni", "perm.ilegal", "perm.baums-13"},
["Gerente [MS-13]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "MS-13", orgType = "fMunicao"}, "perm.ms-13", "perm.muni", "perm.ilegal", "perm.baums-13"},
["Membro [MS-13]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "MS-13", orgType = "fMunicao"}, "perm.ms-13", "perm.muni", "perm.ilegal", "perm.baums-13"},
["Novato [MS-13]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "MS-13", orgType = "fMunicao"}, "perm.ms-13", "perm.muni", "perm.ilegal"},

--CARTEL--
["Lider [CARTEL]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Cartel", orgType = "fMunicao"}, "perm.cartel", "perm.lidercartel", "perm.muni", "perm.ilegal", "perm.baucartel"},
["Sub-Lider [CARTEL]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Cartel", orgType = "fMunicao"}, "perm.lidercartel", "perm.cartel", "perm.muni", "perm.ilegal", "perm.baucartel"},
["Gerente [CARTEL]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Cartel", orgType = "fMunicao"}, "perm.cartel", "perm.muni", "perm.ilegal", "perm.baucartel"},
["Membro [CARTEL]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Cartel", orgType = "fMunicao"}, "perm.cartel", "perm.muni", "perm.ilegal", "perm.baucartel"},
["Novato [CARTEL]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Cartel", orgType = "fMunicao"}, "perm.cartel", "perm.muni", "perm.ilegal"},

--TRIADE--
["Lider [TRIADE]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Triade", orgType = "fMunicao"}, "perm.triade", "perm.lidertriade", "perm.muni", "perm.ilegal", "perm.bautriade"},
["Sub-Lider [TRIADE]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Triade", orgType = "fMunicao"}, "perm.lidertriade", "perm.triade", "perm.muni", "perm.ilegal", "perm.bautriade"},
["Gerente [TRIADE]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Triade", orgType = "fMunicao"}, "perm.triade", "perm.muni", "perm.ilegal", "perm.bautriade"},
["Membro [TRIADE]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Triade", orgType = "fMunicao"}, "perm.triade", "perm.muni", "perm.ilegal", "perm.bautriade"},
["Novato [TRIADE]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Triade", orgType = "fMunicao"}, "perm.triade", "perm.muni", "perm.ilegal"},

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- DESMANCHE
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--FURIOUS--
["Lider [FURIOUS]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Furious", orgType = "fDesmanche"}, "perm.furious", "perm.liderfurious", "perm.desmanche", "perm.ilegal", "perm.baufurious"},
["Sub-Lider [FURIOUS]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Furious", orgType = "fDesmanche"}, "perm.liderfurious", "perm.furious", "perm.desmanche", "perm.ilegal", "perm.baufurious"},
["Gerente [FURIOUS]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Furious", orgType = "fDesmanche"}, "perm.furious", "perm.desmanche", "perm.ilegal", "perm.baufurious"},
["Membro [FURIOUS]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Furious", orgType = "fDesmanche"}, "perm.furious", "perm.desmanche", "perm.ilegal", "perm.baufurious"},
["Novato [FURIOUS]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Furious", orgType = "fDesmanche"}, "perm.furious", "perm.desmanche", "perm.ilegal"},

--ELEMENTS--
["Lider [ELEMENTS]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Elements", orgType = "fDesmanche"}, "perm.elements", "perm.desmanche", "perm.liderelements", "perm.ilegal", "perm.bauelements"},
["Sub-Lider [ELEMENTS]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Elements", orgType = "fDesmanche"}, "perm.liderelements", "perm.elements", "perm.desmanche", "perm.ilegal", "perm.bauelements"},
["Gerente [ELEMENTS]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Elements", orgType = "fDesmanche"}, "perm.elements", "perm.desmanche", "perm.ilegal", "perm.bauelements"},
["Membro [ELEMENTS]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Elements", orgType = "fDesmanche"}, "perm.elements", "perm.desmanche", "perm.ilegal", "perm.bauelements"},
["Novato [ELEMENTS]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Elements", orgType = "fDesmanche"}, "perm.elements", "perm.desmanche", "perm.ilegal"},

--TURQUIA--
["Lider [TURQUIA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Turquia", orgType = "fDesmanche"}, "perm.liderturquia", "perm.turquia", "perm.desmanche", "perm.ilegal", "perm.bauturquia"},
["Sub-Lider [TURQUIA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Turquia", orgType = "fDesmanche"}, "perm.liderturquia", "perm.turquia", "perm.desmanche", "perm.ilegal", "perm.bauturquia"},
["Gerente [TURQUIA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Turquia", orgType = "fDesmanche"}, "perm.turquia", "perm.desmanche", "perm.ilegal", "perm.bauturquia"},
["Membro [TURQUIA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Turquia", orgType = "fDesmanche"}, "perm.turquia", "perm.desmanche", "perm.ilegal", "perm.bauturquia"},
["Novato [TURQUIA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Turquia", orgType = "fDesmanche"}, "perm.turquia", "perm.desmanche", "perm.ilegal"},

--GRECIA--
["Lider [GRECIA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Grecia", orgType = "fDesmanche"}, "perm.lidergrecia", "perm.grecia", "perm.desmanche", "perm.ilegal", "perm.baugrecia"},
["Sub-Lider [GRECIA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Grecia", orgType = "fDesmanche"}, "perm.lidergrecia", "perm.grecia", "perm.desmanche", "perm.ilegal", "perm.baugrecia"},
["Gerente [GRECIA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Grecia", orgType = "fDesmanche"}, "perm.grecia", "perm.desmanche", "perm.ilegal", "perm.baugrecia"},
["Membro [GRECIA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Grecia", orgType = "fDesmanche"}, "perm.grecia", "perm.desmanche", "perm.ilegal", "perm.baugrecia"},
["Novato [GRECIA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Grecia", orgType = "fDesmanche"}, "perm.grecia", "perm.desmanche", "perm.ilegal"},

--BLOODS--
["Lider [BLOODS]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Bloods", orgType = "fDesmanche"}, "perm.liderbloods", "perm.bloods", "perm.desmanche", "perm.ilegal", "perm.baubloods"},
["Sub-Lider [BLOODS]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Bloods", orgType = "fDesmanche"}, "perm.liderbloods", "perm.bloods", "perm.desmanche", "perm.ilegal", "perm.baubloods"},
["Gerente [BLOODS]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Bloods", orgType = "fDesmanche"}, "perm.bloods", "perm.desmanche", "perm.ilegal", "perm.baubloods"},
["Membro [BLOODS]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Bloods", orgType = "fDesmanche"}, "perm.bloods", "perm.desmanche", "perm.ilegal", "perm.baubloods"},
["Novato [BLOODS]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Bloods", orgType = "fDesmanche"}, "perm.bloods", "perm.desmanche", "perm.ilegal"},

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- LAVAGEM
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--VANILLA--
["Lider [VANILLA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Vanilla", orgType = "fLavagem"}, "perm.lidervanilla", "perm.vanilla", "perm.lavagem", "perm.ilegal", "perm.bauvanilla"},
["Sub-Lider [VANILLA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Vanilla",orgType = "fLavagem"}, "perm.lidervanilla", "perm.vanilla", "perm.lavagem", "perm.ilegal", "perm.bauvanilla"},	
["Gerente [VANILLA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Vanilla",orgType = "fLavagem"}, "perm.vanilla", "perm.lavagem", "perm.ilegal", "perm.bauvanilla"},
["Membro [VANILLA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Vanilla",orgType = "fLavagem"}, "perm.vanilla", "perm.lavagem", "perm.ilegal", "perm.bauvanilla"},
["Novato [VANILLA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Vanilla",orgType = "fLavagem"}, "perm.vanilla", "perm.lavagem", "perm.ilegal"},

--BAHAMAS--
["Lider [BAHAMAS]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Bahamas", orgType = "fLavagem"}, "perm.liderbahamas", "perm.bahamas", "perm.lavagem", "perm.ilegal", "perm.baubahamas"},
["Sub-Lider [BAHAMAS]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Bahamas", orgType = "fLavagem"}, "perm.liderbahamas", "perm.bahamas", "perm.lavagem", "perm.ilegal", "perm.baubahamas"},
["Gerente [BAHAMAS]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Bahamas", orgType = "fLavagem"}, "perm.bahamas", "perm.lavagem", "perm.ilegal", "perm.baubahamas"},
["Membro [BAHAMAS]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Bahamas", orgType = "fLavagem"}, "perm.bahamas", "perm.lavagem", "perm.ilegal", "perm.baubahamas"},
["Novato [BAHAMAS]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Bahamas", orgType = "fLavagem"}, "perm.bahamas", "perm.lavagem", "perm.ilegal"},

--CASSINO--
["Lider [CASSINO]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Cassino", orgType = "fLavagem"}, "perm.cassino", "perm.lidercassino", "perm.lavagem", "perm.ilegal", "perm.baucassino"},
["Sub-Lider [CASSINO]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Cassino", orgType = "fLavagem"}, "perm.lidercassino", "perm.cassino", "perm.lavagem", "perm.ilegal", "perm.baucassino"},
["Gerente [CASSINO]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Cassino", orgType = "fLavagem"}, "perm.cassino", "perm.lavagem", "perm.ilegal", "perm.baucassino"},
["Membro [CASSINO]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Cassino", orgType = "fLavagem"}, "perm.cassino", "perm.lavagem", "perm.ilegal", "perm.baucassino"},
["Novato [CASSINO]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Cassino", orgType = "fLavagem"}, "perm.cassino", "perm.lavagem", "perm.ilegal"},

--GALAXY--
["Lider [GALAXY]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Galaxy", orgType = "fLavagem"}, "perm.galaxy", "perm.lidergalaxy", "perm.lavagem", "perm.ilegal", "perm.baugalaxy"},
["Sub-Lider [GALAXY]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Galaxy", orgType = "fLavagem"}, "perm.lidergalaxy", "perm.galaxy", "perm.lavagem", "perm.ilegal", "perm.baugalaxy"},
["Gerente [GALAXY]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Galaxy", orgType = "fLavagem"}, "perm.galaxy", "perm.lavagem", "perm.ilegal", "perm.baugalaxy"},
["Membro [GALAXY]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Galaxy", orgType = "fLavagem"}, "perm.galaxy", "perm.lavagem", "perm.ilegal", "perm.baugalaxy"},
["Novato [GALAXY]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Galaxy", orgType = "fLavagem"}, "perm.galaxy", "perm.lavagem", "perm.ilegal"},
--LIFEINVADER--
["Lider [LIFEINVADER]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "LifeInvader", orgType = "fLavagem"}, "perm.lifeinvader", "perm.liderlifeinvader", "perm.lavagem", "perm.ilegal", "perm.baulifeinvader"},
["Sub-Lider [LIFEINVADER]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "LifeInvader", orgType = "fLavagem"}, "perm.liderlifeinvader", "perm.lifeinvader", "perm.lavagem", "perm.ilegal", "perm.baulifeinvader"},
["Gerente [LIFEINVADER]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "LifeInvader", orgType = "fLavagem"}, "perm.lifeinvader", "perm.lavagem", "perm.ilegal", "perm.baulifeinvader"},
["Membro [LIFEINVADER]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "LifeInvader", orgType = "fLavagem"}, "perm.lifeinvader", "perm.lavagem", "perm.ilegal", "perm.baulifeinvader"},
["Novato [LIFEINVADER]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "LifeInvader", orgType = "fLavagem"}, "perm.lifeinvader", "perm.lavagem", "perm.ilegal"},


--LIFEINVADER--
["Lider [TEQUILA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Tequila", orgType = "fLavagem"}, "perm.tequila", "perm.lidertequila", "perm.lavagem", "perm.ilegal", "perm.bautequila"},
["Sub-Lider [TEQUILA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Tequila", orgType = "fLavagem"}, "perm.lidertequila", "perm.tequila", "perm.lavagem", "perm.ilegal", "perm.bautequila"},
["Gerente [TEQUILA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Tequila", orgType = "fLavagem"}, "perm.tequila", "perm.lavagem", "perm.ilegal", "perm.bautequila"},
["Membro [TEQUILA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Tequila", orgType = "fLavagem"}, "perm.tequila", "perm.lavagem", "perm.ilegal", "perm.bautequila"},
["Novato [TEQUILA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Tequila", orgType = "fLavagem"}, "perm.tequila", "perm.lavagem", "perm.ilegal"},
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- DROGAS
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--CANADA--
["Lider [CANADA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Canada", orgType = "Drogas"}, "perm.canada", "perm.lidercanada", "perm.drogas", "perm.ilegal", "perm.maconha", "perm.baucanada"},
["Sub-Lider [CANADA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Canada", orgType = "Drogas"}, "perm.lidercanada", "perm.canada", "perm.drogas", "perm.ilegal", "perm.maconha", "perm.baucanada"},
["Gerente [CANADA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Canada", orgType = "Drogas"}, "perm.canada", "perm.drogas", "perm.ilegal", "perm.maconha", "perm.baucanada"},
["Membro [CANADA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Canada", orgType = "Drogas"}, "perm.canada", "perm.drogas", "perm.ilegal", "perm.maconha", "perm.baucanada"},
["Novato [CANADA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Canada", orgType = "Drogas"}, "perm.canada", "perm.drogas", "perm.maconha", "perm.ilegal"},

--NIGERIA--
["Lider [NIGERIA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Nigeria", orgType = "Drogas"}, "perm.nigeria", "perm.lidernigeria", "perm.maconha", "perm.ilegal", "perm.baunigeria"},
["Sub-Lider [NIGERIA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Nigeria", orgType = "Drogas"}, "perm.lidernigeria", "perm.nigeria", "perm.maconha", "perm.ilegal", "perm.baunigeria"},
["Gerente [NIGERIA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Nigeria", orgType = "Drogas"}, "perm.nigeria", "perm.maconha", "perm.ilegal", "perm.baunigeria"},
["Membro [NIGERIA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Nigeria", orgType = "Drogas"}, "perm.nigeria", "perm.maconha", "perm.ilegal", "perm.baunigeria"},
["Novato [NIGERIA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Nigeria", orgType = "Drogas"}, "perm.nigeria", "perm.maconha", "perm.ilegal"},

--ESCOCIA--
["Lider [ESCOCIA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Escocia", orgType = "Drogas"}, "perm.escocia", "perm.liderescocia", "perm.balinha", "perm.ilegal", "perm.bauescocia"},
["Sub-Lider [ESCOCIA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Escocia", orgType = "Drogas"}, "perm.liderescocia", "perm.escocia", "perm.balinha", "perm.ilegal", "perm.bauescocia"},
["Gerente [ESCOCIA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Escocia", orgType = "Drogas"}, "perm.escocia", "perm.balinha", "perm.ilegal", "perm.bauescocia"},
["Membro [ESCOCIA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Escocia", orgType = "Drogas"}, "perm.escocia", "perm.balinha", "perm.ilegal", "perm.bauescocia"},
["Novato [ESCOCIA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Escocia", orgType = "Drogas"}, "perm.escocia", "perm.balinha", "perm.ilegal"},

--SUECIA--
["Lider [SUECIA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Suecia", orgType = "Drogas"}, "perm.suecia", "perm.lidersuecia", "perm.drogas", "perm.balinha", "perm.ilegal", "perm.bausuecia"},
["Sub-Lider [SUECIA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Suecia", orgType = "Drogas"}, "perm.lidersuecia", "perm.suecia", "perm.drogas", "perm.balinha", "perm.ilegal", "perm.bausuecia"},
["Gerente [SUECIA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Suecia", orgType = "Drogas"}, "perm.suecia", "perm.drogas", "perm.balinha", "perm.ilegal", "perm.bausuecia"},
["Membro [SUECIA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Suecia", orgType = "Drogas"}, "perm.suecia", "perm.drogas", "perm.balinha", "perm.ilegal", "perm.bausuecia"},
["Novato [SUECIA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Suecia", orgType = "Drogas"}, "perm.suecia", "perm.drogas", "perm.balinha", "perm.ilegal"},

--ESPANHA--
["Lider [ESPANHA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Espanha", orgType = "Drogas"}, "perm.espanha", "perm.liderespanha", "perm.drogas", "perm.cocaina", "perm.ilegal", "perm.bauespanha"},
["Sub-Lider [ESPANHA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Espanha", orgType = "Drogas"}, "perm.liderespanha", "perm.espanha", "perm.drogas", "perm.ilegal", "perm.cocaina", "perm.bauespanha"},
["Gerente [ESPANHA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Espanha", orgType = "Drogas"}, "perm.espanha", "perm.drogas", "perm.ilegal", "perm.cocaina", "perm.bauespanha"},
["Membro [ESPANHA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Espanha", orgType = "Drogas"}, "perm.espanha", "perm.drogas", "perm.ilegal", "perm.cocaina", "perm.bauespanha"},
["Novato [ESPANHA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Espanha", orgType = "Drogas"}, "perm.espanha", "perm.drogas", "perm.cocaina", "perm.ilegal"},

--MEXICO--
["Lider [MEXICO]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Mexico", orgType = "Drogas"}, "perm.mexico", "perm.lidermexico", "perm.drogas", "perm.cocaina", "perm.ilegal", "perm.baumexico"},
["Sub-Lider [MEXICO]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Mexico", orgType = "Drogas"}, "perm.lidermexico", "perm.mexico", "perm.drogas", "perm.ilegal", "perm.cocaina", "perm.baumexico"},
["Gerente [MEXICO]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Mexico", orgType = "Drogas"}, "perm.mexico", "perm.drogas", "perm.ilegal", "perm.cocaina", "perm.baumexico"},
["Membro [MEXICO]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Mexico", orgType = "Drogas"}, "perm.mexico", "perm.drogas", "perm.ilegal", "perm.cocaina", "perm.baumexico"},
["Novato [MEXICO]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Mexico", orgType = "Drogas"}, "perm.mexico", "perm.drogas", "perm.cocaina", "perm.ilegal"},

--BLOODS--
["Lider [ROXOS]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Roxos", orgType = "Drogas"}, "perm.roxos", "perm.liderroxos", "perm.drogas", "perm.metanfetamina", "perm.ilegal", "perm.bauroxos"},
["Sub-Lider [ROXOS]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Roxos", orgType = "Drogas"}, "perm.liderroxos", "perm.roxos", "perm.drogas", "perm.ilegal", "perm.metanfetamina", "perm.bauroxos"},
["Gerente [ROXOS]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Roxos", orgType = "Drogas"}, "perm.roxos", "perm.drogas", "perm.ilegal", "perm.metanfetamina", "perm.bauroxos"},
["Membro [ROXOS]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Roxos", orgType = "Drogas"}, "perm.roxos", "perm.drogas", "perm.ilegal", "perm.metanfetamina", "perm.bauroxos"},
["Novato [ROXOS]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Roxos", orgType = "Drogas"}, "perm.roxos", "perm.drogas", "perm.metanfetamina", "perm.ilegal"},

--PAQUISTÃO--
["Lider [PAQUISTAO]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Paquistao", orgType = "Drogas"}, "perm.paquistao", "perm.liderpaquistao", "perm.drogas", "perm.metanfetamina", "perm.ilegal", "perm.baupaquistao"},
["Sub-Lider [PAQUISTAO]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Paquistao", orgType = "Drogas"}, "perm.liderpaquistao", "perm.paquistao", "perm.drogas", "perm.ilegal", "perm.metanfetamina", "perm.baupaquistao"},
["Gerente [PAQUISTAO]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Paquistao", orgType = "Drogas"}, "perm.paquistao", "perm.drogas", "perm.ilegal", "perm.metanfetamina", "perm.baupaquistao"},
["Membro [PAQUISTAO]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Paquistao", orgType = "Drogas"}, "perm.paquistao", "perm.drogas", "perm.ilegal", "perm.metanfetamina", "perm.baupaquistao"},
["Novato [PAQUISTAO]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Paquistao", orgType = "Drogas"}, "perm.paquistao", "perm.drogas", "perm.metanfetamina", "perm.ilegal"},

--BELGICA--
["Lider [BELGICA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Belgica", orgType = "Drogas"}, "perm.belgica", "perm.liderbelgica", "perm.drogas", "perm.heroina", "perm.ilegal", "perm.baubelgica"},
["Sub-Lider [BELGICA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Belgica", orgType = "Drogas"}, "perm.liderbelgica", "perm.belgica", "perm.drogas", "perm.ilegal", "perm.heroina", "perm.baubelgica"},
["Gerente [BELGICA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Belgica", orgType = "Drogas"}, "perm.belgica", "perm.drogas", "perm.ilegal", "perm.heroina", "perm.baubelgica"},
["Membro [BELGICA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Belgica", orgType = "Drogas"}, "perm.belgica", "perm.drogas", "perm.ilegal", "perm.heroina", "perm.baubelgica"},
["Novato [BELGICA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Belgica", orgType = "Drogas"}, "perm.belgica", "perm.drogas", "perm.heroina", "perm.ilegal"},

--ISRAEL--
["Lider [ISRAEL]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Israel", orgType = "Drogas"}, "perm.israel", "perm.liderisrael", "perm.heroina", "perm.ilegal", "perm.bauisrael"},
["Sub-Lider [ISRAEL]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Israel", orgType = "Drogas"}, "perm.liderisrael", "perm.israel", "perm.heroina", "perm.ilegal", "perm.bauisrael"},
["Gerente [ISRAEL]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Israel", orgType = "Drogas"}, "perm.israel", "perm.heroina", "perm.ilegal", "perm.bauisrael"},
["Membro [ISRAEL]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Israel", orgType = "Drogas"}, "perm.israel", "perm.heroina", "perm.ilegal", "perm.bauisrael"},
["Novato [ISRAEL]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Israel", orgType = "Drogas"}, "perm.israel", "perm.heroina", "perm.ilegal"},

--COLOMBIA--
["Lider [COLOMBIA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Colombia", orgType = "Drogas"}, "perm.colombia", "perm.lidercolombia", "perm.drogas", "perm.opio", "perm.ilegal", "perm.baucolombia"},
["Sub-Lider [COLOMBIA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Colombia", orgType = "Drogas"}, "perm.lidercolombia", "perm.colombia", "perm.drogas", "perm.ilegal", "perm.opio", "perm.baucolombia"},
["Gerente [COLOMBIA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Colombia", orgType = "Drogas"}, "perm.colombia", "perm.drogas", "perm.ilegal", "perm.opio", "perm.baucolombia"},
["Membro [COLOMBIA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Colombia", orgType = "Drogas"}, "perm.colombia", "perm.drogas", "perm.ilegal", "perm.opio", "perm.baucolombia"},
["Novato [COLOMBIA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Colombia", orgType = "Drogas"}, "perm.colombia", "perm.drogas", "perm.opio", "perm.ilegal"}, 

--COSTARICA--
["Lider [COSTARICA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "CostaRica", orgType = "Drogas"}, "perm.costarica", "perm.lidercostarica", "perm.drogas", "perm.opio", "perm.ilegal", "perm.baucostarica"},
["Sub-Lider [COSTARICA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "CostaRica", orgType = "Drogas"}, "perm.lidercostarica", "perm.costarica", "perm.drogas", "perm.ilegal", "perm.opio", "perm.baucostarica"},
["Gerente [COSTARICA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "CostaRica", orgType = "Drogas"}, "perm.costarica", "perm.drogas", "perm.ilegal", "perm.opio", "perm.baucostarica"},
["Membro [COSTARICA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "CostaRica", orgType = "Drogas"}, "perm.costarica", "perm.drogas", "perm.ilegal", "perm.opio", "perm.baucostarica"},
["Novato [COSTARICA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "CostaRica", orgType = "Drogas"}, "perm.costarica", "perm.drogas", "perm.opio", "perm.ilegal"},

--MALTA--
["Lider [MALTA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Malta", orgType = "Drogas"}, "perm.malta", "perm.lidermalta", "perm.drogas", "perm.haxixe", "perm.ilegal", "perm.baumalta"},
["Sub-Lider [MALTA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Malta", orgType = "Drogas"}, "perm.lidermalta", "perm.malta", "perm.drogas", "perm.ilegal", "perm.haxixe", "perm.baumalta"},
["Gerente [MALTA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Malta", orgType = "Drogas"}, "perm.malta", "perm.drogas", "perm.ilegal", "perm.haxixe", "perm.baumalta"},
["Membro [MALTA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Malta", orgType = "Drogas"}, "perm.malta", "perm.drogas", "perm.ilegal", "perm.haxixe", "perm.baumalta"},
["Novato [MALTA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Malta", orgType = "Drogas"}, "perm.malta", "perm.drogas", "perm.haxixe", "perm.ilegal"},

--VAGOS--
["Lider [VAGOS]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Vagos", orgType = "Drogas"}, "perm.vagos", "perm.lidervagos", "perm.vagos", "perm.haxixe", "perm.ilegal", "perm.bauvagos"},
["Sub-Lider [VAGOS]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Vagos", orgType = "Drogas"}, "perm.lidervagos", "perm.vagos", "perm.vagos", "perm.ilegal", "perm.haxixe", "perm.bauvagos"},
["Gerente [VAGOS]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Vagos", orgType = "Drogas"}, "perm.vagos", "perm.drogas", "perm.ilegal", "perm.haxixe", "perm.bauvagos"},
["Membro [VAGOS]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Vagos", orgType = "Drogas"}, "perm.vagos", "perm.drogas", "perm.ilegal", "perm.haxixe", "perm.bauvagos"},
["Novato [VAGOS]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Vagos", orgType = "Drogas"}, "perm.vagos", "perm.drogas", "perm.haxixe", "perm.ilegal"},

--PALESTINA--
["Lider [PALESTINA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Palestina", orgType = "Drogas"}, "perm.palestina", "perm.liderpalestina", "perm.palestina", "perm.opio", "perm.ilegal", "perm.baupalestina"},
["Sub-Lider [PALESTINA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Palestina", orgType = "Drogas"}, "perm.liderpalestina", "perm.palestina", "perm.palestina", "perm.ilegal", "perm.opio", "perm.baupalestina"},
["Gerente [PALESTINA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Palestina", orgType = "Drogas"}, "perm.palestina", "perm.drogas", "perm.ilegal", "perm.opio", "perm.baupalestina"},
["Membro [PALESTINA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Palestina", orgType = "Drogas"}, "perm.palestina", "perm.drogas", "perm.ilegal", "perm.opio", "perm.baupalestina"},
["Novato [PALESTINA]"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgName = "Palestina", orgType = "Drogas"}, "perm.palestina", "perm.drogas", "perm.opio", "perm.ilegal"},
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Bennys
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
["Lider [MECANICA]"] = { _config = { gtype = "org", salario = 3500, ptr = nil, orgName = "Mecanica" }, "dv.permissao", "perm.mecanica", "perm.lidermecanica", "perm.tunar", "perm.baumecanica"},
["Sub-Lider [MECANICA]"] = { _config = { gtype = "org", salario = 3000, ptr = nil, orgName = "Mecanica" }, "perm.mecanica", "perm.tunar", "perm.baumecanica"},
["Gerente [MECANICA]"] = { _config = { gtype = "org", salario = 2500, ptr = nil, orgName = "Mecanica" }, "perm.mecanica", "perm.tunar", "perm.baumecanica"},
["Membro [MECANICA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Mecanica" }, "perm.mecanica", "perm.tunar", "perm.baumecanica"},
["Novato [MECANICA]"] = { _config = { gtype = "org", salario = 1500, ptr = nil, orgName = "Mecanica" }, "perm.mecanica", "perm.tunar"},

["Lider [BENNYS]"] = { _config = { gtype = "org", salario = 3500, ptr = nil, orgName = "Bennys" }, "dv.permissao", "perm.bennys", "perm.tunar", "perm.baubennys"},
["Sub-Lider [BENNYS]"] = { _config = { gtype = "org", salario = 3000, ptr = nil, orgName = "Bennys" }, "perm.bennys", "perm.tunar", "perm.baubennys"},
["Gerente [BENNYS]"] = { _config = { gtype = "org", salario = 2500, ptr = nil, orgName = "Bennys" }, "perm.bennys", "perm.tunar", "perm.baubennys"},
["Membro [BENNYS]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Bennys" }, "perm.bennys", "perm.tunar", "perm.baubennys"},
["Novato [BENNYS]"] = { _config = { gtype = "org", salario = 1500, ptr = nil, orgName = "Bennys" }, "perm.bennys", "perm.tunar"},

}

cfg.users = {
	[1] = { "developer" },
	[2] = { "developer" },
}

cfg.selectors = { }

return cfg
