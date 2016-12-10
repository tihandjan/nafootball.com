class Match < ActiveRecord::Base


    def self.set_games
        if Match.count < 5 || (Time.current - Match.last.created_at)/60 > 5 && (HTTParty.get("http://api.football-data.org/v1/competitions/426/leagueTable", :headers =>{"X-Auth-Token" => '568ace863a0348b896cc43d897338062'})).code == 200

            @response_en = HTTParty.get("http://api.football-data.org/v1/competitions/426/fixtures", :headers =>{"X-Auth-Token" => '568ace863a0348b896cc43d897338062'})
            @response_sp = HTTParty.get("http://api.football-data.org/v1/competitions/436/fixtures", :headers =>{"X-Auth-Token" => '568ace863a0348b896cc43d897338062'})
            @response_it = HTTParty.get("http://api.football-data.org/v1/competitions/438/fixtures", :headers =>{"X-Auth-Token" => '568ace863a0348b896cc43d897338062'})
            @response_ge = HTTParty.get("http://api.football-data.org/v1/competitions/430/fixtures", :headers =>{"X-Auth-Token" => '568ace863a0348b896cc43d897338062'})
            @response_cl = HTTParty.get("http://api.football-data.org/v1/competitions/440/fixtures", :headers =>{"X-Auth-Token" => '568ace863a0348b896cc43d897338062'})
            
            
            self.transaction do
                @data = []
                @response_en['fixtures'].each do |data|
                    @data << self.new(homeTeamName: if_nul(data['homeTeamName']),awayTeamName: if_nul(data['awayTeamName']),date: if_nul(data['date']),status: if_nul(data['status']),selfFixtures: if_nul(data['_links']['self']['href']),matchday: if_nul(data['matchday']),goalsHomeTeam: if_nul(data['result']['goalsHomeTeam']),goalsAwayTeam: if_nul(data['result']['goalsAwayTeam']), league: 'apl') 
                end
                @response_sp['fixtures'].each do |data|
                    @data << self.new(homeTeamName: if_nul(data['homeTeamName']),awayTeamName: if_nul(data['awayTeamName']),date: if_nul(data['date']),status: if_nul(data['status']),selfFixtures: if_nul(data['_links']['self']['href']),matchday: if_nul(data['matchday']),goalsHomeTeam: if_nul(data['result']['goalsHomeTeam']),goalsAwayTeam: if_nul(data['result']['goalsAwayTeam']), league: 'laliga') 
                end
                @response_it['fixtures'].each do |data|
                    @data << self.new(homeTeamName: if_nul(data['homeTeamName']),awayTeamName: if_nul(data['awayTeamName']),date: if_nul(data['date']),status: if_nul(data['status']),selfFixtures: if_nul(data['_links']['self']['href']),matchday: if_nul(data['matchday']),goalsHomeTeam: if_nul(data['result']['goalsHomeTeam']),goalsAwayTeam: if_nul(data['result']['goalsAwayTeam']), league: 'seria-a')
                end
                @response_ge['fixtures'].each do |data|
                    @data << self.new(homeTeamName: if_nul(data['homeTeamName']),awayTeamName: if_nul(data['awayTeamName']),date: if_nul(data['date']),status: if_nul(data['status']),selfFixtures: if_nul(data['_links']['self']['href']),matchday: if_nul(data['matchday']),goalsHomeTeam: if_nul(data['result']['goalsHomeTeam']),goalsAwayTeam: if_nul(data['result']['goalsAwayTeam']), league: 'bundesliga')
                end
                @response_cl['fixtures'].each do |data|
                    @data << self.new(homeTeamName: if_nul(data['homeTeamName']),awayTeamName: if_nul(data['awayTeamName']),date: if_nul(data['date']),status: if_nul(data['status']),selfFixtures: if_nul(data['_links']['self']['href']),matchday: if_nul(data['matchday']),goalsHomeTeam: if_nul(data['result']['goalsHomeTeam']),goalsAwayTeam: if_nul(data['result']['goalsAwayTeam']), league: 'chempions-league')
                end

                self.import @data, validate: false
            end
            where(['created_at < ?', Match.last.created_at]).delete_all
        end
    end

    def self.if_nul data
        if data.blank?
            '-'
        else
            data
        end
    end

    def self.my_team_results cookie
        Match.order('date DESC').where("date BETWEEN ? AND ? and (\"homeTeamName\" = ? or \"awayTeamName\" = ?)", Time.zone.now-60.days, Time.current-1.hour, cookie, cookie).first(3)
    end

    def self.my_team_next_game cookie
        Match.order('date').where("date BETWEEN ? AND ? and (\"homeTeamName\" = ? or \"awayTeamName\" = ?)", Time.current, Time.zone.now+60.days, cookie, cookie).first
    end

end



