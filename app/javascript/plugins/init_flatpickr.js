import flatpickr from "flatpickr"
// import "flatpickr/dist/flatpickr.min.css"
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"
import "flatpickr/dist/themes/dark.css"




const initFlatpickr = () => {
  const bookingForm = document.getElementById('booking-form-div');

  if (bookingForm) {
    const bookings = JSON.parse(bookingForm.dataset.bookings);
    flatpickr("#range_start", {
      altInput: true,
      plugins: [new rangePlugin({ input: "#range_end"})],
      minDate: "today",
      inline: true,
      dateFormat: "Y-m-d",
      "disable": bookings,
      onChange: function(dateObj) {
        if (dateObj.length > 1) {
          const votre_resa = document.getElementById('votre_resa');
          const grand_parent_price = parseInt(document.getElementById('price_gp').innerText, 10);

          var startDay = flatpickr.formatDate(dateObj[0], "m/d/Y");
          var endDay = flatpickr.formatDate(dateObj[1], "m/d/Y");

          var newStartDate = new Date(startDay).getTime();
          var newEndDate = new Date(endDay).getTime();

          var newStartDate = eval( newStartDate / 1000 + 3600 ); // for GMT+1 I had to add 3600 (seconds) [1 hour]
          var newEndDate = eval( newEndDate / 1000 + 3600 ); // for GMT+1 I had to add 3600 (seconds) [1 hour]

          var countDays = eval( newEndDate - newStartDate );
          var countDays = eval( countDays / 86400 + 1 );

          let total = countDays*grand_parent_price;
          if (total > 0) {
            votre_resa.innerText = `🌟 Le montant total de votre réservation est de ${total}€ pour ${countDays} jour(s).`;
          }
        }
      }
    })
  }
}

export default initFlatpickr;
