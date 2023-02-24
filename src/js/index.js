
/* CODE TO TOGGLE SIDE MENU */
let sideMenu = false;
let sideMenuButton = document.querySelector('.bars');
sideMenuButton.addEventListener('click', function () {
    console.log('click bars');
    if (sideMenu === false) {
        document.querySelector('.bar').style.display = "none";
        document.querySelector('.cross').style.display = "inline-block";
        toggleSideMenuDisplayIn();
        sideMenu = true;
    } else {
        document.querySelector('.bar').style.display = "inline-block";
        document.querySelector('.cross').style.display = "none";
        toggleSideMenuDisplayOut();
        sideMenu = false;
    }
});
function toggleSideMenuDisplayIn() {
    document.querySelector('.nav-bar-container').classList.remove("display-out");
    document.querySelector('.nav-bar-container').classList.add("display-in");
}
function toggleSideMenuDisplayOut() {
    document.querySelector('.nav-bar-container').classList.remove("display-in");
    document.querySelector('.nav-bar-container').classList.add("display-out"); 
}

/* ************************ */