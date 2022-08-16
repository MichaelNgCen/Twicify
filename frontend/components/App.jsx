import React from 'react';
import { Route, Redirect, Switch, Link, HashRouter } from 'react-router-dom';
import LoginContainer from "./session/login_container";
import SignupContainer from "./session/signup_container";
import HomeContainer from './home/home_container'
import { AuthRoute, ProtectedRoute } from '../util/route_util';

const App = () => (
    <div>
        <HomeContainer />
        <Switch>
            <AuthRoute exact path="/login" component={LoginContainer} />
            <AuthRoute path="/signup" component={SignupContainer} />
            <ProtectedRoute path="/home" component={HomeContainer} />
        </Switch>
 </div>
);

export default App;