class Ideas extends React.Component {
  constructor(props){
    super(props);
    this.state = {ideas: this.props.ideas};
  }
  render () {
    const ideas = this.state.ideas.map(function(idea){
      return <Idea key={idea.id} idea={idea}/>
    })
    return(
      <div className="IdeasList">
        <NewIdeaForm onCreateIdea={this.createNewIdea} />
        <h2>Ideas</h2>
        {ideas}
      </div>
    )
  }
}
