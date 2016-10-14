class NewIdeaForm extends React.Component {
  render () {
    return(
      <form className="new-idea-form">
        Title: <input type="text" name="Title" className="new-idea-form-title"></input>
        Body: <input type="text" name="Body" className="new-idea-form-body"></input>
        <input type="Submit" value="Submit"></input>
      </form>
    )
  }
}
