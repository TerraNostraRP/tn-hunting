
### TerraNostra | DEVELOPMENT - HUNTING SCRIPT ###

Original: https://tebex.boii.dev/

### Instalar ###

1) Customizar `config.lua` ao teu gosto
3) Colocar os itens `qb-core/shared/items.lua`
4) Colocar as imagens `qb-inventory/html/images`
5) Colocar a pasta do script no server e renomear para boii-hunting
6) No server.cfg colocar 'ensure boii-hunting'

### Requesitos

QB-CORE -- https://github.com/qbcore-framework/qb-core
QB-TARGET -- https://github.com/BerkieBb/qb-target
PROGRESSBAR -- https://github.com/qbcore-framework/progressbar
QB-CITYHALL -- https://github.com/qbcore-framework/qb-cityhall
QB-POLICEJOB -- https://github.com/qbcore-framework/qb-policejob

### Como adicionar a licença de Caça ###

1) `QB-POLICEJOB/SERVER/MAIN.LUA` procurar por `if args[2] == "driver" or args[2] == "weapon" then` e substituir por: 

	if args[2] == "driver" or args[2] == "weapon" or args[2] == "hunting" then
	
2) `QB-POLICEJOB/LOCALE/"YOURLANGUAGE".LUA` procurar por `license_type = 'License Type (driver/weapon)',` e substituir pela linha abaixo

	license_type = 'Tipo de Licença (driver/weapon/hunting)',

3) `QB-CITYHALL/CONFIG.LUA` em baixo de `Config.Cityhalls` inserir:

	["huntinglicense"] = {
        label = "Licença de Caça",
		cost = 50,
		metadata = "hunting"
    },

4) `QB-CITYHALL/SERVER/MAIN.LUA` procurar por `qb-cityhall:server:requestId` e inserir o código (perto da linha: 66)

	elseif item == "huntinglicense" then -- added for hunting
		info.citizenid = Player.PlayerData.citizenid
        info.firstname = Player.PlayerData.charinfo.firstname
        info.lastname = Player.PlayerData.charinfo.lastname
        info.birthdate = Player.PlayerData.charinfo.birthdate
		info.gender = Player.PlayerData.charinfo.gender

5) `QB-CITYHALL/LOCALE/"YOURLANGUAGE".LUA` embaixo de info search inserir:

	huntinglicense = 'Licença de Caça', -- added for hunting

6) `QB-INVENTORY/HTML/JS/APP.JS` inserir o código abaixo perto da `Linha:444`

} else if (itemData.name == "huntinglicence") {
            var gender = "Man";
            if (itemData.info.gender == 1) {
                gender = "Woman";
            }
            $(".item-info-title").html("<p>" + itemData.label + "</p>");
            $(".item-info-description").html(
                "<p><strong>CSN: </strong><span>" +
                itemData.info.citizenid +
                "</span></p><p><strong>Nome: </strong><span>" +
                itemData.info.firstname +
                "</span></p><p><strong>Apelido: </strong><span>" +
                itemData.info.lastname +
                "</span></p><p><strong>Nascimento: </strong><span>" +
                itemData.info.birthdate +
                "</span></p><p><strong>Género: </strong><span>" +
                gender +
                "</span></p>"
            );

7) `QB-CORE/SERVER/PLAYER.LUA` procurar por PlayerData.metadata['licences'] e adicionar o seguinte; 

	['hunting'] = false
	
### SHARED.LUA ###
 -- Hunting
