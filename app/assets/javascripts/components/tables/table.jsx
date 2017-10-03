var Table = React.createClass({
    selectChange: function(league) {
        this.props.leagueChange(league);
    },

    render: function() {
        return (
            <div>
                <div className="row row-table">
                    <div className="panel panel-default">
                        <div className="panel-heading">
                            <TableSelect onSelectChange={this.selectChange}/>
                        </div>
                    
                        <div className="panel-body">
                            <table className="table table-hover">
                                <thead className="text-center">
                                    <tr className="tr_first">
                                        <th className="team-number">#</th>
                                        <th className="team-icon"></th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th className="team-td">Матчей</th>
                                        <th className="team-td">В</th>
                                        <th className="team-td">Н</th>
                                        <th className="team-td">П</th>
                                        <th className="team-td">Заб</th>
                                        <th className="team-td">Про</th>
                                        <th className="team-td">Раз</th>
                                        <th></th>
                                        <th>Очков</th>
                                    </tr>
                                </thead>
                                    <tbody className="text-center ">
                                        {this.props.table.map((team, i)=> {
                                            return (
                                                <tr key={i} className="league-table-tr">
                                                    <td className="team-number">{i + 1}</td>
                                                    <td className="team-icon"><i className=" icon-table"></i></td>
                                                    <td className="team-name"><a href="#">{team.teamName}</a></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td className="team-td">{team.playedGames}</td>
                                                    <td className="team-td">{team.wins}</td>
                                                    <td className="team-td">{team.draws}</td>
                                                    <td className="team-td">{team.losses}</td>
                                                    <td className="team-td">{team.goals}</td>
                                                    <td className="team-td">{team.goalsAgainst}</td>
                                                    <td className="team-td">{team.goalDifference}</td>
                                                    <td></td>
                                                    <td className="team-score"><b>{team.points}</b></td>
                                                </tr>
                                            )
                                        })}
                                    </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        )
    }
})