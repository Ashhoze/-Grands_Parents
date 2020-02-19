import places from 'places.js';

const initAutocomplete = () => {
  const cityInput = document.getElementById('grand_parent_city');
  if (cityInput) {
    places({ container: cityInput });
  }
};

export { initAutocomplete };
