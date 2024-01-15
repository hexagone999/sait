document.addEventListener("DOMContentLoaded", function () {
  const urlParams = new URLSearchParams(window.location.search);
  const id = urlParams.get("id");
  console.log(id);
  // Fetch single product by id from the API
  fetch("http://localhost:5000/api/products/" + id)
    .then((response) => response.json())
    .then((data) => {
      console.log(data);
    });
});
