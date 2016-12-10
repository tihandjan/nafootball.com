module TeamsHelper

    def translate_league league
        [
            ['apl', 'АПЛ'],
            ['laliga', 'Ла Лига'],
            ['bundesliga', 'Бундеслига'],
            ['seria-a', 'Серия А'],
            ['chempions-league', 'ЛЧ'],
        ].each do |item|
            if item[0] == league
                return item[1]
            end
        end
        return league
    end

    def player_position player, pos
        if (["Keeper"].include? player.position) && (pos == 'вратари')
            true
        elsif (["Central Midfield", "Left Midfield", "Midfield", "Mittelfeld", "Right Midfield", "Defensive Midfield"].include? player.position) && (pos == 'полузащита')
            true
        elsif (["Centre Back", "Right-Back", "Left-Back"].include? player.position) && (pos == 'защита')
            true
        elsif (["Secondary Striker", "Attacking Midfield", "Centre Forward", "Left Wing", "Right Wing",].include? player.position) && (pos == 'нападение')
            true
        end
    end

    def age(birth)
        today = Date.today
        age = today.year - birth.year
        age -= 1 if birth.strftime("%m%d").to_i > today.strftime("%m%d").to_i
        age
    end

    def pass_object(obj=nil, name=nil)
        if obj == nil || name == nil
            '#'
        else
            obj.find_by(name: name)
        end
    end

    def position_translater position
        [
            ["Central Midfield", "Цетральный полузащитник"],
            ["Centre Back", "Цетральный защитник"],
            ["Keeper", "Вратарь"],
            ["Right-Back", "Правый защитник"],
            ["Left-Back", "Левый защитник"],
            ["Defensive Midfield","Опорный полузащитник"] ,
            ["Attacking Midfield","Атакующий полузащитник"], 
            ["Centre Forward", "Центр форвард"],
            ["Left Wing", "Левый крайний нападающий"],
            ["Right Wing", "Правый крайний нападающий"],
            ["Secondary Striker", "Второй нападающий"],
            ["Left Midfield", "Левый полузащитник"],
            ["Midfield", "Полузащитник"],
            ["Mittelfeld", "Полузащитник"],
            ["Right Midfield","Правый полузащитник"]
        ].each do |position_en_ru| 
            if position_en_ru[0] == position
                return position_en_ru[1]
            end
        end
        return position
    end

end