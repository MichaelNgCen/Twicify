import React from 'react'

class EmailForm extends React.Component {

    constructor(props) {
        super(props)

        this.state = {
            email: '',
            password: ''
        }

        this.handleSubmit = this.handleSubmit.bind(this);
    }

    handleUpdate(field) {
        return (e) => this.setState({[field]: e.currentTarget.value})
    }

    //persist the state and redirect to the next phase of signup (adding name)

    handleSubmit(e) {
        e.preventDefault();
        this.props.history.push({pathname: '/playing music page?', state: { email: this.state.email, password: this.state.password}});
    }

    render() {
        return (
            <div className="signup-form-email-section">
                <h1>Sign up with your email address</h1>
                <form onSubmit={this.handleSubmit}>
                    <label>What's your email?
                        <input type="text" value={this.state.email} onChange={this.handleUpdate('email')} />
                    </label>
                    <br />
                    <label>Create a password
                        <input type="password" value={this.state.password} onChange={this.handleUpdate('password')} />
                    </label>
                    <br />
                    <button type="submit" className="signup-buttons">Sign Up</button>
                </form>
            </div>
        )
    }

}

export default EmailForm;