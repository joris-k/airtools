import { initMapbox } from '../plugins/init_mapbox';
const buttonActivationMap = () => {
  const mapButton = document.querySelector('#tools-map-button');
  console.log(mapButton)
  const listButton = document.querySelector('#tools-list-button');
  console.log(listButton)
  const mapShow = document.querySelector('#map-container');
  const listShow = document.querySelector('#tools-list-show');

  if (mapButton) {
    mapButton.addEventListener("click", (event) => {
      console.log('hello')
      mapButton.classList.toggle("button-unselected");
      console.log('hello')
      listButton.classList.toggle("button-unselected");
      console.log('hello')
      listShow.classList.toggle("hidden");
      console.log('hello')
      mapShow.classList.toggle("hidden");
      initMapbox();
    });

    listButton.addEventListener("click", (event) => {
      mapButton.classList.toggle("button-unselected");
      listButton.classList.toggle("button-unselected");
      listShow.classList.toggle("hidden");
      mapShow.classList.toggle("hidden");
    });
  }
}
export {buttonActivationMap};

