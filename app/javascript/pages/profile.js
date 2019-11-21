
const buttonActivationProfile = () => {
  const bookingButton = document.querySelector('#profile-bookings-button');
  const toolButton = document.querySelector('#profile-tools-button');
  const bookingShow = document.querySelector('#profile-bookings-show');
  const toolShow = document.querySelector('#profile-tools-show');

  if (bookingButton) {
    bookingButton.addEventListener("click", (event) => {
      bookingButton.classList.toggle("button-unselected");
      toolButton.classList.toggle("button-unselected");
      bookingShow.classList.toggle("hidden");
      toolShow.classList.toggle("hidden");
    });
    toolButton.addEventListener("click", (event) => {
      bookingButton.classList.toggle("button-unselected");
      toolButton.classList.toggle("button-unselected");
      bookingShow.classList.toggle("hidden");
      toolShow.classList.toggle("hidden");
    });
  }
}

export {buttonActivationProfile};
