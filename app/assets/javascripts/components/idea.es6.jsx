class Idea extends React.Component {
  constructor(props){
    super(props);
    this.state = {idea: this.props.idea}
  }
  render () {
    var idea = this.state.idea
    return(
      <div>{idea.title} - {idea.body}</div>
    )
  }
}
