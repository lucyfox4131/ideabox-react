class Idea extends React.Component {
  constructor(props){
    super(props);
    this.state = {idea: this.props.idea}
  }

  render () {
    const idea = this.state.idea
    return(
      <div className="idea-item">
        <h3>{idea.title} - {idea.quality}</h3>
        <p className="idea-body">{idea.body}</p>
      </div>
    )
  }
}
