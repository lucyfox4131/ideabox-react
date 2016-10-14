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
      <div>
        {ideas}
      </div>
    )
  }
}
