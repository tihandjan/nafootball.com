class Table < ActiveRecord::Base

    def self.set_table_data
      if self.count < 10 || (Time.current - self.last.created_at)/60 > 60 && (HTTParty.get("http://api.football-data.org/v1/competitions/426/leagueTable", :headers =>{"X-Auth-Token" => '568ace863a0348b896cc43d897338062'})).code == 200
         
          
          @en = HTTParty.get("http://api.football-data.org/v1/competitions/426/leagueTable", :headers =>{"X-Auth-Token" => '568ace863a0348b896cc43d897338062'})
          @pl_sp = HTTParty.get("http://api.football-data.org/v1/competitions/436/leagueTable", :headers =>{"X-Auth-Token" => '568ace863a0348b896cc43d897338062'})
          @seria_a = HTTParty.get("http://api.football-data.org/v1/competitions/438/leagueTable", :headers =>{"X-Auth-Token" => '568ace863a0348b896cc43d897338062'})
          @bundes_liga = HTTParty.get("http://api.football-data.org/v1/competitions/430/leagueTable", :headers =>{"X-Auth-Token" => '568ace863a0348b896cc43d897338062'})
          @chemp_liga = HTTParty.get("http://api.football-data.org/v1/competitions/440/leagueTable", :headers =>{"X-Auth-Token" => '568ace863a0348b896cc43d897338062'})
          
          self.transaction do
            @data = []
            @en['standing'].each do |data|
                @data << self.new(league: 'apl', position: data['position'], teamName: data['teamName'], crestURI: data['crestURI'], playedGames: data['playedGames'], points: data['points'], goals: data['goals'], goalsAgainst: data['goalsAgainst'], goalDifference: data['goalDifference'], wins: data['wins'], draws: data['draws'], losses: data['losses'])
            end
            @pl_sp['standing'].each do |data|
                @data << self.new(league: 'laliga', position: data['position'], teamName: data['teamName'], crestURI: data['crestURI'], playedGames: data['playedGames'], points: data['points'], goals: data['goals'], goalsAgainst: data['goalsAgainst'], goalDifference: data['goalDifference'], wins: data['wins'], draws: data['draws'], losses: data['losses'])
            end
            @seria_a['standing'].each do |data|
                @data << self.new(league: 'seria-a', position: data['position'], teamName: data['teamName'], crestURI: data['crestURI'], playedGames: data['playedGames'], points: data['points'], goals: data['goals'], goalsAgainst: data['goalsAgainst'], goalDifference: data['goalDifference'], wins: data['wins'], draws: data['draws'], losses: data['losses'])
            end
            @bundes_liga['standing'].each do |data|
                @data << self.new(league: 'bundesliga', position: data['position'], teamName: data['teamName'], crestURI: data['crestURI'], playedGames: data['playedGames'], points: data['points'], goals: data['goals'], goalsAgainst: data['goalsAgainst'], goalDifference: data['goalDifference'], wins: data['wins'], draws: data['draws'], losses: data['losses'])
            end
            @chemp_liga['standings']['A'].each do |data|
                @data << self.new(league: 'chempions-league', position: data['rank'], teamName: data['team'], crestURI: data['crestURI'], playedGames: data['playedGames'], points: data['points'], goals: data['goals'], goalsAgainst: data['goalsAgainst'], goalDifference: data['goalDifference'], group: data['group'])
            end
            @chemp_liga['standings']['B'].each do |data|
                @data << self.new(league: 'chempions-league', position: data['rank'], teamName: data['team'], crestURI: data['crestURI'], playedGames: data['playedGames'], points: data['points'], goals: data['goals'], goalsAgainst: data['goalsAgainst'], goalDifference: data['goalDifference'], group: data['group'])
            end
            @chemp_liga['standings']['C'].each do |data|
                @data << self.new(league: 'chempions-league', position: data['rank'], teamName: data['team'], crestURI: data['crestURI'], playedGames: data['playedGames'], points: data['points'], goals: data['goals'], goalsAgainst: data['goalsAgainst'], goalDifference: data['goalDifference'], group: data['group'])
            end
            @chemp_liga['standings']['D'].each do |data|
                @data << self.new(league: 'chempions-league', position: data['rank'], teamName: data['team'], crestURI: data['crestURI'], playedGames: data['playedGames'], points: data['points'], goals: data['goals'], goalsAgainst: data['goalsAgainst'], goalDifference: data['goalDifference'], group: data['group'])
            end
            @chemp_liga['standings']['E'].each do |data|
                @data << self.new(league: 'chempions-league', position: data['rank'], teamName: data['team'], crestURI: data['crestURI'], playedGames: data['playedGames'], points: data['points'], goals: data['goals'], goalsAgainst: data['goalsAgainst'], goalDifference: data['goalDifference'], group: data['group'])
            end
            @chemp_liga['standings']['F'].each do |data|
                @data << self.new(league: 'chempions-league', position: data['rank'], teamName: data['team'], crestURI: data['crestURI'], playedGames: data['playedGames'], points: data['points'], goals: data['goals'], goalsAgainst: data['goalsAgainst'], goalDifference: data['goalDifference'], group: data['group'])
            end
            @chemp_liga['standings']['G'].each do |data|
                @data << self.new(league: 'chempions-league', position: data['rank'], teamName: data['team'], crestURI: data['crestURI'], playedGames: data['playedGames'], points: data['points'], goals: data['goals'], goalsAgainst: data['goalsAgainst'], goalDifference: data['goalDifference'], group: data['group'])
            end
            @chemp_liga['standings']['H'].each do |data|
                @data << self.new(league: 'chempions-league', position: data['rank'], teamName: data['team'], crestURI: data['crestURI'], playedGames: data['playedGames'], points: data['points'], goals: data['goals'], goalsAgainst: data['goalsAgainst'], goalDifference: data['goalDifference'], group: data['group'])
            end
            self.import @data, validate: false
          end
          where(['created_at < ?', Table.last.created_at]).delete_all
      end
  end

end
