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
                <h2><strong>Stell Pipe Design:</strong>  Restrained PL Stress Analysis</h2>
            </div>
            <div class="col-lg-3"> 

                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_rpls()">
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
                                <div id="div-table_rpls"></div>
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
                <input  class="form-control" type="text" id="description_rpls" name="description_rpls"><br>
                Projects: 
                <select class="form-control" id="proyects_sel_rpls" name="proyects_sel_rpls"> </select>
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
                                <input type="radio" id = "api5l_rpls" name="linepipe_rpls" value="api5l_rpls" onchange="onchange_linepipe_rpls()" required> Tubería - especificación API 5L <br>
                                <input type="radio" id = "astm_rpls" name="linepipe_rpls" value="astm_rpls" onchange="onchange_linepipe_rpls()" required> Standart Steel Pipe - ASTM - ANSI B36.10
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
                                                    <div id="div_nominalps_sel_rpls">
                                                        <select class="form-control" id="nominalps_sel_rpls" name="nominalps_sel_rpls"> </select></div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-lg-12">                      
                                                    <label>Wall Thickness [.in]:</label>
                                                </div> 
                                                <div class="col-lg-12" id="div_wt_sel_rpls">
                                                    <select class="form-control" id="wt_sel_rpls" name="wt_sel_rpls"> </select>
                                                </div>
                                            </div> 
                                            <div class="form-group">
                                                <div class="col-md-12">
                                                    <label>Grade:</label> 
                                                </div>
                                                <div class="col-md-12">
                                                    <div id="div_grade_sel_rpls">
                                                        <select class="form-control" id="grade_sel_rpls" name="grade_sel_rpls"> </select>
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
                                        <div  id="div_td_sel_rpls">                    
                                            <select class="form-control" id="temperature_rpls" name="temperature_rpls"> </select>
                                        </div>                      
                                    </div>                      
                                </div>
                            </div>
                            <div class="col-lg-7">
                                <label>Poisson's Ratio:</label>
                            </div>
                            <div class="col-lg-5">
                                <input type="text" class="form-control" id="poi_ratio_rpls" name="poi_ratio_rpls">
                            </div>                
                            <div class="col-lg-7">
                                <label>Young's Modulus of Elasticity [psi]:</label>
                            </div>
                            <div class="col-lg-5">
                                <input type="text" class="form-control" id="young_modul_rpls" name="young_modul_rpls">
                            </div> 
                            <div class="col-lg-7">
                                <label>Thermal Expansion Coefficient [1/°F]:</label>
                            </div>
                            <div class="col-lg-5">
                                <input type="text" class="form-control" id="thermal_exp_rpls" name="thermal_exp_rpls">
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
                                <label>Pipe Internal Pressure [psig]:</label>
                                <input type="text" class="form-control" id="pip_int_rpls" name="pip_int_rpls"> 
                                <label>Nominal Outside Diameter [in.]:</label>
                                <input type="text" class="form-control" id="nomout_rpls" name="nomout_rpls"> 
                                <label>Nominal Wall Thickness [in.]:</label>
                                <input type="text" class="form-control" id="nom_wall_rpls" name="nom_wall_rpls">                  
                                <label>Grade: </label>            
                                <input type="text" name="gra_pipeop_wt_rpls" id="gra_pipeop_wt_rpls" class="form-control">
                                <label>Specified Minimun Yield Strength [psi]: </label>
                                <input type="text" name="min_yield_rpls" id="min_yield_rpls" class="form-control">
                                <label>Temperature Derating Factor:</label>
                                <input type="text" name="temp_rpls" id="temp_rpls" class="form-control">
                                <label>Pipe Installation Temperature [°F]:</label>
                                <input type="text" name="pipe_temp_rpls" id="pipe_temp_rpls" class="form-control">                  
                                <label>Pipe Operating Temperature [°F]:</label>
                                <input type="text" name="pipeoper_temp_rpls" id="pipeoper_temp_rpls" class="form-control">                   
                                <label>Nominal Bending Stress [psi]:</label>
                                <input type="text" name="nom_stress_rpls" id="nom_stress_rpls" class="form-control">
                                <label>Stress Due to Axial Loading [psi]:</label>
                                <input type="text" class="form-control" id="stress_axial_rpls" name="stress_axial_rpls">
                                <label>k - Load Factor:</label>
                                <input type="text" name="k_factor_rpls" id="k_factor_rpls" class="form-control">
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
                                <input type="text" name="hoop_stress_rpls" id="hoop_stress_rpls" class="form-control"> 
                                <BR>
                                <label>Longitudinal Stress Due to Internal Pressure [psi]:</label>
                                <input type="text" name="long_int_rpls" id="long_int_rpls" class="form-control"> 
                                <BR>
                                <label>Longitudinal Stress Due to Thermal Expansion [psi]:</label>
                                <input type="text" name="long_ther_rpls" id="long_ther_rpls" class="form-control"> 
                                <BR>
                                <label>Net Longitudinal Stress [psi]:</label>
                                <input type="text" name="net_stress_rpls" id="net_stress_rpls" class="form-control"> 
                                <BR>
                                <label>Maximun Permitted Longitudinal Stress [psi]:</label>
                                <input type="text" name="max_stress_rpls" id="max_stress_rpls" class="form-control"> 
                                <BR>
                                <label>Combined Biaxial Stress [psi]:</label>
                                <input type="text" name="comb_stress_rpls" id="comb_stress_rpls" class="form-control"> 
                                <BR>
                                <label>Maximun Permitted Combined Biaxial Stress [psi]:</label>
                                <input type="text" name="max_comb_stress_rpls" id="max_comb_stress_rpls" class="form-control"> 
                                <BR>

                                <div>    
                                    <input type="button" id="calculateBtn_rpl" name="calculateBtn_rpl" value="Calculate" onclick="calculate_rpl()" class="btn btn-info btn-block">
                                    <input type="button" id="saveBtn_rpl" name="saveBtn_rpl" value="Save" onclick="save_rpl()" class="btn btn-success btn-block">   
                                    <input type="button" id="reportBtn_rpl" name="reportBtn_rpl" value="Delete" onclick="reportReg_rpl()" class="btn btn-danger btn-block">          
                                </div>
                            </div>  
                        </div> 
                    </div>               
                </div>
            </div>
        </div> 

        <div class="col-lg-12">
            <div class="col-md-3">
                <input type="button" id="cleanAllBtn_rpl" name="cleanBtn_rpl" value="Clean All" onclick="cleanAll_rpls()" class="btn btn-warning btn-block">
            </div>
            <div class="col-md-3">
                <input type="button" id="cleanInputBtn_rpl" name="cleanBtn_rpl" value="Clean Input Data" onclick="cleanIn_rpls()" class="btn btn-warning btn-block">
            </div>
            <div class="col-md-3">
                <input type="button" id="cleanOutputBtn_rpl" name="cleanBtn_rpl" value="Clean Output Data" onclick="cleanOut_rpls()" class="btn btn-warning btn-block">
            </div>    
        </div>

        <input type="hidden" id="opt_rpl" name="opt_rpl"> 
        <input type="hidden" id="id_rpl" name="id_rpl">   
        <script>
            $(document).ready(function () {
                getproyectos(<%=session.getAttribute("idusu")%>,
                        $("#proyects_sel_rpls"),
                        $("#error_Dialog_rpls"));

                $("#opt_rpls").val("1");
                $('#api5l_rpls').attr('checked', 'checked');
                load_nps_sel_rpls("5l");
                load_grade_sel_rpls("gra5l");
                load_deratingf_sel_rpls();


            });
            function calculate_rpl() {

                var variables = {
                    "Spoisson": $("#poi_ratio_rpls").val(),
                    "E": $("#young_modul_rpls").val(),
                    "alpha": $("#thermal_exp_rpls").val(),
                    "P": $("#pip_int_rpls").val(),
                    "D": $("#nomout_rpls").val(),
                    "t": $("#nom_wall_rpls").val(),
                    "Grade": $("#gra_pipeop_wt_rpls").val(),
                    "S": $("#min_yield_rpls").val(),
                    "T": $("#temp_rpls").val(),
                    "T1": $("#pipe_temp_rpls").val(),
                    "T2": $("#pipeoper_temp_rpls").val(),
                    "Sb": $("#nom_stress_rpls").val(),
                    "Sx": $("#stress_axial_rpls").val(),
                    "Kfactor": $("#k_factor_rpls").val()
                };

                var res = Restrained_form(variables);

                $("#hoop_stress_rpls").val(res[0]);
                $("#long_int_rpls").val(res[1]);
                $("#long_ther_rpls").val(res[2]);
                $("#net_stress_rpls").val(res[3]);
                $("#max_stress_rpls").val(res[4]);
                $("#comb_stress_rpls").val(res[5]);
                alert("Se debe revisar la formula de K en esta sección");
                $("#max_comb_stress_rpls").val(res[6]);


                show_OkDialog($("#calculate_Dialog_wdp"), "Proceso satisfactorio");
            }
            function load_form_rpls(id) {

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
                        // cleanAll_rpls();
                        block("Cargado datos...");
                    },
                    success: function (data, status, request) {
                        if (data != null)
                        {
                            var tags = Object.keys(data.row);

                            for (var i = 0; i < tags.length; i++) {
                                if (tags[i] != "date" && tags[i] != "id_proyect" && tags[i] != "id_user" && tags[i] != "id" && tags[i] != "linepipe_rpls")
                                {
                                    $("#" + tags[i]).val(data.row[tags[i]]);
                                }
                            }

                            if (data.row["linepipe_rpls"] == "api5l_rpls") {
                                document.getElementById("api5l_rpls").checked = true;
                                load_grade_sel_rpls("gra5l");
                                load_joinf_sel_rpls("jointf5l");
                            } else {//astm_rpls
                                document.getElementById("astm_rpls").checked = true;
                                load_grade_sel_rpls("graastm");
                                load_joinf_sel_rpls("jointf");
                            }

                            $("#grade_sel_rpls").val(data.row["grade_sel_rpls"]);
                            $("#grade_rpls").val(data.row["grade_rpls"]);

                            $("#jf_sel_rpls").val(data.row["jf_sel_rpls"]);
                            $("#jf_rpls").val(data.row["jf_rpls"]);

                            $("#opt_rpls").val("2");
                            $("#id_rpls").val(data.row.id);
                        } else {
                            $("#opt_rpls").val("1");
                        }

                    },
                    error: function (xhr, ajaxOptions, err) {
                        $("#opt_rpls").val("1");
                        show_OkDialog($("#error_Dialog_rpls"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_temp_sel_rpls() {
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
                        var newHtml = "<select class=\"form-control\" name=\"tempd_sel_rpls\" id= \"tempd_sel_rpls\" onchange=\"cleanOut_rpls()\">" + data;
                        $("#div_tempd_sel_rpls").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_rpls"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_nps_sel_rpls(type) {
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
                        var newHtml = "<select class=\"form-control\" name=\"nominalps_sel_rpls\" id= \"nominalps_sel_rpls\" onchange=\"onchange_nps_rpls()\">" + data;
                        $("#div_nominalps_sel_rpls").html(newHtml);
                        var res = $("#nominalps_sel_rpls option:selected").html();
                        $("#nomout_rpls").val(res);
                        $("#nomout_rpls").val($("#nominalps_sel_rpls").val());
                        load_wt_sel_rpls();
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_rpls"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            function load_wt_sel_rpls() {
                var parametros = {
                    "combo": "wtn",
                    "nps": $("#nominalps_sel_rpls").val(),
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
                        var newHtml = "<select class=\"form-control\" name=\"wt_sel_rpls\" id= \"wt_sel_rpls\" onchange=\"onchange_wt_rpls()\">" + data;
                        $("#div_wt_sel_rpls").html(newHtml);
                        $("#nom_wall_rpls").val($("#wt_sel_rpls").val().split(",")[1]);

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_rpls"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }


            function load_deratingf_sel_rpls() {
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
                        var newHtml = "<select class=\"form-control\" name=\"td_sel_rpls\" id=\"td_sel_rpls\" onchange=\"onchange_df_rpls()\">" + data;
                        $("#div_td_sel_rpls").html(newHtml);
                        $("#temp_rpls").val($("#td_sel_rpls").val().split(",")[1]);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_rpls"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_grade_sel_rpls(idcombo) {
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
                        var newHtml = "<select class=\"form-control\" name=\"grade_sel_rpls\" id=\"grade_sel_rpls\" onchange=\"onchange_gra_rpls()\">" + data;
                        $("#div_grade_sel_rpls").html(newHtml);
                        var x = $("#grade_sel_rpls").val();
                        //$("#min_yield").val(x.split(",")[1]);
                        var res = $("#grade_sel_rpls option:selected").html();
                        $("#gra_pipeop_wt_rpls").val(x.split(",")[1]);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_rpls"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }


            function load_desingf_sel_rpls() {
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
                        var newHtml = "<select class=\"form-control\" name=\"design_factor_sel_rpls\" id=\"design_factor_sel_rpls\" onchange=\"onchange_defa_rpls()\">" + data;
                        $("#div_df_sel_rpls").html(newHtml);

                        var x = $("#design_factor_sel_rpls").val();
                        $("#fact_pipeop_rpls").val(x.split(",")[1]);

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_rpls"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            function onchange_linepipe_rpls() {

                var sel = $("input[type='radio'][name='linepipe_rpls']:checked");
                if (sel.val() == "api5l_rpls") {
                    load_grade_sel_rpls("gra5l");
                    load_nps_sel_rpls("5l");

                } else {
                    load_grade_sel_rpls("graastm");
                    load_nps_sel_rpls("astm");
                }

                //  cleanOut_rpls();

            }
            function onchange_Input_rpls(inp) {

                var sw = validateDecimal(inp.value);

                if (sw != true) {
                    inp.value = "";
                }
                onchange_Input_zero(inp);
                // cleanOut_rpls();

            }

            function onchange_nps_rpls() {
                var res = $("#nominalps_sel_rpls option:selected").html();
                $("#nomout_rpls").val(res);
                $("#nomout_rpls").val($("#nominalps_sel_rpls").val());
                load_wt_sel_rpls();
            }

            function onchange_wt_rpls() {
                $("#nom_wall_rpls").val($("#wt_sel_rpls").val().split(",")[1]);
            }

            function onchange_gra_rpls() {
                var x = $("#grade_sel_rpls").val();
                $("#specifiedmys_rpls").val(x.split(",")[1]);
                var res = $("#grade_sel_rpls option:selected").html();
                $("#gra_pipeop_wt_rpls").val(x.split(",")[1]);
                // cleanOut_rpls();
            }

            function onchange_jf_rpls() {
                $("#long_pipeop_rpls").val($("#longitudinal_jf_rpls").val().split(",")[1]);
                //cleanOut_rpls();
            }

            function onchange_df_rpls() {
                $("#temp_rpls").val($("#td_sel_rpls").val().split(",")[1]);
                //cleanOut_rpls();
            }

            function onchange_defa_rpls() {
                $("#fact_pipeop_rpls").val($("#design_factor_sel_rpls").val().split(",")[1]);
                // cleanOut_rpls();
            }

            function cleanOut_rpls() {
                $("#hoop_stress_rpls").val("");
                $("#long_int_rpls").val("");
                $("#long_ther_rpls").val("");
                $("#net_stress_rpls").val("");
                $("#max_stress_rpls").val("");
                $("#comb_stress_rpls").val("");
                $("#max_comb_stress_rpls").val("");
            }

            function cleanIn_rpls() {
                $("#poi_ratio_rpls").val("");
                $("#young_modul_rpls").val("");
                $("#thermal_exp_rpls").val("");
                $("#pip_int_rpls").val("");
                $("#nomout_rpls").val("");
                $("#nom_wall_rpls").val("");
                $("#gra_pipeop_wt_rpls").val("");
                $("#min_yield_rpls").val("");
                $("#temp_rpls").val("");
                $("#pipe_temp_rpls").val("");
                $("#pipeoper_temp_rpls").val("");
                $("#nom_stress_rpls").val("");
                $("#stress_axial_rpls").val("");
                $("#k_factor_rpls").val("");
            }

            function cleanAll_rpls() {
                cleanOut_rpls();
                cleanIn_rpls();
            }
        </script>    
    </body>
</html>