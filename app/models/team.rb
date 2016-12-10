class Team < ActiveRecord::Base
    has_many :players, dependent: :destroy

    def to_param
      "#{id} #{name}".parameterize
    end 
    
    def self.set_teams_premier_league
        where(league: 'apl').destroy_all
        @response = HTTParty.get("http://api.football-data.org/v1/competitions/426/teams", :headers =>{"X-Auth-Token" => '568ace863a0348b896cc43d897338062'})
        
        @response['teams'].each do |data|
            self.create!(league: 'apl',name: check_value(data['name']),code: check_value(data['code']),short_name: check_value(data['shortName']),market_value: check_value(data['squadMarketValue']),fixtures: check_value(data['_links']['fixtures']['href']),icon_url: check_value(data['crestUrl']))
            @players = HTTParty.get(data['_links']['players']['href'], :headers =>{"X-Auth-Token" => '568ace863a0348b896cc43d897338062'})
            @players['players'].each do |player|
                self.last.players.create(name: check_value(player['name']), position: check_value(player['position']), number: check_value(player['jerseyNumber']), date_of_birth: check_value(player['dateOfBirth']), nationality: check_value(player['nationality']), contract_until: check_value(player['contractUntil']), market_value: check_value(player['marketValue']))
            end
        end
    end
    
    def self.set_teams_spanish_league
        where(league: 'laliga').destroy_all
        @response = HTTParty.get("http://api.football-data.org/v1/competitions/436/teams", :headers =>{"X-Auth-Token" => '568ace863a0348b896cc43d897338062'})
        
        @response['teams'].each do |data|
            self.create!(league: 'laliga',name: check_value(data['name']),code: check_value(data['code']),short_name: check_value(data['shortName']),market_value: check_value(data['squadMarketValue']),fixtures: check_value(data['_links']['fixtures']['href']),icon_url: check_value(data['crestUrl']))
            @players = HTTParty.get(data['_links']['players']['href'], :headers =>{"X-Auth-Token" => '568ace863a0348b896cc43d897338062'})
            @players['players'].each do |player|
                self.last.players.create(name: check_value(player['name']), position: check_value(player['position']), number: check_value(player['jerseyNumber']), date_of_birth: check_value(player['dateOfBirth']), nationality: check_value(player['nationality']), contract_until: check_value(player['contractUntil']), market_value: check_value(player['marketValue']))
            end
        end
    end
    
    def self.set_teams_seria_a
        where(league: 'seria-a').destroy_all
        @response = HTTParty.get("http://api.football-data.org/v1/competitions/438/teams", :headers =>{"X-Auth-Token" => '568ace863a0348b896cc43d897338062'})
        
        @response['teams'].each do |data|
            self.create!(league: 'seria-a',name: check_value(data['name']),code: check_value(data['code']),short_name: check_value(data['shortName']),market_value: check_value(data['squadMarketValue']),fixtures: check_value(data['_links']['fixtures']['href']),icon_url: check_value(data['crestUrl']))
            @players = HTTParty.get(data['_links']['players']['href'], :headers =>{"X-Auth-Token" => '568ace863a0348b896cc43d897338062'})
            @players['players'].each do |player|
                self.last.players.create(name: check_value(player['name']), position: check_value(player['position']), number: check_value(player['jerseyNumber']), date_of_birth: check_value(player['dateOfBirth']), nationality: check_value(player['nationality']), contract_until: check_value(player['contractUntil']), market_value: check_value(player['marketValue']))
            end
        end
    end
    
    def self.set_teams_bundes_league
        where(league: 'bundesliga').destroy_all
        @response = HTTParty.get("http://api.football-data.org/v1/competitions/430/teams", :headers =>{"X-Auth-Token" => '568ace863a0348b896cc43d897338062'})
        
        @response['teams'].each do |data|
            self.create!(league: 'bundesliga',name: check_value(data['name']),code: check_value(data['code']),short_name: check_value(data['shortName']),market_value: check_value(data['squadMarketValue']),fixtures: check_value(data['_links']['fixtures']['href']),icon_url: check_value(data['crestUrl']))
            @players = HTTParty.get(data['_links']['players']['href'], :headers =>{"X-Auth-Token" => '568ace863a0348b896cc43d897338062'})
            @players['players'].each do |player|
                self.last.players.create(name: check_value(player['name']), position: check_value(player['position']), number: check_value(player['jerseyNumber']), date_of_birth: check_value(player['dateOfBirth']), nationality: check_value(player['nationality']), contract_until: check_value(player['contractUntil']), market_value: check_value(player['marketValue']))
            end
        end
    end
    
    def self.set_teams_champions_league
        where(league: 'chempions-league').destroy_all
        @response = HTTParty.get("http://api.football-data.org/v1/competitions/440/teams", :headers =>{"X-Auth-Token" => '568ace863a0348b896cc43d897338062'})
        
        @response['teams'].each do |data|
            self.create!(league: 'chempions-league',name: check_value(data['name']),code: check_value(data['code']),short_name: check_value(data['shortName']),market_value: check_value(data['squadMarketValue']),fixtures: check_value(data['_links']['fixtures']['href']),icon_url: check_value(data['crestUrl']))
            @players = HTTParty.get(data['_links']['players']['href'], :headers =>{"X-Auth-Token" => '568ace863a0348b896cc43d897338062'})
            @players['players'].each do |player|
                self.last.players.create(name: check_value(player['name']), position: check_value(player['position']), number: check_value(player['jerseyNumber']), date_of_birth: check_value(player['dateOfBirth']), nationality: check_value(player['nationality']), contract_until: check_value(player['contractUntil']), market_value: check_value(player['marketValue']))
            end
        end
    end

    def self.set_teams_and_players
        Team.set_teams_spanish_league
        Team.set_teams_champions_league
        Team.set_teams_premier_league
        Team.set_teams_bundes_league
        Team.set_teams_seria_a
    end


    
    def self.check_value value
        if value.blank?
            '-'
        else
            value
        end        
    end
    
end
