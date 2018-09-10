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
                <h2><strong>Pipe Installation:</strong> 1.1.2. Centrifugal Compressor-Required Adiabatic Horsepower</h2>
            </div>
            <div class="col-lg-3"> 
                <br>
                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_ahp()">
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
                                <div id="div-table_ahp"></div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

                            </div>
                        </div>
                    </div>
                </div>
                <!-- FIN MODAL -->
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                Description: 
                <input  class="form-control" type="text" id="description_ahp" name="description_ahp"><br>
                Projects: 
                <select class="form-control" id="proyects_sel_ahp" name="proyects_sel_ahp"> </select>
            </div>
        </div>
        <hr>

        <div class="row">

            <div class="col-lg-9">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Data
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            Compressibility Factor
                                        </div>
                                        <div class="panel-body">
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <div class="form-group">
                                                        <div class="col-md-12">
                                                            <input type="radio" id = "compfactors1_ahp" name="opz_ahp" value="compfactors1_ahp" onchange="onchange_comf_ahp()" required>  Calculate <br>
                                                            <input type="radio" id = "compfactors2_ahp" name="opz_ahp" value="compfactors2_ahp" onchange="onchange_comf_ahp()" required> User Supplied
                                                        </div>
                                                    </div>                                    

                                                    <div class="form-group">
                                                        <label>Z1 - Compressibility Factor at Suction Conditions:</label>
                                                        <input type="text" id="z1s_ahp" name="z1s_ahp" readonly required class="form-control" value="0" onchange="onchange_Input_ahp(this)">
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Z2 - Compressibility Factor at Discharge Conditions:</label>
                                                        <input type="text" id="z2d_ahp" name="z2d_ahp" readonly required class="form-control" value="0" onchange="onchange_Input_ahp(this)">
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
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
                                                            <input value = "0" class="form-control" type="text" id="enteree_ahp" name="enteree_ahp" onchange="onchange_Input_ahp(this)" required>
                                                        </div>
                                                        <div class="col-md-4" id = "div_ee_sel_ahp">
                                                            <select class="form-control" id="ee_sel_ahp" name="ee_sel_ahp"> </select>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <div class="col-md-12">
                                                            <label>Base Temperature:</label> 
                                                        </div>
                                                        <div class="col-md-8">
                                                            <input class="form-control" value="60" type="text" id="basetemperature_ahp" name="basetemperature_ahp" onchange="onchange_Input_ahp(this)" required>
                                                        </div>
                                                        <div class="col-md-4" id="div_bt_sel_ahp">
                                                            <select class="form-control" id="bt_sel_ahp" name="bt_sel_ahp"> </select>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <div class="col-md-12">
                                                            <label>Base Pressure:</label> 
                                                        </div>
                                                        <div class="col-md-8">
                                                            <input  class="form-control"  value="14.65" type="text" id="basepressure_ahp" name="basepressure_ahp" onchange="onchange_Input_ahp(this)" required><br>
                                                        </div>
                                                        <div class="col-md-4" id="div_bp_sel_ahp">
                                                            <select class="form-control" id="bp_sel_ahp" name="bp_sel_ahp"> </select>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <div class="col-md-12">
                                                            <label>Suction Pressure:</label>
                                                        </div>
                                                        <div class="col-md-8">
                                                            <input value = "386" class="form-control" type="text" id="suctionp_ahp" name="suctionp_ahp" onchange="validate_pres_ahp(this)" required>
                                                        </div>
                                                        <div class="col-md-4" id = "div_sp_sel_ahp">
                                                            <select class="form-control" id="sp_sel_ahp" name="sp_sel_ahp"> </select>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <div class="col-md-12">
                                                            <label>Suction Temperature:</label>
                                                        </div>
                                                        <div class="col-md-8">
                                                            <input value = "85" class="form-control" type="text" id="suctiont_ahp" name="suctiont_ahp" onchange="onchange_Input_ahp(this)" required>
                                                        </div>
                                                        <div class="col-md-4"  id="div_st_sel_ahp">
                                                            <select class="form-control" id="st_sel_ahp" name="st_sel_ahp"> </select>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <div class="col-md-12">
                                                            <label>Discharge Pressure:</label>
                                                        </div>
                                                        <div class="col-md-8">
                                                            <input value = "936" class="form-control" type="text" id="dischargep_ahp" name="dischargep_ahp" onchange="validate_pres_ahp(this)" required>
                                                        </div>
                                                        <div class="col-md-4" id="div_dp_sel_ahp">
                                                            <select class="form-control" id="dp_sel_ahp" name="dp_sel_ahp"> </select>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <div class="col-md-12">
                                                            <label>Capacity/Required Flow Rate:</label>
                                                        </div>
                                                        <div class="col-md-8">
                                                            <input value = "500" class="form-control" type="text" id="capacityr_ahp" name="capacityr_ahp" onchange="onchange_Input_ahp(this)" required>
                                                        </div>
                                                        <div class="col-md-4" id="div_cr_sel_ahp">
                                                            <select class="form-control" id="cr_sel_ahp" name="cr_sel_ahp"> </select>
                                                        </div>
                                                    </div>

                                                    <div class="form-group">
                                                        <div class="col-md-12">
                                                            <label>Gas Specific Heat Ratio:</label>

                                                            <input class="form-control" value="1.25" type="text" id="gass_ahp" name="gass_ahp" onchange="onchange_Input_ahp(this)" required>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <div class="col-md-12">
                                                            <label>Select Option:</label>
                                                        </div>
                                                        <div class="col-md-8" id="div_gs_sel_ahp">
                                                            <select class="form-control" id="gs_sel_ahp" name="gs_sel_ahp" onchange="onchange_gravity_ahp()"></select> 
                                                        </div>
                                                        <div class="col-md-4">
                                                            <input class="form-control" type="text" id="gst_ahp" name="gst_ahp" onchange="onchange_Input_ahp(this)" required>
                                                        </div>

                                                    </div>
                                                    <div class="form-group">
                                                        <div class="col-md-12">
                                                            <label>Adiabatic Efficiency:</label>

                                                            <input value = "0.7" class="form-control" type="text" id="adiabatice_ahp" name="adiabatice_ahp" onchange="onchange_Input_ahp(this)" required >
                                                        </div>            
                                                    </div>
                                                    <div class="form-group">
                                                        <div class="col-md-12">
                                                            <label>Mechanical Efficiency:</label>

                                                            <input value = "0.7" class="form-control" type="text" id="mechanicale_ahp" name="mechanicale_ahp" onchange="onchange_Input_ahp(this)" required >
                                                        </div>            

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div> 
                                </div>
                                <div class="form-group">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            Results
                                        </div>
                                        <div class="panel-body">
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <div class="form-group">
                                                        <label id="lab_dt_ahp"> Discharge Temperature [°F]:</label>
                                                        <input type="text" id="discharget_ahp" name="discharget_ahp" readonly required class="form-control">
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Z1 - Compressibility Factor at Suction Conditions:</label>
                                                        <input type="text" id="z1_ahp" name="z1_ahp" readonly required class="form-control">
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Z2 - Compressibility Factor at Discharge Conditions:</label>
                                                        <input type="text" id="z2_ahp" name="z2_ahp" readonly required class="form-control">
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Average Compressibility Factor:</label>
                                                        <input type="text" id="zavg_ahp" name="zavg_ahp" readonly required class="form-control">
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Adiabatic Head [ft*lbf/lbm]:</label>            
                                                        <input type="text" id="adiabatich_ahp" name="adiabatich_ahp" readonly required class="form-control">
                                                    </div> 
                                                    <div class="form-group">
                                                        <label>Adiabatic GHP per Unit of the Flowrate [HP/MMSCFD]:</label>            
                                                        <input type="text" id="adiabaticghp_ahp" name="adiabaticghp_ahp" readonly required class="form-control">
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Adiabatic Gas Horsepower [HP]:</label>
                                                        <input type="text" id="ghp_ahp" name="ghp_ahp" readonly required class="form-control">
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Adiabatic Brake Horsepower[HP]:</label>            
                                                        <input type="text" id="bhp_ahp" name="bhp_ahp" readonly required class="form-control">
                                                    </div> 
                                                    <div class="form-group">
                                                        <label> Actual Flow Rate for Sizing [ACFM]:</label>            
                                                        <input type="text" id="acfm_ahp" name="acfm_ahp" readonly required class="form-control">
                                                    </div>  
                                                </div>
                                            </div>
                                        </div>
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
                        Actions
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-12">

                                <input type="button" id="calculateBtn_ahp" name="calculateBtn_ahp" value="Calculate" onclick="calculate_ahp()" class="btn btn-info btn-block">
                                <input type="button" id="saveBtn_ahp" name="saveBtn_ahp" value="Save" onclick="save_ahp()" class="btn btn-success btn-block">   
                                <input type="button" id="delteBtn_ahp" name="delteBtn_ahp" value="Delete" onclick="delete_ahp()" class="btn btn-danger btn-block">
                                <input type="button" id="cleanAllBtn_ahp" name="cleanBtn_ahp" value="Clean All Data" onclick="cleanAll_ahp()" class="btn btn-warning btn-block">
                                <input type="button" id="cleanInputBtn_ahp" name="cleanBtn_ahp" value="Clean Input Data" onclick="cleanIn_ahp()" class="btn btn-warning btn-block">
                                <input type="button" id="cleanOutputBtn_ahp" name="cleanBtn_ahp" value="Clean Output Data" onclick="cleanOut_ahp()" class="btn btn-warning btn-block">

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <input type="hidden" id="opt_ahp" name="opt_ahp" value="1"> 
            <input type="hidden" id="id_ahp" name="id_ahp" value="-1">   
        </div>
        <script>
            $(document).ready(function () {

                load_gs_sel_ahp();
                load_temp_sel_ahp();
                load_press_sel_ahp();
                load_fluE_sel_ahp();
                load_in_sel_ahp();

                $('#compfactors1_ahp').attr('checked', 'checked');

                getproyectos(<%=session.getAttribute("idusu")%>,
                        $("#proyects_sel_ahp"),
                        $("#error_Dialog_ahp"));

            });

            function load_history_ahp() {
                var parametros = {
                    "idproyect": $("#proyects_sel_ahp").val(),
                    "iduser": <% out.print(session.getAttribute("idusu"));%>,
                    "opcion": "6",
                    "nombre": "historial",
                    "from": "ahp"
                };

                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    dataType: 'json',
                    async: false,
                    beforeSend: function (xhr) {
                        //cleanAll_ahp();
                        block("Cargado datos...");
                    },
                    success: function (data, status, request) {

                        if (data !== null)
                        {
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
                                    html += "<td>" + data.historial[i].description_ahp + "</td>";
                                    html += "<td><a href='#' onClick=\"load_form_ahp(" + data.historial[i].id + ")\"><span class='glyphicon glyphicon-plus' aria-hidden='true'></span></a></td>";
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
                        $("#div-table_ahp").empty();
                        $("#div-table_ahp").html(html);

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_ahp"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function onchange_comf_ahp() {

                cleanOut_ahp();

                var sel = $("input[type='radio'][name='opz_ahp']:checked");
                if (sel.val() === "compfactors1_ahp") {
                    $("#z1s_ahp").addClass("readonly");
                    $("#z1s_ahp").attr("readonly", true);
                    $("#z1s_ahp").val("0");

                    $("#z2d_ahp").addClass("readonly");
                    $("#z2d_ahp").attr("readonly", true);
                    $("#z2d_ahp").val("0");
                } else {
                    $("#z1s_ahp").removeAttr("readonly");
                    $("#z1s_ahp").removeClass("readOnly");
                    $("#z1s_ahp").val("");

                    $("#z2d_ahp").removeAttr("readonly");
                    $("#z2d_ahp").removeClass("readOnly");
                    $("#z2d_ahp").val("");
                }

            }

            function load_gs_sel_ahp() {
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
                        var newHtml = "<select class=\"form-control\" name=\"gs_sel_ahp\" id=\"gs_sel_ahp\" onchange=\"onchange_gravity_ahp()\">" + data;
                        $("#div_gs_sel_ahp").html(newHtml);
                        $("#gst_ahp").val($("#gs_sel_ahp").val().trim().split(",")[1]);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_ahp"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_in_sel_ahp() {

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
                        var newHtml = "<select class='form-control' name='ee_sel_ahp' id= 'ee_sel_ahp'>" + data;
                        $("#div_ee_sel_ahp").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_ahp"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }


            function load_fluE_sel_ahp() {
                var parametros = {
                    "combo": "fluE",
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
                        var newHtml = "<select class=\"form-control\" name=\"cr_sel_ahp\" id= \"cr_sel_ahp\" onchange=\"cleanOut_ahp()\">" + data;

                        $("#div_cr_sel_ahp").html(newHtml);
                        $("#cr_sel_ahp").val("71,MMSCFD");


                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_ahp"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_temp_sel_ahp() {
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
                        var newHtml = "<select class=\"form-control\" name=\"st_sel_ahp\" id=\"st_sel_ahp\" onchange=\"onchange_temp_ahp(this)\">" + data;
                        $("#div_st_sel_ahp").html(newHtml);

                        newHtml = "<select class=\"form-control\" name=\"bt_sel_ahp\" id= \"bt_sel_ahp\" onchange=\"onchange_temp_ahp(this)\">" + data;
                        $("#div_bt_sel_ahp").html(newHtml);

                        var vecObj = [$("#bt_sel_ahp"), $("#st_sel_ahp")];
                        onchageGeneral(vecObj, "3,F");

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_ahp"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_press_sel_ahp() {
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
                        var newHtml = "<select class=\"form-control\" name=\"sp_sel_ahp\" id= \"sp_sel_ahp\" onchange=\"onchange_pres_ahp(this)\">" + data;
                        $("#div_sp_sel_ahp").html(newHtml);

                        newHtml = "<select class=\"form-control\" name=\"dp_sel_ahp\" id= \"dp_sel_ahp\" onchange=\"onchange_pres_ahp(this)\">" + data;
                        $("#div_dp_sel_ahp").html(newHtml);

                        newHtml = "<select class=\"form-control\" name=\"bp_sel_ahp\" id= \"bp_sel_ahp\" onchange=\"cleanOut_ahp()\">" + data;
                        $("#div_bp_sel_ahp").html(newHtml);

                        var obj = [$("#dp_sel_ahp"), $("#sp_sel_ahp")];
                        onchageGeneral(obj, "65,psig");

                        $("#bp_sel_ahp").val("5,psia");

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_ahp"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function onchange_gravity_ahp() {
                $("#gst_ahp").val($("#gs_sel_ahp").val().trim().split(",")[1]);
                cleanOut_ahp();
            }

            function load_form_ahp(id) {
                var parametros = {
                    "id": id,
                    "opcion": "4",
                    "from": "ahp"
                };

                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    dataType: 'json',
                    beforeSend: function (xhr) {
                        cleanAll_ahp();
                        block("Cargado datos...");
                    },
                    success: function (data, status, request) {

                        if (data !== null)
                        {
                            var tags = Object.keys(data.row);

                            for (var i = 0; i < tags.length; i++) {
                                if (tags[i] !== "date" && tags[i] !== "id_user" && tags[i] !== "id" && tags[i] !== "opz_ahp")
                                {
                                    $("#" + tags[i]).val(data.row[tags[i]]);
                                }
                            }
                            if (data.row["opz_ahp"] === "compfactors1_ahp") {
                                document.getElementById("compfactors1_ahp").checked = true;
                                $("#z1s_ahp").addClass("readonly");
                                $("#z1s_ahp").attr("readonly", true);

                            } else {
                                document.getElementById("compfactors2_ahp").checked = true;
                                $("#z1s_ahp").removeAttr("readonly");
                                $("#z1s_ahp").removeClass("readOnly");
                            }
                            $("#opt_ahp").val("2");
                            $("#id_ahp").val(data.row.id);
                            
                            alert("Successfully uploaded data");
                        } else {
                            $("#opt_ahp").val("1");
                        }
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_ahp"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function cleanOut_ahp() {
                $("#discharget_ahp").val("");
                $("#zavg_ahp").val("");
                $("#adiabatich_ahp").val("");
                $("#adiabaticghp_ahp").val("");
                $("#ghp_ahp").val("");
                $("#bhp_ahp").val("");
                $("#acfm_ahp").val("");
                $("#z1_ahp").val("");
                $("#z2_ahp").val("");
            }

            function cleanIn_ahp() {
                $("#enteree_ahp").val("");
                $("#z1s_ahp").val("");
                $("#z2d_ahp").val("");
                $("#suctionp_ahp").val("");
                $("#suctiont_ahp").val("");
                $("#dischargep_ahp").val("");
                $("#gass_ahp").val("");
                $("#adiabatice_ahp").val("");
                $("#capacityr_ahp").val("");
                $("#mechanicale_ahp").val("");
                $("#basepressure_ahp").val("");
                $("#basetemperature_ahp").val("");
            }

            function cleanAll_ahp() {
                cleanIn_ahp();
                cleanOut_ahp();
                $("#description_ahp").val("");
            }

            function onchange_temp_ahp(imp) {
                cleanOut_ahp();

                var vecObj = [$("#bt_sel_ahp"), $("#st_sel_ahp")];
                onchageGeneral(vecObj, imp.value);

                var newHtml = " Temperatura de descarga [°" + imp.value.split(",")[1] + "]:";
                $("#lab_dt_ahp").html(newHtml);
            }

            function onchange_pres_ahp(imp) {
                cleanOut_ahp();
                var obj = [$("#dp_sel_ahp"), $("#sp_sel_ahp")];
                onchageGeneral(obj, imp.value);
            }

            function onchange_Input_ahp(inp) {

                var sw = validateDecimal(inp.value);

                if (sw !== true) {
                    inp.value = "";
                }
                onchange_Input_zero(inp);
                cleanOut_ahp();
            }

            function validate_pres_ahp(inp) {
                onchange_Input_ahp(inp);
                validatePress(inp, $("#suctionp_ahp"), $("#dischargep_ahp"));
            }

            function calculate_ahp() {
                var sel = $("input[type='radio'][name='opz_ahp']:checked");


                var variables = {
                    "gs_sel_ahp": $("#gs_sel_ahp").val().split(",")[0],
                    "enteree_ahp": $("#enteree_ahp").val().replace(",", ""),
                    "suctionp_ahp": $("#suctionp_ahp").val().replace(",", ""),
                    "suctiont_ahp": $("#suctiont_ahp").val().replace(",", ""),
                    "dischargep_ahp": $("#dischargep_ahp").val().replace(",", ""),
                    "gass_ahp": $("#gass_ahp").val().replace(",", ""),
                    "adiabatice_ahp": $("#adiabatice_ahp").val().replace(",", ""),
                    "gst_ahp": $("#gst_ahp").val().replace(",", ""),
                    "basepressure_ahp": $("#basepressure_ahp").val().replace(",", ""),
                    "basetemperature_ahp": $("#basetemperature_ahp").val().replace(",", ""),
                    "capacityr_ahp": $("#capacityr_ahp").val().replace(",", ""),
                    "mechanicale_ahp": $("#mechanicale_ahp").val().replace(",", ""),
                    "z1s_ahp": $("#z1s_ahp").val().replace(",", ""),
                    "z2d_ahp": $("#z2d_ahp").val().replace(",", ""),
                    "opz_ahp": sel.val()
                };

                var isOk = validate(variables);

                if (isOk === false) {
                    alert("You must complete all fields");
                } else {

                    var unidades = {
                        "bp_sel_ahp": $("#bp_sel_ahp").val().split(",")[1],
                        "sp_sel_ahp": $("#sp_sel_ahp").val().split(",")[1],
                        "dp_sel_ahp": $("#dp_sel_ahp").val().split(",")[1],
                        "bt_sel_ahp": $("#bt_sel_ahp").val().split(",")[1],
                        "st_sel_ahp": $("#st_sel_ahp").val().split(",")[1],
                        "cr_sel_ahp": $("#cr_sel_ahp").val().split(",")[1],
                        "ee_sel_ahp": $("#ee_sel_ahp").val().split(",")[1]
                    };

                    var res = adiabaticHorsePower_Form(variables, unidades);

                    $("#discharget_ahp").val(res[0]);
                    $("#zavg_ahp").val(res[1]);
                    $("#adiabatich_ahp").val(res[2]);
                    $("#adiabaticghp_ahp").val(res[3]);
                    $("#ghp_ahp").val(res[4]);
                    $("#bhp_ahp").val(res[5]);
                    $("#acfm_ahp").val(res[6]);
                    $("#z1_ahp").val(res[7]);
                    $("#z2_ahp").val(res[8]);

                    show_OkDialog($("#calculate_Dialog_ahp"), "Satisfactory process");
                }
            }

            function save_ahp() {

                var sel = $("input[type='radio'][name='opz_ahp']:checked");

                var inputs = $("#page-wrapper input[type='text'],[type='hidden']").not("[readonly]");
                var selects = $("#page-wrapper select");
                var resultados = $("#page-wrapper input[type='text'][readonly]");

                var parametros = {
                    "iduser": <% out.print(session.getAttribute("idusu"));%>,
                    "from": "ahp"
                };

                for (var i = 0; i < inputs.size(); i++) {
                    if (!($(inputs[i]).attr("id") === "id_" + parametros["from"] && $(inputs[i]).val() === "-1"))
                    {
                        parametros[$(inputs[i]).attr("id")] = $(inputs[i]).val();
                    }
                }

                for (var i = 0; i < selects.size(); i++) {
                    parametros[$(selects[i]).attr("id")] = $(selects[i]).val();
                }

                for (var i = 0; i < resultados.size(); i++) {
                    parametros[$(resultados[i]).attr("id")] = $(resultados[i]).val();
                }

                parametros["opcion"] = parametros["opt_" + parametros["from"]];
                parametros["opz_ahp"] = sel.val();

                var isOk = validate(parametros);

                if (isOk === false) {
                    alert("You must perform the calculation and fill out the description");
                } else {

                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        dataType: 'json',
                        beforeSend: function (xhr) {
                            block("Cargando...");
                        },
                        success: function (data, status, request) {
                            $("#id_ahp").val(data.row.id);
                            $("#opt_ahp").val("2");
                            show_OkDialog($("#save_Dialog_ahp"), "Satisfactory process");
                        },
                        error: function (xhr, ajaxOptions, err) {
                            alert(err);
                            show_OkDialog($("#error_Dialog_ahp"), "Error");
                        },
                        complete: function () {
                            unBlock();
                        }
                    });
                }
            }

            function delete_ahp() {

                //Confirmacion
                if ($("#opt_ahp").val() == 2) {
                    $("#dialog-confirm_ahp").dialog({
                        resizable: false,
                        height: "auto",
                        width: 400,
                        modal: true,
                        buttons: {
                            "Delete": function () {
                                deleteReg_ahp();
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

            function deleteReg_ahp() {
                var parametros = {
                    "id_ahp": $("#id_ahp").val(),
                    "opcion": 3,
                    "iduser": <%=session.getAttribute("idusu")%>,
                    "from": "ahp"
                };


                if ($("#opt_ahp").val() == 2) {
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        dataType: 'json',
                        beforeSend: function (xhr) {
                            block("Cargando...");
                        },
                        success: function (data, status, request) {
                            cleanAll_ahp();
                            $("#id_ahp").val("-1");
                            $("#opt_ahp").val("1");
                            $('#compfactors1_ah').attr('checked', 'checked');
                            onchange_comf_ahp();
                            show_OkDialog($("#save_Dialog_ahp"), "Satisfactory process");
                        },
                        error: function (xhr, ajaxOptions, err) {
                            alert(err);
                            show_OkDialog($("#error_Dialog_ahp"), "Error");
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

        <div id="load_Dialog_ahp" title="Basic dialog" style='display:none;'>
            <p>Successfully uploaded data</p>
        </div>

        <div id="save_Dialog_ahp" title="Basic dialog" style='display:none;'>
            <p>Data saved successfully</p>
        </div>

        <div id="error_Dialog_ahp" title="Basic dialog" style='display:none;'>
            <p>An error has occurred in the process</p>
        </div>

        <div id="calculate_Dialog_ahp" title="Basic dialog" style='display:none;'>
            <p>Calculation done successfully</p>
        </div>

        <div id="delete_Dialog_ahp" title="Basic dialog" style='display:none;'>
            <p>Successfully deleted record</p>
        </div>

        <div id="dialog-confirm_ahp" title="Delete record" style='display:none;'>
            <p><span class="ui-icon ui-icon-alert" style="float:left; margin:12px 12px 20px 0;"></span>
                Are you sure you want to permanently delete this record?
            </p>
        </div>
    </body>
</html>