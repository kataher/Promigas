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
                <h2><strong>Steel Pipe Design:</strong>  Requirements to move Unpressured Pipe </h2>
            </div>
            <div class="col-lg-3"> 

                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_urpp()">
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
                                <div id="div-table_urpp"></div>
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
                <input  class="form-control" type="text" id="description_urpp" name="description_urpp"><br>
                Projects: 
                <select class="form-control" id="proyects_sel_urpp" name="proyects_sel_urpp"> </select>
            </div>
        </div>
        <hr>

        <div class="col-lg-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Pipe Properties
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="form-group">
                                <input type="radio" id = "api5l_urpp" name="linepipe_urpp" value="api5l_urpp" onchange="onchange_linepipe_urpp()" required> Tubería - especificación API 5L <br>
                                <input type="radio" id = "astm_urpp" name="linepipe_urpp" value="astm_urpp" onchange="onchange_linepipe_urpp()" required> Standart Steel Pipe - ASTM - ANSI B36.10
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
                                                    <div id="div_nominalps_sel_urpp">
                                                        <select class="form-control" id="nominalps_sel_urpp" name="nominalps_sel_urpp"> </select></div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-lg-12">                      
                                                    <label>Wall Thickness [.in]:</label>
                                                </div> 
                                                <div class="col-lg-12" id="div_wt_sel_urpp">
                                                    <select class="form-control" id="wt_sel_urpp" name="wt_sel_urpp"> </select>
                                                </div>
                                            </div> 
                                            <div class="form-group">
                                                <div class="col-md-12">
                                                    <label>Grade:</label> 
                                                </div>
                                                <div class="col-md-12">
                                                    <div id="div_grade_sel_urpp">
                                                        <select class="form-control" id="grade_sel_urpp" name="grade_sel_urpp"> </select>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>  
                            </div>             
                            <div class="col-lg-7">
                                <label>Young's Modulus of Elasticity [psi]:</label>
                            </div>
                            <div class="col-lg-5">
                                <input type="text" name="you_elast_urpp" id="you_elast_urpp" class="form-control" onchange='onchange_Input_urpp(this)'>
                            </div>                
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-lg-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Input Data:
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">  
                            <div class="form-group">
                                <div class="col-md-12">
                                    <label>Maximum Deflection at the Pipe End [.in]:</label>
                                </div>
                                <div class="col-md-8">
                                    <input type="text" class="form-control" id="max_defl_urpp" name="max_defl_urpp" onchange='onchange_Input_urpp(this)' required> 
                                </div>
                                <div class="col-md-4" id = "div_max_defl_sel_urpp">
                                    <select class="form-control" id="max_defl_sel_urpp" name="max_defl_sel_urpp" onchange='cleanOut_urpp()'> 
                                    </select>
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <div class="col-md-12">
                                    <label>Nominal Outside Diameter [in.]:</label>
                                </div>
                                <div class="col-md-8">
                                    <input type="text" class="form-control" id="nomout_urpp" name="nomout_urpp" onchange='onchange_Input_urpp(this)' required> 
                                </div>
                                <div class="col-md-4" id = "div_nomout_sel_urpp">
                                    <select class="form-control" id="nomout_sel_urpp" name="nomout_sel_urpp" onchange='cleanOut_urpp()'> 
                                    </select>
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <div class="col-md-12">
                                    <label>Nominal Wall Thickness [in.]:</label>
                                </div>
                                <div class="col-md-8">
                                    <input type="text" class="form-control" id="nom_wall_urpp" name="nom_wall_urpp" onchange='onchange_Input_urpp(this)' required> 
                                </div>
                                <div class="col-md-4" id = "div_nom_wall_sel_urpp">
                                    <select class="form-control" id="nom_wall_sel_urpp" name="nom_wall_sel_urpp" onchange='cleanOut_urpp()'> 
                                    </select>
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <div class="col-md-12">
                                    <label>Specified Minimum Yield Strength [psi]:</label>
                                </div>
                                <div class="col-md-8">
                                    <input type="text" class="form-control" id="min_yield_urpp" name="min_yield_urpp" onchange='onchange_Input_urpp(this)' required> 
                                </div>
                                <div class="col-md-4" id = "div_min_yield_sel_urpp">
                                    <select class="form-control" id="min_yield_sel_urpp" name="min_yield_sel_urpp" onchange='cleanOut_urpp()'> 
                                    </select>
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <div class="col-md-12">
                                    <label>Percent of SMYS [%]:</label>
                                </div>
                                <div class="col-md-12">
                                    <input type="text" class="form-control" id="porc_SMYS_urpp" name="porc_SMYS_urpp" onchange='onchange_Input_urpp(this)' required> 
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
                                <label>Maximum Stress Allowed [psi]:</label>
                                <input type="text" name="max_stress_urpp" id="max_stress_urpp" class="form-control" readonly> 
                                <BR>
                                <label>Total Exposed Pipe Required [ft.]:</label>
                                <input type="text" name="tot_exp_urpp" id="tot_exp_urpp" class="form-control" readonly> 
                                <BR>
                                <label>Maximum Load at the Pipe End [lbs]:</label>
                                <input type="text" name="max_pipe_urpp" id="max_pipe_urpp" class="form-control" readonly> 
                                <BR>
                                <label>Section Modulus:</label>
                                <input type="text" name="sect_mod_urpp" id="sect_mod_urpp" class="form-control" readonly> 
                                <BR>
                                <label>Moment of Inertia:</label>
                                <input type="text" name="mom_inert_urpp" id="mom_inert_urpp" class="form-control" readonly> 
                                <BR>
                                <label>Moment [lb-ft.]:</label>
                                <input type="text" name="moment_urpp" id="moment_urpp" class="form-control" readonly> 
                                <BR>                                      
                                <div>    
                                    <input type="button" id="calculateBtn_urpp" name="calculateBtn_urpp" value="Calculate" onclick="calculate_urpp()" class="btn btn-info btn-block">
                                    <input type="button" id="saveBtn_urpp" name="saveBtn_urpp" value="Save" onclick="save_urpp()" class="btn btn-success btn-block">   
                                    <input type="button" id="reportBtn_urpp" name="reportBtn_urpp" value="Delete" onclick="reportReg_urpp()" class="btn btn-danger btn-block">          
                                </div>                              
                            </div>  
                        </div> 
                    </div>               
                </div>
            </div>
        </div> 

        <div class="col-lg-12">
            <div class="col-md-3">
                <input type="button" id="cleanAllBtn_urpp" name="cleanBtn_urpp" value="Clean All" onclick="cleanAll_urpp()" class="btn btn-warning btn-block">
            </div>
            <div class="col-md-3">
                <input type="button" id="cleanInputBtn_urpp" name="cleanBtn_urpp" value="Clean Input Data" onclick="cleanIn_urpp()" class="btn btn-warning btn-block">
            </div>
            <div class="col-md-3">
                <input type="button" id="cleanOutputBtn_urpp" name="cleanBtn_urpp" value="Clean Output Data" onclick="cleanOut_urpp()" class="btn btn-warning btn-block">
            </div>    
        </div>

        <input type="hidden" id="opt_urpp" name="opt_urpp"> 
        <input type="hidden" id="id_urpp" name="id_urpp">   
        <script>
            $(document).ready(function () {
                getproyectos(<%=session.getAttribute("idusu")%>,
                        $("#proyects_sel_urpp"),
                        $("#error_Dialog_urpp"));
                $("#opt_urpp").val("1");
                $('#api5l_urpp').attr('checked', 'checked');
                load_nps_sel_urpp("5l");
                load_grade_sel_urpp("gra5l");
                //load_deratingf_sel_urpp();
                load_in_sel_urpp();
                load_presf_sel_urpp();
            });
            
            function load_in_sel_urpp() {
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
                        var newHtml = "<select class='form-control' id='max_defl_sel_urpp' name='max_defl_sel_urpp' onchange='cleanOut_urpp()'> " + data;
                        $("#div_max_defl_sel_urpp").html(newHtml);
                        
                        newHtml = "<select class='form-control' id='nomout_sel_urpp' name='nomout_sel_urpp' onchange='cleanOut_urpp()'> " + data;
                        $("#div_nomout_sel_urpp").html(newHtml);
                        
                        newHtml = "<select class='form-control' id='nom_wall_sel_urpp' name='nom_wall_sel_urpp' onchange='cleanOut_urpp()'> " + data;
                        $("#div_nom_wall_sel_urpp").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_urpp"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            
            function load_presf_sel_urpp() {
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
                        var newHtml = "<select class='form-control' id='min_yield_sel_urpp' name='min_yield_sel_urpp' onchange='cleanOut_urpp()'> " + data;
                        $("#div_min_yield_sel_urpp").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_urpp"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            
            function load_form_urpp(id) {

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
                        // cleanAll_urpp();
                        block("Cargado datos...");
                    },
                    success: function (data, status, request) {
                        if (data != null)
                        {
                            var tags = Object.keys(data.row);

                            for (var i = 0; i < tags.length; i++) {
                                if (tags[i] != "date" && tags[i] != "id_proyect" && tags[i] != "id_user" && tags[i] != "id" && tags[i] != "linepipe_urpp")
                                {
                                    $("#" + tags[i]).val(data.row[tags[i]]);
                                }
                            }

                            if (data.row["linepipe_urpp"] == "api5l_urpp") {
                                document.getElementById("api5l_urpp").checked = true;
                                load_grade_sel_urpp("gra5l");
                                load_joinf_sel_urpp("jointf5l");
                            } else {//astm_urpp
                                document.getElementById("astm_urpp").checked = true;
                                load_grade_sel_urpp("graastm");
                                load_joinf_sel_urpp("jointf");
                            }

                            $("#grade_sel_urpp").val(data.row["grade_sel_urpp"]);
                            $("#grade_urpp").val(data.row["grade_urpp"]);

                            $("#jf_sel_urpp").val(data.row["jf_sel_urpp"]);
                            $("#jf_urpp").val(data.row["jf_urpp"]);

                            $("#opt_urpp").val("2");
                            $("#id_urpp").val(data.row.id);
                        } else {
                            $("#opt_urpp").val("1");
                        }

                    },
                    error: function (xhr, ajaxOptions, err) {
                        $("#opt_urpp").val("1");
                        show_OkDialog($("#error_Dialog_urpp"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_temp_sel_urpp() {
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
                        var newHtml = "<select class=\"form-control\" name=\"tempd_sel_urpp\" id= \"tempd_sel_urpp\" onchange=\"cleanOut_urpp()\">" + data;
                        $("#div_tempd_sel_urpp").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_urpp"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_nps_sel_urpp(type) {
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
                        var newHtml = "<select class=\"form-control\" name=\"nominalps_sel_urpp\" id= \"nominalps_sel_urpp\" onchange=\"onchange_nps_urpp()\">" + data;
                        $("#div_nominalps_sel_urpp").html(newHtml);
                        var res = $("#nominalps_sel_urpp option:selected").html();
                        $("#nomout_urpp").val(res);
                        $("#nomout_urpp").val($("#nominalps_sel_urpp").val());
                        load_wt_sel_urpp();
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_urpp"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            function load_wt_sel_urpp() {
                var parametros = {
                    "combo": "wtn",
                    "nps": $("#nominalps_sel_urpp").val(),
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
                        var newHtml = "<select class=\"form-control\" name=\"wt_sel_urpp\" id= \"wt_sel_urpp\" onchange=\"onchange_wt_urpp()\">" + data;
                        $("#div_wt_sel_urpp").html(newHtml);
                        $("#nom_wall_urpp").val($("#wt_sel_urpp").val().split(",")[1]);

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_urpp"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }


            function load_deratingf_sel_urpp() {
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
                        var newHtml = "<select class=\"form-control\" name=\"td_sel_urpp\" id=\"td_sel_urpp\" onchange=\"onchange_df_urpp()\">" + data;
                        $("#div_td_sel_urpp").html(newHtml);
                        $("#temp_urpp").val($("#td_sel_urpp").val().split(",")[1]);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_urpp"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_grade_sel_urpp(idcombo) {
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
                        var newHtml = "<select class=\"form-control\" name=\"grade_sel_urpp\" id=\"grade_sel_urpp\" onchange=\"onchange_gra_urpp()\">" + data;
                        $("#div_grade_sel_urpp").html(newHtml);
                        var x = $("#grade_sel_urpp").val();
                        //$("#min_yield").val(x.split(",")[1]);
                        var res = $("#grade_sel_urpp option:selected").html();
                        $("#gra_pipeop_wt_urpp").val(x.split(",")[1]);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_urpp"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }


            function load_desingf_sel_urpp() {
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
                        var newHtml = "<select class=\"form-control\" name=\"design_factor_sel_urpp\" id=\"design_factor_sel_urpp\" onchange=\"onchange_defa_urpp()\">" + data;
                        $("#div_df_sel_urpp").html(newHtml);

                        var x = $("#design_factor_sel_urpp").val();
                        $("#fact_pipeop_urpp").val(x.split(",")[1]);

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_urpp"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            function onchange_linepipe_urpp() {

                var sel = $("input[type='radio'][name='linepipe_urpp']:checked");
                if (sel.val() == "api5l_urpp") {
                    load_grade_sel_urpp("gra5l");
                    load_nps_sel_urpp("5l");

                } else {
                    load_grade_sel_urpp("graastm");
                    load_nps_sel_urpp("astm");
                }

                //  cleanOut_urpp();

            }
            
            function onchange_Input_urpp(inp) {

                var sw = validateDecimal(inp.value);

                if (sw !== true) {
                    inp.value = "";
                }

                onchange_Input_zero(inp);
                cleanOut_urpp();
            }

            function onchange_nps_urpp() {
                var res = $("#nominalps_sel_urpp option:selected").html();
                $("#nomout_urpp").val(res);
                $("#nomout_urpp").val($("#nominalps_sel_urpp").val());
                load_wt_sel_urpp();
                cleanOut_urpp();
            }

            function onchange_wt_urpp() {
                $("#nom_wall_urpp").val($("#wt_sel_urpp").val().split(",")[1]);
                cleanOut_urpp();
            }

            function onchange_gra_urpp() {
                var x = $("#grade_sel_urpp").val();
                $("#specifiedmys_urpp").val(x.split(",")[1]);
                var res = $("#grade_sel_urpp option:selected").html();
                $("#gra_pipeop_wt_urpp").val(x.split(",")[1]);
                cleanOut_urpp();
            }

            function onchange_jf_urpp() {
                $("#long_pipeop_urpp").val($("#longitudinal_jf_urpp").val().split(",")[1]);
                //cleanOut_urpp();
            }

            function onchange_df_urpp() {
                $("#temp_urpp").val($("#td_sel_urpp").val().split(",")[1]);
                //cleanOut_urpp();
            }

            function onchange_defa_urpp() {
                $("#fact_pipeop_urpp").val($("#design_factor_sel_urpp").val().split(",")[1]);
                // cleanOut_urpp();
            }

            function cleanOut_urpp() {
                $("#max_stress_urpp").val("");
                $("#tot_exp_urpp").val("");
                $("#max_pipe_urpp").val("");
                $("#sect_mod_urpp").val("");
                $("#mom_inert_urpp").val("");
                $("#moment_urpp").val("");
            }

            function cleanIn_urpp() {
                $("#you_elast_urpp").val("");
                $("#max_defl_urpp").val("");
                $("#nomout_urpp").val("");
                $("#nom_wall_urpp").val("");
                $("#min_yield_urpp").val("");
                $("#porc_SMYS_urpp").val("");
            }

            function cleanAll_urpp() {
                cleanOut_urpp();
                cleanIn_urpp();
            }
            
            function calculate_urpp() {
                var variables = {
                    "you_elast_urpp": $("#you_elast_urpp").val(),
                    "max_defl_urpp": $("#max_defl_urpp").val(),
                    "nomout_urpp": $("#nomout_urpp").val(),
                    "nom_wall_urpp": $("#nom_wall_urpp").val(),
                    "min_yield_urpp": $("#min_yield_urpp").val(),
                    "porc_SMYS_urpp": $("#porc_SMYS_urpp").val()
                };

                var unidades = {
                    "max_defl_sel_urpp": $("#max_defl_sel_urpp").val().split(",")[1],
                    "nomout_sel_urpp": $("#nomout_sel_urpp").val().split(",")[1],
                    "nom_wall_sel_urpp": $("#nom_wall_sel_urpp").val().split(",")[1],
                    "min_yield_sel_urpp": $("#min_yield_sel_urpp").val().split(",")[1]
                };

                var res = unpressured_pipe_form(variables, unidades);

                $("#max_stress_urpp").val(res[0]);
                $("#tot_exp_urpp").val(res[1]);
                $("#max_pipe_urpp").val(res[2]);
                $("#sect_mod_urpp").val(res[3]);
                $("#mom_inert_urpp").val(res[4]);
                $("#moment_urpp").val(res[5]);
            }
        </script>         
    </body>
</html>