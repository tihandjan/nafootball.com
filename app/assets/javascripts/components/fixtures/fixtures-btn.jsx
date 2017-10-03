var ToggleFixturesBtn = React.createClass({
    getInitialState: function() {
        return {
            'were': false,
            'is': true,
            'will': false,
        }
    },
    toggleClass: function(val) {
        return val ? 'match-toggle-span fixture-active' : 'match-toggle-span'
    },

    onFixtureClick: function(when) {
        let obj = this.state;
        Object.keys(obj).forEach(v => obj[v] = false);
        obj[when] = true;
        this.setState(obj)
        this.props.onFixtureClick(when)
    },

    render: function() {
        return (
            <div>
                <div onClick={()=> this.onFixtureClick('were')} className="col-sm-4 match-toggle"><span className={this.toggleClass(this.state.were)}>Вчера</span></div>
                <div onClick={()=> this.onFixtureClick('is')} className="col-sm-4 match-toggle"><span className={this.toggleClass(this.state.is)}>Сегодня</span></div>
                <div onClick={()=> this.onFixtureClick('will')} className="col-sm-4 match-toggle"><span className={this.toggleClass(this.state.will)}>Завтра</span></div>
            </div>
        )
    }
})