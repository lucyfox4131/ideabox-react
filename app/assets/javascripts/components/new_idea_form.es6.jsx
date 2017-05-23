class NewIdeaForm extends React.Component {
  constructor(){
    super();
    this.state = {title: '', body: ''}
  }
  createNewIdea(e){
    e.preventDefault();
    this.props.onCreateIdea(this.state);
    this.clearForm();
  }

  clearForm(){
    this.setSate({title: '', body: ''})
  }

  onFieldChange(e){
    this.setState({[e.target.name]: e.target.value})
  }

  setState(object){
    
  }

  render () {
    return(
      <form onSubmit={this.createNewIdea}>
        <input value={this.state.title} name="title" className="new-idea-form-title" placeholder="Title" onChange={this.onFieldChange} />
        <textArea value={this.state.body} name="body" className="new-idea-form-body" placeholder="Body" onChange={this.onFieldChange} />
        <input className="new-idea-form-submit" type="submit" value="Create New Idea"/>
      </form>
    )
  }
}
