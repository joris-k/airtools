import "bootstrap";
import flatpickr from '../components/datepicker';
import { initAutocomplete } from "../plugins/init_autocomplete";
import {buttonActivationProfile} from '../pages/profile.js';
import {buttonActivationMap} from '../pages/toolsIndex.js';
import { initSelect2 } from '../components/dropdown';

import 'mapbox-gl/dist/mapbox-gl.css';
import { initMapbox } from '../plugins/init_mapbox';

import {addLinkInNavbarToggle} from '../pages/home.js';
buttonActivationProfile();
buttonActivationMap();
addLinkInNavbarToggle();
initSelect2();
initAutocomplete();


