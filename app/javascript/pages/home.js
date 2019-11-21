const deactivateItems = items => {
  items.forEach(item => {
    item.classList.remove('active');
  });
};


const addLinkInNavbarToggle = () => {
  const navBarItems = document.querySelectorAll('.nav-item');
  deactivateItems(navBarItems);
  const webPath = window.location.href.replace(/^(?:\/\/|[^\/]+)*\//, "");
  console.log(webPath);
  if (webPath === "")
    navBarItems[0].classList.add('active');
  else if (webPath === "tools/new")
    navBarItems[1].classList.add('active');
  else if (webPath[0] === "b")
    navBarItems[2].classList.add('active');
};

export {addLinkInNavbarToggle};

