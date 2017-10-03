var Fixtures = React.createClass({
    getInitialState: function() {
        return {
            tableToShow: 'is',
        }
    },

    componentDidMount: function() {
        let intervalId = setInterval(this.submitForm, 10000);
        this.setState({intervalId: intervalId});
    },

    componentWillUnmount: function() {
        clearInterval(this.state.intervalId);
    },

    submitForm: function() {
        $.ajax({
            url: this.props.url,
            type: 'POST',
            dataType: 'json',
        }).done(function(data) {
            console.log(data)
        })
    },

    handleFixtureClick: function(table) {
        this.setState({
            tableToShow: table
        })
    },

    tableToShow: function() {
        let constent;
        switch (this.state.tableToShow) {
            case 'were':
                content = (
                    <table className="table table-onlain" id="played">
                        played
                    </table>
                )
                break;
            case 'is':
                content = (
                    <table className="table table-onlain" id="playing">
                        playing
                    </table>
                )
                break;
            case 'will':
                content = (
                    <table className="table table-onlain" id="will-play">
                        will play
                    </table>
                )
                break;
            default:
                break;
        }
        return content;
    },

    render: function() {
        return (
            <div>
                <h1>{this.state.count}</h1>
                <div className="row-onlain center-block js-time">
                    <div className="panel panel-default"> 
                        <div className="panel-heading"> 
                            <h2 className="panel-title text-left">Онлайн Трансляции</h2>
                        </div> 
                        <div className="panel-body" id="match-today">
                            <div className="table">
                                <ToggleFixturesBtn onFixtureClick={this.handleFixtureClick} />
                                {
                                    this.tableToShow()
                                }
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        )
    }
})