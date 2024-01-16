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

const commentSection = document.querySelector(".comments");
const commentForm = document.querySelector(".comment-form");

const nameInput = document.querySelector(".comment-form #name");
const emailInput = document.querySelector(".comment-form #email");
const commentInput = document.querySelector(".comment-form textarea");
const postButton = document.querySelector(".comment-form button");

postButton.addEventListener("click", () => {
  const name = nameInput.value;
  const email = emailInput.value;
  const comment = commentInput.value;

  if (name.trim() === "") {
    alert("Please enter your name.");
    return false;
  }

  var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
  if (!email.match(emailRegex)) {
    alert("Please enter a valid email address.");
    return false;
  }

  if (comment.trim() === "") {
    alert("Please add your comment.");
    return false;
  }

  var today = new Date().toLocaleDateString("en-US", {
    year: "numeric",
    month: "long",
    day: "numeric",
  });

  setTimeout(() => {
    const node = `<div class="comment">
                <p class="author">${name}</p>
                <p>${comment}</p>
                <p class="date">Posted on: ${today}</p>
            </div>`;
    commentSection.innerHTML += node;
  }, 500);

  commentForm.classList.add("shrinked");
});
