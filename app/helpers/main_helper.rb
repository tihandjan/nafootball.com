module MainHelper
    
    def select_team
        [
            ["Manchester United FC", "Ман Юн",       "icon-small sprite sprite-mu"],
            ["Arsenal FC",           "Арсенал",      "icon-small sprite sprite-arsenal"],
            ["Chelsea FC",           "Челси",        "icon-small sprite sprite-chelsea"],
            ["Manchester City FC",   "Ман Сити",     "icon-small sprite sprite-mc"],
            ["Liverpool FC",         "Ливерпуль",    "icon-small sprite sprite-liver"],
            ["Tottenham Hotspur FC", "Тоттенх",     "icon-small sprite sprite-totenhem"],
            ["Leicester City FC",    "Лестер",       "icon-small sprite sprite-leicester"],
            ["Everton FC",           "Эвертон",      "icon-small sprite sprite-everton"],
            ["West Ham United FC",   "Вест Хем",     "icon-small sprite sprite-west_ham"],
            ["West Bromwich Albion FC","Вест Бром", "icon-small sprite sprite-west_brom"],
            ["Sunderland AFC",       "Сандерл",      "icon-small sprite sprite-sunderland"],
            ["Swansea City FC",      "Суонси",       "icon-small sprite sprite-swansea"],
            ["Crystal Palace FC",    "КПЛ",          "icon-small sprite sprite-crystal"],
            ["Southampton FC",       "Саунгемп",     "icon-small sprite sprite-southampton"],
            ["Watford FC",           "Уотфорд",      "icon-small sprite sprite-watford"],
            ["Burnley FC",           "Бернли",       "icon-small sprite sprite-burnley"],
            ["Hull City FC",         "Хал Сити",     "icon-small sprite sprite-hull_city"],
            ["AFC Bournemouth",      "Борнмут",      "icon-small sprite sprite-bournem"],
            ["Middlesbrough FC",     "Мидлсбро",     "icon-small sprite sprite-midl"],
            ["Stoke City FC",        "Сток Сити",    "icon-small sprite sprite-stoke_city"],
            
            ["FC Bayern München", "Бавария",         "icon-small sprite sprite-Bavaria"],
            ["Werder Bremen", "Вердер",              "icon-small sprite sprite-werder"],
            ["FC Augsburg", "Аугсбург",              "icon-small sprite sprite-Auzburg"],
            ["VfL Wolfsburg", "Вольфсбурга",         "icon-small sprite sprite-wolsburg"],
            ["Borussia Dortmund", "Боруссия Д",      "icon-small sprite sprite-Borussia_D"],
            ["1. FSV Mainz 05", "Майнц",             "icon-small sprite sprite-Mainz"],
            ["Eintracht Frankfurt", "Айнтрахт",      "icon-small sprite sprite-Aintraht"],
            ["FC Schalke 04", "Шальке 04",           "icon-small sprite sprite-shalke_04"],
            ["Hamburger SV", "Гамбург",              "icon-small sprite sprite-hamburg"],
            ["FC Ingolstadt 04", "Ингольштадт",      "icon-small sprite sprite-ingolstad"],
            ["1. FC Köln", "Кельн",                  "icon-small sprite sprite-Keln"],
            ["SV Darmstadt 98", "Дармштадт",         "icon-small sprite sprite-darmshtad"],
            ["Bor. Mönchengladbach", "Боруссия М",   "icon-small sprite sprite-Borussia_M"],
            ["Bayer Leverkusen", "Байер",            "icon-small sprite sprite-Bayer"],
            ["Hertha BSC", "Герта",                  "icon-small sprite sprite-Gerta"],
            ["SC Freiburg", "Фрайбург",              "icon-small sprite sprite-Fraiburg"],
            ["TSG 1899 Hoffenheim", "Хоффенхайм",    "icon-small sprite sprite-Hoffenhain"],
            ["Red Bull Leipzig", "Лейпциг",          "icon-small sprite sprite-Leipzig"],

            ["AS Roma", "Рома",                      "icon-small sprite sprite-roma"],
            ["Udinese Calcio", "Удинезе",           "icon-small sprite sprite-udineze"],
            ["Juventus Turin", "Ювентус",            "icon-small sprite sprite-juventus"],
            ["ACF Fiorentina", "Фиорентина",         "icon-small sprite sprite-fiorentina"],
            ["AC Milan", "Милан",                    "icon-small sprite sprite-milan"],
            ["Torino FC", "Торино",                  "icon-small sprite sprite-torino"],
            ["AC Chievo Verona", "Кьево",            "icon-small sprite sprite-chievo"],
            ["FC Internazionale Milano", "Интер",    "icon-small sprite sprite-inter"],
            ["Empoli FC", "Эмполи",                  "icon-small sprite sprite-empoli"],
            ["UC Sampdoria", "Сампдория",            "icon-small sprite sprite-sampdoria"],
            ["Genoa CFC", "Дженоа",                  "icon-small sprite sprite-genoa"],
            ["Cagliari Calcio", "Кальяри",           "icon-small sprite sprite-cagliari"],
            ["Bologna FC", "Болонья",                "icon-small sprite sprite-bologna"],
            ["FC Crotone", "Кротоне",                "icon-small sprite sprite-crotone"],
            ["US Cittá di Palermo", "Палермо",       "icon-small sprite sprite-palermo"],
            ["US Sassuolo Calcio", "Сассуоло",       "icon-small sprite sprite-sassuolo"],
            ["Pescara Calcio", "Пескара",            "icon-small sprite sprite-pescara"],
            ["SSC Napoli", "Наполи",                 "icon-small sprite sprite-napoli"],
            ["Atalanta BC", "Аталанта",              "icon-small sprite sprite-atalanta"],
            ["SS Lazio", "Лацио",                    "icon-small sprite sprite-lazio"],
            
            ["Málaga CF", "Малага",                  "icon-small sprite sprite-malaga"],
            ["CA Osasuna", "Осасуна",                "icon-small sprite sprite-ossasuna"],
            ["RC Deportivo La Coruna", "Депортиво К","icon-small sprite sprite-deportivo"],
            ["SD Eibar", "Эйбар",                    "icon-small sprite sprite-eibar"],
            ["FC Barcelona", "Барселона",            "icon-small sprite sprite-barselona"],
            ["Real Betis", "Реал Б",                 "icon-small sprite sprite-real_betis"],
            ["Granada CF", "Гранада",                "icon-small sprite sprite-granada"],
            ["Villarreal CF", "Вильяреал",           "icon-small sprite sprite-villareal"],
            ["Sevilla FC", "Севилья",                "icon-small sprite sprite-sevilla"],
            ["RCD Espanyol", "Эспаньол",             "icon-small sprite sprite-espaniol"],
            ["Sporting Gijón", "Спортинг",           "icon-small sprite sprite-sporting"],
            ["Athletic Club", "Атлетик",             "icon-small sprite sprite-ath_bilbao"],
            ["Real Sociedad de Fútbol", "Реал С",    "icon-small sprite sprite-real_sosiedad"],
            ["Real Madrid CF", "Реал М",             "icon-small sprite sprite-real_m"],
            ["Club Atlético de Madrid", "Атлетико",  "icon-small sprite sprite-atletico"],
            ["Deportivo Alavés", "Депортиво А",      "icon-small sprite sprite-alaves"],
            ["RC Celta de Vigo", "Сельта",           "icon-small sprite sprite-selta"],
            ["CD Leganes", "Леганес",                "icon-small sprite sprite-leganes"],
            ["Valencia CF", "Валенсия",              "icon-small sprite sprite-valensia"],
            ["UD Las Palmas", "Лас-Пальмас",         "icon-small sprite sprite-las_palmas"]
        ].map{ |team_en, team_ru, team_sprite| [team_ru, team_en, {'data-icon' => "select-box-sprite #{team_sprite}" }] }
    end
    
    def team_translater team
        [
            ["Manchester United FC", "Ман Юн"],
            ["Arsenal FC", "Арсенал"],
            ["Chelsea FC", "Челси"],
            ["Manchester City FC", "Ман Сити"],
            ["Liverpool FC", "Ливер"],
            ["Tottenham Hotspur FC", "Тоттенх"],
            ["Leicester City FC", "Лестер"],
            ["Everton FC", "Эвертон"],
            ["West Ham United FC", "Вест Хем"],
            ["West Bromwich Albion FC", "Вест Бр"],
            ["Sunderland AFC", "Сандерл"],
            ["Swansea City FC", "Суонси"],
            ["Crystal Palace FC", "КПЛ"],
            ["Southampton FC", "Саунгемп"],
            ["Watford FC", "Уотфорд"],
            ["Burnley FC", "Бернли"],
            ["Hull City FC", "Хал Сити"],
            ["AFC Bournemouth", "Борнмут"],
            ["Middlesbrough FC", "Мидлсбр"],
            ["Stoke City FC", "Сток Сити"],
            
            ["FC Bayern München", "Бавария"],
            ["Werder Bremen", "Вердер"],
            ["FC Augsburg", "Аугсбург"],
            ["VfL Wolfsburg", "Вольфсб"],
            ["Borussia Dortmund", "Борус Д"],
            ["1. FSV Mainz 05", "Майнц"],
            ["Eintracht Frankfurt", "Айнтрахт"],
            ["FC Schalke 04", "Шальке 04"],
            ["Hamburger SV", "Гамбург"],
            ["FC Ingolstadt 04", "Ингольш"],
            ["1. FC Köln", "Кельн"],
            ["SV Darmstadt 98", "Дармшт"],
            ["Bor. Mönchengladbach", "Борус М"],
            ["Bayer Leverkusen", "Байер"],
            ["Hertha BSC", "Герта"],
            ["SC Freiburg", "Фрайбург"],
            ["TSG 1899 Hoffenheim", "Хоффенх"],
            ["Red Bull Leipzig", "Лейпциг"],
            ["1. FC Union Berlin", "Берлин"],

            ["AS Roma", "Рома"],
            ["Udinese Calcio", "Удинезе"],
            ["Juventus Turin", "Ювентус"],
            ["ACF Fiorentina", "Фиорент"],
            ["AC Milan", "Милан"],
            ["Torino FC", "Торино"],
            ["AC Chievo Verona", "Кьево"],
            ["FC Internazionale Milano", "Интер"],
            ["Empoli FC", "Эмполи"],
            ["UC Sampdoria", "Сампдор"],
            ["Genoa CFC", "Дженоа"],
            ["Cagliari Calcio", "Кальяри"],
            ["Bologna FC", "Болонья"],
            ["FC Crotone", "Кротоне"],
            ["US Cittá di Palermo", "Палермо"],
            ["US Sassuolo Calcio", "Сассуоло"],
            ["Pescara Calcio", "Пескара"],
            ["SSC Napoli", "Наполи"],
            ["Atalanta BC", "Аталанта"],
            ["SS Lazio", "Лацио"],
            
            ["Málaga CF", "Малага"],
            ["CA Osasuna", "Осасуна"],
            ["RC Deportivo La Coruna", "Депор К"],
            ["SD Eibar", "Эйбар"],
            ["FC Barcelona", "Барса"],
            ["Real Betis", "Реал Б"],
            ["Granada CF", "Гранада"],
            ["Villarreal CF", "Вильяр"],
            ["Sevilla FC", "Севилья"],
            ["RCD Espanyol", "Эспаньол"],
            ["Sporting Gijón", "Спортинг"],
            ["Athletic Club", "Атлетик"],
            ["Real Sociedad de Fútbol", "Реал С"],
            ["Real Madrid CF", "Реал М"],
            ["Club Atlético de Madrid", "Атлетико"],
            ["Deportivo Alavés", "Депор А"],
            ["RC Celta de Vigo", "Сельта"],
            ["CD Leganes", "Леганес"],
            ["Valencia CF", "Валенсия"],
            ["UD Las Palmas", "Лас-Пал"],

            ["FC Basel", "Базель"],
            ["Ludogorez Rasgrad", "Лудогор"], 
            ["FC Rostov", "Ростов"],
            ["PSV Eindhoven", "ПСВ"],
            ["Celtic FC", "Селтик"],
            ["Dynamo Kyiv", "Динамо К"],
            ["SL Benfica", "Бенфика"],
            ["Besiktas JK", "Бешикташ"],
            ["Paris Saint-Germain", "ПСЖ"],
            ["Legia Warszawa", "Легия"],
            ["Olympique Lyonnais", "Лион"],
            ["GNK Dinamo Zagreb", "Динамо З"],
            ["FC Porto", "Порту"],
            ["FC Copenhagen", "Копенг"], 
            ["Club Brugge", "Брюгге"],
            ["Sporting CP", "Спортинг"],
            ["CSKA Moscow", "ЦСКА"],
            ["AS Monaco FC", "Монако"]
      
       ].each do |team_en_ru| 
            if team_en_ru[0] == team
                return team_en_ru[1]
            end
        end
        return team
    end
    
    def full_team_translater team
        [
            ["Manchester United FC", "Манчестер Юнайтед"],
            ["Arsenal FC", "Арсенал"],
            ["Chelsea FC", "Челси"],
            ["Manchester City FC", "Манчестер Сити"],
            ["Liverpool FC", "Ливерпуль"],
            ["Tottenham Hotspur FC", "Тоттенхем"],
            ["Leicester City FC", "Лестер"],
            ["Everton FC", "Эвертон"],
            ["West Ham United FC", "Вест Хем"],
            ["West Bromwich Albion FC", "Вест Бромвич"],
            ["Sunderland AFC", "Сандерленд"],
            ["Swansea City FC", "Суонси"],
            ["Crystal Palace FC", "КПЛ"],
            ["Southampton FC", "Саунгемптон"],
            ["Watford FC", "Уотфорд"],
            ["Burnley FC", "Бернли"],
            ["Hull City FC", "Хал Сити"],
            ["AFC Bournemouth", "Борнмут"],
            ["Middlesbrough FC", "Миддлсбро"],
            ["Stoke City FC", "Сток Сити"],
            
            ["FC Bayern München", "Бавария"],
            ["Werder Bremen", "Вердер"],
            ["FC Augsburg", "Аугсбург"],
            ["VfL Wolfsburg", "Вольфсбурга"],
            ["Borussia Dortmund", "Боруссия Д"],
            ["1. FSV Mainz 05", "Майнц"],
            ["Eintracht Frankfurt", "Айнтрахт"],
            ["FC Schalke 04", "Шальке 04"],
            ["Hamburger SV", "Гамбург"],
            ["FC Ingolstadt 04", "Ингольштадт"],
            ["1. FC Köln", "Кельн"],
            ["SV Darmstadt 98", "Дармштадт"],
            ["Bor. Mönchengladbach", "Боруссия М"],
            ["Bayer Leverkusen", "Байер"],
            ["Hertha BSC", "Герта"],
            ["SC Freiburg", "Фрайбург"],
            ["TSG 1899 Hoffenheim", "Хоффенхайм"],
            ["Red Bull Leipzig", "Лейпциг"],

            ["AS Roma", "Рома"],
            ["Udinese Calcio", "Удинезе"],
            ["Juventus Turin", "Ювентус"],
            ["ACF Fiorentina", "Фиорентина"],
            ["AC Milan", "Милан"],
            ["Torino FC", "Торино"],
            ["AC Chievo Verona", "Кьево"],
            ["FC Internazionale Milano", "Интер"],
            ["Empoli FC", "Эмполи"],
            ["UC Sampdoria", "Сампдория"],
            ["Genoa CFC", "Дженоа"],
            ["Cagliari Calcio", "Кальяри"],
            ["Bologna FC", "Болонья"],
            ["FC Crotone", "Кротоне"],
            ["US Cittá di Palermo", "Палермо"],
            ["US Sassuolo Calcio", "Сассуоло"],
            ["Pescara Calcio", "Пескара"],
            ["SSC Napoli", "Наполи"],
            ["Atalanta BC", "Аталанта"],
            ["SS Lazio", "Лацио"],
            
            ["Málaga CF", "Малага"],
            ["CA Osasuna", "Осасуна"],
            ["RC Deportivo La Coruna", "Депортиво Коруна"],
            ["SD Eibar", "Эйбар"],
            ["FC Barcelona", "Барселона"],
            ["Real Betis", "Реал Бетис"],
            ["Granada CF", "Гранада"],
            ["Villarreal CF", "Вильяреал"],
            ["Sevilla FC", "Севилья"],
            ["RCD Espanyol", "Эспаньол"],
            ["Sporting Gijón", "Спортинг Хихон"],
            ["Athletic Club", "Атлетик"],
            ["Real Sociedad de Fútbol", "Реал Сосьедад"],
            ["Real Madrid CF", "Реал Мадрид"],
            ["Club Atlético de Madrid", "Атлетико Мадрид"],
            ["Deportivo Alavés", "Депортиво А"],
            ["RC Celta de Vigo", "Сельта"],
            ["CD Leganes", "Леганес"],
            ["Valencia CF", "Валенсия"],
            ["UD Las Palmas", "Лас-Пальмас"],

            ["FC Basel", "Базель"],
            ["Ludogorez Rasgrad", "Лудогорец"], 
            ["FC Rostov", "Ростов"],
            ["PSV Eindhoven", "ПСВ"],
            ["Celtic FC", "Селтик"],
            ["Dynamo Kyiv", "Динамо К"],
            ["SL Benfica", "Бенфика"],
            ["Besiktas JK", "Бешикташ"],
            ["Paris Saint-Germain", "ПСЖ"],
            ["Legia Warszawa", "Легия"],
            ["Olympique Lyonnais", "Лион"],
            ["GNK Dinamo Zagreb", "Динамо Загр"],
            ["FC Porto", "Порту"],
            ["FC Copenhagen", "Копенгаген"], 
            ["Club Brugge", "Брюгге"],
            ["Sporting CP", "Спортинг"],
            ["CSKA Moscow", "ЦСКА"],
            ["AS Monaco FC", "Монако"]
        ].each do |team_en_ru| 
            if team_en_ru[0] == team
                return team_en_ru[1]
            end
        end
        return team
    end
    
    def show_team_icon team
        [
            ["Manchester United FC", "Ман Юн",       "sprite sprite-mu"],
            ["Arsenal FC",           "Арсенал",      "sprite sprite-arsenal"],
            ["Chelsea FC",           "Челси",        "sprite sprite-chelsea"],
            ["Manchester City FC",   "Ман Сити",     "sprite sprite-mc"],
            ["Liverpool FC",         "Ливерпуль",    "sprite sprite-liver"],
            ["Tottenham Hotspur FC", "Тоттенх",     "sprite sprite-totenhem"],
            ["Leicester City FC",    "Лестер",       "sprite sprite-leicester"],
            ["Everton FC",           "Эвертон",      "sprite sprite-everton"],
            ["West Ham United FC",   "Вест Хем",     "sprite sprite-west_ham"],
            ["West Bromwich Albion FC","Вест Бром", "sprite sprite-west_brom"],
            ["Sunderland AFC",       "Сандерл",      "sprite sprite-sunderland"],
            ["Swansea City FC",      "Суонси",       "sprite sprite-swansea"],
            ["Crystal Palace FC",    "КПЛ",          "sprite sprite-crystal"],
            ["Southampton FC",       "Саунгемп",     "sprite sprite-southampton"],
            ["Watford FC",           "Уотфорд",      "sprite sprite-watford"],
            ["Burnley FC",           "Бернли",       "sprite sprite-burnley"],
            ["Hull City FC",         "Хал Сити",     "sprite sprite-hull_city"],
            ["AFC Bournemouth",      "Борнмут",      "sprite sprite-bournem"],
            ["Middlesbrough FC",     "Мидлсбро",     "sprite sprite-midl"],
            ["Stoke City FC",        "Сток Сити",    "sprite sprite-stoke_city"],
            
            ["FC Bayern München", "Бавария",         "sprite sprite-Bavaria"],
            ["Werder Bremen", "Вердер",              "sprite sprite-werder"],
            ["FC Augsburg", "Аугсбург",              "sprite sprite-Auzburg"],
            ["VfL Wolfsburg", "Вольфсбурга",         "sprite sprite-wolsburg"],
            ["Borussia Dortmund", "Боруссия Д",      "sprite sprite-Borussia_D"],
            ["1. FSV Mainz 05", "Майнц",             "sprite sprite-Mainz"],
            ["Eintracht Frankfurt", "Айнтрахт",      "sprite sprite-Aintraht"],
            ["FC Schalke 04", "Шальке 04",           "sprite sprite-shalke_04"],
            ["Hamburger SV", "Гамбург",              "sprite sprite-hamburg"],
            ["FC Ingolstadt 04", "Ингольштадт",      "sprite sprite-ingolstad"],
            ["1. FC Köln", "Кельн",                  "sprite sprite-Keln"],
            ["SV Darmstadt 98", "Дармштадт",         "sprite sprite-darmshtad"],
            ["Bor. Mönchengladbach", "Боруссия М",   "sprite sprite-Borussia_M"],
            ["Bayer Leverkusen", "Байер",            "sprite sprite-Bayer"],
            ["Hertha BSC", "Герта",                  "sprite sprite-Gerta"],
            ["SC Freiburg", "Фрайбург",              "sprite sprite-Fraiburg"],
            ["TSG 1899 Hoffenheim", "Хоффенхайм",    "sprite sprite-Hoffenhain"],
            ["Red Bull Leipzig", "Лейпциг",          "sprite sprite-Leipzig"],

            ["AS Roma", "Рома",                      "sprite sprite-roma"],
            ["Udinese Calcio", "Удинезе",           "sprite sprite-udineze"],
            ["Juventus Turin", "Ювентус",            "sprite sprite-juventus"],
            ["ACF Fiorentina", "Фиорентина",         "sprite sprite-fiorentina"],
            ["AC Milan", "Милан",                    "sprite sprite-milan"],
            ["Torino FC", "Торино",                  "sprite sprite-torino"],
            ["AC Chievo Verona", "Кьево",            "sprite sprite-chievo"],
            ["FC Internazionale Milano", "Интер",    "sprite sprite-inter"],
            ["Empoli FC", "Эмполи",                  "sprite sprite-empoli"],
            ["UC Sampdoria", "Сампдория",            "sprite sprite-sampdoria"],
            ["Genoa CFC", "Дженоа",                  "sprite sprite-genoa"],
            ["Cagliari Calcio", "Кальяри",           "sprite sprite-cagliari"],
            ["Bologna FC", "Болонья",                "sprite sprite-bologna"],
            ["FC Crotone", "Кротоне",                "sprite sprite-crotone"],
            ["US Cittá di Palermo", "Палермо",       "sprite sprite-palermo"],
            ["US Sassuolo Calcio", "Сассуоло",       "sprite sprite-sassuolo"],
            ["Pescara Calcio", "Пескара",            "sprite sprite-pescara"],
            ["SSC Napoli", "Наполи",                 "sprite sprite-napoli"],
            ["Atalanta BC", "Аталанта",              "sprite sprite-atalanta"],
            ["SS Lazio", "Лацио",                    "sprite sprite-lazio"],
            
            ["Málaga CF", "Малага",                  "sprite sprite-malaga"],
            ["CA Osasuna", "Осасуна",                "sprite sprite-ossasuna"],
            ["RC Deportivo La Coruna", "Депортиво К","sprite sprite-deportivo"],
            ["SD Eibar", "Эйбар",                    "sprite sprite-eibar"],
            ["FC Barcelona", "Барселона",            "sprite sprite-barselona"],
            ["Real Betis", "Реал Б",                 "sprite sprite-real_betis"],
            ["Granada CF", "Гранада",                "sprite sprite-granada"],
            ["Villarreal CF", "Вильяреал",           "sprite sprite-villareal"],
            ["Sevilla FC", "Севилья",                "sprite sprite-sevilla"],
            ["RCD Espanyol", "Эспаньол",             "sprite sprite-espaniol"],
            ["Sporting Gijón", "Спортинг",           "sprite sprite-sporting"],
            ["Athletic Club", "Атлетик",             "sprite sprite-ath_bilbao"],
            ["Real Sociedad de Fútbol", "Реал С",    "sprite sprite-real_sosiedad"],
            ["Real Madrid CF", "Реал М",             "sprite sprite-real_m"],
            ["Club Atlético de Madrid", "Атлетико",  "sprite sprite-atletico"],
            ["Deportivo Alavés", "Депортиво А",      "sprite sprite-alaves"],
            ["RC Celta de Vigo", "Сельта",           "sprite sprite-selta"],
            ["CD Leganes", "Леганес",                "sprite sprite-leganes"],
            ["Valencia CF", "Валенсия",              "sprite sprite-valensia"],
            ["UD Las Palmas", "Лас-Пальмас",         "sprite sprite-las_palmas"],

            ["FC Basel", "Базель",                   "sprite sprite-basel"],
            ["Ludogorez Rasgrad", "Лудогорец",       "sprite sprite-ludogorets"], 
            ["FC Rostov", "Ростов",                  "sprite sprite-rostov"],
            ["PSV Eindhoven", "ПСВ",                 "sprite sprite-psv"],
            ["Celtic FC", "Селтик",                  "sprite sprite-seltic"],
            ["Dynamo Kyiv", "Динамо К",              "sprite sprite-dynamo_k"],
            ["SL Benfica", "Бенфика",                "sprite sprite-benfica"],
            ["Besiktas JK", "Бешикташ",              "sprite sprite-besiktash"],
            ["Paris Saint-Germain", "ПСЖ",           "sprite sprite-psg"],
            ["Legia Warszawa", "Легия",              "sprite sprite-legia"],
            ["Olympique Lyonnais", "Лион",           "sprite sprite-lyon"],
            ["GNK Dinamo Zagreb", "Динамо Загр",     "sprite sprite-dynamo_z"],
            ["FC Porto", "Порту",                    "sprite sprite-porto"],
            ["FC Copenhagen", "Копенгаген",          "sprite sprite-kopengagen"], 
            ["Club Brugge", "Брюгге",                "sprite sprite-brugge"],
            ["Sporting CP", "Спортинг",              "sprite sprite-sporting_l"],
            ["CSKA Moscow", "ЦСКА",                  "sprite sprite-cska"],
            ["AS Monaco FC", "Монако",               "sprite sprite-monaco"]
        ].each do |team_en_ru| 
            if team_en_ru[0] == team
                return team_en_ru[2]
            end
        end
        return "sprite sprite-default_icon"
    end
    
    def in_play_or_finished team
        if (team.date..team.date+120.minutes).cover?(Time.current)
            '#e90052'
        elsif Time.current > team.date+120.minutes
            '#243843'
        end
    end
    
    def show_match_day team
        if team['date'].to_time.strftime('%d %b %Y') == (Time.current.to_time+3.hour).strftime('%d %b %Y')
            team['matchday']
        end
    end
    
    def change_row_color number
        if number % 2 == 0
            'tr_second'
        else
            'tr_first'
        end
    end
    
    def change_blank current_user
        cookies[:user_team].blank? ? "Выберите команду" : "Поменять команду"
    end
    
    def time_or_result team
        if team.status == 'FINISHED' || team.status == "IN_PLAY"
            if team.goalsHomeTeam == '-' || team.goalsAwayTeam == '-'
                '?' + ' - ' + '?'
            else
                team.goalsHomeTeam.to_s + " - " + team.goalsAwayTeam.to_s
            end
        else
            if (team.date..team.date+120.minutes).cover?(Time.current)
                '?' + ' - ' + '?'
            else
                team.date.strftime('%H:%M')
            end
        end
    end
    
    def show_date_of_the_game team
        "<tr><td><i>#{Russian::strftime(team.date, '%d %b %A')}</i></td><td></td><td></td><td></td><td></td></tr>"
    end
    
    def select_apl_teams
        [
            ["Manchester United FC", "Ман Юн",       "icon-small sprite sprite-mu"],
            ["Arsenal FC",           "Арсенал",      "icon-small sprite sprite-arsenal"],
            ["Chelsea FC",           "Челси",        "icon-small sprite sprite-chelsea"],
            ["Manchester City FC",   "Ман Сити",     "icon-small sprite sprite-mc"],
            ["Liverpool FC",         "Ливерпуль",    "icon-small sprite sprite-liver"],
            ["Tottenham Hotspur FC", "Тоттенх",     "icon-small sprite sprite-totenhem"],
            ["Leicester City FC",    "Лестер",       "icon-small sprite sprite-leicester"],
            ["Everton FC",           "Эвертон",      "icon-small sprite sprite-everton"],
            ["West Ham United FC",   "Вест Хем",     "icon-small sprite sprite-west_ham"],
            ["West Bromwich Albion FC","Вест Бром", "icon-small sprite sprite-west_brom"],
            ["Sunderland AFC",       "Сандерл",      "icon-small sprite sprite-sunderland"],
            ["Swansea City FC",      "Суонси",       "icon-small sprite sprite-swansea"],
            ["Crystal Palace FC",    "КПЛ",          "icon-small sprite sprite-crystal"],
            ["Southampton FC",       "Саунгемп",     "icon-small sprite sprite-southampton"],
            ["Watford FC",           "Уотфорд",      "icon-small sprite sprite-watford"],
            ["Burnley FC",           "Бернли",       "icon-small sprite sprite-burnley"],
            ["Hull City FC",         "Хал Сити",     "icon-small sprite sprite-hull_city"],
            ["AFC Bournemouth",      "Борнмут",      "icon-small sprite sprite-bournem"],
            ["Middlesbrough FC",     "Мидлсбро",     "icon-small sprite sprite-midl"],
            ["Stoke City FC",        "Сток Сити",    "icon-small sprite sprite-stoke_city"]
        ].map{ |team_en, team_ru, team_sprite| [team_ru, team_en, {'data-icon' => "select-box-sprite #{team_sprite}" }] }
            
    end
    
    def select_bundesliga_teams
        [
            ["FC Bayern München", "Бавария",         "icon-small sprite sprite-Bavaria"],
            ["Borussia Dortmund", "Боруссия Д",      "icon-small sprite sprite-Borussia_D"],
            ["FC Schalke 04", "Шальке 04",           "icon-small sprite sprite-shalke_04"],
            ["Bayer Leverkusen", "Байер",            "icon-small sprite sprite-Bayer"],
            ["Werder Bremen", "Вердер",              "icon-small sprite sprite-werder"],
            ["VfL Wolfsburg", "Вольфсбурга",         "icon-small sprite sprite-wolsburg"],
            ["FC Augsburg", "Аугсбург",              "icon-small sprite sprite-Auzburg"],
            ["1. FSV Mainz 05", "Майнц",             "icon-small sprite sprite-Mainz"],
            ["Eintracht Frankfurt", "Айнтрахт",      "icon-small sprite sprite-Aintraht"],
            ["Hamburger SV", "Гамбург",              "icon-small sprite sprite-hamburg"],
            ["FC Ingolstadt 04", "Ингольштадт",      "icon-small sprite sprite-ingolstad"],
            ["1. FC Köln", "Кельн",                  "icon-small sprite sprite-Keln"],
            ["SV Darmstadt 98", "Дармштадт",         "icon-small sprite sprite-darmshtad"],
            ["Bor. Mönchengladbach", "Боруссия М",   "icon-small sprite sprite-Borussia_M"],
            ["Hertha BSC", "Герта",                  "icon-small sprite sprite-Gerta"],
            ["SC Freiburg", "Фрайбург",              "icon-small sprite sprite-Fraiburg"],
            ["TSG 1899 Hoffenheim", "Хоффенхайм",    "icon-small sprite sprite-Hoffenhain"],
            ["Red Bull Leipzig", "Лейпциг",          "icon-small sprite sprite-Leipzig"]
        ].map{ |team_en, team_ru, team_sprite| [team_ru, team_en, {'data-icon' => "select-box-sprite #{team_sprite}" }] }
    end
    
    def select_laliga_teams
        [    
            ["FC Barcelona", "Барселона",            "icon-small sprite sprite-barselona"],
            ["Real Madrid CF", "Реал М",             "icon-small sprite sprite-real_m"],
            ["Club Atlético de Madrid", "Атлетико",  "icon-small sprite sprite-atletico"],
            ["Sevilla FC", "Севилья",                "icon-small sprite sprite-sevilla"],
            ["Valencia CF", "Валенсия",              "icon-small sprite sprite-valensia"],
            ["Villarreal CF", "Вильяреал",           "icon-small sprite sprite-villareal"],
            ["RC Deportivo La Coruna", "Депортиво К","icon-small sprite sprite-deportivo"],
            ["RCD Espanyol", "Эспаньол",             "icon-small sprite sprite-espaniol"],
            ["Athletic Club", "Атлетик",             "icon-small sprite sprite-ath_bilbao"],
            ["Real Betis", "Реал Б",                 "icon-small sprite sprite-real_betis"],
            ["CA Osasuna", "Осасуна",                "icon-small sprite sprite-ossasuna"],
            ["SD Eibar", "Эйбар",                    "icon-small sprite sprite-eibar"],
            ["Granada CF", "Гранада",                "icon-small sprite sprite-granada"],
            ["Sporting Gijón", "Спортинг",           "icon-small sprite sprite-sporting"],
            ["Real Sociedad de Fútbol", "Реал С",    "icon-small sprite sprite-real_sosiedad"],
            ["Deportivo Alavés", "Депортиво А",      "icon-small sprite sprite-alaves"],
            ["RC Celta de Vigo", "Сельта",           "icon-small sprite sprite-selta"],
            ["CD Leganes", "Леганес",                "icon-small sprite sprite-leganes"],
            ["Málaga CF", "Малага",                  "icon-small sprite sprite-malaga"],
            ["UD Las Palmas", "Лас-Пальмас",         "icon-small sprite sprite-las_palmas"]
        ].map{ |team_en, team_ru, team_sprite| [team_ru, team_en, {'data-icon' => "select-box-sprite #{team_sprite}" }] }
    end
    
    def select_seria_teams
        [
            ["Juventus Turin", "Ювентус",            "icon-small sprite sprite-juventus"],
            ["SSC Napoli", "Наполи",                 "icon-small sprite sprite-napoli"],
            ["AS Roma", "Рома",                      "icon-small sprite sprite-roma"],
            ["AC Milan", "Милан",                    "icon-small sprite sprite-milan"],
            ["FC Internazionale Milano", "Интер",    "icon-small sprite sprite-inter"],
            ["ACF Fiorentina", "Фиорентина",         "icon-small sprite sprite-fiorentina"],
            ["Udinese Calcio", "Удинезе",           "icon-small sprite sprite-udineze"],
            ["SS Lazio", "Лацио",                    "icon-small sprite sprite-lazio"],
            ["Torino FC", "Торино",                  "icon-small sprite sprite-torino"],
            ["AC Chievo Verona", "Кьево",            "icon-small sprite sprite-chievo"],
            ["Empoli FC", "Эмполи",                  "icon-small sprite sprite-empoli"],
            ["UC Sampdoria", "Сампдория",            "icon-small sprite sprite-sampdoria"],
            ["Genoa CFC", "Дженоа",                  "icon-small sprite sprite-genoa"],
            ["Cagliari Calcio", "Кальяри",           "icon-small sprite sprite-cagliari"],
            ["Bologna FC", "Болонья",                "icon-small sprite sprite-bologna"],
            ["FC Crotone", "Кротоне",                "icon-small sprite sprite-crotone"],
            ["US Cittá di Palermo", "Палермо",       "icon-small sprite sprite-palermo"],
            ["US Sassuolo Calcio", "Сассуоло",       "icon-small sprite sprite-sassuolo"],
            ["Pescara Calcio", "Пескара",            "icon-small sprite sprite-pescara"],
            ["Atalanta BC", "Аталанта",              "icon-small sprite sprite-atalanta"]
        ].map{ |team_en, team_ru, team_sprite| [team_ru, team_en, {'data-icon' => "select-box-sprite #{team_sprite}" }] }
    end

    def change_prompt cookie
        if cookie.blank?
            'Выбрать Клуб'
        else
            'Сменить Клуб'
        end
    end
    
      def set_title(title = '')
            basic_title = 'Последние новости АПЛ, Серия А, Ла Лига, Бундеслиги, Лига Чемпионов, футбол онлайн'
            if title.empty?
                  basic_title
            else
                  title
            end
      end

      def avatar_to_comments user=nil
          if user != nil && (user.avatar.presence || user.avatarc.presence) 
              user.avatar.presence ? (image_tag current_user.avatar.url(:thumb)) : (image_tag user.avatarc)
          else
              (image_tag "/images/default-avatar.png")
          end
      end

      def carma user
          carma = user.votes.up.size - user.votes.down.size
          sprintf("%+d", carma)
      end
end
