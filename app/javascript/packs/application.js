import "bootstrap";
import flatpickr from '../components/datepicker';
import { initAutocomplete } from "../plugins/init_autocomplete";

import { initSelect2 } from '../components/dropdown';

import 'mapbox-gl/dist/mapbox-gl.css';

import { initMapbox } from '../plugins/init_mapbox';

initAutocomplete();
initSelect2();
initMapbox();
