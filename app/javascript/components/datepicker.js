import flatpickr from "flatpickr";
import { availabilities, realAvailabilities } from '../pages/booking';

const displayPrice = (numberOfDays) => {
  const daysText = document.querySelector('#days');
  const priceText = document.querySelector('#price-per-day');
  const totalPriceText = document.querySelector('#total-price');
  const price = parseFloat(priceText.dataset.price);
  const totalPrice = price * numberOfDays;
  daysText.innerText = `Days: ${numberOfDays}`;
  totalPriceText.innerText = `Total price: ${parseFloat(totalPrice).toFixed(2)} €`;
}

flatpickr(".datepicker", {
  mode: "range",
  dateFormat: "Y-m-d",
  enable: realAvailabilities(),
  onChange: function(selectedDates) {
    if (document.querySelector('#total-price')) {
      let days = 1 + ((selectedDates[1] - selectedDates[0])/(1000*60*60*24));
      if (Number.isNaN(days)) {
        days = 1
      }
      displayPrice(days);
    }
  },
})


realAvailabilities()
export default flatpickr;
