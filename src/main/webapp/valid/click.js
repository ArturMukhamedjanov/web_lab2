/*
document.getElementById("R_field")
    .addEventListener('input', e => {
        check_R();
        r = inputR.value;
    })
*/

document.getElementById("graphic").onclick = function(event) {
    const rect = document.getElementById("graphic").getBoundingClientRect();

    if (valueR != null) {

        const x = ((event.clientX - rect.left -125)/(18*5)*valueR);
        const y = (((- event.clientY) + rect.bottom -125)/(18*5)*valueR);
        let xt = (event.clientX - rect.left);
        let yt = (( event.clientY) - rect.top );

        changePoint(xt,yt)
        let inputY = document.getElementById("Y_field");
        inputY.value = y.toString() ;
        let inputx = document.getElementById("X_field");
        inputx.value = x.toString() ;
        $("#submit2").click()

    } else {

    }
}


function changePoint(x,y) {
    let n = document.getElementById("table_out").getElementsByTagName("tr").length
    let point = $("#point");
    point.attr({
        cx: x,
        cy: y,
        visibility: "visible"
    });
}