require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")
require("turbolinks").start();

import "bootstrap";

import { initMapbox } from '../plugins/init_mapbox';
import { initAutocomplete } from '../plugins/init_autocomplete';


document.addEventListener('turbolinks:load', () => {
  initMapbox();
  initAutocomplete();
})
