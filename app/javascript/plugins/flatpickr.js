import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";
import "flatpickr/dist/flatpickr.min.css"; // Note this is important!
require("flatpickr/dist/themes/dark.css");

flatpickr(".datepicker", {
  minDate: "today",
  dateFormat: "d-m-Y",
  "plugins": [new rangePlugin({ input: "#secondRangeInput"})]
})

// flatpickr({
//     "plugins": [new rangePlugin({ input: "#secondRangeInput"})]
// });

