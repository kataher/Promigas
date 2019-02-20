<%-- 
    Document   : index
    Created on : 03-mar-2016, 17:02:38
    Author     : kata__000
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>  
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>::PROMIGAS::</title>  
        <script src="https://cdn.plot.ly/plotly-latest.min.js"></script>
        <script src="../../js/jquery.js" type="text/JavaScript" ></script>
        <script src="../../js/jquery-ui/jquery-ui.js"></script>
        <script src="../../js/jquery-ui/external/blockui/jquery-blockui.js"></script>
        <script src="../../js/functions/formulasK.js"></script>
        <script src="../../js/functions/formulasM.js"></script>
        <script src="../../js/functions/functions.js"></script>
        <script src="../../js/jspdf/jspdf.min.js" type="text/JavaScript" > </script>
        <script src="../../js/jspdf/autotable.min.js" type="text/JavaScript" > </script>
        <script src="../../bower_components/morrisjs/morris.js"></script>
        <script src="../../dist/js/sb-admin-2.js"></script>
        <script src="../../bower_components/metisMenu/dist/metisMenu.min.js"></script>
        <script src="../../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
        <script src="../../bower_components/raphael/raphael-min.js"></script>
        <script src="../../js/dataTables/jquery.dataTables.js" type="text/javascript"></script>
        <link rel="stylesheet" href="../../js/jquery-ui/jquery-ui.css">
        <link rel="stylesheet" href="../../bower_components/morrisjs/morris.css">
        <link rel="stylesheet" href="../../bower_components/bootstrap/dist/css/bootstrap.min.css" />
        <link rel="stylesheet" href="../../bower_components/metisMenu/dist/metisMenu.min.css" />
        <link rel="stylesheet" href="../../dist/css/timeline.css" >
        <link rel="stylesheet" href="../../dist/css/sb-admin-2.css" >
        <link rel="stylesheet" href="../../bower_components/font-awesome/css/font-awesome.min.css" type="text/css">
        <link rel="stylesheet" href="../../css/dataTables/jquery.dataTables.min.css" type="text/css">
        <link rel="stylesheet" href="../../css/user-profiles-list-basic.css">
        <link rel="stylesheet" href="../../css/menu.css">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.13/css/jquery.dataTables.min.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/select/1.2.1/css/select.dataTables.min.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.2.4/css/buttons.dataTables.min.css">
    </head>

    <body>
        <div id="wrapper">
            <jsp:include page="../../allmenu.jsp"/>
            <div id="page-wrapper">
                <div id="content">
                    <div class="row">


                        <div class="col-lg-9">
                            <h2>This module validates the capacity of the meters to be installed in natural gas transport or distribution applications</h2>
                        </div>
                        <div class="col-lg-3"> 

                            <!-- Button trigger modal -->
                            <p>
                                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_sh()">
                                    Record
                                </button>
                            </p>

                            <!-- MODAL -->
                            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                            <h4 class="modal-title" id="myModalLabel">Record</h4>
                                        </div>
                                        <div class="modal-body">
                                            <div id="div-table_sh"></div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- FIN MODAL -->
                        </div>

                        <div class="col-lg-9">
                            Description:  
                            <input  class="form-control" type="text" id="description_sh" name="description_sh"><br>
                            Projects: 
                            <select class="form-control" id="proyects_sel_sh" name="proyects_sel_sh"> </select>

                        </div>
                    </div>
                    <hr>

                    <div class="row">
                        <div class="col-lg-6">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    Input Data
                                </div>
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-lg-12">

                                            <div class="form-group col-lg-12">
                                                <div>
                                                    <label>Trademark / Model :</label>
                                                </div>
                                                <div id = "div_ma_sel_sh">
                                                    <input class="form-control" type="text" id="ma_sel_sh" name="ma_sel_sh" onchange="onchange_Input_sh(this)" required value="Segun vendor list.">
                                                </div>
                                            </div>
                                            <div class="form-group col-lg-12">
                                                <div>
                                                    <label>Size(in):</label>
                                                </div>
                                                <div id = "div_tam_sel_sh">
                                                    <select class="form-control" id="tam_sel_sh" name="tam_sel_sh"> </select>
                                                </div>
                                            </div>
                                            <div class="form-group col-lg-12">
                                                <div>
                                                    <label>Connections:</label>
                                                </div>
                                                <div id = "div_conex_sel_sh">
                                                    <select class="form-control" id="conex_sel_sh" name="conex_sel_sh"> </select>
                                                </div>
                                            </div>


                                            <div class="form-group col-md-12">
                                                <label>Body Material:</label>
                                                <div  id = "div_material_sh">
                                                    <select class="form-control" id="material_sh" name="material_sh" onchange="cleanOut_sh()"> </select>
                                                </div>
                                            </div>
                                            <div class="form-group col-md-12">                 
                                                <label>Type of protection mechanism:</label>                  
                                                <div id="div_mecanismo_sel_sh">
                                                    <select class="form-control" id="mecanismo_sel_sh" name="mecanismo_sel_sh" onchange="cleanOut_sh()"> </select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-md-12">
                                                    <label>Closing pressure set(min):</label>
                                                </div>

                                                <div class="col-md-8">
                                                    <input value="200" class="form-control" type="text" id="pmin_sh" name="pmin_sh" onchange="onchange_Input_sh(this)" required>
                                                </div>
                                                <div class="col-md-4" id="div_pmin_sel_sh">
                                                    <select class="form-control" id="pmin_sel_sh" name="pmin_sel_sh" disabled></select> 
                                                </div>

                                            </div>
                                            <div class="form-group">
                                                <div class="col-md-12">
                                                    <label>Closing pressure set (max):</label>
                                                </div>
                                                <div class="col-md-8">
                                                    <input value="380" class="form-control" type="text" id="pmax_sh" name="pmax_sh" onchange="onchange_Input_sh(this)" required>
                                                </div>
                                                <div class="col-md-4" id="div_pmax_sel_sh">
                                                    <select class="form-control" id="pmax_sel_sh" name="pmax_sel_sh"></select> 
                                                </div>

                                            </div>

                                            <div class="form-group">
                                                <div class="col-md-12">
                                                    <label>Normal working pressure:</label>
                                                </div>
                                                <div class="col-md-8">
                                                    <input value="750" class="form-control" type="text" id="prest_sh" name="prest_sh" onchange="onchange_Input_sh(this)" required>
                                                </div>
                                                <div class="col-md-4" id="div_prest_sel_sh">
                                                    <select class="form-control" id="prest_sel_sh" name="prest_sel_sh"></select> 
                                                </div>

                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>



                        <div class="col-lg-6">

                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    Results
                                </div>
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="form-group">
                                                <label>Estimated maximum flow rate (delta P = 20 psid) [KPCH]</label>
                                                <input type="text" id="capamax_sh" name="capamax_sh" readonly required class="form-control">
                                            </div> 
                                            <div class="form-group">
                                                <label>Part number of spring BMS1 (Alto):</label>            
                                                <input type="text" id="partenum1_sh" name="partenum1_sh" readonly required class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label>Specification Color BMS1 (Alto):</label>
                                                <input type="text" id="color1_sh" name="color1_sh" readonly required class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label>Maximum senso pressure at input BMS1 (Alto)</label>
                                                <input type="text" id="maxpres1_sh" name="maxpres1_sh" readonly required class="form-control">
                                            </div> 
                                            <div class="form-group">
                                                <label>Part number of spring BMS2 (Bajo):</label>            
                                                <input type="text" id="partenum2_sh" name="partenum2_sh" readonly required class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label>Specification Color BMS2 (Bajo):</label>
                                                <input type="text" id="color2_sh" name="color2_sh" readonly required class="form-control">
                                            </div> 
                                            <div class="form-group">
                                                <label>Maximum senso pressure at the BMS2 entrance(Bajo)</label>
                                                <input type="text" id="maxpres2_sh" name="maxpres2_sh" readonly required class="form-control">
                                            </div> 

                                            <input type="button" id="calculateBtn_sh" name="calculateBtn_sh" value="Calculate" onclick="calculate_sh()" class="btn btn-info btn-block">
                                            <input type="button" id="saveBtn_sh" name="saveBtn_sh" value="Save" onclick="save_sh()" class="btn btn-success btn-block">   
                                            <input type="button" id="delteBtn_sh" name="delteBtn_sh" value="Delete" onclick="delete_sh()" class="btn btn-danger btn-block">
                                            <input type="button" id="datasheetgen_sh" name="datasheetgen_sh" value="Generate Datasheet" onclick="load_datasheet_sh()" class="btn btn-success btn-block">   


                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-12">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    Graphics
                                </div>
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div id="graficaLineal_sh"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="col-md-3">
                                <input type="button" id="cleanAllBtn_sh" name="cleanBtn_sh" value="Clean All Data" onclick="cleanAll_sh()" class="btn btn-warning btn-block">
                            </div>
                            <div class="col-md-3">
                                <input type="button" id="cleanInputBtn_sh" name="cleanBtn_sh" value="Clean Input Data" onclick="cleanIn_sh()" class="btn btn-warning btn-block">
                            </div>
                            <div class="col-md-3">
                                <input type="button" id="cleanOutputBtn_sh" name="cleanBtn_sh" value="Clean Output Data" onclick="cleanOut_sh()" class="btn btn-warning btn-block">
                            </div>

                        </div>
                    </div>

                    <div id="load_Dialog_sh" title="Basic dialog" style='display:none;'>
                        <p>Successfully uploaded data</p>
                    </div>

                    <div id="save_Dialog_sh" title="Basic dialog" style='display:none;'>
                        <p>Data saved successfully</p>
                    </div>

                    <div id="error_Dialog_sh" title="Basic dialog" style='display:none;'>
                        <p>An error has occurred in the process</p>
                    </div>

                    <div id="calculate_Dialog_sh" title="Basic dialog" style='display:none;'>
                        <p>Calculation done successfully</p>
                    </div>

                    <div id="delete_Dialog_sh" title="Basic dialog" style='display:none;'>
                        <p>Successfully deleted record</p>
                    </div>

                    <div id="dialog-confirm_sh" title="Delete record" style='display:none;'>
                        <p><span class="ui-icon ui-icon-alert" style="float:left; margin:12px 12px 20px 0;"></span>
                            Are you sure you want to permanently delete this record?
                        </p>
                    </div>
                    <input type="hidden" id="id_sh" name="id_sh">  
                    <input type="hidden" id="opt_sh" name="opt_sh">

                </div>
            </div>

            <script>
                $(document).ready(function () {
                    $("#opt_sh").val("1");
                    load_tamano_sh();
                    load_fluE_sel_sh();
                    load_mecanismo_sh();
                    load_material_sh();
                    load_conexiones_sh();
                    getproyectos(<%=session.getAttribute("idusu")%>,
                            $("#proyects_sel_sh"),
                            $("#error_Dialog_sh"));
                });

                function delete_sh() {

                }

                function deleteconfirm_sh() {

                }

                function save_sh() {

                    var parametros = {
                        "ma_sel_sh": $("#ma_sel_sh").val(),
                        "tam_sel_sh": $("#tam_sel_sh").val(),
                        "conex_sel_sh": $("#conex_sel_sh").val(),
                        "material_sh": $("#material_sh").val(),
                        "mecanismo_sel_sh": $("#mecanismo_sel_sh").val(),
                        "pmin_sh": $("#pmin_sh").val(),
                        "pmax_sh": $("#pmax_sh").val(),
                        "pmin_sel_sh": $("#pmin_sel_sh").val(),
                        "pmax_sel_sh": $("#pmax_sel_sh").val(),
                        "prest_sh": $("#prest_sh").val(),
                        "prest_sel_sh": $("#prest_sel_sh").val(),
                        "capamax_sh": $("#capamax_sh").val(),
                        "partenum1_sh": $("#partenum1_sh").val(),
                        "color1_sh": $("#color1_sh").val(),
                        "maxpres1_sh": $("#maxpres1_sh").val(),
                        "partenum2_sh": $("#partenum2_sh").val(),
                        "color2_sh": $("#color2_sh").val(),
                        "maxpres2_sh": $("#maxpres2_sh").val(),
                        "idproyect": $("#proyects_sel_sh").val(),
                        "opcion": $("#opt_sh").val(),
                        "iduser": <%=session.getAttribute("idusu")%>,
                        "id_sh": 1,
                        "description_sh": $("#description_sh").val(),
                        "from": "sh"
                    };
                    var isOk = validate(parametros);
                    if (isOk === false) {
                        alert("You must perform the calculation and fill out the description");
                    } else {

                        if ($("#opt_sh").val() == 2) {
                            parametros.id_sh = $("#id_sh").val();
                        }

                        $.ajax({
                            type: "POST",
                            url: "../manager.jsp",
                            data: parametros,
                            dataType: 'json',
                            beforeSend: function (xhr) {
                                block("Cargando...");
                            },
                            success: function (data, status, request) {
                                $("#id_sh").val(data.row.id);
                                $("#opt_sh").val("2");
                                show_OkDialog($("#save_Dialog_sh"), "Satisfactory process");
                            },
                            error: function (xhr, ajaxOptions, err) {
                                alert(err);
                                show_OkDialog($("#error_Dialog_sh"), "Error");
                            },
                            complete: function () {
                                unBlock();
                            }
                        });
                    }
                }


                function calculate_sh() {

                    var variables = {
                        "prest_sh": $("#prest_sh").val(),
                        "tam_sel_sh": $("#tam_sel_sh").val(),
                        "pmin_sh": $("#pmin_sh").val(),
                        "pmax_sh": $("#pmax_sh").val()

                    };
                    var uni = {
                        "prest_sel_sh": $("#prest_sel_sh").val().split(",")[1],
                        "pmin_sel_sh": $("#pmin_sel_sh").val().split(",")[1],
                        "pmax_sel_sh": $("#pmax_sel_sh").val().split(",")[1],
                        "mecanismo_sel_sh": $("#mecanismo_sel_sh").val().split(",")[1]
                    };
                    var isOk = validate(variables);
                    if (isOk === false) {
                        alert("You must complete all fields");
                    } else {

                        var res = valslamshut_Form(variables, uni);
                        $("#capamax_sh").val(res[0]);
                        $("#partenum1_sh").val(res[1]);
                        $("#color1_sh").val(res[2]);
                        $("#maxpres1_sh").val(res[3]);
                        $("#partenum2_sh").val(res[4]);
                        $("#color2_sh").val(res[5]);
                        $("#maxpres2_sh").val(res[6]);
                        setGrafica_sh();
                        show_OkDialog($("#calculate_Dialog_sh"), "Satisfactory process");
                    }
                }

                function onchange_Input_sh(inp) {

                    var sw = validateDecimal(inp.value);
                    if (sw != true) {
                        inp.value = "";
                    }
                    onchange_Input_zero(inp);
                    cleanOut_sh();
                }

                function cleanOut_sh() {
                    $("#partenum1_sh").val("");
                    $("#capamax_sh").val("");
                    $("#color1_sh").val("");
                    $("#partenum2_sh").val("");
                    $("#maxpres1_sh").val("");
                    $("#color2_sh").val("");
                    $("#maxpres2_sh").val("");
                    $("#graficaLineal_sh").html("");
                }

                function cleanIn_sh() {
                    $("#ma_sel_sh").val("");
                    $("#material_sh").val("");
                    $("#pmin_sh").val("");
                    $("#pmax_sh").val("");
                    $("#prest_sh").val("");
                }

                function cleanAll_sh() {
                    cleanIn_sh();
                    cleanOut_sh();
                    $("#description_sh").val("");
                }


                function load_form_sh(id) {

                    var parametros = {
                        "id": id,
                        "opcion": "4",
                        "from": "sh"
                    };
                    $.ajax({
                        type: "POST",
                        url: "../manager.jsp",
                        data: parametros,
                        dataType: 'json',
                        beforeSend: function (xhr) {
                            cleanAll_sh();
                            block("Cargado datos...");
                        },
                        success: function (data, status, request) {
                            if (data != null)
                            {

                                var tags = Object.keys(data.row);
                                for (var i = 0; i < tags.length; i++) {

                                    $("#" + tags[i]).val(data.row[tags[i]]);
                                }


                                $("#proyects_sel_sh").val(data.row.id_proyect);
                                $("#opt_sh").val("2");
                                $("#id_sh").val(data.row.id);
                                setGrafica_sh();
                            } else {
                                $("#opt_sh").val("1");
                            }

                        },
                        error: function (xhr, ajaxOptions, err) {
                            $("#opt_sh").val("1");
                            show_OkDialog($("#error_Dialog_sh"), "Error");
                        },
                        complete: function () {
                            unBlock();
                        }
                    });
                }


                function load_history_sh() {
                    var parametros = {
                        "iduser": <% out.print(session.getAttribute("idusu"));%>,
                        "opcion": "6",
                        "nombre": "historial",
                        "from": "sh"
                    };
                    $.ajax({
                        type: "POST",
                        url: "../manager.jsp",
                        data: parametros,
                        dataType: 'json',
                        async: false,
                        beforeSend: function (xhr) {
                            $("#opt_sh").val("1");
                            $("#id_sh").val("");
                            cleanAll_sh();
                            block("Cargado datos...");
                        },
                        success: function (data, status, request) {

                            if (data !== null) {
                                var tags = Object.keys(data.historial[0]);
                                var tamano = data.size;
                                var html = "<table class='table table-bordered table-striped'>";
                                html += "<thead>";
                                html += "<tr>";
                                html += "<th>Creation date</th>";
                                html += "<th>Description</th>";
                                html += "<th>Load</th>";
                                html += "</tr>";
                                html += "</thead>";
                                if (tamano > 0) {

                                    html += '<tbody>';
                                    for (var i = 0; i < tamano; i++) {
                                        html += "<tr>";
                                        html += "<td>" + data.historial[i].date + "</td>";
                                        html += "<td>" + data.historial[i].description_sh + "</td>";
                                        html += "<td><a href='#' onClick='load_form_sh(" + data.historial[i].id + ")'><span class='glyphicon glyphicon-plus' aria-hidden='true'></span></a></td>";
                                        html += "<tr>";
                                    }
                                    html += '</tbody>';
                                } else {
                                    html += '<p>No records available.</p>';
                                }
                                html += "</table><br><br>";
                            } else {
                                html = '<p>No records available.</p>';
                            }
                            $("#div-table_sh").empty();
                            $("#div-table_sh").html(html);
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_sh"), "Error");
                        },
                        complete: function () {
                            unBlock();
                        }
                    });
                }


                function load_conexiones_sh() {

                    var parametros = {
                        "combo": "conval",
                        "opcion": "5"
                    };
                    $.ajax({
                        type: "POST",
                        url: "../manager.jsp",
                        data: parametros,
                        async: false,
                        beforeSend: function (xhr) {
                            block("Cargando...");
                        },
                        success: function (data, status, request) {
                            var newHtml = "<select class='form-control' name='conex_sel_sh' id='conex_sel_sh' onchange='cleanOut_sh()'>" + data;
                            $("#div_conex_sel_sh").html(newHtml);
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_sh"), "Error");
                        },
                        complete: function () {
                            unBlock();
                        }
                    });
                }

                function load_material_sh() {

                    var parametros = {
                        "combo": "matval",
                        "opcion": "5"
                    };
                    $.ajax({
                        type: "POST",
                        url: "../manager.jsp",
                        data: parametros,
                        async: false,
                        beforeSend: function (xhr) {
                            block("Cargando...");
                        },
                        success: function (data, status, request) {
                            var newHtml = "<select class='form-control' name='material_sh' id='material_sh' onchange='cleanOut_sh()'>" + data;
                            $("#div_material_sh").html(newHtml);
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_sh"), "Error");
                        },
                        complete: function () {
                            unBlock();
                        }
                    });
                }

                function load_mecanismo_sh() {

                    var parametros = {
                        "combo": "meval",
                        "opcion": "5"
                    };
                    $.ajax({
                        type: "POST",
                        url: "../manager.jsp",
                        data: parametros,
                        async: false,
                        beforeSend: function (xhr) {
                            block("Cargando...");
                        },
                        success: function (data, status, request) {
                            var newHtml = "<select class='form-control' name='mecanismo_sel_sh' id='mecanismo_sel_sh' onchange='cleanOut_sh()'>" + data;
                            $("#div_mecanismo_sel_sh").html(newHtml);
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_sh"), "Error");
                        },
                        complete: function () {
                            unBlock();
                        }
                    });
                }

                function load_fluE_sel_sh() {
                    var parametros = {
                        "combo": "pres",
                        "opcion": "5"
                    };
                    $.ajax({
                        type: "POST",
                        url: "../manager.jsp",
                        data: parametros,
                        async: false,
                        beforeSend: function (xhr) {
                            block("Cargando...");
                        },
                        success: function (data, status, request) {
                            var newHtml = "<select class='form-control' name='pmin_sel_sh' id= 'pmin_sel_sh' onchange='cleanOut_sh()'>" + data;
                            $("#div_pmin_sel_sh").html(newHtml);
                            $("#pmin_sel_sh").val("65,psig");
                            newHtml = "<select class='form-control' name='pmax_sel_sh' id= 'pmax_sel_sh' onchange='cleanOut_sh()'>" + data;
                            $("#div_pmax_sel_sh").html(newHtml);
                            $("#pmax_sel_sh").val("65,psig");
                            newHtml = "<select class='form-control' name='prest_sel_sh' id= 'prest_sel_sh' onchange='cleanOut_sh()'>" + data;
                            $("#div_prest_sel_sh").html(newHtml);
                            $("#prest_sel_sh").val("65,psig");
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_sh"), "Error");
                        },
                        complete: function () {
                            unBlock();
                        }
                    });
                }

                function load_tamano_sh() {
                    var parametros = {
                        "combo": 'tvals',
                        "opcion": "5"
                    };
                    $.ajax({
                        type: "POST",
                        url: "../manager.jsp",
                        data: parametros,
                        async: false,
                        beforeSend: function (xhr) {
                            block("Cargando...");
                        },
                        success: function (data, status, request) {
                            var newHtml = "<select class='form-control' name='tam_sel_sh' id= 'tam_sel_sh' onchange='cleanOut_sh(true)'>" + data;
                            $("#div_tam_sel_sh").html(newHtml);
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_sh"), "Error");
                        },
                        complete: function () {
                            unBlock();
                        }
                    });
                }

                function load_datasheet_sh() {

                    var flujmin = $("#pmin_sh").val() + " " + $("#pmin_sel_sh option:selected").text();
                    var flujmax = $("#pmax_sh").val() + " " + $("#pmax_sel_sh option:selected").text();
                    var model = $("#ma_sel_sh").val() + ": " + $("#tam_sel_sh option:selected").text() + ", Model " + $("#conex_sel_sh option:selected").text();
                    var outer = "";
                    var ansi = "";
                    var pres = 0;
                    if ($("#material_sh").val().split(",")[1] === "psig") {
                        pres = Number($("#material_sh").val().replace(",", ""));
                    } else {
                        pres = Number($("#material_sh").val().replace(",", "")) * 14.504;
                    }


                    if (pres < 275) {
                        outer = "Flanged ANSI 150 RF";
                        ansi = "ANSI 150";
                    } else if (pres < 740) {
                        outer = "Flanged ANSI 300 RF";
                        ansi = "ANSI 300";
                    } else {
                        outer = "Flanged ANSI 600 RF";
                        ansi = "ANSI 600";
                    }

                    var parametros = {
                        "opcion": "102",
                        "linep": $("#material_sh").val() + " " + $("#material_sh option:selected").text(),
                        "type": "Masico",
                        "flowr": flujmin + " to " + flujmax,
                        "size": $("#conex_sel_sh").val().split(",")[2] + " Inch", //=+CONCATENAR(ROMET!X25;"  ";ROMET!Y25)
                        "outere": outer,
                        "ansic": ansi,
                        "model": model,
                        "temp": $("#prest_sh").val() + " " + $("#prest_sel_sh option:selected").text(),
                        "iduser": <%=session.getAttribute("idusu")%>,
                        "proyecto": $("#proyects_sel_sh option:selected").text(),
                        "from": "sh"

                    };
                    $.ajax({
                        type: "POST",
                        url: "../manager.jsp",
                        data: parametros,
                        async: false,
                        dataType: "json",
                        beforeSend: function (xhr) {
                            block("Cargando...");
                        },
                        success: function (data, status, request) {

                            alert("Successfully generated file");
                            var file = data.row.file;
                            var path = data.row.path;
                            window.location = "bajar.jsp?filename=" + file + "&path=" + path;
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_sh"), "Error");
                        },
                        complete: function () {
                            unBlock();
                        }
                    });
                }

                function setGrafica_sh() {
                    var j = 0;
                    //var data = [];
                    var fun = $("#tam_sel_sh").val().split(",");
                    var x0 = parseFloat(fun[0]);
                    var x1 = parseFloat(fun[1]);
                    var x2 = parseFloat(fun[2]);
                    var x3 = parseFloat(fun[3]);
                    var x4 = parseFloat(fun[4]);
                    var x5 = parseFloat(fun[5]);
                    var x6 = parseFloat(fun[6]);
                    var evemin = 0;
                    var evemax = 0;
                    var evepo = 0;
                    var prest = get_Pres(parseFloat($("#prest_sh").val()), 0, $("#prest_sel_sh").val().split(",")[1], "psig");
                    var pmin = get_Pres(parseFloat($("#pmin_sh").val()), 0, $("#pmin_sel_sh").val().split(",")[1], "psig");
                    var pmax = get_Pres(parseFloat($("#pmax_sh").val()), 0, $("#pmax_sel_sh").val().split(",")[1], "psig");
                    var min = Math.min(prest, pmin, pmax);
                    var xpunto, xmin, xmax;
                    var valX = [];
                    var valY = [];
                    for (var i = 0; i <= 1450; i = i + 5) {
                        var a = (x0 + x1 * i + x2 * Math.pow(i, 2) + x3 * Math.pow(i, 3) + x4 * Math.pow(i, 4) + x5 * Math.pow(i, 5) + x6 * Math.pow(i, 6)) * 1;
                        //data[j] = {x: i.toString(), a: a};
                        valX[valX.length] = i;
                        valY[valY.length] = a;
                        if (i == min) {
                            xmin = i;
                            evemin = j;
                        }

                        if (i == pmax) {
                            xmax= i;
                            evemax = j;
                        }

                        if (i == prest) {
                            xpunto = i;
                            evepo = j;
                        }

                        j += 1;
                    }
                    
                    var punto1 = {
                        x: [xmin],
                        y: [evemin],
                        mode: 'markers',
                        name: 'Operating Point'
                    };
                    
                    var punto2 = {
                        x: [xmax],
                        y: [evemax],
                        mode: 'markers',
                        name: 'Operating Point'
                    };

                    var cap = {
                        x: valX,
                        y: valY,
                        mode: 'lines',
                        name: 'Capacity'
                    };

                    var punto = {
                        x: [xpunto],
                        y: [evepo],
                        mode: 'markers',
                        name: 'Operating Point'
                    };
                    
                    

                    $("#graficaLineal_sh").html("");
                    var data = [punto, cap, punto1, punto2];

                    var layout = {
                        title: '',
                        xaxis: {
                            title: 'Pressure [PSIG]'
                        },
                        yaxis: {
                            title: 'Capacity [KPCH]'
                        }
                    };

                    Plotly.newPlot('graficaLineal_sh', data, layout);


                }

                function getproyectos_sh() {

                    var parametros = {
                        "opcion": 207,
                        "from": "newp",
                        "id_user":<%=session.getAttribute("idusu")%>,
                        "type": <%=session.getAttribute("tipo")%>

                    };
                    $.ajax({
                        type: "POST",
                        url: "../manager.jsp",
                        data: parametros,
                        dataType: 'json',
                        async: false,
                        beforeSend: function () {


                        },
                        success: function (data, status, request) {

                            var pro = [];
                            if (data.liderproyecto !== undefined) {

                                for (var i = 0; i < data.liderproyecto.length; i++) {
                                    pro[pro.length] = data.liderproyecto[i].id_proyecto;
                                    $('#proyects_sel_sh').append('<option value="' + pro[pro.length - 1] + '" >' + data.liderproyecto[i].name + '</option>');
                                }
                            }

                            var ind;
                            if (data.liderfase !== undefined) {

                                for (var i = 0; i < data.liderfase.length; i++) {
                                    ind = pro.indexOf(data.liderfase.id_proyecto);
                                    if (ind === -1) {
                                        pro[pro.length] = data.liderfase[i].id_proyecto;
                                        $('#proyects_sel_sh').append('<option value="' + pro[pro.length - 1] + '" >' + data.liderfase[i].name + '</option>');
                                    }
                                }
                            }

                            if (data.liderespecialidad !== undefined) {
                                for (var i = 0; i < data.liderespecialidad.length; i++) {
                                    ind = pro.indexOf(data.liderespecialidad[i].id_proyecto);
                                    if (ind === -1) {
                                        pro[pro.length] = data.liderespecialidad.id_proyecto;
                                        $('#proyects_sel_sh').append('<option value="' + pro[pro.length - 1] + '" >' + data.liderespecialidad[i].name + '</option>');
                                    }
                                }
                            }



                        },
                        error: function (xhr, ajaxOptions, err) {
                            alert(err);
                            // show_OkDialog($("#error_Dialog_usu"), "Error");
                        },
                        complete: function (data, status, request) {

                        }
                    });
                }

            </script>
        </div>
    </body>
</html>