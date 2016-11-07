var RantItem = React.createClass({

  propTypes: {
    rant: React.PropTypes.object.isRequired
  },

  render: function() {
    return (
      <li>
        <a href={this.props.rant.uri}>{this.props.rant.title}</a>
      </li>
    )
  }
});