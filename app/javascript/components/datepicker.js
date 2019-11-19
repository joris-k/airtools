import flatpickr from "flatpickr";
import { availabilities } from '../pages/booking';


flatpickr(".datepicker", {
  mode: "range",
  dateFormat: "d-m-Y",
  enable: availabilities(),
})

export default flatpickr;
