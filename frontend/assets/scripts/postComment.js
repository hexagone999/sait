document.addEventListener("DOMContentLoaded", function () {
  const urlParams = new URLSearchParams(window.location.search);
  const id = urlParams.get("id");
  const submitCommentButton = document.getElementById("post-comment-button");
  const authorName = document.getElementById("name-input");
  const commentInput = document.getElementById("comment-input");

  submitCommentButton.addEventListener("click", () => {
    const name = authorName.value;
    const comment = commentInput.value;
    console.log(name, comment);
    if (name.trim() === "") {
      alert("Please enter your name.");
      return;
    }

    if (comment.trim() === "") {
      alert("Please add your comment.");
      return;
    }

    fetch("http://localhost:5000/api/comments", {
      method: "POST",
      headers: {
        "Access-Control-Allow-Origin": "*",
        "Content-Type": "application/json",
      },
      body: JSON.stringify({
        Author: name,
        Text: comment,
        Productid: id,
      }),
      mode: "cors",
    }).then(() => {
      console.log("success");
      const today = new Date(Date.now()).toISOString();
      console.log(today);
      const commentSection = document.querySelector(".comments");
      const commentForm = document.querySelector(".comment-form");
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
  });
});