["skin_shark"]         	     = {["name"] = "skin_shark",         		["label"] = "Pele de Tubarão",    			["weight"] = 1,      ["type"] = "item",      ["image"] = "skin_shark.png",     	    ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
["skin_dolphin"]             = {["name"] = "skin_dolphin",         		["label"] = "Pele de Golfinho",    			["weight"] = 1,       ["type"] = "item",      ["image"] = "skin_dolphin.png",         ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
["skin_stingray"]         	 = {["name"] = "skin_stingray",         	["label"] = "Pele de Raia",    		["weight"] = 1,       ["type"] = "item",      ["image"] = "skin_stingray.png",     	["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
["skin_mtlion"]         	 = {["name"] = "skin_mtlion",         		["label"] = "Pele de Leão do Monte",    			["weight"] = 1,      ["type"] = "item",      ["image"] = "skin_mtlion.png",     	    ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
["skin_coyote"]         	 = {["name"] = "skin_coyote",         		["label"] = "Pele de coiote",    			["weight"] = 1,       ["type"] = "item",      ["image"] = "skin_coyote.png",     	    ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
["skin_deer"]         		 = {["name"] = "skin_deer",         		["label"] = "Pele de Veado",    			["weight"] = 1,       ["type"] = "item",      ["image"] = "skin_deer.png",     	    ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
["skin_cow"]         	 	 = {["name"] = "skin_cow",         			["label"] = "Pele de Vaca",    				["weight"] = 1,      ["type"] = "item",      ["image"] = "skin_cow.png",     	    ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
["skin_boar"]         	 	 = {["name"] = "skin_boar",         		["label"] = "Pele de javali",    			["weight"] = 1,      ["type"] = "item",      ["image"] = "skin_boar.png",     	    ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
["skin_pig"]         	 	 = {["name"] = "skin_pig",         			["label"] = "Pele de Porco",    				["weight"] = 1,       ["type"] = "item",      ["image"] = "skin_pig.png",     	    ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
["skin_rabbit"]         	 = {["name"] = "skin_rabbit",         		["label"] = "Pele de coelho",    			["weight"] = 1,       ["type"] = "item",      ["image"] = "skin_rabbit.png",     	    ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
["skin_rat"]         	 	 = {["name"] = "skin_rat",         			["label"] = "Pele de rato",    				["weight"] = 1,       ["type"] = "item",      ["image"] = "skin_rat.png",     	    ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
["skin_whale"]         		 = {["name"] = "skin_whale",         		["label"] = "Pele de baleia",    			["weight"] = 1,      ["type"] = "item",      ["image"] = "skin_whale.png",        	["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
["meat_shark"]         	     = {["name"] = "meat_shark",         		["label"] = "Carne de tubarão",   	   	    ["weight"] = 1,      ["type"] = "item",      ["image"] = "meat_shark.png",     		["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
["meat_stingray"]            = {["name"] = "meat_stingray",         	["label"] = "Carne de Raia",    		["weight"] = 1,       ["type"] = "item",      ["image"] = "meat_stingray.png",        ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
["meat_dolphin"]             = {["name"] = "meat_dolphin",         		["label"] = "Carne de Golfinho",    			["weight"] = 1,       ["type"] = "item",      ["image"] = "meat_dolphin.png",         ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
["meat_whale"]         		 = {["name"] = "meat_whale",         		["label"] = "Carne de Baleia",    			["weight"] = 1,      ["type"] = "item",      ["image"] = "meat_whale.png",        	["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
["meat_boar"]            	 = {["name"] = "meat_boar",         		["label"] = "Carne de Javali",    			["weight"] = 1,       ["type"] = "item",      ["image"] = "meat_boar.png",        	["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
["meat_chickenhawk"]         = {["name"] = "meat_chickenhawk",         	["label"] = "Carne de galinha-d'angola",    		["weight"] = 1,       ["type"] = "item",      ["image"] = "meat_chickenhawk.png",     ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
["meat_cormorant"]           = {["name"] = "meat_cormorant",         	["label"] = "Carne de corvo-marinho",    		["weight"] = 1,       ["type"] = "item",      ["image"] = "meat_cormorant.png",       ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
["meat_coyote"]              = {["name"] = "meat_coyote",         	    ["label"] = "Carne de Coiote",    			["weight"] = 1,       ["type"] = "item",      ["image"] = "meat_coyote.png",        	["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
["meat_deer"]            	 = {["name"] = "meat_deer",         	    ["label"] = "Carne de Veado",    				["weight"] = 1,       ["type"] = "item",      ["image"] = "meat_deer.png",        	["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
["meat_mtlion"]            	 = {["name"] = "meat_mtlion",         		["label"] = "Carne de Leão",    			["weight"] = 1,      ["type"] = "item",      ["image"] = "meat_mtlion.png",          ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
["meat_rabbit"]              = {["name"] = "meat_rabbit",         		["label"] = "Carne de Coelho",    			["weight"] = 1,       ["type"] = "item",      ["image"] = "meat_rabbit.png",        	["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
["meat_cow"]            	 = {["name"] = "meat_cow",         			["label"] = "Carne de Vaca",    			["weight"] = 1,      ["type"] = "item",      ["image"] = "meat_cow.png",        		["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
["meat_pig"]            	 = {["name"] = "meat_pig",         			["label"] = "Carne de Porco",    			["weight"] = 1,       ["type"] = "item",      ["image"] = "meat_pig.png",        		["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
["meat_chicken"]             = {["name"] = "meat_chicken",         		["label"] = "Carne de Frango",    			["weight"] = 1,       ["type"] = "item",      ["image"] = "meat_chicken.png",         ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
["meat_rat"]            	 = {["name"] = "meat_rat",         		 	["label"] = "Carne de Rato",    				["weight"] = 1,       ["type"] = "item",      ["image"] = "meat_rat.png",        		["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},


### Suporte ###
https://discord.gg/XYCnfyZbfV