document.addEventListener("DOMContentLoaded", function () {
  const urlParams = new URLSearchParams(window.location.search);
  const id = urlParams.get("id");
  const commentSection = document.getElementById("comments");
  const imagesSection = document.getElementById("gallery-images");
  const mainImage = document.getElementById("main-image");
  const price = document.getElementById("price");
  const name = document.getElementById("name");
  const sortButton = document.getElementById("sortButton");
  let descedingOrder = false;

  // Fetch single product by id from the API
  fetch("http://localhost:5000/api/products/" + (id ?? 1))
    .then((response) => response.json())
    .then((data) => {
      price.innerHTML = `${data.Price} lv.`;
      name.innerHTML = data.Name;

      // Create and append image elements
      data.Images.forEach((element, index) => {
        const imageElement = document.createElement("img");
        if (index === 0) {
          mainImage.src = element.Url;
          imageElement.classList.add("selected");
        }
        imageElement.src = element.Url;
        imagesSection.appendChild(imageElement);
      });

      // Create and append comment elements
      data.Comments.forEach((element) => {
        const commentElement = document.createElement("div");
        commentElement.classList.add("comment");
        commentElement.innerHTML = `
            <p class="author">${element.Author}</p>
            <p>${element.Text}</p>
            <p class="date">Posted on: ${element.Date}</p>
            `;
        commentSection.appendChild(commentElement);
      });

      // Add event listener to the images
      const images = document.querySelectorAll(".gallery-images img");
      images.forEach((image) => {
        image.addEventListener("click", () => {
          images.forEach((image) => image.classList.remove("selected"));
          image.classList.add("selected");
          mainImage.setAttribute("src", image.getAttribute("src"));
        });
      });
    });

  // Add event listener to the sort button
  sortButton.addEventListener("click", () => {
    if (!descedingOrder) {
      const commentElements = Array.from(
        document.getElementsByClassName("comment")
      );
      const sortedComments = commentElements.sort((a, b) => {
        const dateA = new Date(
          a.querySelector(".date").textContent.replace("Posted on: ", "")
        );
        const dateB = new Date(
          b.querySelector(".date").textContent.replace("Posted on: ", "")
        );
        return dateB - dateA;
      });
      sortedComments.forEach((comment) => commentSection.appendChild(comment));
      sortButton.textContent = "Sort by oldest";
      descedingOrder = true;
    } else {
      const commentElements = Array.from(
        document.getElementsByClassName("comment")
      );
      const sortedComments = commentElements.sort((a, b) => {
        const dateA = new Date(
          a.querySelector(".date").textContent.replace("Posted on: ", "")
        );
        const dateB = new Date(
          b.querySelector(".date").textContent.replace("Posted on: ", "")
        );
        return dateA - dateB;
      });
      sortedComments.forEach((comment) => commentSection.appendChild(comment));
      sortButton.textContent = "Sort by newest";
      descedingOrder = false;
    }
  });
});
