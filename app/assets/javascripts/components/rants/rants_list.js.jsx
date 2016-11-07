var RantsList = React.createClass({

  propTypes: {
    rants: React.PropTypes.array.isRequired
  },

  render: function() {
    var rantItems = _.map(this.props.rants, function(rant) {
      return <RantItem key={rant.id} rant={rant} />;
    });

    return (
      <ul>
        {rantItems}
      </ul>
    )
  }
});