import Rails from '@rails/ujs';

const generateDestiniesDown = () => {
  const originDropDown = document.getElementById("origin_dropdown")
  console.log(originDropDown);
  if (originDropDown) {
    const wrapperHtml = document.getElementById("destiny_dropdown");

    originDropDown.addEventListener("change", (event) => {
      wrapperHtml.innerHTML = "";
      const originValue = originDropDown.options[originDropDown.options.selectedIndex].getAttribute('dataset');
      console.log(originDropDown.options[originDropDown.options.selectedIndex].getAttribute('dataset'));

      Rails.ajax({
        url: ` /api/v1/speak_localities/${originValue}`,
        type: "GET",
        success: function(data) {
          console.log(data.speak_destinies);
          data.speak_destinies.forEach((destiny) => {
            console.log(destiny.code);
              const element = `<option dataset="${destiny.id}">${destiny.code}</option>`;
              wrapperHtml.insertAdjacentHTML("beforeend", element);

          })
        const destinyLabel = document.querySelector("#destiny_label");
        destinyLabel.classList.remove("invisible");
        wrapperHtml.classList.remove("invisible");
        }

      })
    })
  }
}

export { generateDestiniesDown };
