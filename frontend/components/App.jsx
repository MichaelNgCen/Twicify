
import React from 'react';
import { Route, Redirect, Switch, Link, HashRouter } from 'react-router-dom';
import LoginContainer from "./session/login_container";
import SignupContainer from "./session/signup_container";
import SplashContainer from './splash/splash_container'
import { AuthRoute, ProtectedRoute } from '../util/route_util';

const App = () => (
    <div>
        <Switch>
            <AuthRoute path="/login" component={LoginContainer} />
            <AuthRoute path="/signup" component={SignupContainer} />
            <Route path="/" exact component={SplashContainer}/>
        </Switch>
 </div>
);

export default App;