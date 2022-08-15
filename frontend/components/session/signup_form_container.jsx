import React from 'react';
import { AuthRoute } from '../../util/route_util';
import SignupEmailContainer from './signup_email_container';

const SignupForms = () => {
    return(
        <div className="signup-form-container">
            <AuthRoute exact path='/signup' component={SignupEmailContainer}/>
        </div>
    )
}

export default SignupForms;
