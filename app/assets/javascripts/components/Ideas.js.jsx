class Ideas extends React.Componenet {
  constructor(props) {
    super();
    this.state = {
      ideas: props.ideas
    };
  }
  render(){
    var ideas = this.state.ideas.map( (idea) => {
      return <Idea key={idea.id} idea={idea} />
    });

    return(
      <table>
        <thead>
          <tr>
            <td>Title</td>
            <td>Body</td>
            <td>Quality</td>
            <td>Upvote</td>
            <td>Downvote</td>
            <td>Delete</td>
          </tr>
        </thead>
        <tbody>{ideas}</tbody>
      </table>
    );
  }
}
