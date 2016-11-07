var Rants = React.createClass({
	getInitialState: function() {
    return {
      rants: []
    }
  },

  componentDidMount: function() {
    FileStore.getResources()
    .then(function(data) {
      this.setState({ rants: data });
    }.bind(this));
  },

  handleCreateRant: function(rant) {
    this.setState({ rants: $.merge([rant], this.state.rants) });
  },

  render: function() {
    return (
      <div>
        <RantsList rants={this.state.rants} />
      </div>
    )
  }
});
