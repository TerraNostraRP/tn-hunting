----------------------------------
--<!>-- TerraNostra | DEVELOPMENT --<!>--
----------------------------------

-- Language
Language = {
    Targeting = {
        ['animalsicon'] = 'fas fa-utensils', -- Icon used by qb-target for skinning animals visit; https://fontawesome.com to change
        ['animalslabel'] = 'Pele de Animal', -- Label used by qb-target for skinning animals
    },
	-- General
    Shared = {
        ['cancel'] = 'Ação Cancelada..', -- Notification
        ['returnmenu'] = 'Voltar', -- Menu header
        ['returnmenuicon'] = 'fa-solid fa-backward', -- Menu header icon
        ['exitmenu'] = 'Sair', -- Menu header
        ['exitmenuicon'] = 'fa-solid fa-circle-xmark' -- Menu header icon
    },
    Skinning = {
        ['noinvent'] = 'Parece que tens os bolsos cheios..', -- Notification
        ['norange'] = 'Estás fora de alcance... aproxima-te mais..', -- Notification
        ['skinning'] = 'Esfolar animais..', -- Progressbar
        ['noknife'] = 'É preciso uma faca para esfolar este animal..', -- Notification
        ['skinned'] = 'Conseguiu esfolar um animal!', -- Notification
        ['notdead'] = 'Não se pode esfolar animais que não estão mortos..' -- NotificationS
    },
    Stores = {
        Hunting = {
            ['huntingstorelabel'] = 'Loja de Caça', -- Store label
            ['huntingstoreheader'] = 'Loja de Caça', -- Menu header
            ['huntingstoreheadertext'] = 'A sua loja de caça única!', -- Menu header text
            ['huntingstoreheadericon'] = 'fa-solid fa-campground', -- Menu header icon
            ['sellhidesheader'] = 'Venda de couros e peles', -- Menu header
            ['sellhidesheadertext'] = 'Verificar os preços actuais dos couros/peles!', -- Menu header text
            ['sellhidesheadericon'] = 'fa-solid fa-dollar-sign', -- Menu header icon
            ['openstoreheader'] = 'Abrir Loja', -- Menu header
            ['openstoreheadertext'] = 'Comprar material de caça.', --Menu header text
            ['openstoreheadericon'] = 'fa-solid fa-basket-shopping', --Menu header text
            ['nolicense'] = 'Não posso vender-vos armas se não tiverem uma licença de caça..', -- Notification
            ['haslicense'] = 'Licença de caça validada!', -- Notification
            ['timer'] = 'O meu turno ainda não começou. Volta mais tarde, entre '..Config.Stores.Hunting.StartTime..' e '..Config.Stores.Hunting.EndTime..'..' -- Notification
        },
        Meat = {
            ['meatstoreheader'] = 'Avenida Xinoca', -- Menu header
            ['meatstoreheadertext'] = 'Compramos carne! Qualquer carne..', -- Menu header text
            ['meatstoreheadericon'] = 'fa-solid fa-campground', -- Menu header icon
            ['sellmeatsheader'] = 'Venda de carnes', -- Menu header
            ['sellmeatsheadertext'] = 'Verificar os preços actuais da carne!', -- Menu header text
            ['sellmeatsheadericon'] = 'fa-solid fa-dollar-sign', -- Menu header icon
            ['timer'] = 'Não precisamos de nada agora. Voltem mais tarde, entre '..Config.Stores.Meat.StartTime..' e '..Config.Stores.Meat.EndTime..'..' -- Notification
        },
        Exotic = {
            ['eadheader'] = 'Comerciante de animais exóticos', -- Menu header
            ['eadheadertext'] = 'À procura de alguns produtos escalfados?', -- Menu header text
            ['eadheadericon'] = 'fab fa-drupal', -- Menu header icon
            ['sellmeatsheader'] = 'Venda de carnes', -- Menu header
            ['sellmeatsheadertext'] = 'Verificar os preços actuais da carne!', -- Menu header text
            ['sellmeatsheadericon'] = 'fa-solid fa-dollar-sign', -- Menu header icon
            ['sellhidesheader'] = 'Venda de couros e peles', -- Menu header
            ['sellhidesheadertext'] = 'Verificar os preços actuais dos couros/peles!', -- Menu header text
            ['sellhidesheadericon'] = 'fa-solid fa-dollar-sign', -- Menu header icon
            ['timer'] = 'O meu comprador não precisa de nada neste momento. Volte mais tarde, entre '..Config.Stores.Exotic.StartTime..' e '..Config.Stores.Exotic.EndTime..'..' -- Notification
        },
        Selling = {
            ['skinheadericon'] = 'fa-solid fa-paw', -- Menu header icon
            ['ratskinheader'] = 'Pele de rato', -- Menu header
            ['ratskinheadertext'] = 'Preço: €'..Config.Stores.Selling.Prices['skin_rat']..'', -- Menu header text
            ['rabbitskinheader'] = 'Pele de coelho', -- Menu header
            ['rabbitskinheadertext'] = 'Preço: €'..Config.Stores.Selling.Prices['skin_rabbit']..'', -- Menu header text
            ['pigskinheader'] = 'Pele de porco', -- Menu header
            ['pigskinheadertext'] = 'Preço: €'..Config.Stores.Selling.Prices['skin_pig']..'', -- Menu header text
            ['cowskinheader'] = 'Couro de vaca', -- Menu header
            ['cowskinheadertext'] = 'Preço: €'..Config.Stores.Selling.Prices['skin_cow']..'', -- Menu header text
            ['deerskinheader'] = 'Couro de veado', -- Menu header
            ['deerskinheadertext'] = 'Preço: €'..Config.Stores.Selling.Prices['skin_deer']..'', -- Menu header text
            ['boarskinheader'] = 'Pele de javali', -- Menu header
            ['boarskinheadertext'] = 'Preço: €'..Config.Stores.Selling.Prices['skin_boar']..'', -- Menu header text
            ['coyoteskinheader'] = 'Pele de coiote', -- Menu header
            ['coyoteskinheadertext'] = 'Preço: €'..Config.Stores.Selling.Prices['skin_coyote']..'', -- Menu header text
            ['mtlionskinheader'] = 'Couro de Leão do Monte', -- Menu header
            ['mtlionskinheadertext'] = 'Preço: €'..Config.Stores.Selling.Prices['skin_mtlion']..'', -- Menu header text
            ['stingrayskinheader'] = 'Pele de Raia', -- Menu header
            ['stingrayskinheadertext'] = 'Preço: €'..Config.Stores.Selling.Prices['skin_stingray']..'', -- Menu header text
            ['dolphinskinheader'] = 'Pele de golfinho', -- Menu header
            ['dolphinskinheadertext'] = 'Preço: €'..Config.Stores.Selling.Prices['skin_dolphin']..'', -- Menu header text
            ['sharkskinheader'] = 'Pele de tubarão', -- Menu header
            ['sharkskinheadertext'] = 'Preço: €'..Config.Stores.Selling.Prices['skin_shark']..'', -- Menu header text
            ['whaleskinheader'] = 'Pele de baleia', -- Menu header
            ['whaleskinheadertext'] = 'Preço: €'..Config.Stores.Selling.Prices['skin_whale']..'', -- Menu header text
            ['meatheadericon'] = 'fa-solid fa-bacon', -- Menu header icon
            ['ratmeatheader'] = 'Carne de rato', -- Menu header
            ['ratmeatheadertext'] = 'Preço: €'..Config.Stores.Selling.Prices['meat_rat']..'', -- Menu header text
            ['rabbitmeatheader'] = 'Carne de Coelho', -- Menu header
            ['rabbitmeatheadertext'] = 'Preço: €'..Config.Stores.Selling.Prices['meat_rabbit']..'', -- Menu header text
            ['chickenhawkmeatheader'] = 'Carne de Galinha', -- Menu header
            ['chickenhawkmeatheadertext'] = 'Preço: €'..Config.Stores.Selling.Prices['meat_chickenhawk']..'', -- Menu header text
            ['cormorantmeatheader'] = 'Carne de galinha-dangola', -- Menu header
            ['cormorantmeatheadertext'] = 'Preço: €'..Config.Stores.Selling.Prices['meat_cormorant']..'', -- Menu header text
            ['chickenmeatheader'] = 'Carne de frango', -- Menu header
            ['chickenmeatheadertext'] = 'Preço: €'..Config.Stores.Selling.Prices['meat_chicken']..'', -- Menu header text
            ['pigmeatheader'] = 'Carne de porco', -- Menu header
            ['pigmeatheadertext'] = 'Preço: €'..Config.Stores.Selling.Prices['meat_pig']..'', -- Menu header text
            ['cowmeatheader'] = 'Carne de vaca', -- Menu header
            ['cowmeatheadertext'] = 'Preço: €'..Config.Stores.Selling.Prices['meat_cow']..'', -- Menu header text
            ['deermeatheader'] = 'Carne de veado', -- Menu header
            ['deermeatheadertext'] = 'Preço: €'..Config.Stores.Selling.Prices['meat_deer']..'', -- Menu header text
            ['boarmeatheader'] = 'Carne de javali', -- Menu header
            ['boarmeatheadertext'] = 'Preço: €'..Config.Stores.Selling.Prices['meat_boar']..'', -- Menu header text
            ['coyotemeatheader'] = 'Carne de coiote', -- Menu header
            ['coyotemeatheadertext'] = 'Preço: €'..Config.Stores.Selling.Prices['meat_coyote']..'', -- Menu header text
            ['mtlionmeatheader'] = 'Carne de leão do Monte', -- Menu header
            ['mtlionmeatheadertext'] = 'Preço: €'..Config.Stores.Selling.Prices['meat_mtlion']..'', -- Menu header text
            ['stingraymeatheader'] = 'Carne de Raia', -- Menu header
            ['stingraymeatheadertext'] = 'Preço: €'..Config.Stores.Selling.Prices['meat_stingray']..'', -- Menu header text
            ['dolphinmeatheader'] = 'Carne de golfinho', -- Menu header
            ['dolphinmeatheadertext'] = 'Preço: €'..Config.Stores.Selling.Prices['meat_dolphin']..'', -- Menu header text
            ['sharkmeatheader'] = 'Carne de tubarão', -- Menu header
            ['sharkmeatheadertext'] = 'Preço: €'..Config.Stores.Selling.Prices['meat_shark']..'', -- Menu header text
            ['whalemeatheader'] = 'Carne de baleia', -- Menu header
            ['whalemeatheadertext'] = 'Preço: €'..Config.Stores.Selling.Prices['meat_whale']..'', -- Menu header text
            ['noitems'] = 'Parece que não tens nada para vender..' -- Notification
        }
    }
}