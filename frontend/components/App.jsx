import React from "react";
import {
  Route,
  Redirect,
  Switch,
  Link,
  HashRouter
} from 'react-router-dom';
import Modal from './modal';
import LoginContainer from "./session/login_container";
import SignupContainer from "./session/signup_container";
import SplashContainer from "./splash/splash_container";
import Alert from './alert';
import { AuthRoute, ProtectedRoute } from '../util/route_util';

const App = () => (
  <div id="app">
    <Modal />
    <Switch>
      <AuthRoute path="/login" component={LoginContainer} />
      <AuthRoute path="/signup" component={SignupContainer} />
      <Route path="/" component={SplashContainer}/>
    </Switch>
    <Alert />
  </div>
);

export default App;