document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });



  // adding SF places as list items

  const addListItem = (e) => {
    e.preventDefault();

    const textField = document.querySelector(".favorite-input");
    const text = textField.value;
    textField.value = "";

    const newListItem = document.createElement("li");
    newListItem.textContent = text;

    const list = document.getElementById('sf-places');
    list.append(newListItem);

  }

  const button = document.querySelector(".favorite-submit");
  button.addEventListener("click", addListItem);



  // adding new photos

  const showForm = (e) => {
    const container = document.querySelector(".photo-form-container");
    if (container.className === "photo-form-container") {
      container.className = "photo-form-container hidden";
    } else {
      container.className = "photo-form-container";
    }
  }

  const showFormButton = document.querySelector(".photo-show-button")
  showFormButton.addEventListener("click", showForm);

  const photoAdding = (e) => {
    e.preventDefault();

    const urlTextForm = document.querySelector(".photo-url-input");
    const textVal = urlTextForm.value;
    urlTextForm.value = "";

    const newImg = document.createElement('img');
    newImg.src = textVal;

    const newImgList = document.createElement('li');
    newImgList.appendChild(newImg);

    const list = document.querySelector('.dog-photos');
    list.appendChild(newImgList);

  };


  const photoButton = document.querySelector(".photo-url-submit");
  photoButton.addEventListener("click", photoAdding);




});
