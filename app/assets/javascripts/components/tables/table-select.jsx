var TableSelect = React.createClass({
    getInitialState: function() {
        return {
            league: 'england-table'
        }
    },
    handleChange: function(event) {
        this.setState({league: event.target.value});
        this.props.onSelectChange(event.target.value);
    },

    render: function() {
        return (
            <select onChange={this.handleChange} value={this.state.league} className="table-select">
                <option data-icon="select-box-sprite sprite sprite-england_another" value="england-table">Англия. Примьер Лига</option>
                <option data-icon="select-box-sprite sprite sprite-spain" value="spain-table">Испания. Ла Лига</option>
                <option data-icon="select-box-sprite sprite sprite-germany" value="germany-table">Германия. Бундеслига</option>
                <option data-icon="select-box-sprite sprite sprite-italy" value="italy-table">Италия. Серия А</option>
                <option data-icon="select-box-sprite sprite sprite-ukraine" value="ukraine-table">Украина. Примьер Лига</option>
                <option data-icon="select-box-sprite sprite sprite-russia" value="russian-table">Россия. Примьер Лига</option>
                <option data-icon="select-box-sprite sprite sprite-europe" value="euro-table">Лига Чемпионов</option>
            </select>
        )
    }
})