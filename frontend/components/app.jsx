import React from 'react';
import { Route, Redirect, Switch, Link, HashRouter } from 'react-router-dom';
import LoginFormContainer from './session/login_form_container'
import SignupFormContainer from './session/signup_form_container'
import HomeContainer from './home/home_container'
import Splash from './splash/splash';
import { AuthRoute, ProtectedRoute } from '../util/route_util';

const App = () => (
    <div>
        <HomeContainer />
        <Switch>
            <AuthRoute exact path="/login" element={LoginFormContainer} />
            <AuthRoute path="/signup" element={SignupFormContainer} />
            <ProtectedRoute path="/home" element={HomeContainer} />
            <Route path="/" element={Splash} />
        </Switch>
    </div>
);

export default App;