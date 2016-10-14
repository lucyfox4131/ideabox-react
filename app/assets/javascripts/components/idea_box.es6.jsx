class IdeaBox extends React.Component {
  render () {
    return(
      <div className="IdeaBox">
        <h1>Idea Box - React</h1>
        <Ideas ideas={this.props.ideas}/>
      </div>
    )
  }
}
