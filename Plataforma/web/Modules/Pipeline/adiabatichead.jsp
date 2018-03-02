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
                <h2><strong>Pipe Installation:</strong> 1.1.1. Centrifugal Compressor-Adiabatic Head</h2>
            </div>
            <div class="col-lg-3"> 

                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_ah()">
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
                                <div id="div-table_ah"></div>
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
                <input  class="form-control" type="text" id="description_ah" name="description_ah"><br>
                Projects: 
                <select class="form-control" id="proyects_sel_ah" name="proyects_sel_ah"> </select>
            </div>
        </div>
        <hr>


        <div class="col-lg-9">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Compressibility Factor
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="form-group">
                                <div class="col-md-12">
                                    <input type="radio" id = "compfactors1_ah" name="opz_ah" value="compfactors1_ah" onchange="onchange_comf_ah()" required>  Calculate <br>
                                    <input type="radio" id = "compfactors2_ah" name="opz_ah" value="compfactors2_ah" onchange="onchange_comf_ah()" required> User Supplied
                                </div>
                            </div>                                    

                            <div class="form-group">
                                <label>Z1 - Compressibility Factor at Suction Conditions:</label>
                                <input type="text" id="z1s_ah" name="z1s_ah" readonly required class="form-control" value="0" onchange="onchange_Input_ah(this)">
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    Input Parameters
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">

                            <div class="form-group">
                                <div class="col-md-12">
                                    <label>Height:</label>
                                </div>
                                <div class="col-md-8">
                                    <input value = "0" class="form-control" type="text" id="enteree_ah" name="enteree_ah" onchange="onchange_Input_ah(this)" required>
                                </div>
                                <div class="col-md-4" id = "div_ee_sel_ah">
                                    <select class="form-control" id="ee_sel_ah" name="ee_sel_ah"> </select>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-md-12">
                                    <label>Base Temperature:</label> 
                                </div>
                                <div class="col-md-8">
                                    <input class="form-control" value="60" type="text" id="basetemperature_ah" name="basetemperature_ah" onchange="onchange_Input_ah(this)" required>
                                </div>
                                <div class="col-md-4" id="div_bt_sel_ah">
                                    <select class="form-control" id="bt_sel_ah" name="bt_sel_ah" onchange="cleanOut_ah()"> </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12">
                                    <label>Base Pressure:</label> 
                                </div>
                                <div class="col-md-8">
                                    <input  class="form-control" value="14.65" type="text" id="basepressure_ah" name="basepressure_ah" onchange="onchange_Input_ah(this)" required><br>
                                </div>
                                <div class="col-md-4" id="div_bp_sel_ah">
                                    <select class="form-control" id="bp_sel_ah" name="bp_sel_ah" onchange="cleanOut_ah()"> </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12">
                                    <label>Suction Pressure:</label>
                                </div>
                                <div class="col-md-8">
                                    <input value = "386" class="form-control" type="text" id="suctionp_ah" name="suctionp_ah" onchange="validate_pres_ah(this)" required>
                                </div>
                                <div class="col-md-4" id = "div_sp_sel_ah">
                                    <select class="form-control" id="sp_sel_ah" name="sp_sel_ah" onchange="cleanOut_ah()"> </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12">
                                    <label>Suction Temperature:</label>
                                </div>
                                <div class="col-md-8">
                                    <input class="form-control" value = "85" type="text" id="suctiont_ah" name="suctiont_ah" onchange="onchange_Input_ah(this)" required>
                                </div>
                                <div class="col-md-4"  id="div_st_sel_ah">
                                    <select class="form-control" id="st_sel_ah" name="st_sel_ah"> </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12">
                                    <label>Discharge Pressure:</label>
                                </div>
                                <div class="col-md-8">
                                    <input value = "936" class="form-control" type="text" id="dischargep_ah" name="dischargep_ah" onchange="validate_pres_ah(this)" required>
                                </div>
                                <div class="col-md-4" id="div_dp_sel_ah">
                                    <select class="form-control" id="dp_sel_ah" name="dp_sel_ah" onchange="cleanOut_ah()"> </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12">
                                    <label>Gas Specific Heat Ratio:</label>
                                    <input value="1.3" class="form-control" type="text" id="gass_ah" name="gass_ah" onchange="onchange_Input_ah(this)" required>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12">
                                    <label>Select Option:</label>
                                </div>
                                <div class="col-md-8" id="div_gs_sel_ah">
                                    <select class="form-control" id="gs_sel_ah" name="gs_sel_ah" onchange="onchange_gravity_ah()"></select> 
                                </div>
                                <div class="col-md-4">
                                    <input  class="form-control" type="text" id="gst_ah" name="gst_ah" onchange="onchange_Input_ah(this)" required>
                                </div>

                            </div>
                            <div class="form-group">
                                <div class="col-md-12">
                                    <label>Adiabatic Efficiency:</label>

                                    <input value = "0.7" class="form-control" type="text" id="adiabatice_ah" name="adiabatice_ah" onchange="onchange_Input_ah(this)" required ></div>
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
                                <label id="lab_dt_ah"> Discharge Temperature [°F]:</label>
                                <input type="text" id="discharget_ah" name="discharget_ah" readonly required class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Z1 - Compressibility Factor at Suction Conditions:</label>
                                <input type="text" id="z1_ah" name="z1_ah" readonly required class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Z2 - Compressibility Factor at Discharge Conditions:</label>
                                <input type="text" id="z2_ah" name="z2_ah" readonly required class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Na (Isotropic Efficiency):</label>            
                                <input type="text" id="na_ah" name="na_ah" readonly required class="form-control">
                            </div> 
                            <div class="form-group">
                                <label>Adiabatic Head  [ft * lbf/lbm]:</label>            
                                <input type="text" id="adiabatich_ah" name="adiabatich_ah" readonly required class="form-control">
                            </div> 
                            <div class="form-group">
                                <label>Adiabatic GHP per Unit of the Flowrate [HP/MMSCFD]:</label>            
                                <input type="text" id="adiabaticghp_ah" name="adiabaticghp_ah" readonly required class="form-control">
                            </div> 
                            <input type="button" id="calculateBtn_ah" name="calculateBtn_ah" value="Calculate" onclick="calculate_ah()" class="btn btn-info btn-block">
                            <input type="button" id="saveBtn_ah" name="saveBtn_ah" value="Save" onclick="save_ah()" class="btn btn-success btn-block">   
                            <input type="button" id="delteBtn_ah" name="delteBtn_ah" value="Delete" onclick="delete_ah()" class="btn btn-danger btn-block">

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-12">
            <div class="col-md-3">
                <input type="button" id="cleanAllBtn_ah" name="cleanBtn_ah" value="Clean All Data" onclick="cleanAll_ah()" class="btn btn-warning btn-block">
            </div>
            <div class="col-md-3">
                <input type="button" id="cleanInputBtn_ah" name="cleanBtn_ah" value="Clean Input Data" onclick="cleanIn_ah()" class="btn btn-warning btn-block">
            </div>
            <div class="col-md-3">
                <input type="button" id="cleanOutputBtn_ah" name="cleanBtn_ah" value="Clean Output Data" onclick="cleanOut_ah()" class="btn btn-warning btn-block">
            </div>

        </div>
        <input type="hidden" id="id_ah" name="id_ah">  
        <input type="hidden" id="opt_ah" name="opt_ah">

        <script>



            $(document).ready(function () {
                
                //onchange_Input_zero($("#enteree_ah"));

                $("#opt_ah").val("1");
                $('#compfactors1_ah').attr('checked', 'checked');
                load_gs_sel_ah();
                load_temp_sel_ah();
                load_press_sel_ah();
                load_in_sel_ah();

                getproyectos(<%=session.getAttribute("idusu")%>,
                        $("#proyects_sel_ah"),
                        $("#error_Dialog_ah"));

            });

            function load_history_ah() {
                var parametros = {
                        "idproyect": $("#proyects_sel_ah").val(),
                    "iduser": <% out.print(session.getAttribute("idusu"));%>,
                    "from": "ah",
                    "opcion": "6",
                    "nombre": "historial"
                };

                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    dataType: 'json',
                    async: false,
                    beforeSend: function (xhr) {
                        $("#opt_ah").val("1");
                        $("#id_ah").val("");
                        cleanAll_ah();
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
                                    html += "<td>" + data.historial[i].description_ah + "</td>";
                                    html += "<td><a href='#' onClick='load_form_ah(" + data.historial[i].id + ")'><span class='glyphicon glyphicon-plus' aria-hidden='true'></span></a></td>";
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
                        $("#div-table_ah").empty();
                        $("#div-table_ah").html(html);

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_ah"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function onchange_comf_ah() {
                var sel = $("input[type='radio'][name='opz_ah']:checked");

                if (sel.val() === "compfactors1_ah") {
                    $("#z1s_ah").addClass("readonly");
                    $("#z1s_ah").attr("readonly", true);
                    $("#z1s_ah").val("0");

                } else {
                    $("#z1s_ah").removeAttr("readonly");
                    $("#z1s_ah").removeClass("readOnly");
                    $("#z1s_ah").val("");
                }

                cleanOut_ah();

            }

            function load_gs_sel_ah() {
                var parametros = {
                    "combo": "gs_sel",
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
                        var newHtml = "<select class='form-control' name='gs_sel_ah' id='gs_sel_ah' onchange='onchange_gravity_ah()'>" + data;
                        $("#div_gs_sel_ah").html(newHtml);
                        $("#gst_ah").val($("#gs_sel_ah").val().split(",")[1]);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_ah"), "Error");
                        show_OkDialog(err, "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_temp_sel_ah() {
                var parametros = {
                    "combo": "temp",
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
                        var newHtml = "<select class='form-control' name='st_sel_ah' id= 'st_sel_ah' onchange='onchange_temp_ah(this)'>" + data;
                        $("#div_st_sel_ah").html(newHtml);

                        newHtml = "<select class='form-control' name='bt_sel_ah' id= 'bt_sel_ah' onchange='onchange_temp_ah(this)'>" + data;
                        $("#div_bt_sel_ah").html(newHtml);

                        var vecObj = [$("#bt_sel_ah"), $("#st_sel_ah")];
                        onchageGeneral(vecObj, "3,F");


                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_ah"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_in_sel_ah() {
                var parametros = {
                    "combo": "he",
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
                        var newHtml = "<select class='form-control' name='ee_sel_ah' id= 'ee_sel_ah'>" + data;
                        $("#div_ee_sel_ah").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_ah"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_press_sel_ah() {
                var parametros = {
                    "combo": "pres",
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
                        var newHtml = "<select class='form-control' name='sp_sel_ah' id= 'sp_sel_ah' onchange='onchange_pres_ah(this)'>" + data;
                        $("#div_sp_sel_ah").html(newHtml);

                        newHtml = "<select class='form-control' name='dp_sel_ah' id= 'dp_sel_ah' onchange='onchange_pres_ah(this)'>" + data;
                        $("#div_dp_sel_ah").html(newHtml);

                        newHtml = "<select class='form-control' name='bp_sel_ah' id= 'bp_sel_ah' onchange='cleanOut_ah()'>" + data;
                        $("#div_bp_sel_ah").html(newHtml);

                        var obj = [$("#dp_sel_ah"), $("#sp_sel_ah")];
                        onchageGeneral(obj, "65,psig");

                        $("#bp_sel_ah").val("5,psia");

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_ah"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function onchange_gravity_ah() {
                $("#gst_ah").val($("#gs_sel_ah").val().split(",")[1]);
                cleanOut_ah();
            }

            function onchange_temp_ah(imp) {
                cleanOut_ah();

                var vecObj = [$("#bt_sel_ah"), $("#st_sel_ah")];
                onchageGeneral(vecObj, imp.value);

                var newHtml = " Temperatura de descarga °[" + imp.value.split(",")[1] + "]:";
                $("#lab_dt_ah").html(newHtml);
            }

            function onchange_pres_ah(imp) {
                cleanOut_ah();
                var obj = [$("#dp_sel_ah"), $("#sp_sel_ah")];
                onchageGeneral(obj, imp.value);

            }

            function load_form_ah(id) {

                var parametros = {
                    "id": id,
                    "from": "ah",
                    "opcion": "4"
                };

                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    dataType: 'json',
                    beforeSend: function (xhr) {
                        cleanAll_ah();
                        block("Cargado datos...");
                    },
                    success: function (data, status, request) {
                        if (data != null)
                        {
                            var tags = Object.keys(data.row);

                            for (var i = 0; i < tags.length; i++) {
                                if (tags[i] != "date" && tags[i] != "id_proyect" && tags[i] != "id_user" && tags[i] != "id" && tags[i] != "opz_ah")
                                {
                                    $("#" + tags[i]).val(data.row[tags[i]]);
                                }
                            }

                            if (data.row["opz_ah"] == "compfactors1_ah") {
                                document.getElementById("compfactors1_ah").checked = true;
                                $("#z1s_ah").addClass("readonly");
                                $("#z1s_ah").attr("readonly", true);

                            } else {
                                document.getElementById("compfactors2_ah").checked = true;
                                $("#z1s_ah").removeAttr("readonly");
                                $("#z1s_ah").removeClass("readOnly");
                            }
                            $("#opt_ah").val("2");
                            $("#id_ah").val(data.row.id);
                            $("#proyects_sel_ah").val(data.row.id_proyect);
                        } else {
                            $("#opt_ah").val("1");
                        }

                    },
                    error: function (xhr, ajaxOptions, err) {
                        $("#opt_ah").val("1");
                        show_OkDialog($("#error_Dialog_ah"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function cleanOut_ah() {
                $("#discharget_ah").val("");
                $("#z1_ah").val("");
                $("#z2_ah").val("");
                $("#adiabatich_ah").val("");
                $("#adiabaticghp_ah").val("");
                $("#na_ah").val("");
            }

            function cleanIn_ah() {
                $("#enteree_ah").val("");
                $("#suctionp_ah").val("");
                $("#suctiont_ah").val("");
                $("#dischargep_ah").val("");
                $("#gass_ah").val("");
                $("#adiabatice_ah").val("");
                $("#basepressure_ah").val("");
                $("#basetemperature_ah").val("");
            }

            function cleanAll_ah() {
                cleanIn_ah();
                cleanOut_ah();
                $("#description_ah").val("");
            }

            function validate_pres_ah(inp) {
                onchange_Input_ah(inp);
                validatePress(inp, $("#suctionp_ah"), $("#dischargep_ah"));
            }

            function onchange_Input_ah(inp) {

                var sw = validateDecimal(inp.value);

                if (sw !== true) {
                    inp.value = "";
                }
                
                onchange_Input_zero(inp);
                cleanOut_ah();

            }

            function calculate_ah() {
                var sel = $("input[type='radio'][name='opz_ah']:checked");

                var variables = {
                    "enteree_ah": $("#enteree_ah").val().replace(",", ""),
                    "suctionp_ah": $("#suctionp_ah").val().replace(",", ""),
                    "suctiont_ah": $("#suctiont_ah").val().replace(",", ""),
                    "dischargep_ah": $("#dischargep_ah").val().replace(",", ""),
                    "gass_ah": $("#gass_ah").val().replace(",", ""),
                    "adiabatice_ah": $("#adiabatice_ah").val().replace(",", ""),
                    "gst_ah": $("#gst_ah").val().replace(",", ""),
                    "gs_sel_ah": $("#gs_sel_ah").val().split(",")[0].replace(",", ""),
                    "basepressure_ah": $("#basepressure_ah").val().replace(",", ""),
                    "basetemperature_ah": $("#basetemperature_ah").val().replace(",", ""),
                    "z1s_ah": $("#z1s_ah").val().replace(",", ""),
                    "opz_ah": sel.val().replace(",", "")
                };

                var isOk = validate(variables);

                if (isOk === false) {
                    alert("You must complete all fields");
                } else {

                    var unidades = {
                        "bt_sel_ah": $("#bt_sel_ah").val().split(",")[1],
                        "st_sel_ah": $("#st_sel_ah").val().split(",")[1],
                        "sp_sel_ah": $("#sp_sel_ah").val().split(",")[1],
                        "dp_sel_ah": $("#dp_sel_ah").val().split(",")[1],
                        "ee_sel_ah": $("#ee_sel_ah").val().split(",")[1]
                    };


                    var res = adiabaticHead_Form(variables, unidades);

                    $("#discharget_ah").val(res[0]);
                    $("#z1_ah").val(res[1]);
                    $("#adiabatich_ah").val(res[2]);
                    $("#adiabaticghp_ah").val(res[3]);
                    $("#na_ah").val(res[4]);
                    $("#z2_ah").val(res[5]);

                    show_OkDialog($("#calculate_Dialog_ah"), "Satisfactory process");


                }
            }

            function save_ah() {
                var sel = $("input[type='radio'][name='opz_ah']:checked");

                var parametros = {
                    "z1s_ah": $("#z1s_ah").val(),
                    "opz_ah": sel.val(),
                    "enteree_ah": $("#enteree_ah").val(),
                    "basepressure_ah": $("#basepressure_ah").val(),
                    "basetemperature_ah": $("#basetemperature_ah").val(),
                    "suctionp_ah": $("#suctionp_ah").val(),
                    "suctiont_ah": $("#suctiont_ah").val(),
                    "dischargep_ah": $("#dischargep_ah").val(),
                    "gass_ah": $("#gass_ah").val(),
                    "adiabatice_ah": $("#adiabatice_ah").val(),
                    "gs_sel_ah": $("#gs_sel_ah").val(),
                    "gst_ah": $("#gst_ah").val(),
                    "discharget_ah": $("#discharget_ah").val(),
                    "z1_ah": $("#z1_ah").val(),
                    "adiabatich_ah": $("#adiabatich_ah").val(),
                    "adiabaticghp_ah": $("#adiabaticghp_ah").val(),
                    "na_ah": $("#na_ah").val(),
                    "bt_sel_ah": $("#bt_sel_ah").val(),
                    "bp_sel_ah": $("#bp_sel_ah").val(),
                    "sp_sel_ah": $("#sp_sel_ah").val(),
                    "st_sel_ah": $("#st_sel_ah").val(),
                    "dp_sel_ah": $("#dp_sel_ah").val(),
                    "idproyect": $("#proyects_sel_ah").val(),
                    "iduser": <% out.print(session.getAttribute("idusu"));%>,
                    "opcion": $("#opt_ah").val(),
                    "id_ah": 1,
                    "description_ah": $("#description_ah").val(),
                    "from": "ah"

                };



                var isOk = validate(parametros);

                if (isOk === false) {
                    alert("You must perform the calculation and fill out the description");
                } else {

                    if ($("#opt_ah").val() == 2) {
                        parametros.id_ah = $("#id_ah").val();
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
                            $("#id_ah").val(data.row.id);
                            $("#opt_ah").val("2");
                            show_OkDialog($("#save_Dialog_ah"), "Satisfactory process");
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_ah"), "Error");
                            alert(err);
                        },
                        complete: function () {
                            unBlock();
                        }
                    });
                }
            }

            function delete_ah() {

                //Confirmacion
                if ($("#opt_ah").val() == 2) {
                    $("#dialog-confirm_ah").dialog({
                        resizable: false,
                        height: "auto",
                        width: 400,
                        modal: true,
                        buttons: {
                            "Delete": function () {
                                deleteReg_ah();
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

            function deleteReg_ah() {
                var parametros = {
                    "id_ah": $("#id_ah").val(),
                    "opcion": 3,
                    "iduser": <%=session.getAttribute("idusu")%>,
                    "from": "ah"
                };


                if ($("#opt_ah").val() == 2) {
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        dataType: 'json',
                        beforeSend: function (xhr) {
                            block("Cargando...");
                        },
                        success: function (data, status, request) {
                            cleanAll_ah();
                            $("#id_ah").val("");
                            $("#opt_ah").val("1");
                            $('#compfactors1_ah').attr('checked', 'checked');
                            onchange_comf_ah();
                            show_OkDialog($("#delete_Dialog_ah"), "Satisfactory process");
                        },
                        error: function (xhr, ajaxOptions, err) {
                            alert(err);
                            show_OkDialog($("#error_Dialog_ah"), "Error");
                        },
                        complete: function () {
                            unBlock();
                        }
                    });

                } else {
                    alert("You must load a record to be able to delete it");
                }
            }

        </script>

        <div id="load_Dialog_ah" title="Basic dialog" style='display:none;'>
            <p>Successfully uploaded data</p>
        </div>

        <div id="save_Dialog_ah" title="Basic dialog" style='display:none;'>
            <p>Data saved successfully</p>
        </div>

        <div id="error_Dialog_ah" title="Basic dialog" style='display:none;'>
            <p>An error has occurred in the process</p>
        </div>

        <div id="calculate_Dialog_ah" title="Basic dialog" style='display:none;'>
            <p>Calculation done successfully</p>
        </div>

        <div id="delete_Dialog_ah" title="Basic dialog" style='display:none;'>
            <p>Successfully deleted record</p>
        </div>

        <div id="dialog-confirm_ah" title="Delete record" style='display:none;'>
            <p><span class="ui-icon ui-icon-alert" style="float:left; margin:12px 12px 20px 0;"></span>
                Are you sure you want to permanently delete this record?
            </p>
        </div>
    </body>
</html>