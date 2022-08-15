import React from 'react';
import { Provider } from 'react-redux';
import { HashRouter } from "react-router-dom";
import Blah from './Blah';


const Root = ({ store }) => (
  <Provider store={store}>
    <HashRouter>
      <Blah/>
    </HashRouter>
  </Provider>
);

export default Root;