document.addEventListener("DOMContentLoaded", function () {
  const productListElement = document.getElementById("products-anchor");

  // Fetch products from the API
  fetch("http://localhost:5000/api/products", {
    headers: {
      "Access-Control-Allow-Origin": "*",
      "Content-Type": "application/json",
    },
    mode: "cors",
  })
    .then((response) => response.json())
    .then((data) => {
      displayProducts(data);
    });

  function displayProducts(products) {
    // Clear existing content
    productListElement.innerHTML = "";

    // Check if there are products
    if (products.length === 0) {
      productListElement.innerHTML = "<p>No products available.</p>";
      return;
    }

    // Create and append product elements
    products.forEach((product) => {
      const productElement = document.createElement("div");
      productElement.innerHTML = `
          <a class="item" href="item.html?id=${product.Id}">
            <img src=${product.Thumbnail}/>
            <h4>${product.Name}</h4>
            <h5>${product.Price}</h5>
          </a>
            `;
      productListElement.appendChild(productElement);
    });
  }
});
