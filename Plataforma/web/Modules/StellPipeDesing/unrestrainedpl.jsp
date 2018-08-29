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
                <h2><strong>Steel Pipe Design:</strong>  Unrestrained PL Stress Analysis</h2>
            </div>
            <div class="col-lg-3"> 

                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_unrpl()">
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
                                <div id="div-table_unrpl"></div>
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
                <input  class="form-control" type="text" id="description_unrpl" name="description_unrpl"><br>
                Projects: 
                <select class="form-control" id="proyects_sel_unrpl" name="proyects_sel_unrpl"> </select>
            </div>
        </div>
        <hr>

        <div class="col-lg-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Select Pipe Data
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="form-group">
                                <input type="radio" id = "api5l_unrpl" name="linepipe_unrpl" value="api5l_unrpl" onchange="onchange_linepipe_unrpl()" required> Tubería - especificación API 5L <br>
                                <input type="radio" id = "astm_unrpl" name="linepipe_unrpl" value="astm_unrpl" onchange="onchange_linepipe_unrpl()" required> Standart Steel Pipe - ASTM - ANSI B36.10
                            </div>                                    

                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    Line Pipe API 5L
                                </div>
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="form-group">
                                                <div class="col-md-12">
                                                    <label>Nominal pipe size:</label> 
                                                </div>
                                                <div class="col-md-12">
                                                    <div id="div_nominalps_sel_unrpl">
                                                        <select class="form-control" id="nominalps_sel_unrpl" name="nominalps_sel_unrpl"> </select></div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-lg-12">                      
                                                    <label>Wall Thickness [.in]:</label>
                                                </div> 
                                                <div class="col-lg-12" id="div_wt_sel_unrpl">
                                                    <select class="form-control" id="wt_sel_unrpl" name="wt_sel_unrpl"> </select>
                                                </div>
                                            </div> 
                                            <div class="form-group">
                                                <div class="col-md-12">
                                                    <label>Grade:</label> 
                                                </div>
                                                <div class="col-md-12">
                                                    <div id="div_grade_sel_unrpl">
                                                        <select class="form-control" id="grade_sel_unrpl" name="grade_sel_unrpl"> </select>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>  
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    T - Temperature Derating Factor:
                                </div>
                                <div class="panel-body">
                                    <div class="col-lg-6">
                                        <label>Temperature [*F]</label>                        
                                    </div>
                                    <div class="col-lg-6">
                                        <div id="div_jf_sel_unrpl">
                                            <select class="form-control" id="longitudinal_jf_unrpl" name="longitudinal_jf_unrpl"> </select>
                                        </div>      
                                    </div>                      
                                </div>
                            </div>
                            <div class="col-lg-7">
                                <label>Poisson's Ratio:</label>
                            </div>
                            <div class="col-lg-5">
                                <input type="text" class="form-control" onchange='onchange_Input_unrpl(this)' id="poi_ratio_unrpl" name="poi_ratio_unrpl">
                            </div>                
                            <div class="col-lg-7">
                                <label>Young's Modulus of Elasticity [psi]:</label>
                            </div>
                            <div class="col-lg-5">
                                <input type="text" class="form-control" onchange='onchange_Input_unrpl(this)' id="young_modul_unrpl" name="young_modul_unrpl">
                            </div> 
                            <div class="col-lg-7">
                                <label>Thermal Expansion Coefficient [1/°F]:</label>
                            </div>
                            <div class="col-lg-5">
                                <input type="text" class="form-control" onchange='onchange_Input_unrpl(this)' id="thermal_exp_unrpl" name="thermal_exp_unrpl">
                            </div>                   
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-lg-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Pipe and Operational Data:
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">      
                            <div class="form-group">
                                <div class="col-md-12">
                                    <label>Height:</label>
                                </div>
                                <div class="col-md-8">
                                    <input type="text" class="form-control" id="height_unrpl" name="height_unrpl" onchange='onchange_Input_unrpl(this)' required> 
                                </div>
                                <div class="col-md-4" id = "div_height_sel_unrpl">
                                    <select class="form-control" id="height_sel_unrpl" name="height_sel_unrpl" onchange='cleanOut_unrpl()'> 
                                    </select>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-md-12">
                                    <label>Pipe Internal Pressure [psig]:</label>
                                </div>
                                <div class="col-md-8">
                                    <input type="text" class="form-control" id="pip_int_unrpl" name="pip_int_unrpl" onchange='onchange_Input_unrpl(this)' required> 
                                </div>
                                <div class="col-md-4" id = "div_pip_int_sel_unrpl">
                                    <select class="form-control" id="pip_int_sel_unrpl" name="pip_int_sel_unrpl" onchange='cleanOut_unrpl()'> 
                                    </select>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-md-12">
                                    <label>Nominal Outside Diameter [in.]:</label>
                                </div>
                                <div class="col-md-8">
                                    <input type="text" class="form-control" id="nomout_unrpl" name="nomout_unrpl" onchange='onchange_Input_unrpl(this)' required> 
                                </div>
                                <div class="col-md-4" id = "div_nomout_sel_unrpl">
                                    <select class="form-control" id="nomout_sel_unrpl" name="nomout_sel_unrpl" onchange='cleanOut_unrpl()'> 
                                    </select>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-md-12">
                                    <label>Nominal Wall Thickness [in.]:</label>
                                </div>
                                <div class="col-md-8">
                                    <input type="text" class="form-control" id="nom_wall_unrpl" name="nom_wall_unrpl" onchange='onchange_Input_unrpl(this)' required> 
                                </div>
                                <div class="col-md-4" id = "div_nom_wall_sel_unrpl">
                                    <select class="form-control" id="nom_wall_sel_unrpl" name="nom_wall_sel_unrpl" onchange='cleanOut_unrpl()'> 
                                    </select>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-md-12">
                                    <label>Grade:</label>
                                </div>
                                <div class="col-md-12">
                                    <input type="text" class="form-control" id="gra_pipeop_wt_unrpl" name="gra_pipeop_wt_unrpl" required> 
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-md-12">
                                    <label>Specified Minimum Yield Strength [psi]:</label>
                                </div>
                                <div class="col-md-8">
                                    <input type="text" class="form-control" id="min_yield_unrpl" name="min_yield_unrpl" onchange='onchange_Input_unrpl(this)' required> 
                                </div>
                                <div class="col-md-4" id = "div_min_yield_sel_unrpl">
                                    <select class="form-control" id="min_yield_sel_unrpl" name="min_yield_sel_unrpl" onchange='cleanOut_unrpl()'> 
                                    </select>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-md-12">
                                    <label>Temperature Derating Factor:</label>
                                </div>
                                <div class="col-md-12">
                                    <input type="text" class="form-control" id="temp_unrpl" name="temp_unrpl" onchange='onchange_Input_unrpl(this)' required> 
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-md-12">
                                    <label>Nominal Bending Stress [psi]:</label>
                                </div>
                                <div class="col-md-8">
                                    <input type="text" class="form-control" id="nom_stress_unrpl" name="nom_stress_unrpl" onchange='onchange_Input_unrpl(this)' required> 
                                </div>
                                <div class="col-md-4" id = "div_nom_stress_sel_unrpl">
                                    <select class="form-control" id="nom_stress_sel_unrpl" name="nom_stress_sel_unrpl" onchange='cleanOut_unrpl()'> 
                                    </select>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-md-12">
                                    <label>Stress Due to Axial Loading [psi]:</label>
                                </div>
                                <div class="col-md-8">
                                    <input type="text" class="form-control" id="stress_axial_unrpl" name="stress_axial_unrpl" onchange='onchange_Input_unrpl(this)' required> 
                                </div>
                                <div class="col-md-4" id = "div_stress_axial_sel_unrpl">
                                    <select class="form-control" id="stress_axial_sel_unrpl" name="stress_axial_sel_unrpl" onchange='cleanOut_unrpl()'> 
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Results
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">                                    
                            <div class="form-group">
                                <label>Hoop Stress [psi]:</label>
                                <input type="text" name="hoop_stress_unrpl" id="hoop_stress_unrpl" class="form-control" readonly> 
                                <BR>
                                <label>Longitudinal Stress Due to Internal Pressure [psi]:</label>
                                <input type="text" name="long_int_unrpl" id="long_int_unrpl" class="form-control" readonly> 
                                <BR>
                                <label>Net Longitudinal Stress [psi]:</label>
                                <input type="text" name="net_stress_unrpl" id="net_stress_unrpl" class="form-control" readonly> 
                                <BR>
                                <label>Maximum Permitted Longitudinal Stress [psi]:</label>
                                <input type="text" name="max_stress_unrpl" id="max_stress_unrpl" class="form-control" readonly> 
                                <BR>

                                <div>    
                                    <input type="button" id="calculateBtn_unrpl" name="calculateBtn_unrpl" value="Calculate" onclick="calculate_unrpl()" class="btn btn-info btn-block">
                                    <input type="button" id="saveBtn_unrpl" name="saveBtn_unrpl" value="Save" onclick="save_unrpl()" class="btn btn-success btn-block">   
                                    <input type="button" id="reportBtn_unrpl" name="reportBtn_unrpl" value="Delete" onclick="reportReg_unrpl()" class="btn btn-danger btn-block">          
                                </div>
                            </div>  
                        </div> 
                    </div>               
                </div>
            </div>
        </div> 

        <div class="col-lg-12">
            <div class="col-md-3">
                <input type="button" id="cleanAllBtn_unrpl" name="cleanBtn_unrpl" value="Clean All" onclick="cleanAll_unrpl()" class="btn btn-warning btn-block">
            </div>
            <div class="col-md-3">
                <input type="button" id="cleanInputBtn_unrpl" name="cleanBtn_unrpl" value="Clean Input Data" onclick="cleanIn_unrpl()" class="btn btn-warning btn-block">
            </div>
            <div class="col-md-3">
                <input type="button" id="cleanOutputBtn_unrpl" name="cleanBtn_unrpl" value="Clean Output Data" onclick="cleanOut_unrpl()" class="btn btn-warning btn-block">
            </div>    
        </div>

        <input type="hidden" id="opt_unrpl" name="opt_unrpl"> 
        <input type="hidden" id="id_unrpl" name="id_unrpl">   
        <script>
            $(document).ready(function () {
                getproyectos(<%=session.getAttribute("idusu")%>,
                        $("#proyects_sel_unrpl"),
                        $("#error_Dialog_unrpl"));

                $("#opt_unrpl").val("1");
                $('#api5l_unrpl').attr('checked', 'checked');
                load_nps_sel_unrpl("5l");
                load_grade_sel_unrpl("gra5l");
                load_deratingf_sel_unrpl();
                load_presf_sel_unrpl();
                load_in_sel_unrpl();
                load_in2_sel_unrpl();
                load_pres_sel_unrpl();
            });

            function load_in_sel_unrpl() {
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
                        var newHtml = "<select class='form-control' id='height_sel_unrpl' name='height_sel_unrpl' onchange='cleanOut_unrpl()'> " + data;
                        $("#div_height_sel_unrpl").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_unrpl"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            
            function load_in2_sel_unrpl() {
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
                        var newHtml = "<select class='form-control' id='nomout_sel_unrpl' name='nomout_sel_unrpl' onchange='cleanOut_unrpl()'> " + data;
                        $("#div_nomout_sel_unrpl").html(newHtml);

                        newHtml = "<select class='form-control'id='nom_wall_sel_unrpl' name='nom_wall_sel_unrpl' onchange='cleanOut_unrpl()'> " + data;
                        $("#div_nom_wall_sel_unrpl").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_unrpl"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_presf_sel_unrpl() {
                var parametros = {
                    "combo": "presf",
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
                        var newHtml = "<select class='form-control' id='min_yield_sel_unrpl' name='min_yield_sel_unrpl' onchange='cleanOut_unrpl()'> " + data;
                        $("#div_min_yield_sel_unrpl").html(newHtml);

                        newHtml = "<select class='form-control' id='nom_stress_sel_unrpl' name='nom_stress_sel_unrpl' onchange='cleanOut_unrpl()'> " + data;
                        $("#div_nom_stress_sel_unrpl").html(newHtml);

                        newHtml = "<select class='form-control' id='stress_axial_sel_unrpl' name='stress_axial_sel_unrpl' onchange='cleanOut_unrpl()'> " + data;
                        $("#div_stress_axial_sel_unrpl").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_unrpl"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_pres_sel_unrpl() {
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
                        var newHtml = "<select class='form-control' id='pip_int_sel_unrpl' name='pip_int_sel_unrpl' onchange='cleanOut_unrpl()'> " + data;
                        $("#div_pip_int_sel_unrpl").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_unrpl"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function calculate_unrpl() {
                //alert("Entro");
                var variables = {
                    "Spoisson": $("#poi_ratio_unrpl").val(),
                    "E": $("#young_modul_unrpl").val(),
                    "alpha": $("#thermal_exp_unrpl").val(),
                    "height": $("#height_unrpl").val(),
                    "P": $("#pip_int_unrpl").val(),
                    "D": $("#nomout_unrpl").val(),
                    "t": $("#nom_wall_unrpl").val(),
                    "Grade": $("#gra_pipeop_wt_unrpl").val(),
                    "S": $("#min_yield_unrpl").val(),
                    "T": $("#temp_unrpl").val(),
                    "Sb": $("#nom_stress_unrpl").val(),
                    "Sx": $("#stress_axial_unrpl").val()
                };

                var unidades = {
                    "height_sel_unrpl": $("#height_sel_unrpl").val().split(",")[1],
                    "pip_int_sel_unrpl": $("#pip_int_sel_unrpl").val().split(",")[1],
                    "nomout_sel_unrpl": $("#nomout_sel_unrpl").val().split(",")[1],
                    "nom_wall_sel_unrpl": $("#nom_wall_sel_unrpl").val().split(",")[1],
                    "min_yield_sel_unrpl": $("#min_yield_sel_unrpl").val().split(",")[1],
                    "nom_stress_sel_unrpl": $("#nom_stress_sel_unrpl").val().split(",")[1],
                    "stress_axial_sel_unrpl": $("#stress_axial_sel_unrpl").val().split(",")[1]
                };

                var res = UnRestrained_form(variables, unidades);

                $("#hoop_stress_unrpl").val(res[0]);
                $("#long_int_unrpl").val(res[1]);
                $("#net_stress_unrpl").val(res[2]);
                $("#max_stress_unrpl").val(res[3]);


                show_OkDialog($("#calculate_Dialog_wdp"), "Proceso satisfactorio");
            }
            function load_form_unrpl(id) {

                var parametros = {
                    "id": id,
                    "opcion": "4",
                    "from": "ppw"
                };

                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    dataType: 'json',
                    beforeSend: function (xhr) {
                        // cleanAll_unrpl();
                        block("Cargado datos...");
                    },
                    success: function (data, status, request) {
                        if (data != null)
                        {
                            var tags = Object.keys(data.row);

                            for (var i = 0; i < tags.length; i++) {
                                if (tags[i] != "date" && tags[i] != "id_proyect" && tags[i] != "id_user" && tags[i] != "id" && tags[i] != "linepipe_unrpl")
                                {
                                    $("#" + tags[i]).val(data.row[tags[i]]);
                                }
                            }

                            if (data.row["linepipe_unrpl"] == "api5l_unrpl") {
                                document.getElementById("api5l_unrpl").checked = true;
                                load_grade_sel_unrpl("gra5l");
                                load_joinf_sel_unrpl("jointf5l");
                            } else {//astm_unrpl
                                document.getElementById("astm_unrpl").checked = true;
                                load_grade_sel_unrpl("graastm");
                                load_joinf_sel_unrpl("jointf");
                            }

                            $("#grade_sel_unrpl").val(data.row["grade_sel_unrpl"]);
                            $("#grade_unrpl").val(data.row["grade_unrpl"]);

                            $("#jf_sel_unrpl").val(data.row["jf_sel_unrpl"]);
                            $("#jf_unrpl").val(data.row["jf_unrpl"]);

                            $("#opt_unrpl").val("2");
                            $("#id_unrpl").val(data.row.id);
                        } else {
                            $("#opt_unrpl").val("1");
                        }

                    },
                    error: function (xhr, ajaxOptions, err) {
                        $("#opt_unrpl").val("1");
                        show_OkDialog($("#error_Dialog_unrpl"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_temp_sel_unrpl() {
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
                        var newHtml = "<select class=\"form-control\" name=\"tempd_sel_unrpl\" id= \"tempd_sel_unrpl\" onchange=\"cleanOut_unrpl()\">" + data;
                        $("#div_tempd_sel_unrpl").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_unrpl"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_nps_sel_unrpl(type) {
                var parametros = {
                    "combo": "npsn",
                    "type": type,
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
                        var newHtml = "<select class=\"form-control\" name=\"nominalps_sel_unrpl\" id= \"nominalps_sel_unrpl\" onchange=\"onchange_nps_unrpl()\">" + data;
                        $("#div_nominalps_sel_unrpl").html(newHtml);
                        var res = $("#nominalps_sel_unrpl option:selected").html();
                        $("#nomout_unrpl").val(res);
                        $("#nomout_unrpl").val($("#nominalps_sel_unrpl").val());
                        load_wt_sel_unrpl();
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_unrpl"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            function load_wt_sel_unrpl() {
                var parametros = {
                    "combo": "wtn",
                    "nps": $("#nominalps_sel_unrpl").val(),
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
                        var newHtml = "<select class=\"form-control\" name=\"wt_sel_unrpl\" id= \"wt_sel_unrpl\" onchange=\"onchange_wt_unrpl()\">" + data;
                        $("#div_wt_sel_unrpl").html(newHtml);
                        $("#nom_wall_unrpl").val($("#wt_sel_unrpl").val().split(",")[1]);

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_unrpl"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }


            function load_deratingf_sel_unrpl() {
                var parametros = {
                    "combo": "deratingf",
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
                        var newHtml = "<select class=\"form-control\" name=\"td_sel_unrpl\" id=\"td_sel_unrpl\" onchange=\"onchange_df_unrpl()\">" + data;
                        $("#div_jf_sel_unrpl").html(newHtml);
                        $("#temp_unrpl").val($("#td_sel_unrpl").val().split(",")[1]);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_unrpl"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_grade_sel_unrpl(idcombo) {
                var parametros = {
                    "combo": idcombo,
                    "opcion": "5"
                };
                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    async: false,
                    data: parametros,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        var newHtml = "<select class=\"form-control\" name=\"grade_sel_unrpl\" id=\"grade_sel_unrpl\" onchange=\"onchange_gra_unrpl()\">" + data;
                        $("#div_grade_sel_unrpl").html(newHtml);
                        var x = $("#grade_sel_unrpl").val();

                        var res = $("#grade_sel_unrpl option:selected").html();
                        $("#min_yield_unrpl").val(x.split(",")[1]);
                        $("#gra_pipeop_wt_unrpl").val(res);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_unrpl"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }


            function load_desingf_sel_unrpl() {
                var parametros = {
                    "combo": "desingf2",
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
                        var newHtml = "<select class=\"form-control\" name=\"design_factor_sel_unrpl\" id=\"design_factor_sel_unrpl\" onchange=\"onchange_defa_unrpl()\">" + data;
                        $("#div_df_sel_unrpl").html(newHtml);

                        var x = $("#design_factor_sel_unrpl").val();
                        $("#fact_pipeop_unrpl").val(x.split(",")[1]);

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_unrpl"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            function onchange_linepipe_unrpl() {

                var sel = $("input[type='radio'][name='linepipe_unrpl']:checked");
                if (sel.val() == "api5l_unrpl") {
                    load_grade_sel_unrpl("gra5l");
                    load_nps_sel_unrpl("5l");

                } else {
                    load_grade_sel_unrpl("graastm");
                    load_nps_sel_unrpl("astm");
                }

                cleanOut_unrpl();
            }

            function onchange_Input_unrpl(inp) {

                var sw = validateDecimal(inp.value);

                if (sw !== true) {
                    inp.value = "";
                }

                onchange_Input_zero(inp);
                cleanOut_unrpl();
            }

            function onchange_nps_unrpl() {
                var res = $("#nominalps_sel_unrpl option:selected").html();
                $("#nomout_unrpl").val(res);
                $("#nomout_unrpl").val($("#nominalps_sel_unrpl").val());
                load_wt_sel_unrpl();
            }

            function onchange_wt_unrpl() {
                $("#nom_wall_unrpl").val($("#wt_sel_unrpl").val().split(",")[1]);
                cleanOut_unrpl();
            }

            function onchange_gra_unrpl() {
                var x = $("#grade_sel_unrpl").val();
                $("#specifiedmys_unrpl").val(x.split(",")[1]);
                var res = $("#grade_sel_unrpl option:selected").html();
                $("#min_yield_unrpl").val(x.split(",")[1]);
                $("#gra_pipeop_wt_unrpl").val(res);
                cleanOut_unrpl();
            }

            function onchange_jf_unrpl() {
                $("#long_pipeop_unrpl").val($("#longitudinal_jf_unrpl").val().split(",")[1]);
                cleanOut_unrpl();
            }

            function onchange_df_unrpl() {
                $("#temp_unrpl").val($("#td_sel_unrpl").val().split(",")[1]);
                cleanOut_unrpl();
            }

            function onchange_defa_unrpl() {
                $("#fact_pipeop_unrpl").val($("#design_factor_sel_unrpl").val().split(",")[1]);
                cleanOut_unrpl();
            }

            function cleanOut_unrpl() {
                $("#hoop_stress_unrpl").val("");
                $("#long_int_unrpl").val("");
                $("#net_stress_unrpl").val("");
                $("#max_stress_unrpl").val("");
            }

            function cleanIn_unrpl() {
                $("#poi_ratio_unrpl").val("");
                $("#young_modul_unrpl").val("");
                $("#thermal_exp_unrpl").val("");
                $("#pip_int_unrpl").val("");
                $("#nomout_unrpl").val("");
                $("#nom_wall_unrpl").val("");
                $("#gra_pipeop_wt_unrpl").val("");
                $("#min_yield_unrpl").val("");
                $("#temp_unrpl").val("");
                $("#nom_stress_unrpl").val("");
                $("#stress_axial_unrpl").val("");
            }

            function cleanAll_unrpl() {
                cleanOut_unrpl();
                cleanIn_unrpl();
            }
        </script>         
    </body>
</html>