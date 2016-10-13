class Idea extends React.Component{
  constructor(props){
    super();
    this.state = {idea: this.props.idea};
  }
  render(){
    return(
      <tr>
        <td>{this.state.idea.title}</td>
        <td>{this.state.idea.body}</td>
        <td>{this.state.idea.body}</td>
        <td>Upvote</td>
        <td>Downvote</td>
        <td>Delete</td>
      </tr>
    )
  }

}
