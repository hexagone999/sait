document.addEventListener("DOMContentLoaded", async function () {
  const productListElement = document.getElementById("products-anchor");

  // Fetch products from the API
  const res = await fetch("http://localhost:5000/api/products", {
    mode: "no-cors",
    credentials: "include",
    method: "GET",
    headers: {
      "Access-Control-Allow-Origin": "*",
    },
  });
  console.log(res);
  const data = await res.json();
  console.log(data);
  await displayProducts(data);

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
      <a class="item" href="item.html?id=${product.id}">
      <img src=${product.thumbnail}/>
      <h4>${product.name}</h4>
      <h5>${product.price}</h5>
  </a>
            `;
      productListElement.appendChild(productElement);
    });
  }
});
