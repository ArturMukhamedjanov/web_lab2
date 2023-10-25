let enterb = document.querySelector('.enterButton');
const $ = window.$;
let value_Y;
var selectedButton;
var valueR = null;
let flag1 = false;
let flag2 = false;
let inputY = document.getElementById("Y_field");



$(".check-values.x input").on('change', function () {
    $(this).siblings(".check-values.x input").prop('checked', false)

})





/*document.getElementById("Y_field")
    .addEventListener('input', e => {
        set_value();
    })

 */

function set_value() {
    inputY.value = inputY.value.replace(",", ".");
    if (!/^-?\d+(\.|,)?\d*$/i.test(inputY.value)) {
        inputY.value = "";
        inputY.style.backgroundColor = "rgba(250, 50, 50, .4)";
        flag1 = true;
    } else {
        let y = inputY.value.replace(",", ".");
        if (y < -3 || y > 5) {
            flag1 = true;
            inputY.value = "";
            inputY.style.backgroundColor = "rgba(250, 50, 50, .4)";
        } else if (Number(y.split(".")[0]) >= 5 && Number(y.split(".")[1]) > 0) {
            //    error.textContent = "Ошибка: Выход за пределы, введите число в интервале [-5;5]";
            inputY.value = "";
            inputY.style.backgroundColor = "rgba(250, 50, 50, .4)";
            flag1 = true;
        } else if (Number(y.split(".")[0]) <= -3 && Number(y.split(".")[1]) > 0) {
            //    error.textContent = "Ошибка: Выход за пределы, введите число в интервале [-5;5]";
            inputY.value = "";
            inputY.style.backgroundColor = "rgba(250, 50, 50, .4)";
            flag1 = true;
        } else {
            inputY.style.backgroundColor = "rgba(136,232,52,0.4)";
            value_Y = inputY.value;
            flag1 = false;
        }
    }




}
function setR(value) {
    valueR = value;
    // Снимаем выделение с предыдущей выбранной кнопки
    if (selectedButton) {
        selectedButton.classList.remove("selected");
    }

    // Выделяем текущую выбранную кнопку
    var currentButton =event.target;
    currentButton.classList.add("selected");

    // Обновляем выбранную кнопку
    selectedButton = currentButton;
    let inputr = document.getElementById("R_field");
    inputr.value = value.toString() ;
    document.getElementById("notSelectedR").style.display = "none";
}


/*enterb.addEventListener('click',function () {
    console.log("sdfsdf");

    value_Y = inputY.value.replace(/[,]/,".");
    value_R = inputR.value.replace(/[,]/,".");
    console.log(value_R,value_Y)
    create_get();
})

 */

function setEventListener() {
    $("#submit").on('click', function (event) {

        set_value();
        if(valueR == null){
            event.preventDefault()
            return
        }
        if (flag1||flag2) {
            event.preventDefault()
            flag1 = false;
            flag2 = false;
        }



    })
}

setEventListener()

