const plusNumber = () => {
    const numberElement = document.getElementById("box");
    const currentValue = parseInt(numberElement.innerText);
    numberElement.innerText = currentValue + 1;
}
