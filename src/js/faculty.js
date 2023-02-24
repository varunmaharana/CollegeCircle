// alert("working")

let loadingScreen = document.querySelector('.loading-screen');
let loader = document.querySelector('.loader');
let infoScreen = document.querySelector('.info-screen');
let cse = document.querySelector('.cse');
let eee = document.querySelector('.eee');
let ett = document.querySelector('.ett');
let mech = document.querySelector('.mech');
let civil = document.querySelector('.civil');
let phy = document.querySelector('.phy');
let chem = document.querySelector('.chem');
let math = document.querySelector('.math');
let hum = document.querySelector('.hum');

let deptList = document.querySelectorAll('.menu .dept-list .dept');

// let fid;
// let facultyData

deptList.forEach((item) => item.addEventListener('click', function () {
    deptList.forEach((item) => item.classList.remove('dept-active'));
    this.classList.add('dept-active');
}));



// * dept
deptList[0].addEventListener('click', function () {
    
    loadingScreen.style.display = "flex";
    loader.style.display = "inline";
    infoScreen.style.display = "none";
    

    const loaderEnd = setTimeout(function () {
        loadingScreen.style.display = "none";
        loader.style.display = "none";
        infoScreen.style.display = "flex";
    }, 1000);

    cse.style.display = "none";
    eee.style.display = "none";
    ett.style.display = "none";
    mech.style.display = "none";
    civil.style.display = "none";
    phy.style.display = "none";
    chem.style.display = "none";
    math.style.display = "none";
    hum.style.display = "none";
});

// * cse
deptList[1].addEventListener('click', function () {
    loadingScreen.style.display = "flex";
    loader.style.display = "inline";
    cse.style.display = "none";
    

    const loaderEnd = setTimeout(function () {
        loadingScreen.style.display = "none";
        loader.style.display = "none";
        cse.style.display = "flex";
    }, 1000);

    infoScreen.style.display = "none";
    eee.style.display = "none";
    ett.style.display = "none";
    mech.style.display = "none";
    civil.style.display = "none";
    phy.style.display = "none";
    chem.style.display = "none";
    math.style.display = "none";
    hum.style.display = "none";
});

// * eee
deptList[2].addEventListener('click', function () {
        
    loadingScreen.style.display = "flex";
    loader.style.display = "inline";
    eee.style.display = "none";
    

    const loaderEnd = setTimeout(function () {
        loadingScreen.style.display = "none";
        loader.style.display = "none";
        eee.style.display = "flex";
    }, 1000);

    infoScreen.style.display = "none";
    cse.style.display = "none";
    ett.style.display = "none";
    mech.style.display = "none";
    civil.style.display = "none";
    phy.style.display = "none";
    chem.style.display = "none";
    math.style.display = "none";
    hum.style.display = "none";
});

// * ett
deptList[3].addEventListener('click', function () {

        
    loadingScreen.style.display = "flex";
    loader.style.display = "inline";
    ett.style.display = "none";
    

    const loaderEnd = setTimeout(function () {
        loadingScreen.style.display = "none";
        loader.style.display = "none";
        ett.style.display = "flex";
    }, 1000);


    infoScreen.style.display = "none";
    cse.style.display = "none";
    eee.style.display = "none";
    mech.style.display = "none";
    civil.style.display = "none";
    phy.style.display = "none";
    chem.style.display = "none";
    math.style.display = "none";
    hum.style.display = "none";
});

// * mech
deptList[4].addEventListener('click', function () {
        
    loadingScreen.style.display = "flex";
    loader.style.display = "inline";
    mech.style.display = "none";
    

    const loaderEnd = setTimeout(function () {
        loadingScreen.style.display = "none";
        loader.style.display = "none";
        mech.style.display = "flex";
    }, 1000);

    infoScreen.style.display = "none";
    cse.style.display = "none";
    eee.style.display = "none";
    ett.style.display = "none";
    civil.style.display = "none";
    phy.style.display = "none";
    chem.style.display = "none";
    math.style.display = "none";
    hum.style.display = "none";
});

// * civil
deptList[5].addEventListener('click', function () {
        
    loadingScreen.style.display = "flex";
    loader.style.display = "inline";
    civil.style.display = "none";
    

    const loaderEnd = setTimeout(function () {
        loadingScreen.style.display = "none";
        loader.style.display = "none";
        civil.style.display = "flex";
    }, 1000);

    infoScreen.style.display = "none";
    cse.style.display = "none";
    eee.style.display = "none";
    ett.style.display = "none";
    mech.style.display = "none";
    phy.style.display = "none";
    chem.style.display = "none";
    math.style.display = "none";
    hum.style.display = "none";
});

// * phy
deptList[6].addEventListener('click', function () {
        
    loadingScreen.style.display = "flex";
    loader.style.display = "inline";
    phy.style.display = "none";
    

    const loaderEnd = setTimeout(function () {
        loadingScreen.style.display = "none";
        loader.style.display = "none";
        phy.style.display = "flex";
    }, 1000);

    infoScreen.style.display = "none";
    cse.style.display = "none";
    eee.style.display = "none";
    ett.style.display = "none";
    mech.style.display = "none";
    civil.style.display = "none";
    chem.style.display = "none";
    math.style.display = "none";
    hum.style.display = "none";
});

// * chem
deptList[7].addEventListener('click', function () {
        
    loadingScreen.style.display = "flex";
    loader.style.display = "inline";
    chem.style.display = "none";
    

    const loaderEnd = setTimeout(function () {
        loadingScreen.style.display = "none";
        loader.style.display = "none";
        chem.style.display = "flex";
    }, 1000);

    infoScreen.style.display = "none";
    cse.style.display = "none";
    eee.style.display = "none";
    ett.style.display = "none";
    mech.style.display = "none";
    civil.style.display = "none";
    phy.style.display = "none";
    math.style.display = "none";
    hum.style.display = "none";
});

// * math
deptList[8].addEventListener('click', function () {
        
    loadingScreen.style.display = "flex";
    loader.style.display = "inline";
    math.style.display = "none";
    

    const loaderEnd = setTimeout(function () {
        loadingScreen.style.display = "none";
        loader.style.display = "none";
        math.style.display = "flex";
    }, 1000);

    infoScreen.style.display = "none";
    cse.style.display = "none";
    eee.style.display = "none";
    ett.style.display = "none";
    mech.style.display = "none";
    civil.style.display = "none";
    phy.style.display = "none";
    chem.style.display = "none";
    hum.style.display = "none";
});

// * hum
deptList[9].addEventListener('click', function () {
        
    loadingScreen.style.display = "flex";
    loader.style.display = "inline";
    hum.style.display = "none";
    

    const loaderEnd = setTimeout(function () {
        loadingScreen.style.display = "none";
        loader.style.display = "none";
        hum.style.display = "flex";
    }, 1000);

    infoScreen.style.display = "none";
    cse.style.display = "none";
    eee.style.display = "none";
    ett.style.display = "none";
    mech.style.display = "none";
    civil.style.display = "none";
    phy.style.display = "none";
    chem.style.display = "none";
    math.style.display = "none";
});

