module VideoHelper
    def set_team_icon team
        [
            ["Manchester United FC", "Ман Юн",       "mu.png"],
            ["Arsenal FC",           "Арсенал",      "arsenal.png"],
            ["Chelsea FC",           "Челси",        "chelsea.png"],
            ["Manchester City FC",   "Ман Сити",     "mc.png"],
            ["Liverpool FC",         "Ливерпуль",    "liver.png"],
            ["Tottenham Hotspur FC", "Тоттенх",     "totenhem.png"],
            ["Leicester City FC",    "Лестер",       "leicester.png"],
            ["Everton FC",           "Эвертон",      "everton.png"],
            ["West Ham United FC",   "Вест Хем",     "west_ham.png"],
            ["West Bromwich Albion FC","Вест Бром", "west_brom.png"],
            ["Sunderland AFC",       "Сандерл",      "sunderland.png"],
            ["Swansea City FC",      "Суонси",       "swansea.png"],
            ["Crystal Palace FC",    "КПЛ",          "crystal.png"],
            ["Southampton FC",       "Саунгемп",     "southampton.png"],
            ["Watford FC",           "Уотфорд",      "watford.png"],
            ["Burnley FC",           "Бернли",       "burnley.png"],
            ["Hull City FC",         "Хал Сити",     "hull_city.png"],
            ["AFC Bournemouth",      "Борнмут",      "bournem.png"],
            ["Middlesbrough FC",     "Мидлсбро",     "midl.png"],
            ["Stoke City FC",        "Сток Сити",    "stoke_city.png"],
            
            ["FC Bayern München", "Бавария",         "Bavaria.png"],
            ["Werder Bremen", "Вердер",              "werder.png"],
            ["FC Augsburg", "Аугсбург",              "Auzburg.png"],
            ["VfL Wolfsburg", "Вольфсбурга",         "wolsburg.png"],
            ["Borussia Dortmund", "Боруссия Д",      "Borussia_D.png"],
            ["1. FSV Mainz 05", "Майнц",             "Mainz.png"],
            ["Eintracht Frankfurt", "Айнтрахт",      "Aintraht.png"],
            ["FC Schalke 04", "Шальке 04",           "shalke_04.png"],
            ["Hamburger SV", "Гамбург",              "hamburg.png"],
            ["FC Ingolstadt 04", "Ингольштадт",      "ingolstad.png"],
            ["1. FC Köln", "Кельн",                  "Keln.png"],
            ["SV Darmstadt 98", "Дармштадт",         "darmshtad.png"],
            ["Bor. Mönchengladbach", "Боруссия М",   "Borussia_M.png"],
            ["Bayer Leverkusen", "Байер",            "Bayer.png"],
            ["Hertha BSC", "Герта",                  "Gerta.png"],
            ["SC Freiburg", "Фрайбург",              "Fraiburg.png"],
            ["TSG 1899 Hoffenheim", "Хоффенхайм",    "Hoffenhain.png"],
            ["Red Bull Leipzig", "Лейпциг",          "Leipzig.png"],

            ["AS Roma", "Рома",                      "roma.png"],
            ["Udinese Calcio", "Удинезе",           "udineze.png"],
            ["Juventus Turin", "Ювентус",            "juventus.png"],
            ["ACF Fiorentina", "Фиорентина",         "fiorentina.png"],
            ["AC Milan", "Милан",                    "milan.png"],
            ["Torino FC", "Торино",                  "torino.png"],
            ["AC Chievo Verona", "Кьево",            "chievo.png"],
            ["FC Internazionale Milano", "Интер",    "inter.png"],
            ["Empoli FC", "Эмполи",                  "empoli.png"],
            ["UC Sampdoria", "Сампдория",            "sampdoria.png"],
            ["Genoa CFC", "Дженоа",                  "genoa.png"],
            ["Cagliari Calcio", "Кальяри",           "cagliari.png"],
            ["Bologna FC", "Болонья",                "bologna.png"],
            ["FC Crotone", "Кротоне",                "crotone.png"],
            ["US Cittá di Palermo", "Палермо",       "palermo.png"],
            ["US Sassuolo Calcio", "Сассуоло",       "sassuolo.png"],
            ["Pescara Calcio", "Пескара",            "pescara.png"],
            ["SSC Napoli", "Наполи",                 "napoli.png"],
            ["Atalanta BC", "Аталанта",              "atalanta.png"],
            ["SS Lazio", "Лацио",                    "lazio.png"],
            
            ["Málaga CF", "Малага",                  "malaga.png"],
            ["CA Osasuna", "Осасуна",                "ossasuna.png"],
            ["RC Deportivo La Coruna", "Депортиво К","deportivo.png"],
            ["SD Eibar", "Эйбар",                    "eibar.png"],
            ["FC Barcelona", "Барселона",            "barselona.png"],
            ["Real Betis", "Реал Б",                 "real_betis.png"],
            ["Granada CF", "Гранада",                "granada.png"],
            ["Villarreal CF", "Вильяреал",           "villareal.png"],
            ["Sevilla FC", "Севилья",                "sevilla.png"],
            ["RCD Espanyol", "Эспаньол",             "espaniol.png"],
            ["Sporting Gijón", "Спортинг",           "sporting.png"],
            ["Athletic Club", "Атлетик",             "ath_bilbao.png"],
            ["Real Sociedad de Fútbol", "Реал С",    "real_sosiedad.png"],
            ["Real Madrid CF", "Реал М",             "real_m.png"],
            ["Club Atlético de Madrid", "Атлетико",  "atletico.png"],
            ["Deportivo Alavés", "Депортиво А",      "alaves.png"],
            ["RC Celta de Vigo", "Сельта",           "selta.png"],
            ["CD Leganes", "Леганес",                "leganes.png"],
            ["Valencia CF", "Валенсия",              "valensia.png"],
            ["UD Las Palmas", "Лас-Пальмас",         "las_palmas.png"],

            ["FC Basel", "Базель",                   "basel.png"],
            ["Ludogorez Rasgrad", "Лудогорец",       "ludogorets.png"], 
            ["FC Rostov", "Ростов",                  "rostov.png"],
            ["PSV Eindhoven", "ПСВ",                 "psv.png"],
            ["Celtic FC", "Селтик",                  "seltic.png"],
            ["Dynamo Kyiv", "Динамо К",              "dynamo_k.png"],
            ["SL Benfica", "Бенфика",                "benfica.png"],
            ["Besiktas JK", "Бешикташ",              "besiktash.png"],
            ["Paris Saint-Germain", "ПСЖ",           "psg.png"],
            ["Legia Warszawa", "Легия",              "legia.png"],
            ["Olympique Lyonnais", "Лион",           "lyon.png"],
            ["GNK Dinamo Zagreb", "Динамо Загр",     "dynamo_z.png"],
            ["FC Porto", "Порту",                    "porto.png"],
            ["FC Copenhagen", "Копенгаген",          "kopengagen.png"], 
            ["Club Brugge", "Брюгге",                "brugge.png"],
            ["Sporting CP", "Спортинг",              "sporting_l.png"],
            ["CSKA Moscow", "ЦСКА",                  "cska.png"],
            ["AS Monaco FC", "Монако",               "monaco.png"],

            ["Шахтер", "Шахтер",                     "shakhtar.png"],
            ["Динамо К", "Динамо К",                 "dynamo.png"],
            ["Зоря", "Зоря",                         "zorya.png"],
            ["Карпаты", "Карпаты",                   "karpaty.png"],
            ["Олимпик", "Олимпик",                   "olimpic.png"],
            ["Александрия", "Александрия",           "Oleksandriya.png"],
            ["Ворскла", "Ворскла",                   "vorskla.png"],
            ["Черноморец", "Черноморец",             "chornomorets.png"],
            ["Зирка", "Зирка",                       "zirka.png"],
            ["Сталь", "Сталь",                       "stal.png"],
            ["Волынь", "Волынь",                     "volin.png"],

            ["Спартак", "Спартак",                   "sparak.png"],
            ["Зенит", "Зенит",                       "zenit.png"],
            ["ЦСКА", "ЦСКА",                         "cska.png"],
            ["Анжи", "Анжи",                         "anzhi.png"],
            ["Локомотив", "Локомотив",               "lokomotiv.png"],
            ["Терек", "Терек",                       "terek.png"],
            ["Краснодар", "Краснодар",               "krasnodar.png"],
            ["Амкар", "Амкар",                       "amkar.png"],
            ["Ростов", "Ростов",                     "rostov.png"],
            ["Уфа", "Уфа",                           "ufa.png"],
            ["Рубин", "Рубин",                       "rubin.png"],
            ["Самара", "Самара",                     "samara.png"],
            ["Урал", "Урал",                         "ural.png"],
            ["Оренбург", "Оренбург",                 "orenburg.png"],
            ["Арсенал Т", "Арсенал Т",               "arsenal-tula.png"],
            ["Томь", "Томь",                         "tom.png"]
        ].each do |team_en_ru| 
            if team_en_ru[0] == team
                return team_en_ru[2]
            end
        end
        return "default-icon"
    end
end