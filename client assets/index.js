const form = document.querySelector("form");
const inputName = document.getElementById("name");
const inputSurname = document.getElementById("surname");
const inputMail = document.getElementById("mail");

form.addEventListener("submit", function (ev) {
  const malaSlova = [];
  const velikaSlova = [];
  for (let i = 0; i < 26; ++i) {
    malaSlova[i] = String.fromCharCode(97 + i);
    velikaSlova[i] = String.fromCharCode(65 + i);
  }

  // Name
  let name = inputName.value.trim();
  if (name === null || name === "") {
    alert("You can't leave name field blank!");
    ev.preventDefault();
    inputName.focus();
    return false;
  }
  if (velikaSlova.indexOf(name[0]) === -1) {
    alert("First letter of name must be uppercase.");
    ev.preventDefault();
    inputName.focus();
    return false;
  }
  for (let i = 1; i < name.length; i++) {
    if (malaSlova.indexOf(name[i]) === -1) {
      alert("After the first one, all letters must be lowercase for name.");
      ev.preventDefault();
      inputName.focus();
      return false;
    }
  }

  // Surname
  let surname = inputSurname.value.trim();
  if (surname === null || surname === "") {
    alert("You can't leave surname field blank!");
    ev.preventDefault();
    inputSurname.focus();
    return false;
  }
  if (velikaSlova.indexOf(surname[0]) === -1) {
    alert("First letter of surname must be uppercase.");
    ev.preventDefault();
    inputSurname.focus();
    return false;
  }
  for (let i = 1; i < surname.length; i++) {
    if (malaSlova.indexOf(surname[i]) === -1) {
      alert("After the first one, all letters must be lowercase for surname.");
      ev.preventDefault();
      inputName.focus();
      return false;
    }
  }

  // Email
  const email = inputMail.value.trim();
  const manki = email.indexOf("@");
  const poslednjaTackica = email.lastIndexOf(".");
  if (manki === -1 || poslednjaTackica === -1 || poslednjaTackica < manki) {
    alert("Email must be in format like this - example@gmail.com");
    inputMail.focus();
    ev.preventDefault();
    return false;
  }
});

const h4 = document.querySelectorAll(".blink");

function ocisti() {
  h4[0].innerHTML = "<br><br>";
  h4[1].innerHTML = "<br><br>";
}

function f1() {
  h4[0].innerHTML = "This webpage <br> <br>";
  h4[1].innerHTML = "This part will present you <br> <br>";
}

function f2() {
  h4[0].innerHTML = "This webpage will take you <br> <br>";
  h4[1].innerHTML =
    "This part will present you list of 75 greatest players <br> <br>";
}

function f3() {
  h4[0].innerHTML =
    "This webpage will take you through the 75 greatest years of NBA basketball <br> <br>";
  h4[1].innerHTML =
    "This part will present you list of 75 greatest players in honor to 75 years of NBA basketball <br> <br>";
}

function f4() {
  h4[0].innerHTML =
    "This webpage will take you through the 75 greatest years of NBA basketball, 75 greatest NBA players, <br> <br>";
  h4[1].innerHTML =
    "This part will present you list of 75 greatest players in honor to 75 years of NBA basketball <br> Also, whole 2021-2022 season";
}

function f5() {
  h4[0].innerHTML =
    "This webpage will take you through the 75 greatest years of NBA basketball, 75 greatest NBA players, some of the best coaches";
  h4[1].innerHTML =
    "This part will present you list of 75 greatest players in honor to 75 years of NBA basketball <br> Also, whole 2021-2022 season is honoring 75 years";
}

function f6() {
  h4[0].innerHTML =
    "This webpage will take you through the 75 greatest years of NBA basketball, 75 greatest NBA players, some of the best coaches the game of basketball has ever seen";
  h4[1].innerHTML =
    "This part will present you list of 75 greatest players in honor to 75 years of NBA basketball <br> Also, whole 2021-2022 season is honoring 75 years of NBA basketball";
}

function f7() {
  h4[0].innerHTML =
    "This webpage will take you through the 75 greatest years of NBA basketball, 75 greatest NBA players, some of the best coaches the game of basketball has ever seen and much more.";
  h4[1].innerHTML =
    "This part will present you list of 75 greatest players in honor to 75 years of NBA basketball <br> Also, whole 2021-2022 season is honoring 75 years of NBA basketball with unique NBA75 logo.";
}

// setTimeout(f1, 1000);
// setTimeout(f2, 2000);
// setTimeout(f3, 3000);
// setTimeout(f4, 4000);
// setTimeout(f5, 5000);
// setTimeout(f6, 6000);
// setTimeout(f7, 7000);
// setTimeout(ocisti, 10000);

// let interval = setInterval(() => {
//   setTimeout(f1, 1000);
//   setTimeout(f2, 2000);
//   setTimeout(f3, 3000);
//   setTimeout(f4, 4000);
//   setTimeout(f5, 5000);
//   setTimeout(f6, 6000);
//   setTimeout(f7, 7000);
//   setTimeout(ocisti, 12000);
// }, 10000);

// Image slider

const leftBtn = document.querySelector("#left-btn");
const rightBtn = document.querySelector("#right-btn");
const pictures = document.querySelectorAll(".slider-images img");
let imgNumber = 0;

const displayNone = () => {
  pictures.forEach((img) => {
    img.style.display = "none";
  });
};

const moveRight = () => {
  displayNone();
  imgNumber++;
  if (imgNumber === pictures.length) {
    imgNumber = 0;
  }
  pictures[imgNumber].style.display = "block";
};

const moveLeft = () => {
  displayNone();
  imgNumber--;
  if (imgNumber === -1) {
    imgNumber = pictures.length - 1;
  }
  pictures[imgNumber].style.display = "block";
};

rightBtn.addEventListener("click", moveRight);
leftBtn.addEventListener("click", moveLeft);
