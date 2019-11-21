const supplyAvaliabilities = (dateRange) => {
  const string = dateRange.innerHTML;
  const array = string.match(/(\d{2}-){2}\d{4}/g);
  const availability = []
  for (let i = 0 ; i < array.length; i += 2) {
    availability.push({
      from: array[i],
      to: array[i+1]
    });
  };
  return availability
}

const availabilities = () => {
  let availability = [];
  const dates = document.querySelector('#availabilities')
  if (dates != null ) {
    availability = supplyAvaliabilities(dates)
  }
  return availability;
}

const realAvailabilities = () => {
  const dates = document.querySelectorAll('.real-availabilities');
  const available_dates = [];
  dates.forEach((element) => {
    available_dates.push(element.innerText);
  });
  return available_dates;
};


export { availabilities, realAvailabilities}

