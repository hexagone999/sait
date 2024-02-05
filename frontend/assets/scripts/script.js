const dropdowns = document.querySelectorAll(".dropdown");
dropdowns.forEach((dropdown) =>
  dropdown.addEventListener("click", () =>
    dropdown.classList.toggle("selected")
  )
);

const value = document.querySelector(".quantity-wrapper .value");
const plus = document.querySelector(".quantity-wrapper .plus");
const minus = document.querySelector(".quantity-wrapper .minus");

plus.addEventListener(
  "click",
  () => +value.textContent < 99 && (value.textContent = +value.textContent + 1)
);
minus.addEventListener(
  "click",
  () => +value.textContent > 1 && (value.textContent = +value.textContent - 1)
);

const nameInput = document.querySelector(".comment-form #name");
const emailInput = document.querySelector(".comment-form #email");
const commentInput = document.querySelector(".comment-form textarea");
const postButton = document.querySelector(".comment-form button");
