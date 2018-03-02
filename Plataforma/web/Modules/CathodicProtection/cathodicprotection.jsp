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
                <h2><strong>Cathodic Protection:</strong> 8.9. Cathodic Protection Attenuantion Calculation</h2>
            </div>
            <div class="col-lg-3"> 

                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_cc()">
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
                                <div id="div-table_cc"></div>
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
                <input  class="form-control" type="text" id="description_cc" name="description_cc"><br>
                Projects: 
                <select class="form-control" id="proyects_sel_cc" name="proyects_sel_cc"> </select>

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
                                <label class="col-md-12">Pipe outside diameter:</label>
                                <div class="col-md-8">
                                    <input class="form-control" value="20" type="text" id="pipeod_cc" name="pipeod_cc" onchange="onchange_Input_cc(this)" required>
                                </div>
                                <div class="col-md-4"  id="div_pi_sel_cc">
                                    <select class="form-control" id="pi_sel_cc" name="pi_sel_cc">  </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-12">Wall Thickness:</label>
                                <div class="col-md-8">
                                    <input class="form-control" value="0.5" type="text" id="pipew_cc" name="pipew_cc" onchange="onchange_Input_cc(this)" required>
                                </div>
                                <div class="col-md-4"  id="div_pip_sel_cc">
                                    <select class="form-control" id="pip_sel_cc" name="pip_sel_cc"></select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-12">Half Distance between drain points (anodes):</label>
                                <div class="col-md-8">
                                    <input class="form-control" value="20" type="text" id="halfd_cc" name="halfd_cc" onchange="onchange_Input_cc(this)" required>
                                </div>
                                <div class="col-md-4"  id="div_ha_sel_cc">
                                    <select class="form-control" id="ha_sel_cc" name="ha_sel_cc"> <option value="1,ft"> ft</option></select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-12">Specific Resistance of pipeline material [micro ohm-cm]:</label>
                                <div class="col-md-12">
                                    <input class="form-control" value="18.8" type="text" id="specificr_cc" name="specificr_cc" onchange="onchange_Input_cc(this)" required>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-12">Pipe to Electrolyte insulation resistance:</label>
                                <div class="col-md-8">
                                    <input class="form-control" value="23" type="text" id="pipeel_cc" name="pipeel_cc" onchange="onchange_Input_cc(this)" required>
                                </div>
                                <div class="col-md-4"  id="div_pil_sel_cc">
                                    <select class="form-control" id="pil_sel_cc" name="pil_sel_cc"> <option value="1"> ohm-ft2</option></select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-12">Pipe to Electrolyte potential at the drain point:</label>
                                <div class="col-md-8">
                                    <input class="form-control" value="36" type="text" id="pipeep_cc" name="pipeep_cc" onchange="onchange_Input_cc(this)" required>
                                </div>
                                <div class="col-md-4"  id="div_pie_sel_cc">
                                    <select class="form-control" id="pie_sel_cc" name="pie_sel_cc"> <option value="1"> V</option></select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-12">X - Distance from the Drain Point (anode):</label>
                                <div class="col-md-8">
                                    <input class="form-control" value="10" type="text" id="xdistance_cc" name="xdistance_cc" onchange="onchange_Input_cc(this)" required>
                                </div>
                                <div class="col-md-4"  id="div_xd_sel_cc">
                                    <select class="form-control" id="xd_sel_cc" name="xd_sel_cc"> <option value="1,ft"> ft</option></select>
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
                                <label>Linear Electrical Resisstance of the Pipe Section [ohm/ft]:</label>
                                <input type="text" id="linear_cc" name="linear_cc" readonly required class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Leakage/Transverse Resistance of the pipeline section [ohm-ft]:</label>
                                <input type="text" id="leakage_cc" name="leakage_cc" readonly required class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Characteristics Resistance of the pipeline section [ohms]:</label>
                                <input type="text" id="characteristicsr_cc" name="characteristicsr_cc" readonly required class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Attenuation constant of the pipeline section [1/ft]:</label>
                                <input type="text" id="attenuationc_cc" name="attenuationc_cc" readonly required class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Pipe to Electrolyte Potential at the Distance of X from the Drain Point [V]:</label>
                                <input type="text" id="pipee_cc" name="pipee_cc" readonly required class="form-control">
                            </div>
                            <input type="button" id="calculateBtn_cc" name="calculateBtn_cc" value="Calculate" onclick="calculate_cc()" class="btn btn-info btn-block">
                            <input type="button" id="saveBtn_cc" name="saveBtn_cc" value="Save" onclick="save_cc()" class="btn btn-success btn-block">   
                            <input type="button" id="delteBtn_cc" name="delteBtn_cc" value="Delete" onclick="delete_cc()" class="btn btn-danger btn-block">

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-12">
            <div class="col-md-3">
                <input type="button" id="cleanAllBtn_cc" name="cleanAllBtn_cc" value="Clean All Data" onclick="cleanAll_cc()" class="btn btn-warning btn-block"></div>
            <div class="col-md-3">
                <input type="button" id="cleanInputBtn_cc" name="cleanInputBtn_cc" value="Clean Input Data" onclick="cleanIn_cc()" class="btn btn-warning btn-block"></div>
            <div class="col-md-3">
                <input type="button" id="cleanOutputBtn_cc" name="cleanOutputBtn_cc" value="Clean Output Data" onclick="cleanOut_cc()" class="btn btn-warning btn-block"></div>
        </div>
        <input type="hidden" id="id_cc" name="id_cc">  
        <input type="hidden" id="opt_cc" name="opt_cc" value="1"> 

        <script>

            $(document).ready(function () {
                //load_history_cc(); 
                
                load_in2_sel_cc();

                getproyectos(<%=session.getAttribute("idusu")%>,
                        $("#proyects_sel_cc"),
                        $("#error_Dialog_cc"));
            });

            function load_history_cc() {
                var parametros = {
                    "idproyect": $("#proyects_sel_cc").val(),
                    "iduser": <% out.print(session.getAttribute("idusu"));%>,
                    "opcion": "6",
                    "nombre": "historial",
                    "from": "cc"
                };

                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    dataType: 'json',
                    async: false,
                    beforeSend: function (xhr) {
                        cleanAll_cc();
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
                                    html += "<td>" + data.historial[i].description_cc + "</td>";
                                    html += "<td><a href='#' onClick='load_form_cc(" + data.historial[i].id + ")'><span class='glyphicon glyphicon-plus' aria-hidden='true'></span></a></td>";
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
                        $("#div-table_cc").empty();
                        $("#div-table_cc").html(html);

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_cc"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_form_cc(id) {
                var parametros = {
                    "id": id,
                    "from": "cc",
                    "opcion": "4"
                };

                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    dataType: 'json',
                    beforeSend: function (xhr) {
                        cleanAll_cc();
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

                            $("#opt_cc").val("2");
                            $("#id_cc").val(data.row.id);
                            $("#proyects_sel_cc").val(data.row.id_proyect);
                        } else {
                            $("#opt_cc").val("1");
                        }

                    },
                    error: function (xhr, ajaxOptions, err) {
                        $("#opt_cc").val("1");
                        show_OkDialog($("#error_Dialog_cc"), "Error");

                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function onchange_Input_cc(inp) {
                var sw = validateDecimal(inp.value);

                if (sw != true) {
                    inp.value = "";
                }
                onchange_Input_zero(inp);
                cleanOut_cc();
            }

            function cleanOut_cc() {
                $("#linear_cc").val("");
                $("#leakage_cc").val("");
                $("#characteristicsr_cc").val("");
                $("#attenuationc_cc").val("");
                $("#pipee_cc").val("");
            }

            function cleanIn_cc() {
                $("#pipeod_cc").val("");
                $("#pipew_cc").val("");
                $("#halfd_cc").val("");
                $("#specificr_cc").val("");
                $("#pipeel_cc").val("");
                $("#pipeep_cc").val("");
                $("#xdistance_cc").val("");
            }

            function cleanAll_cc() {
                cleanIn_cc();
                cleanOut_cc();

                $("#description_cc").val("");
            }

            function save_cc() {


                var parametros = {
                    "pipeod_cc": $("#pipeod_cc").val(),
                    "pipew_cc": $("#pipew_cc").val(),
                    "halfd_cc": $("#halfd_cc").val(),
                    "specificr_cc": $("#specificr_cc").val(),
                    "pipeel_cc": $("#pipeel_cc").val(),
                    "pipeep_cc": $("#pipeep_cc").val(),
                    "xdistance_cc": $("#xdistance_cc").val(),
                    "pi_sel_cc": $("#pi_sel_cc").val(),
                    "pip_sel_cc": $("#pip_sel_cc").val(),
                    "ha_sel_cc": $("#ha_sel_cc").val(),
                    "pil_sel_cc": $("#pil_sel_cc").val(),
                    "pie_sel_cc": $("#pie_sel_cc").val(),
                    "xd_sel_cc": $("#xd_sel_cc").val(),
                    "linear_cc": $("#linear_cc").val(),
                    "leakage_cc": $("#leakage_cc").val(),
                    "characteristicsr_cc": $("#characteristicsr_cc").val(),
                    "attenuationc_cc": $("#attenuationc_cc").val(),
                    "pipee_cc": $("#pipee_cc").val(),
                    "idproyect": $("#proyects_sel_cc").val(),
                    "iduser": <% out.print(session.getAttribute("idusu"));%>,
                    "opcion": $("#opt_cc").val(),
                    "id_cc": 1,
                    "description_cc": $("#description_cc").val(),
                    "from": "cc"
                };

                var isOk = validate(parametros);

                if (isOk === false) {
                    alert("Debe realizar el càlculo");
                } else {
                    if ($("#opt_cc").val() == 2) {
                        parametros.id_cc = $("#id_cc").val();
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
                            $("#id_cc").val(data.row.id);
                            $("#opt_cc").val("2");
                            show_OkDialog($("#save_Dialog_cc"), "Satisfactory process");
                        },
                        error: function (xhr, ajaxOptions, err) {
                            alert(err);
                            show_OkDialog($("#error_Dialog_cc"), "Error");
                        },
                        complete: function () {
                            unBlock();
                        }
                    });
                }

            }
            
            function load_in2_sel_cc() {
                var parametros = {
                    "combo": "in2",
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
                        var newHtml = "<select class='form-control' name='pi_sel_cc' id='pi_sel_cc'>" + data;
                        $("#div_pi_sel_cc").html(newHtml); 
                        
                        newHtml = "<select class='form-control' name='pip_sel_cc' id='pip_sel_cc'>" + data;
                        $("#div_pip_sel_cc").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_chp"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function calculate_cc() {
                
                var variables = {
                    "pipeod_cc": $("#pipeod_cc").val().replace(",", ""),
                    "pipew_cc": $("#pipew_cc").val().replace(",", ""),
                    "halfd_cc": $("#halfd_cc").val().replace(",", ""),
                    "specificr_cc": $("#specificr_cc").val().replace(",", ""),
                    "pipeel_cc": $("#pipeel_cc").val().replace(",", ""),
                    "pipeep_cc": $("#pipeep_cc").val().replace(",", ""),
                    "xdistance_cc": $("#xdistance_cc").val().replace(",", "")
                };

                var isOk = validate(variables);

                if (isOk === false) {
                    alert("You must complete all fields");
                } else {

                    var unidades = { 
                        "pi_sel_cc": $("#pi_sel_cc").val().split(",")[1], 
                        "pip_sel_cc": $("#pip_sel_cc").val().split(",")[1],
                        "ha_sel_cc": $("#ha_sel_cc").val().split(",")[1],
                        "xd_sel_cc": $("#xd_sel_cc").val().split(",")[1]
                    };

                    var res = cathodicProtection_Form(variables, unidades);

                    $("#linear_cc").val(res[0]);
                    $("#leakage_cc").val(res[1]);
                    $("#characteristicsr_cc").val(res[2]);
                    $("#attenuationc_cc").val(res[3]);
                    $("#pipee_cc").val(res[4]);

                    show_OkDialog($("#calculate_Dialog_cc"), "Satisfactory process");

                }
            }

            function delete_cc() {

                //Confirmacion
                if ($("#opt_cc").val() == 2) {
                    $("#dialog-confirm_cc").dialog({
                        resizable: false,
                        height: "auto",
                        width: 400,
                        modal: true,
                        buttons: {
                            "Delete": function () {
                                deleteReg_cc();
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

            function deleteReg_cc() {

                var parametros = {
                    "id_cc": $("#id_cc").val(),
                    "opcion": "3",
                    "iduser": <%=session.getAttribute("idusu")%>,
                    "from": "cc"
                };
                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        $("#id_cc").val("");
                        $("#opt_cc").val("1");
                        cleanAll_cc();
                        show_OkDialog($("#delete_Dialog_cc"), "Satisfactory process");
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_cc"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

        </script>

        <div id="load_Dialog_cc" title="Basic dialog" style='display:none;'>
            <p>Successfully uploaded data</p>
        </div>

        <div id="save_Dialog_cc" title="Basic dialog" style='display:none;'>
            <p>Data saved successfully</p>
        </div>

        <div id="error_Dialog_cc" title="Basic dialog" style='display:none;'>
            <p>An error has occurred in the process</p>
        </div>

        <div id="calculate_Dialog_cc" title="Basic dialog" style='display:none;'>
            <p>Calculation done successfully</p>
        </div>

        <div id="delete_Dialog_cc" title="Basic dialog" style='display:none;'>
            <p>Successfully deleted record</p>
        </div>

        <div id="dialog-confirm_cc" title="Delete record" style='display:none;'>
            <p><span class="ui-icon ui-icon-alert" style="float:left; margin:12px 12px 20px 0;"></span>
                Are you sure you want to permanently delete this record?
            </p>
        </div>
    </body>
</html>