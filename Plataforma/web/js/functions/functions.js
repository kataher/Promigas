function block(message) {
    $.blockUI.defaults.message = message;
    $.blockUI();
}

function unBlock() {
    $.unblockUI();
}

function show_OkDialog(div, title) {
    div.dialog({
        modal: true,
        title: title,
        width: 300,
        buttons: {
            Ok: function () {
                $(this).dialog("close"); //closing on Ok click
            }
        }
    });
}

function validateDecimal(value) {
    var expreg = /^-?[0-9]*(\.[0-9]+)?$/;
    if (expreg.test(value))
        return true;
    else
        return false;
}


function onchange_Input_zero(inp) {
    var str = inp.value;
    var pos = str.indexOf(".");
    if (pos == 0) {
        inp.value = "0" + str;
    }
    var s = "";

    if (inp.value.indexOf(".") > 0) {
        //Llamar a la funcion con la posicion desde 0 hasta la del punto        
        var pentera = inp.value.substr(0, inp.value.indexOf("."));
        s = addComas(pentera) + inp.value.substr(inp.value.indexOf("."), inp.value.length);
    } else {
        var pentera = inp.value;
        s = addComas(pentera);
    }
    inp.value = s;
}

function changeToDecimal(vec) {

    var tope = vec.length;

    for (var i = 0; i < tope; i++) {
        var negativo = vec[i] < 0;
        vec[i] = vec[i].toString();
        if (vec[i].indexOf(".") > 0) {
            //Llamar a la funcion con la posicion desde 0 hasta la del punto        
            var pentera = vec[i].substr(0, vec[i].indexOf("."));
            var s = addComas(pentera) + vec[i].substr(vec[i].indexOf("."), vec[i].length);
        } else {
            var pentera = vec[i];
            s = addComas(pentera);
        }
        vec[i] = negativo ? "-" + s : s;
    }

}

function addComas(val) {
    return val.replace(/\D/g, "")
            .replace(/\B(?=(\d{3})+(?!\d)\.?)/g, ",");
}

function validateRage(value, inf, sup) {
    if (inf <= value && value <= sup) {
        return true;
    } else {
        return false;
    }
}

function validate(variables) {
    for (var el in variables) {
        if (variables[el] === null || variables[el].length === 0 || /^\s+$/.test(variables[el])) {
            return false;
        }
    }

    return true;
}

function onchageGeneral(variables, value) {
    for (var el in variables) {
        variables[el].val(value);
    }
}

function validatePress(inp, objPresSuc, objPresDes) {
    var Ps = parseFloat(objPresSuc.val());
    var Pd = parseFloat(objPresDes.val());

    if (Ps > Pd) {
        alert("La presión de succión no debe ser mayor a la de descarga");
        inp.value = "";
    }
}


function getproyectos(iduser, select, diverror) {
    var parametros = {
        "opcion": 218,
        "from": "newp",
        "id_user": iduser
    };

    $.ajax({
        type: "POST",
        url: "/Plataforma/Modules/manager.jsp",
        data: parametros,
        dataType: 'json',
        async: false,
        beforeSend: function (xhr) {
            block("Cargado datos...");
        },
        success: function (data, status, request) {
            for (var i = 0; i < data.data.length; i++) {
                select.append('<option value="' + data.data[i].id_proyecto + '" >' + data.data[i].name + '</option>');
            }
        },
        error: function (xhr, ajaxOptions, err) {
            alert(err);
            show_OkDialog(diverror, "Error");
        },
        complete: function () {
            unBlock();
        }
    });

}



