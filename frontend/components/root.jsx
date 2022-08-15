import React from 'react';
import { Provider } from 'react-redux';
import { HashRouter } from "react-router-dom";
import Test from './Test';


const Root = ({ store }) => (
  <Provider store={store}>
    <HashRouter>
      <Test />
    </HashRouter>
  </Provider>
);

export default Root;