require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")
require("turbolinks").start();

import "bootstrap";

import { initMapbox } from '../plugins/init_mapbox';
import { initAutocomplete } from '../plugins/init_autocomplete';
import initFlatpickr from "../plugins/init_flatpickr";

document.addEventListener('turbolinks:load', () => {
  initMapbox();
  initAutocomplete();
  initFlatpickr();
})



