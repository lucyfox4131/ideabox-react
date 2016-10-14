class Idea extends React.Component {
  constructor(props){
    super(props);
    this.state = {idea: this.props.idea}
  }

  render () {
    const idea = this.state.idea
    return(
      <div>{idea.title} - {idea.quality}</div>
    )
  }
}
