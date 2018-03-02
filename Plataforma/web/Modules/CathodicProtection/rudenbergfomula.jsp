<%-- 
    Document   : index
    Created on : 03-mar-2016, 17:02:38
    Author     : kata__000
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <jsp:include page="../../head.jsp" />
    <head>
        <%@include file="../../includehead2.html" %>
    </head>

    <body>
        <div class="row">
            <div class="col-lg-9">
                <h2><strong>Cathodic Protection: </strong> 8.3. Rudemberg’s Formula For the Placement of an Anode Ground Bed</h2>

            </div>
            <div class="col-lg-3"> 

                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_rf()">
                    Record
                </button>

                <!-- MODAL -->
                <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="myModalLabel">Record</h4>
                            </div>
                            <div class="modal-body">
                                <div id="div-table_rf"></div>
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
                <input  class="form-control" type="text" id="description_rf" name="description_rf"><br>
                Projects: 
                <select class="form-control" id="proyects_sel_rf" name="proyects_sel_rf"> </select>

            </div>
        </div>
        <hr>        
        <div class="col-lg-9">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Input Data
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="form-group">
                                <label class="col-md-12">Ground Anode Current:</label>
                                <div class="col-md-8">
                                    <input class="form-control" value="52" type="text" id="grounda_rf" name="grounda_rf" onchange="onchange_Input_rf(this)" required>
                                </div>
                                <div class="col-md-4"  id="div_agr_sel_rf">
                                    <select class="form-control" id="gr_sel_rf" name="gr_sel_rf">  <option value="1"> A </option></select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-12">Actual Soil Resistivity:</label>
                                <div class="col-md-8">
                                    <input class="form-control" value="23" type="text" id="actuals_rf" name="actuals_rf" onchange="onchange_Input_rf(this)" required>
                                </div>
                                <div class="col-md-4"  id="div_act_sel_rf">
                                    <select class="form-control" id="act_sel_rf" name="act_sel_rf">  </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-12">Length of Anode in Earth:</label>
                                <div class="col-md-8">
                                    <input class="form-control" value="10" type="text" id="lengtha_rf" name="lengtha_rf" onchange="onchange_Input_rf(this)" required>
                                </div>
                                <div class="col-md-4"  id="div_xdi_sel_rf">
                                    <select class="form-control" id="xdi_sel_rf" name="xdi_sel_rf"> </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-12">X Distance from the ground to anode:</label>
                                <div class="col-md-8">
                                    <input class="form-control" value="3" type="text" id="xdistance_rf" name="xdistance_rf" onchange="onchange_Input_rf(this)" required>
                                </div>
                                <div class="col-md-4"  id="div_al_sel_rf">
                                    <select class="form-control" id="al_sel_rf" name="al_sel_rf"> </select>
                                </div>
                            </div>


                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-3">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Results
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="form-group">
                                <label>Potential at X caused by Ground Anode Current [V]:</label>
                                <input type="text" id="potentialx_rf" name="potentialx_rf" readonly required class="form-control">
                            </div>
                            <input type="button" id="calculateBtn_rf" name="calculateBtn_rf" value="Calculate" onclick="calculate_rf()" class="btn btn-info btn-block">
                            <input type="button" id="saveBtn_rf" name="saveBtn_rf" value="Save" onclick="save_rf()" class="btn btn-success btn-block">   
                            <input type="button" id="delteBtn_rf" name="delteBtn_rf" value="Delete" onclick="delete_rf()" class="btn btn-danger btn-block">

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-12">
            <div class="col-md-3">
                <input type="button" id="cleanAllBtn_rf" name="cleanAllBtn_rf" value="Clean All Data" onclick="cleanAll_rf()" class="btn btn-warning btn-block"></div>
            <div class="col-md-3">
                <input type="button" id="cleanInputBtn_rf" name="cleanInputBtn_rf" value="Clean Input Data" onclick="cleanIn_rf()" class="btn btn-warning btn-block"></div>
            <div class="col-md-3">
                <input type="button" id="cleanOutputBtn_rf" name="cleanOutputBtn_rf" value="Clean Output Data" onclick="cleanOut_rf()" class="btn btn-warning btn-block"></div>
        </div>
        <input type="hidden" id="id_rf" name="id_rf">  
        <input type="hidden" id="opt_rf" name="opt_rf" value="1"> 

        <script>

            $(document).ready(function () {

                getproyectos(<%=session.getAttribute("idusu")%>,
                        $("#proyects_sel_rf"),
                        $("#error_Dialog_rf"));
                        load_ohmcm_sel_rf();
                        load_in_sel_rf();
            });
            
            function load_ohmcm_sel_rf() {
                var parametros = {
                    "combo": "ohm2",
                    "opcion": "5"
                };
                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    async: false,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        var newHtml = "<select class='form-control' name='act_sel_rf' id= 'act_sel_rf' onchange='cleanOut_rf()'>" + data;
                        $("#div_act_sel_rf").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_rf"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            
            function load_in_sel_rf() {
                var parametros = {
                    "combo": "in",
                    "opcion": "5"
                };
                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    async: false,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        var newHtml = "<select class='form-control' name='xdi_sel_rf' id= 'xdi_sel_rf' onchange='cleanOut_rf()'>" + data;
                        $("#div_xdi_sel_rf").html(newHtml);
                        
                        newHtml = "<select class='form-control' name='al_sel_rf' id= 'al_sel_rf' onchange='cleanOut_rf()'>" + data;
                        $("#div_al_sel_rf").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_rf"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_history_rf() {
                var parametros = {
                    "idproyect": $("#proyects_sel_rf").val(),
                    "iduser": <% out.print(session.getAttribute("idusu"));%>,
                    "opcion": "6",
                    "nombre": "historial",
                    "from": "rf"
                };

                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    dataType: 'json',
                    async: false,
                    beforeSend: function (xhr) {
                        cleanAll_rf();
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
                            html += "<th>Code</th>";
                            html += "<th>Description</th>";
                            html += "<th>Load</th>";
                            html += "</tr>";
                            html += "</thead>";
                            if (tamano > 0) {

                                html += '<tbody>';
                                for (var i = 0; i < tamano; i++) {
                                    html += "<tr>";
                                    html += "<td>" + data.historial[i].date + "</td>";
                                    html += "<td>" + data.historial[i].id + "</td>";
                                    html += "<td>" + data.historial[i].description_rf + "</td>";
                                    html += "<td><a href='#' onClick='load_form_rf(" + data.historial[i].id + ")'><span class='glyphicon glyphicon-plus' aria-hidden='true'></span></a></td>";
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
                        $("#div-table_rf").empty();
                        $("#div-table_rf").html(html);

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_rf"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }


            function load_form_rf(id) {
                var parametros = {
                    "id": id,
                    "from": "rf",
                    "opcion": "4"
                };

                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    dataType: 'json',
                    beforeSend: function (xhr) {
                        cleanAll_rf();
                        block("Cargado datos...");
                    },
                    success: function (data, status, request) {
                        if (data !== null)
                        {
                            var tags = Object.keys(data.row);

                            for (var i = 0; i < tags.length; i++) {
                                if (tags[i] != "date" && tags[i] != "id_proyect" && tags[i] != "id_user")
                                {
                                    $("#" + tags[i]).val(data.row[tags[i]]);
                                }
                            }

                            $("#opt_rf").val("2");
                            $("#id_rf").val(data.row.id);
                            $("#proyects_sel_rf").val(data.row.id_proyect);
                        } else {
                            $("#opt_rf").val("1");
                        }

                    },
                    error: function (xhr, ajaxOptions, err) {
                        $("#opt_rf").val("1");
                        show_OkDialog($("#error_Dialog_rf"), "Error");

                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function onchange_Input_rf(inp) {
                var sw = validateDecimal(inp.value);

                if (sw != true) {
                    inp.value = "";
                }
                onchange_Input_zero(inp);
                cleanOut_rf();
            }

            function cleanOut_rf() {
                $("#potentialx_rf").val("");
            }

            function cleanIn_rf() {
                $("#actuals_rf").val("");
                $("#grounda_rf").val("");
                $("#lengtha_rf").val("");
                $("#xdistance_rf").val("");
            }

            function cleanAll_rf() {
                cleanIn_rf();
                cleanOut_rf();
                $("#description_rf").val("");
            }

            function save_rf() {


                var parametros = {
                    "grounda_rf": $("#grounda_rf").val(),
                    "actuals_rf": $("#actuals_rf").val(),
                    "lengtha_rf": $("#lengtha_rf").val(),
                    "xdistance_rf": $("#xdistance_rf").val(),
                    "potentialx_rf": $("#potentialx_rf").val(),
                    "gr_sel_rf": $("#gr_sel_rf").val(),
                    "act_sel_rf": $("#act_sel_rf").val(),
                    "xdi_sel_rf": $("#xdi_sel_rf").val(),
                    "al_sel_rf": $("#al_sel_rf").val(),
                    "idproyect": $("#proyects_sel_rf").val(),
                    "iduser": <% out.print(session.getAttribute("idusu"));%>,
                    "opcion": $("#opt_rf").val(),
                    "id_rf": 1,
                    "description_rf": $("#description_rf").val(),
                    "from": "rf"
                };

                var isOk = validate(parametros);

                if (isOk === false) {
                    alert("Debe realizar el càlculo");
                } else {
                    if ($("#opt_rf").val() == 2) {
                        parametros.id_rf = $("#id_rf").val();
                    }

                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        dataType: 'json',
                        beforeSend: function (xhr) {
                            block("Cargando...");
                        },
                        success: function (data, status, request) {
                            $("#id_rf").val(data.row.id);
                            $("#opt_rf").val("2");
                            show_OkDialog($("#save_Dialog_rf"), "Satisfactory process");
                        },
                        error: function (xhr, ajaxOptions, err) {
                            alert(err);
                            show_OkDialog($("#error_Dialog_rf"), "Error");
                        },
                        complete: function () {
                            unBlock();
                        }
                    });
                }


            }

            function calculate_rf() {
                

                var variables = {
                    "grounda_rf": $("#grounda_rf").val().replace(",", ""),
                    "actuals_rf": $("#actuals_rf").val().replace(",", ""),
                    "lengtha_rf": $("#lengtha_rf").val().replace(",", ""),
                    "xdistance_rf": $("#xdistance_rf").val().replace(",", "")
                };
                
                var isOk = validate(variables);

                if (isOk === false) {
                    alert("You must complete all fields");
                } else {

                    var unidades = {
                        "act_sel_rf": $("#act_sel_rf").val().split(",")[1],
                        "al_sel_rf": $("#al_sel_rf").val().split(",")[1],
                        "xdi_sel_rf": $("#xdi_sel_rf").val().split(",")[1]
                    };
                    
                    var res = rudengergsFormula_Form(variables, unidades);

                    $("#potentialx_rf").val(res[0]);

                    show_OkDialog($("#calculate_Dialog_rf"), "Satisfactory process");
                }
            }

            function delete_rf() {

                //Confirmacion
                if ($("#opt_rf").val() == 2) {
                    $("#dialog-confirm_rf").dialog({
                        resizable: false,
                        height: "auto",
                        width: 400,
                        modal: true,
                        buttons: {
                            "Delete": function () {
                                deleteReg_rf();
                                $(this).dialog("close");
                            },
                            Cancelar: function () {
                                $(this).dialog("close");
                            }
                        }
                    });
                } else {
                    alert("You must load a record to be able to delete it");
                }
            }

            function deleteReg_rf() {

                var parametros = {
                    "id_rf": $("#id_rf").val(),
                    "opcion": "3",
                    "iduser": <%=session.getAttribute("idusu")%>,
                    "from": "rf"
                };
                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        $("#id_rf").val("");
                        $("#opt_rf").val("1");
                        cleanAll_rf();
                        show_OkDialog($("#delete_Dialog_rf"), "Satisfactory process");
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_rf"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

        </script>

        <div id="load_Dialog_rf" title="Basic dialog" style='display:none;'>
            <p>Successfully uploaded data</p>
        </div>

        <div id="save_Dialog_rf" title="Basic dialog" style='display:none;'>
            <p>Data saved successfully</p>
        </div>

        <div id="error_Dialog_rf" title="Basic dialog" style='display:none;'>
            <p>An error has occurred in the process</p>
        </div>

        <div id="calculate_Dialog_rf" title="Basic dialog" style='display:none;'>
            <p>Calculation done successfully</p>
        </div>

        <div id="delete_Dialog_rf" title="Basic dialog" style='display:none;'>
            <p>Successfully deleted record</p>
        </div>

        <div id="dialog-confirm_rf" title="Delete record" style='display:none;'>
            <p><span class="ui-icon ui-icon-alert" style="float:left; margin:12px 12px 20px 0;"></span>
                Are you sure you want to permanently delete this record?
            </p>
        </div>
    </body>
</html>