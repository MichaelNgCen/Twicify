import React from 'react';
import { Switch, Route } from 'react-router-dom';
import NavbarContainer from '../navbar/navbar_container';

const Main = (props) => {
  return (
    <>
    <div id="main">
      <Route path="/" component={NavbarContainer} />
      <main className="main-content-container">
        <Switch>

        </Switch>
      </main>
    </div>
    </>
  )
}

export default Main;