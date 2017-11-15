import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';
import Root from './components/root';
// import fetchSearchGiphysUtil from './util/api_util';
import { receiveSearchGiphys, fetchSearchGiphys } from './actions/giphy_actions';

document.addEventListener("DOMContentLoaded", () => {
  const store = configureStore()
  window.store = store;
  // window.fetchSearchGiphysUtil = fetchSearchGiphysUtil;
  window.fetchSearchGiphys = fetchSearchGiphys;
  // window.receiveSearchGiphys = receiveSearchGiphys;

  const root = document.getElementById('root');
  ReactDOM.render(<h1>Good Morning Redux!</h1>, root);
});
