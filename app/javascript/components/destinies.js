import Rails from '@rails/ujs';

const generateDestiniesDown = () => {
  const originDropDown = document.getElementById("origin_dropdown")
  if (originDropDown) {
    const wrapperHtml = document.getElementById("destiny_dropdown");
    originDropDown.addEventListener("change", (event) => {
      wrapperHtml.innerHTML = "";
      const originValue = originDropDown.options[originDropDown.options.selectedIndex].getAttribute('dataset');

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
        }
      })

      wrapperHtml.classList.remove("invisible");

      const destinyLabel = document.querySelector("#destiny_label");
      const destinyDropdown = document.querySelector("#destiny_dropdown");
      const planLabel = document.querySelector("#plan_label");
      const planDropdown = document.querySelector("#plan_dropdown");

      destinyLabel.classList.remove("invisible");
      destinyDropdown.classList.remove("invisible");
      planLabel.classList.remove("invisible");
      planDropdown.classList.remove("invisible");
    })
  }
}

export { generateDestiniesDown };
