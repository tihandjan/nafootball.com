class LeaguesController < ApplicationController

  # before_action :set_games_table_data
  before_action :set_onlain_fixtures, only: [:show]

  def index
    redirect_to root_path
  end

  def show
    @news = Article.order('created_at DESC').where(category: 'news', league: params[:id]).first(20)
    @articles = Article.order('created_at DESC').where(category: 'article', league: params[:id]).first(2)
    @videos = Video.order('created_at DESC').where(league: params[:id], category: 'full').first(5)
    @videos_short = Video.order('created_at DESC').where(league: params[:id], category: 'overview').first(6)
    @league = params[:id]
    if params[:id] == 'seria-a'
      @table_data = Table.where(league: params[:id])
      @table_name = 'Серия А Таблица'
      @h2 = 'Итальянский футбол'
      set_meta_tags title: 'Чемпионат Италии по футболу, онлайн трансляции',
                    site: 'nafootball',
                    reverse: true,
                    description: 'Серия А, последние новости, таблица, результаты матчей, смотреть в записи, расписание, краткие обзоры, трансферы на nafootball',
                    keywords: "Футбол, Новости, Италия, Серия, A, результаты, онлайн, видео, футбол, AC, Милан, Интер, Бари, Болонья, Брешиа, Кальяри, Катания, Чезена, Кьево, Фиорентина, Дженоа, Ювентус, Лацио, Лечче, Неаполь, Палермо, Парма, Рома, Сампдория, Удинезе, Робиньо, Ибрагимович, Милито, Леонардо, Мотта, сборной Италии, дель Пьеро, Буффон, Санчес, Это'О, Силва, Лусио, Тотти",
                    canonical: league_url('seria-a')

      render 'shared/index_league'
    elsif params[:id] == 'bundesliga'
      @table_data = Table.where(league: params[:id])
      @table_name = 'Таблица Бундеслиги'
      @h2 = 'Немецкий футбол'
      set_meta_tags title: "Чемпионат Германии по футболу, онлайн трансляции",
                    site: "nafootball",
                    reverse: true,
                    description: "Бундеслига, последние новости, таблица , результаты матчей, смотреть в записи, расписание, краткие обзоры, трансферы на nafootball",
                    keywords: "Футбол, Новости, Бундеслига, результаты, футбол, онлайн, видео, Хоффенхайм, Байер, Бавария, Байер, Мюнхен, Дортмунд, Франкфурт, Кайзерслаутерн, Кельн, Нюрнберг",
                    canonical: league_url('bundesliga')
                    
      render 'shared/index_league'
    elsif params[:id] == 'laliga'
      @table_data = Table.where(league: params[:id])
      @table_name = 'Таблица Ла Лиги'
      @h2 = 'Испанский футбол'
      set_meta_tags title: "Чемпионат Испании по футболу, онлайн трансляции",
                    site: "nafootball",
                    reverse: true,
                    description: "Ла Лига, последние новости, таблица , результаты матчей, смотреть в записи, расписание, краткие обзоры, трансферы на nafootball",
                    keywords: "Футбол, Ла, Лига, Примера, Испания, испанский, Барселона, Реал, Мадрид, Месси, Кака, Роналду, Хави, Иньеста, Валенсия, Новости, Футбол, видео, Атлетико, Альмерия, Бильбао, Депортиво, Эспаньол, Хетафе, Геркулес, Леванте, Малага, Осасуна, Сарагоса, Севилья, Вильярреал, Росси, Форлан, Моуринью",
                    canonical: league_url('laliga')

      render 'shared/index_league'
    elsif params[:id] == 'chempions-league'
      @table_data = Table.where(league: params[:id])
      @table_name = 'Таблица Лиги Чемпионов'
      @h2 = 'Европейский футбол'
      set_meta_tags title: "Лига Чемпионов, онлайн трансляции",
                    site: "nafootball",
                    reverse: true,
                    description: "Лига Чемпионов, последние новости , таблица , результаты матчей, смотреть в записи, расписание, краткие обзоры, трансферы на nafootball",
                    keywords: "футбол, футбол, УЕФА, Лига чемпионов, челси, Рим, бордо, Манчестер Юнайтед, Вильярреал, Интер, Вердером, Панатинаикос, Бавария, Фиорентина, лион, барселона, шахтер донецк, базеле, арсенал, порто, динамо киев, Атлетико, мадрид, ливерпуль, Ювентус, зенит петербург",
                    canonical: league_url('chempions-league')

      render 'shared/index_league'
    elsif params[:id] == 'apl'
      @table_data = Table.where(league: params[:id])
      @table_name = 'Таблица Английской Премьер Лиги'
      @h2 = 'Английский футбол'
      set_meta_tags title: "Чемпионат Англии по футболу, онлайн трансляции",
                    site: "nafootball",
                    reverse: true,
                    description: "Английская Премьер Лига, последние новости апл, таблица, результаты матчей, смотреть в записи, расписание, краткие обзоры, трансферы на nafootball",
                    keywords: "Спорт, Футбол, Новости, премьер, лига, результаты, таблицы, Арсенал, Астон Вилла, Бирмингем Сити, Блэкберн, Болтон, Бернли, Челси, Эвертон, Фулхэм, Халл Сити, Ливерпуль, Манчестер Сити, Манчестер Юнайтед,  Портсмут, Сток Сити, Сандерленд, Тоттенхэм, шпоры, Вест Хэм, Уиган, Вулверхэмптон, смотреть, записи, онлайн",
                    canonical: league_url('apl')

      render 'shared/index_league'
    elsif params[:id] == 'ukraine'
      @table_data = Table.where(league: params[:id]).order('points DESC')
      @table_name = 'Таблица Украинской Премьер Лиги'
      @h2 = 'Украинский футбол'
      set_meta_tags title: "Чемпионат Украины по футболу, онлайн трансляции",
                    site: "nafootball",
                    reverse: true,
                    description: "Украинская Премьер Лига, последние новости УПЛ, таблица, результаты матчей, смотреть в записи, расписание, краткие обзоры, трансферы на nafootball",
                    keywords: "Спорт, Футбол, Новости, премьер, лига, результаты, таблицы, Шахтер, Динамо, Киев, Заря, Днепр, Металлист, Олимпик, Черноморец, Карпаты, Ворскла, Зирка, Олександрия, Волынь, смотреть, записи, онлайн",
                    canonical: league_url('ukraine')

      render 'shared/index_league'
    elsif params[:id] == 'russian'
      @table_data = Table.where(league: params[:id]).order('points DESC')
      @table_name = 'Таблица Российской Премьер Лиги'
      @h2 = 'Российский футбол'
      set_meta_tags title: "Чемпионат России по футболу, онлайн трансляции",
                    site: "nafootball",
                    reverse: true,
                    description: "Российская Премьер Лига, последние новости РФПЛ, таблица, результаты матчей, смотреть в записи, расписание, краткие обзоры, трансферы на nafootball",
                    keywords: "Спорт, Футбол, Новости, премьер, лига, результаты, таблицы, Зенит, ЦСКА, Спартак, Локомотив, Ростов, Анжи, Краснодар, Динамо, Москва, Уфа, Терек, смотреть, записи, онлайн",
                    canonical: league_url('russian')

      render 'shared/index_league'
    else
      redirect_to root_path
    end
  end

  def table
    @news = Article.order('created_at DESC').where(category: 'news').first(12)
    @league = params[:id]
    @is_not_index = true

    if params[:id] == 'chempions-league'
      @table = Table.where(league: params[:id])
    elsif params[:id] == 'apl' || params[:id] == 'laliga' || params[:id] == 'bundesliga' || params[:id] == 'seria-a' || params[:id] == 'ukraine' || params[:id] == 'russian'
      @table = Table.where(league: params[:id]).order('points DESC')
    else
      redirect_to root_path
    end

    if params[:id] == 'apl'
      @h1_table = 'Таблица АПЛ'
      set_meta_tags title: "Таблица Чемпионата Англии, турнирное положение",
                    site: "nafootball",
                    reverse: true,
                    description: "Таблица АПЛ, турнирное положение, сезон 2016/2017 и многое другое от nafootball.com",
                    keywords: "Спорт, Футбол, Новости, премьер, лига, результаты, таблицы, Арсенал, Астон Вилла, Бирмингем Сити, Блэкберн, Болтон, Бернли, Челси, Эвертон, Фулхэм, Халл Сити, Ливерпуль, Манчестер Сити, Манчестер Юнайтед,  Портсмут, Сток Сити, Сандерленд, Тоттенхэм, шпоры, Вест Хэм, Уиган, Вулверхэмптон, смотреть, записи, онлайн",
                    canonical: table_league_url('apl')
    elsif params[:id] == 'laliga'
      @h1_table = 'Таблица Ла Лиги'
      set_meta_tags title: "Таблица Чемпионата Испании, турнирное положение",
                    site: "nafootball",
                    reverse: true,
                    description: "Таблица Ла Лиги, турнирное положение, сезон 2016/2017 и многое другое от nafootball.com",
                    keywords: "Футбол, Ла, Лига, Примера, Испания, испанский, Барселона, Реал, Мадрид, Месси, Кака, Роналду, Хави, Иньеста, Валенсия, Новости, Футбол, видео, Атлетико, Альмерия, Бильбао, Депортиво, Эспаньол, Хетафе, Геркулес, Леванте, Малага, Осасуна, Сарагоса, Севилья, Вильярреал, Росси, Форлан, Моуринью,",
                    canonical: table_league_url('laliga')
    elsif  params[:id] == 'bundesliga'
      @h1_table = 'Таблица Бундеслиги'
      set_meta_tags title: "Таблица Чемпионата Германии, турнирное положение",
                    site: "nafootball",
                    reverse: true,
                    description: "Таблица Бундеслиги, турнирное положение, сезон 2016/2017 и многое другое от nafootball.com",
                    keywords: "Футбол, Новости, Бундеслига, результаты, футбол, онлайн, видео, Хоффенхайм, Байер, Бавария, Байер, Мюнхен, Дортмунд, Франкфурт, Кайзерслаутерн, Кельн, Нюрнберг,",
                    canonical: table_league_url('bundesliga')
    elsif params[:id] == 'chempions-league'
      @h1_table = 'Таблица Лиги Чемпионов'
      set_meta_tags title: "Таблица Лиги Чемпионов, турнирное положение",
                    site: "nafootball",
                    reverse: true,
                    description: "Таблица Лиги Чемпионов, турнирное положение, сезон 2016/2017 и многое другое от nafootball.com",
                    keywords: "футбол, футбол, УЕФА, Лига чемпионов, челси, Рим, бордо, Манчестер Юнайтед, Вильярреал, Интер, Вердером, Панатинаикос, Бавария, Фиорентина, лион, барселона, шахтер донецк, базеле, арсенал, порто, динамо киев, Атлетико, мадрид, ливерпуль, Ювентус, зенит петербург",
                    canonical: table_league_url('chempions-league')
    elsif params[:id] == 'seria-a'
      @h1_table = 'Таблица Серии А'
      set_meta_tags title: "Таблица Чемпионата Италии, турнирное положение",
                    site: "nafootball",
                    reverse: true,
                    description: "Таблица Серии А, турнирное положение, сезон 2016/2017 и многое другое от nafootball.com",
                    keywords: "Футбол, Новости, Италия, Серия, A, результаты, онлайн, видео, футбол,  AC, Милан, Интер, Бари, Болонья, Брешиа, Кальяри, Катания, Чезена, Кьево, Фиорентина, Дженоа, Ювентус, Лацио, Лечче, Неаполь, Палермо, Парма, Рома, Сампдория, Удинезе, Робиньо, Ибрагимович, Милито, Леонардо, Мотта, сборной Италии, дель Пьеро, Буффон, Санчес, Это'О, Силва, Лусио, Тотти",
                    canonical: table_league_url('seria-a')
    elsif params[:id] == 'ukraine'
      @h1_table = 'Таблица УПЛ'
      set_meta_tags title: "Таблица Чемпионата Украины, турнирное положение",
                    site: "nafootball",
                    reverse: true,
                    description: "Таблица УПЛ, турнирное положение, сезон 2016/2017 и многое другое от nafootball.com",
                    keywords: "Спорт, Футбол, Новости, премьер, лига, результаты, таблицы, Шахтер, Динамо, Киев, Заря, Днепр, Металлист, Олимпик, Черноморец, Карпаты, Ворскла, Зирка, Олександрия, Волынь, смотреть, записи, онлайн",
                    canonical: table_league_url('ukraine')
    elsif params[:id] == 'russian'
      @h1_table = 'Таблица РФПЛ'
      set_meta_tags title: "Таблица Чемпионата России, турнирное положение",
                    site: "nafootball",
                    reverse: true,
                    description: "Таблица РФПЛ, турнирное положение, сезон 2016/2017 и многое другое от nafootball.com",
                    keywords: "Спорт, Футбол, Новости, премьер, лига, результаты, таблицы, Зенит, ЦСКА, Спартак, Локомотив, Ростов, Анжи, Краснодар, Динамо, Москва, Уфа, Терек, смотреть, записи, онлайн",
                    canonical: table_league_url('russian')
    end
  end

  def fixtures
    @news = Article.order('created_at DESC').where(category: 'news').first(20)
    @fixtures = Match.order('date').where(['date > ? and league = ?', Time.current, params[:id]])
    @league = params[:id]
    @is_not_index = true
    if params[:id] == 'seria-a'
      @h1_fixtures = 'Расписание матчей Серии А'
      set_meta_tags title: "Чемпионат Италии по футболу Расписание матчей",
                    site: "nafootball",
                    reverse: true,
                    description: "Серия А, расписание матчей, результаты и многое другое от nafootball.com",
                    keywords: "Футбол, Новости, Италия, Серия, A, результаты, онлайн, видео, футбол,  AC, Милан, Интер, Бари, Болонья, Брешиа, Кальяри, Катания, Чезена, Кьево, Фиорентина, Дженоа, Ювентус, Лацио, Лечче, Неаполь, Палермо, Парма, Рома, Сампдория, Удинезе, Робиньо, Ибрагимович, Милито, Леонардо, Мотта, сборной Италии, дель Пьеро, Буффон, Санчес, Это'О, Силва, Лусио, Тотти",
                    canonical: fixtures_league_url('seria-a')
    elsif params[:id] == 'bundesliga'
      @h1_fixtures = 'Расписание матчей Бундеслиги'
      set_meta_tags title: "Чемпионат Германии по футболу Расписание матчей",
                    site: "nafootball",
                    reverse: true,
                    description: "Последние новости Бундеслиги, расписание матчей, результаты и многое другое от nafootball.com",
                    keywords: "Футбол, Новости, Бундеслига, результаты, футбол, онлайн, видео, Хоффенхайм, Байер, Бавария, Байер, Мюнхен, Дортмунд, Франкфурт, Кайзерслаутерн, Кельн, Нюрнберг",
                    canonical: fixtures_league_url('bundesliga')
    elsif params[:id] == 'laliga'
      @h1_fixtures = 'Расписание матчей Ла Лиги'
      set_meta_tags title: "Чемпионат Испании по футболу Расписание матчей",
                    site: "nafootball",
                    reverse: true,
                    description: "Последние новости Ла Лиги, расписание матчей, результаты и многое другое от nafootball.com",
                    keywords: "Футбол, Ла, Лига, Примера, Испания, испанский, Барселона, Реал, Мадрид, Месси, Кака, Роналду, Хави, Иньеста, Валенсия, Новости, Футбол, видео, Атлетико, Альмерия, Бильбао, Депортиво, Эспаньол, Хетафе, Геркулес, Леванте, Малага, Осасуна, Сарагоса, Севилья, Вильярреал, Росси, Форлан, Моуринью",
                    canonical: fixtures_league_url('laliga')
    elsif params[:id] == 'chempions-league'
      @h1_fixtures = 'Расписание матчей Лиги Чемпионов'
      set_meta_tags title: "Лига Чемпионов, расписание матчей",
                    site: "nafootball",
                    reverse: true,
                    description: "Последние новости Лиги Чемпионов, расписание матчей, результаты и многое другое от nafootball.com",
                    keywords: "футбол, футбол, УЕФА, Лига чемпионов, челси, Рим, бордо, Манчестер Юнайтед, Вильярреал, Интер, Вердером, Панатинаикос, Бавария, Фиорентина, лион, барселона, шахтер донецк, базеле, арсенал, порто, динамо киев, Атлетико, мадрид, ливерпуль, Ювентус, зенит петербург",
                    canonical: fixtures_league_url('chempions-league')
    elsif params[:id] == 'apl'
      @h1_fixtures = 'Расписание матчей АПЛ'
      set_meta_tags title: "Чемпионат Англии по футболу, расписание матчей",
                    site: "nafootball",
                    reverse: true,
                    description: "Последние новости АПЛ, расписание матчей, результаты и многое другое от nafootball.com",
                    keywords: "Футбол, спорт, новости, сегодня, трансферы, слухи, повторы, онлайн, смотреть, результаты, расписание, календарь, uefa, превью, манчестер, юнайтед, челси, арсенал, ливерпуль, сити",
                    canonical: fixtures_league_url('apl')
    elsif params[:id] == 'ukraine'
      @h1_fixtures = 'Расписание матчей УПЛ'
      set_meta_tags title: "Чемпионат Украины по футболу, расписание матчей",
                    site: "nafootball",
                    reverse: true,
                    description: "Последние новости УПЛ, расписание матчей, результаты и многое другое от nafootball.com",
                    keywords: "Футбол, спорт, новости, сегодня, трансферы, слухи, повторы, онлайн, смотреть, результаты, расписание, календарь, uefa, превью",
                    canonical: fixtures_league_url('ukraine')
    elsif params[:id] == 'russian'
      @h1_fixtures = 'Расписание матчей РФПЛ'
      set_meta_tags title: "Чемпионат России по футболу, расписание матчей",
                    site: "nafootball",
                    reverse: true,
                    description: "Последние новости РФПЛ, расписание матчей, результаты и многое другое от nafootball.com",
                    keywords: "Футбол, спорт, новости, сегодня, трансферы, слухи, повторы, онлайн, смотреть, результаты, расписание, календарь, uefa, превью",
                    canonical: fixtures_league_url('russian')
    end
  end

  def results
    @news = Article.order('created_at DESC').where(category: 'news').first(20)
    @fixtures = Match.order('date DESC').where(['date < ? and league = ?', Time.current-2.hour, params[:id]])
    @league = params[:id]
    @is_not_index = true
    if params[:id] == 'seria-a'
      @h1_results = 'Результаты матчей Серии А'
      set_meta_tags title: "Чемпионат Италии по футболу, результаты матчей",
                    site: "nafootball",
                    reverse: true,
                    description: "Серия А, результаты матчей и многое другое от nafootball.com",
                    keywords: "Футбол, Новости, Италия, Серия, A, результаты, онлайн, видео, футбол,  AC, Милан, Интер, Бари, Болонья, Брешиа, Кальяри, Катания, Чезена, Кьево, Фиорентина, Дженоа, Ювентус, Лацио, Лечче, Неаполь, Палермо, Парма, Рома, Сампдория, Удинезе, Робиньо, Ибрагимович, Милито, Леонардо, Мотта, сборной Италии, дель Пьеро, Буффон, Санчес, Это'О, Силва, Лусио, Тотти",
                    canonical: results_league_url('seria-a')
    elsif params[:id] == 'bundesliga'
      @h1_results = 'Результаты матчей Бундеслиги'
      set_meta_tags title: "Чемпионат Германии по футболу, результаты матчей",
                    site: "nafootball",
                    reverse: true,
                    description: "Бундеслига, результаты матчей и многое другое от nafootball.com",
                    keywords: "Футбол, Новости, Бундеслига, результаты, футбол, онлайн, видео, Хоффенхайм, Байер, Бавария, Байер, Мюнхен, Дортмунд, Франкфурт, Кайзерслаутерн, Кельн, Нюрнберг",
                    canonical: results_league_url('bundesliga')
    elsif params[:id] == 'laliga'
      @h1_results = 'Результаты матчей Ла Лиги'
      set_meta_tags title: "Чемпионат Испании по футболу, результаты матчей",
                    site: "nafootball",
                    reverse: true,
                    description: "Ла Лига результаты матчей и многое другое от nafootball.com",
                    keywords: "Футбол, Ла, Лига, Примера, Испания, испанский, Барселона, Реал, Мадрид, Месси, Кака, Роналду, Хави, Иньеста, Валенсия, Новости, Футбол, видео, Атлетико, Альмерия, Бильбао, Депортиво, Эспаньол, Хетафе, Геркулес, Леванте, Малага, Осасуна, Сарагоса, Севилья, Вильярреал, Росси, Форлан, Моуринью,",
                    canonical: results_league_url('laliga')
    elsif params[:id] == 'chempions-league'
      @h1_results = 'Результаты матчей Лиги Чемпионов'
      set_meta_tags title: "Лига Чемпионов, результаты матчей",
                    site: "nafootball",
                    reverse: true,
                    description: "Лига Чемпионов, результаты матчей и многое другое от nafootball.com",
                    keywords: "футбол, УЕФА, Лига чемпионов, челси, Рим, бордо, Манчестер Юнайтед, Вильярреал, Интер, Вердером, Панатинаикос, Бавария, Фиорентина, лион, барселона, шахтер донецк, базеле, арсенал, порто, динамо киев, Атлетико, мадрид, ливерпуль, Ювентус, зенит петербург",
                    canonical: results_league_url('chempions-league')
    elsif params[:id] == 'apl'
      @h1_results = 'Результаты матчей АПЛ'
      set_meta_tags title: "Чемпионат Англии по футболу, результаты матчей",
                    site: "nafootball",
                    reverse: true,
                    description: "АПЛ, результаты матчей и многое другое от nafootball.com",
                    keywords: "Спорт, Футбол, Новости, премьер, лига, результаты, таблицы, Арсенал, Астон Вилла, Бирмингем Сити, Блэкберн, Болтон, Бернли, Челси, Эвертон, Фулхэм, Халл Сити, Ливерпуль, Манчестер Сити, Манчестер Юнайтед,  Портсмут, Сток Сити, Сандерленд, Тоттенхэм, шпоры, Вест Хэм, Уиган, Вулверхэмптон, смотреть, записи, онлайн",
                    canonical: results_league_url('apl')
    elsif params[:id] == 'ukraine'
      @h1_results = 'Результаты матчей УПЛ'
      set_meta_tags title: "Чемпионат Украины по футболу, результаты матчей",
                    site: "nafootball",
                    reverse: true,
                    description: "Украинская Премьер Лига, результаты матчей и многое другое от nafootball.com",
                    keywords: "Спорт, Футбол, Новости, премьер, лига, результаты, таблицы, смотреть, записи, онлайн",
                    canonical: results_league_url('ukraine')
    elsif params[:id] == 'russian'
      @h1_results = 'Результаты матчей РФПЛ'
      set_meta_tags title: "Чемпионат России по футболу, результаты матчей",
                    site: "nafootball",
                    reverse: true,
                    description: "Российская Футбольная Премьер Лига, результаты матчей и многое другое от nafootball.com",
                    keywords: "Спорт, Футбол, Новости, премьер, лига, результаты, таблицы, смотреть, записи, онлайн",
                    canonical: results_league_url('russian')
    end
  end

  def set_onlain_fixtures
      @fixtures_en = Match.where(["DATE(date) = ? and league = ?", Time.current-1.hour, 'apl']).order('date')
      @fixtures_ua = Match.where(["DATE(date) = ? and league = ?", Time.current-1.hour, 'ukraine']).order('date')
      @fixtures_ru = Match.where(["DATE(date) = ? and league = ?", Time.current-1.hour, 'russian']).order('date')
      @fixtures_it = Match.where(["DATE(date) = ? and league = ?", Time.current-1.hour, 'seria-a']).order('date')
      @fixtures_sp = Match.where(["DATE(date) = ? and league = ?", Time.current-1.hour, 'laliga']).order('date')
      @fixtures_ge = Match.where(["DATE(date) = ? and league = ?", Time.current-1.hour, 'bundesliga']).order('date')
      @fixtures_cl = Match.where(["DATE(date) = ? and league = ?", Time.current-1.hour, 'chempions-league']).order('date')

      @fixtures_en_was = Match.where(["DATE(date) = ? and league = ?", Time.current-1.days, 'apl']).order('date')
      @fixtures_ua_was = Match.where(["DATE(date) = ? and league = ?", Time.current-1.days, 'ukraine']).order('date')
      @fixtures_ru_was = Match.where(["DATE(date) = ? and league = ?", Time.current-1.days, 'russian']).order('date')
      @fixtures_it_was = Match.where(["DATE(date) = ? and league = ?", Time.current-1.days, 'seria-a']).order('date')
      @fixtures_sp_was = Match.where(["DATE(date) = ? and league = ?", Time.current-1.days, 'laliga']).order('date')
      @fixtures_ge_was = Match.where(["DATE(date) = ? and league = ?", Time.current-1.days, 'bundesliga']).order('date')
      @fixtures_cl_was = Match.where(["DATE(date) = ? and league = ?", Time.current-1.days, 'chempions-league']).order('date')

      @fixtures_en_will = Match.where(["DATE(date) = ? and league = ?", Time.current+1.days, 'apl']).order('date')
      @fixtures_ua_will = Match.where(["DATE(date) = ? and league = ?", Time.current+1.days, 'ukraine']).order('date')
      @fixtures_ru_will = Match.where(["DATE(date) = ? and league = ?", Time.current+1.days, 'russian']).order('date')
      @fixtures_it_will = Match.where(["DATE(date) = ? and league = ?", Time.current+1.days, 'seria-a']).order('date')
      @fixtures_sp_will = Match.where(["DATE(date) = ? and league = ?", Time.current+1.days, 'laliga']).order('date')
      @fixtures_ge_will = Match.where(["DATE(date) = ? and league = ?", Time.current+1.days, 'bundesliga']).order('date')
      @fixtures_cl_will = Match.where(["DATE(date) = ? and league = ?", Time.current+1.days, 'chempions-league']).order('date')
  end

end