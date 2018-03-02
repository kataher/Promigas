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
                <h2><strong>Cathodic Protection: </strong> 8.2. Resistance to Earth of an Impressed Anode Ground Bed</h2>

            </div>
            <div class="col-lg-3"> 

                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_riagb()">
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
                                <div id="div-table_riagb"></div>
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
                <input  class="form-control" type="text" id="description_riagb" name="description_riagb"><br>
                Projects: 
                <select class="form-control" id="proyects_sel_riagb" name="proyects_sel_riagb"> </select>

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
                                <label class="col-md-12">Resistance to earth for one installed anode:</label>
                                <div class="col-md-8">
                                    <input class="form-control" type="text" id="resistancee_riagb" name="resistancee_riagb" onchange="onchange_Input_riagb(this)" required>
                                </div>
                                <div class="col-md-4"  id="div_res_sel_riagb">
                                    <select class="form-control" id="res_sel_riagb" name="res_sel_riagb"> </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-12">Actual Soil Resistivity:</label>
                                <div class="col-md-8">
                                    <input class="form-control" type="text" id="actuals_riagb" name="actuals_riagb" onchange="onchange_Input_riagb(this)" required>
                                </div>
                                <div class="col-md-4"  id="div_act_sel_riagb">
                                    <select class="form-control" id="act_sel_riagb" name="act_sel_riagb">  </select>
                                </div>
                            </div>
                            <div class="form-group col-md-12">
                                <label>Correction Factor for anode grouping:</label>
                                <input class="form-control" type="text" id="correctionf_riagb" name="correctionf_riagb" onchange="onchange_Input_riagb(this)" required>
                            </div>
                            <div class="form-group col-md-12">
                                <label>Number of Anodes:</label>
                                <input class="form-control" type="text" id="numbera_riagb" name="numbera_riagb" onchange="onchange_Input_riagb(this)" required>
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
                                <label>Total Group Bed to the Earth Resistance [ohm]:</label>
                                <input type="text" id="totalg_riagb" name="totalg_riagb" readonly required class="form-control">
                            </div>
                            <input type="button" id="calculateBtn_riagb" name="calculateBtn_riagb" value="Calculate" onclick="calculate_riagb()" class="btn btn-info btn-block">
                            <input type="button" id="saveBtn_riagb" name="saveBtn_riagb" value="Save" onclick="save_riagb()" class="btn btn-success btn-block">   
                            <input type="button" id="delteBtn_riagb" name="delteBtn_riagb" value="Delete" onclick="delete_riagb()" class="btn btn-danger btn-block">

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-12">
            <div class="col-md-3">
                <input type="button" id="cleanAllBtn_riagb" name="cleanAllBtn_riagb" value="Clean All Data" onclick="cleanAll_riagb()" class="btn btn-warning btn-block"></div>
            <div class="col-md-3">
                <input type="button" id="cleanInputBtn_riagb" name="cleanInputBtn_riagb" value="Clean Input Data" onclick="cleanIn_riagb()" class="btn btn-warning btn-block"></div>
            <div class="col-md-3">
                <input type="button" id="cleanOutputBtn_riagb" name="cleanOutputBtn_riagb" value="Clean Output Data" onclick="cleanOut_riagb()" class="btn btn-warning btn-block"></div>
        </div>
        <input type="hidden" id="id_riagb" name="id_riagb">  
        <input type="hidden" id="opt_riagb" name="opt_riagb" value="1"> 

        <script>

            $(document).ready(function () {

                getproyectos(<%=session.getAttribute("idusu")%>,
                        $("#proyects_sel_riagb"),
                        $("#error_Dialog_riagb"));
                        
                        load_ohmcm_sel_riagb();
            });
            
            function load_ohmcm_sel_riagb() {
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
                        var newHtml = "<select class='form-control' name='res_sel_riagb' id= 'res_sel_riagb' onchange='cleanOut_riagb()'>" + data;
                        $("#div_res_sel_riagb").html(newHtml);
                        
                        newHtml = "<select class='form-control' name='act_sel_riagb' id= 'act_sel_riagb' onchange='cleanOut_riagb()'>" + data;
                        $("#div_act_sel_riagb").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_riagb"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }


            function load_history_riagb() {
                var parametros = {
                    "idproyect": $("#proyects_sel_riagb").val(),
                    "iduser": <% out.print(session.getAttribute("idusu"));%>,
                    "opcion": "6",
                    "nombre": "historial",
                    "from": "riagb"
                };

                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    dataType: 'json',
                    async: false,
                    beforeSend: function (xhr) {
                        cleanAll_riagb();
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
                                    html += "<td>" + data.historial[i].description_riagb + "</td>";
                                    html += "<td><a href='#' onClick='load_form_riagb(" + data.historial[i].id + ")'><span class='glyphicon glyphicon-plus' aria-hidden='true'></span></a></td>";
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
                        $("#div-table_riagb").empty();
                        $("#div-table_riagb").html(html);

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_riagb"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_form_riagb(id) {
                var parametros = {
                    "id": id,
                    "from": "riagb",
                    "opcion": "4"
                };

                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    dataType: 'json',
                    beforeSend: function (xhr) {
                        cleanAll_riagb();
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

                            $("#opt_riagb").val("2");
                            $("#id_riagb").val(data.row.id);
                            $("#proyects_sel_riagb").val(data.row.id_proyect);
                        } else {
                            $("#opt_riagb").val("1");
                        }

                    },
                    error: function (xhr, ajaxOptions, err) {
                        $("#opt_riagb").val("1");
                        show_OkDialog($("#error_Dialog_riagb"), "Error");

                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function onchange_Input_riagb(inp) {
                var sw = validateDecimal(inp.value);

                if (sw != true) {
                    inp.value = "";
                }
                onchange_Input_zero(inp);
                cleanOut_riagb();
            }

            function cleanOut_riagb() {
                $("#totalg_riagb").val("");
            }

            function cleanIn_riagb() {
                $("#actuals_riagb").val("");
                $("#resistancee_riagb").val("");
                $("#correctionf_riagb").val("");
                $("#numbera_riagb").val("");
            }

            function cleanAll_riagb() {
                cleanIn_riagb();
                cleanOut_riagb();

                $("#description_riagb").val("");
            }

            function save_riagb() {

                var parametros = {
                    "resistancee_riagb": $("#resistancee_riagb").val(),
                    "actuals_riagb": $("#actuals_riagb").val(),
                    "correctionf_riagb": $("#correctionf_riagb").val(),
                    "numbera_riagb": $("#numbera_riagb").val(),
                    "res_sel_riagb": $("#res_sel_riagb").val(),
                    "act_sel_riagb": $("#act_sel_riagb").val(),
                    "totalg_riagb": $("#totalg_riagb").val(),
                    "idproyect": $("#proyects_sel_riagb").val(),
                    "iduser": <% out.print(session.getAttribute("idusu"));%>,
                    "opcion": $("#opt_riagb").val(),
                    "id_riagb": 1,
                    "description_riagb": $("#description_riagb").val(),
                    "from": "riagb"
                };

                var isOk = validate(parametros);

                if (isOk === false) {
                    alert("Debe realizar el càlculo");
                } else {

                    if ($("#opt_riagb").val() == 2) {
                        parametros.id_riagb = $("#id_riagb").val();
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
                            $("#id_riagb").val(data.row.id);
                            $("#opt_riagb").val("2");
                            show_OkDialog($("#save_Dialog_riagb"), "Satisfactory process");
                        },
                        error: function (xhr, ajaxOptions, err) {
                            alert(err);
                            show_OkDialog($("#error_Dialog_riagb"), "Error");
                        },
                        complete: function () {
                            unBlock();
                        }
                    });

                }
            }

            function calculate_riagb() {
                var variables = {
                    "resistancee_riagb": $("#resistancee_riagb").val().replace(",", ""),
                    "actuals_riagb": $("#actuals_riagb").val().replace(",", ""),
                    "correctionf_riagb": $("#correctionf_riagb").val().replace(",", ""),
                    "numbera_riagb": $("#numbera_riagb").val().replace(",", "")
                };
                
                var isOk = validate(variables);

                if (isOk === false) {
                    alert("You must complete all fields");
                } else {

                    var unidades = {
                        "res_sel_riagb": $("#res_sel_riagb").val().split(",")[1],
                        "act_sel_riagb": $("#act_sel_riagb").val().split(",")[1]
                    };
                    
                    var res = resistanceEarthIAGB_Form(variables, unidades);

                    $("#totalg_riagb").val(res[0]);

                    show_OkDialog($("#calculate_Dialog_riagb"), "Satisfactory process");
                }
            }

            function delete_riagb() {

                //Confirmacion
                if ($("#opt_riagb").val() == 2) {
                    $("#dialog-confirm_riagb").dialog({
                        resizable: false,
                        height: "auto",
                        width: 400,
                        modal: true,
                        buttons: {
                            "Delete": function () {
                                deleteReg_riagb();
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

            function deleteReg_riagb() {

                var parametros = {
                    "id_riagb": $("#id_riagb").val(),
                    "opcion": "3",
                    "iduser": <%=session.getAttribute("idusu")%>,
                    "from": "riagb"
                };
                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        $("#id_riagb").val("");
                        $("#opt_riagb").val("1");
                        cleanAll_riagb();
                        show_OkDialog($("#delete_Dialog_riagb"), "Satisfactory process");
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_riagb"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

        </script>

        <div id="load_Dialog_riagb" title="Basic dialog" style='display:none;'>
            <p>Successfully uploaded data</p>
        </div>

        <div id="save_Dialog_riagb" title="Basic dialog" style='display:none;'>
            <p>Data saved successfully</p>
        </div>

        <div id="error_Dialog_riagb" title="Basic dialog" style='display:none;'>
            <p>An error has occurred in the process</p>
        </div>

        <div id="calculate_Dialog_riagb" title="Basic dialog" style='display:none;'>
            <p>Calculation done successfully</p>
        </div>

        <div id="delete_Dialog_riagb" title="Basic dialog" style='display:none;'>
            <p>Successfully deleted record</p>
        </div>

        <div id="dialog-confirm_riagb" title="Delete record" style='display:none;'>
            <p><span class="ui-icon ui-icon-alert" style="float:left; margin:12px 12px 20px 0;"></span>
                Are you sure you want to permanently delete this record?
            </p>
        </div>
    </body>
</html>