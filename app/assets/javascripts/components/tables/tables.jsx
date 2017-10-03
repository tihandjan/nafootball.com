var Tables = React.createClass({
    getInitialState: function() {
        return {
            table: this.leagueTable('apl')
        }
    },
    leagueTable: function(league) {
        let table = this.props.tables.filter((el)=> {
            return el.league == league
        });
        return table;
    },
    changeLeague: function(league) {
        let lt;
        switch (league) {
            case 'england-table':
                lt = 'apl'
                break;
            case 'germany-table':
                lt = 'bundesliga'
                break;
            case 'spain-table':
                lt = 'laliga'
                break;
            case 'italy-table':
                lt = 'seria-a'
                break;
            default:
                break;
        }
        this.setState({
            table: this.leagueTable(lt)
        })
    },

    render: function() {
        return (
            <Table table={this.state.table} leagueChange={this.changeLeague} />
        )
    }
})