import React from 'react';
import ReactDOM from 'react-dom';
import { fetchAllPokemon } from './util/api_util';
import { requestAllPokemon, receiveAllPokemon } from './actions/pokemon_actions';
import { configureStore } from './store/store';


document.addEventListener('DOMContentLoaded', () => {

  const store = configureStore();

  window.getState = store.getState;
  window.dispatch = store.dispatch;

  window["fetchAllPokemon"] = fetchAllPokemon;
  window.receiveAllPokemon = receiveAllPokemon;

  window.requestAllPokemon = requestAllPokemon;

  const root = document.getElementById('root');
  ReactDOM.render(<h1>Pokedex</h1>, root);
});
