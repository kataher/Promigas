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
                <h2><strong>Stell Pipe Design:</strong>  Longitudinal Stress in Movement of in-Service Pipelines </h2>
            </div>
            <div class="col-lg-3"> 

                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_lostre()">
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
                                <div id="div-table_lostre"></div>
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
                <input  class="form-control" type="text" id="description_lostre" name="description_lostre"><br>
                Projects: 
                <select class="form-control" id="proyects_sel_lostre" name="proyects_sel_lostre"> </select>
            </div>
        </div>
        <hr>

        <ul class="nav nav-tabs nav-justified">
            <li class="active"><a href="#sited_rwb" data-toggle="tab">Parametros de Diseño y Operación</a></li>
            <li><a href="#regulatoru_rwb" data-toggle="tab">Resultados, Tabla y Perfil de Bajado de Tubería</a></li>

        </ul>
        <div class="tab-content">
            <br>
            <div class="tab-pane fade in active" id="sited_rwb">
                <div class="col-lg-4">
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-12">

                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        Line Pipe API 5L
                                    </div>
                                    <div class="panel-body">
                                        <div class="form-group">
                                            <div class="col-lg-12">
                                                <label>Nominal pipe size:</label>
                                                <div id="div_nomps_sel_lostre">
                                                    <select class="form-control" id="nominalps_sel_lostre" name="nominalps_sel_lostre"> </select>
                                                </div>
                                            </div> 
                                            <div class="col-lg-12">                      
                                                <label>Wall Thickness [.in]:</label>
                                                <div id="div_wallt_sel_lostre">
                                                    <select class="form-control" id="wthi_sel_lostre" name="wthi_sel_lostre"> </select>
                                                </div>                              
                                            </div>                       
                                            <div class="col-lg-12">                      
                                                <label>Grade:</label>
                                                <div id="div_grade_sel_lostre">
                                                    <select class="form-control" id="grade_sel_lostre" name="grade_sel_lostre"> </select>
                                                </div>

                                            </div>                        
                                        </div> 
                                    </div>
                                </div>          
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Input and Selected Pipe Properties:
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <label>Nominal pipe size:</label>
                                            </div>
                                            <div class="col-md-8">
                                                <input type="text" class="form-control" id="nom_pipe_lostre" name="nom_pipe_lostre" onchange='onchange_Input_lostre(this)' required> 
                                            </div>
                                            <div class="col-md-4" id = "div_nom_pipe_sel_lostre">
                                                <select class="form-control" id="nom_pipe_sel_lostre" name="nom_pipe_sel_lostre" onchange='cleanOut_lostre()'> 
                                                </select>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <label>Outside Pipe Diameter [in.]:</label>
                                            </div>
                                            <div class="col-md-8">
                                                <input type="text" class="form-control" id="pipe_dia_lostre" name="pipe_dia_lostre" onchange='onchange_Input_lostre(this)' required> 
                                            </div>
                                            <div class="col-md-4" id = "div_pipe_dia_sel_lostre">
                                                <select class="form-control" id="pipe_dia_sel_lostre" name="pipe_dia_sel_lostre" onchange='cleanOut_lostre()'> 
                                                </select>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <label>Wall Thickness [in.]:</label>
                                            </div>
                                            <div class="col-md-8">
                                                <input type="text" class="form-control" id="pipe_wall_lostre" name="pipe_wall_lostre" onchange='onchange_Input_lostre(this)' required> 
                                            </div>
                                            <div class="col-md-4" id = "div_pipe_wall_sel_lostre">
                                                <select class="form-control" id="pipe_wall_sel_lostre" name="pipe_wall_sel_lostre" onchange='cleanOut_lostre()'> 
                                                </select>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <label>Inside Pipe Diameter [in.]:</label>
                                            </div>
                                            <div class="col-md-8">
                                                <input type="text" class="form-control" id="out_pipe_dia_lostre" name="out_pipe_dia_lostre" onchange='onchange_Input_lostre(this)' required> 
                                            </div>
                                            <div class="col-md-4" id = "div_out_pipe_dia_sel_lostre">
                                                <select class="form-control" id="out_pipe_dia_sel_lostre" name="out_pipe_dia_sel_lostre" onchange='cleanOut_lostre()'> 
                                                </select>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <label>Specified Minimun Yield Strength [psi]:</label>
                                            </div>
                                            <div class="col-md-8">
                                                <input type="text" class="form-control" id="min_yield_lostre" name="min_yield_lostre" onchange='onchange_Input_lostre(this)' required> 
                                            </div>
                                            <div class="col-md-4" id = "div_min_yield_sel_lostre">
                                                <select class="form-control" id="min_yield_sel_lostre" name="min_yield_sel_lostre" onchange='cleanOut_lostre()'> 
                                                    <option>psi</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <label>Modulus of Elasticity of Steel [psi]:</label>
                                            </div>
                                            <div class="col-md-8">
                                                <input value="29000000" type="text" class="form-control" id="mod_elast_lostre" name="mod_elast_lostre" onchange='onchange_Input_lostre(this)' required> 
                                            </div>
                                            <div class="col-md-4" id = "div_mod_elast_sel_lostre">
                                                <select class="form-control" id="mod_elast_sel_lostre" name="mod_elast_sel_lostre" onchange='cleanOut_lostre()'> 
                                                    <option>psi</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <label>Poisson's Ratio for Steel:</label>
                                            </div>
                                            <div class="col-md-12">
                                                <input value="0.3" type="text" class="form-control" id="poi_rat_lostre" name="poi_rat_lostre" onchange='onchange_Input_lostre(this)' required> 
                                            </div>
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
                            Design and Operational Data:
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">                                    
                                    <div class="form-group">
                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <label>Desired Vertical Deflection of the Pipe [ft]:</label>
                                            </div>
                                            <div class="col-md-8">
                                                <input type="text" class="form-control" id="des_ver_lostre" name="des_ver_lostre" onchange='onchange_Input_lostre(this)' required> 
                                            </div>
                                            <div class="col-md-4" id = "div_des_ver_sel_lostre">
                                                <select class="form-control" id="des_ver_sel_lostre" name="des_ver_sel_lostre" onchange='cleanOut_lostre()'> 
                                                </select>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <label>Maximun Operating Pressure [psi]:</label>
                                            </div>
                                            <div class="col-md-8">
                                                <input type="text" class="form-control" id="max_oper_lostre" name="max_oper_lostre" onchange='onchange_Input_lostre(this)' required> 
                                            </div>
                                            <div class="col-md-4" id = "div_max_oper_sel_lostre">
                                                <select class="form-control" id="max_oper_sel_lostre" name="max_oper_sel_lostre" onchange='cleanOut_lostre()'> 
                                                    <option>psi</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <label>Installation Temperature of the Pipe [°F]:</label>
                                            </div>
                                            <div class="col-md-8">
                                                <input type="text" class="form-control" id="inst_temp_lostre" name="inst_temp_lostre" onchange='onchange_Input_lostre(this)' required> 
                                            </div>
                                            <div class="col-md-4" id = "div_inst_temp_sel_lostre">
                                                <select class="form-control" id="inst_temp_sel_lostre" name="inst_temp_sel_lostre" onchange='cleanOut_lostre()'> 
                                                </select>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <label>Operating Temperature of the Pipe [°F]:</label>
                                            </div>
                                            <div class="col-md-8">
                                                <input type="text" class="form-control" id="oper_temp_pip_lostre" name="oper_temp_pip_lostre" onchange='onchange_Input_lostre(this)' required> 
                                            </div>
                                            <div class="col-md-4" id = "div_oper_temp_pip_sel_lostre">
                                                <select class="form-control" id="oper_temp_pip_sel_lostre" name="oper_temp_pip_sel_lostre" onchange='cleanOut_lostre()'> 
                                                </select>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <label>Pipe Design Factor:</label>
                                            </div>
                                            <div class="col-md-12">
                                                <select class="form-control" name="sel_pipe_desig_lostre" id="sel_pipe_desig_lostre" onchange="cleanOut_lostre()">
                                                    <option value="0.1" >0.1</option>
                                                    <option value="0.2" >0.2</option>
                                                    <option value="0.3" >0.3</option>
                                                    <option value="0.4" >0.4</option>
                                                    <option value="0.5" >0.5</option>
                                                    <option value="0.6" >0.6</option>
                                                    <option value="0.7" >0.7</option>
                                                    <option value="0.8" >0.8</option>
                                                    <option value="0.9" >0.9</option>
                                                    <option value="1" >1</option>

                                                </select>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <label>Sc - Longitudinal Stress due to Pipe Elast. Curvature [psi]:</label>
                                            </div>
                                            <div class="col-md-8">
                                                <input type="text" class="form-control" id="long_stress_elast_lostre" name="long_stress_elast_lostre" onchange='onchange_Input_lostre(this)' required> 
                                            </div>
                                            <div class="col-md-4" id = "div_long_stress_elast_sel_lostre">
                                                <select class="form-control" id="long_stress_elast_sel_lostre" name="long_stress_elast_sel_lostre" onchange='cleanOut_lostre()'> 
                                                    <option>psi</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-lg-12">&nbsp;</div>
                                        <div>    
                                            <BR>                    
                                            <input type="button" id="calculateBtn_ls" name="calculateBtn_ls" value="Calculate" onclick="calculate_ls()" href="#regulatoru_rwb" data-toggle="tab" class="btn btn-info btn-block">
                                            <input type="button" id="saveBtn_ls" name="saveBtn_ls" value="Save" onclick="save_ls()" class="btn btn-success btn-block">   
                                            <input type="button" id="reportBtn_ls" name="reportBtn_ls" value="Delete" onclick="reportReg_ls()" class="btn btn-danger btn-block">          
                                        </div>                   
                                    </div>  
                                </div> 
                            </div>               
                        </div>
                    </div>
                </div>
            </div>                                        
            <div class="tab-pane" id="regulatoru_rwb">

                <div class="col-lg-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Results
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <div class="col-lg-12">
                                            <label>Sp- Esfuerzo Longitudinal por Presión Interna [Psi]::</label>

                                            <input type="text" name="Sp_ELPI" id="Sp_ELPI" class="form-control" readonly>
                                        </div>                     
                                        <div class="col-lg-12">
                                            <label>Sr-Esfuerzo Longitudinal por Temperatura [Psi]:</label>

                                            <input type="text" name="Sr_ELT" id="Sr_ELT" class="form-control" readonly>
                                        </div>                       
                                        <div class="col-lg-12">
                                            <label>Se- Esfuerzo Longitudinal Existente [Psi]:</label>

                                            <input type="text" name="Se_ELE" id="Se_ELE" class="form-control" readonly>
                                        </div> 
                                        <div class="col-lg-12">
                                            <label>L- Longitud Mínima Requerida de la Zanja [ft]:</label>

                                            <input type="text" name="L_LRZ" id="L_LRZ" class="form-control" readonly>
                                        </div>                   
                                        <div class="col-lg-12">
                                            <label>Ss- Esfuerzo Longitudinal por Elongación [Psi]:</label>

                                            <input type="text" name="Ss_ELE" id="Ss_ELE" class="form-control" readonly>
                                        </div>  
                                        <div class="col-lg-12">
                                            <label>Sa- Esfuerzo Longitudinal por Flexión Admisible [Psi]:</label>

                                            <input type="text" name="Sa_ELFA" id="Sa_ELFA" class="form-control" value="" readonly>
                                        </div>                     
                                        <div class="col-lg-12">
                                            <label>Ls- Distancia Máxima permitida entre Apoyos [ft]:</label>

                                            <input type="text" name="Ls_DMPA" id="Ls_DMPA" class="form-control" value="" readonly>
                                        </div>                        
                                    </div> 
                                </div>
                            </div>
                        </div>
                    </div>
                </div>    
                <div class="col-lg-6">

                    <div name="tablaRes" id="tablaRes" style="max-height: 400px; overflow-y: scroll;"></div>


                </div>   
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Gráfica
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div id="graficaLineal_mem"></div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>  
        </div>
        <div class="col-lg-12">
            <div class="col-md-3">
                <input type="button" id="cleanAllBtn_ls" name="cleanBtn_ls" value="Clean All" onclick="cleanAll_lostre()" class="btn btn-warning btn-block">
            </div>
            <div class="col-md-3">
                <input type="button" id="cleanInputBtn_ls" name="cleanBtn_ls" value="Clean Input Data" onclick="cleanIn_lostre()" class="btn btn-warning btn-block">
            </div>
            <div class="col-md-3">
                <input type="button" id="cleanOutputBtn_ls" name="cleanBtn_ls" value="Clean Output Data" onclick="cleanOut_lostre()" class="btn btn-warning btn-block">
            </div>    
        </div>

        <input type="hidden" id="opt_ls" name="opt_ls"> 
        <input type="hidden" id="id_ls" name="id_ls">   
        <script>
            $(document).ready(function () {
                getproyectos(<%=session.getAttribute("idusu")%>,
                        $("#proyects_sel_lostre"),
                        $("#error_Dialog_lostre"));

                $("#opt_lostre").val("1");
                load_grade_sel_lostre("gra5l", 0);
                load_np_sel_lostre("npsn");
                load_in_sel_lostre();
                load_temp_sel_lostre();
            });

            function load_temp_sel_lostre() {
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
                        var newHtml = "<select class='form-control' name='inst_temp_sel_lostre' id='inst_temp_sel_lostre' onchange='cleanOut_lostre()'>" + data;
                        $("#div_inst_temp_sel_lostre").html(newHtml);

                        newHtml = "<select class='form-control' name='oper_temp_pip_sel_lostre' id='oper_temp_pip_sel_lostre' onchange='cleanOut_lostre()'>" + data;
                        $("#div_oper_temp_pip_sel_lostre").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_lostre"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_in_sel_lostre() {
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
                        var newHtml = "<select class='form-control' name='nom_pipe_sel_lostre' id='nom_pipe_sel_lostre' onchange='cleanOut_lostre()'>" + data;
                        $("#div_nom_pipe_sel_lostre").html(newHtml);

                        newHtml = "<select class='form-control' name='pipe_dia_sel_lostre' id='pipe_dia_sel_lostre' onchange='cleanOut_lostre()'>" + data;
                        $("#div_pipe_dia_sel_lostre").html(newHtml);

                        newHtml = "<select class='form-control' name='pipe_wall_sel_lostre' id='pipe_wall_sel_lostre' onchange='cleanOut_lostre()'>" + data;
                        $("#div_pipe_wall_sel_lostre").html(newHtml);

                        newHtml = "<select class='form-control' name='out_pipe_dia_sel_lostre' id='out_pipe_dia_sel_lostre' onchange='cleanOut_lostre()'>" + data;
                        $("#div_out_pipe_dia_sel_lostre").html(newHtml);

                        newHtml = "<select class='form-control' name='des_ver_sel_lostre' id='des_ver_sel_lostre' onchange='cleanOut_lostre()'>" + data;
                        $("#div_des_ver_sel_lostre").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_lostre"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function onchange_defa_lostre() {
                $("#df_lostre").val($("#df_sel_lostre").val().split(",")[1]);
            }
            function onchanche_temp_lostre() {
                $("#temp_lostre").val($("#temp_sel_lostre").val().split(",")[1]);
            }
            function load_joinf_sel_lostre(idcombo, opcion) {
                var parametros = {
                    "combo": idcombo,
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
                        var newHtml = "<select class=\"form-control\" name=\"longitudinal_jf_lostre\" id=\"longitudinal_jf_lostre\" onchange=\"onchange_jf_lostre()\">" + data;
                        var newHtml1 = "<select class=\"form-control\" name=\"longitudinal_jf1_lostre\" id=\"longitudinal_jf1_lostre\" onchange=\"onchange_jf1_lostre()\">" + data;
                        if (opcion === 0) {
                            $("#div_jf_sel_lostre").html(newHtml);
                            $("#div_jf_sel1_lostre").html(newHtml1);
                            $("#ljf_lostre").val($("#longitudinal_jf_lostre").val().split(",")[1]);
                            $("#ljf1_lostre").val($("#longitudinal_jf1_lostre").val().split(",")[1]);
                        }
                        if (opcion === 1) {
                            $("#div_jf_sel_lostre").html(newHtml);
                            $("#ljf_lostre").val($("#longitudinal_jf_lostre").val().split(",")[1]);
                        }
                        if (opcion === 2) {
                            $("#div_jf_sel1_lostre").html(newHtml1);
                            $("#ljf1_lostre").val($("#longitudinal_jf1_lostre").val().split(",")[1]);
                        }


                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_ppw"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function onchange_jf_lostre() {
                $("#ljf_lostre").val($("#longitudinal_jf_lostre").val().split(",")[1]);
                cleanOut_lostre();
            }
            function onchange_jf1_lostre() {
                $("#ljf1_lostre").val($("#longitudinal_jf1_lostre").val().split(",")[1]);
                cleanOut_lostre();
            }

            function load_grade_sel_lostre(idcombo, opcion) {
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

                        var newHtml = "<select class=\"form-control\" name=\"grade_sel_lostre\" id=\"grade_sel_lostre\" onchange=\"onchange_gra_lostre()\">" + data;

                        $("#div_grade_sel_lostre").html(newHtml);
                        var po = $("#grade_sel_lostre").val().trim().split(",");
                        $("#min_yield_lostre").val(po[1]);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_lostre"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            function load_np_sel_lostre(idcombo) {
                var parametros = {
                    "combo": idcombo,
                    "type": "5l",
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
                        var newHtml = "<select class=\"form-control\" name=\"nominalps_sel_lostre\" id= \"nominalps_sel_lostre\" onchange=\"onchange_nps_lostre()\">" + data;

                        $("#div_nomps_sel_lostre").html(newHtml);


                        var po = $("#nominalps_sel_lostre").val();
                        $("#nom_pipe_lostre").val(po);
                        $("#pipe_dia_lostre").val(po);


                        load_wt_sel_lostre();
                        onchange_nps_lostre();
                        onchange_wt_lostre();


                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_lostre"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_wt_sel_lostre() {
                var idOp = $("#nominalps_sel_lostre").val();
                //alert(idOp);
                var parametros = {
                    "combo": "wtn",
                    "nps": idOp,
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
                        //alert(data); wthi_sel_lostre1
                        var newHtml = "<select class=\"form-control\" name=\"wthi_sel_lostre\" id= \"wthi_sel_lostre\" onchange=\"onchange_wt_lostre()\">" + data;
                        $("#div_wallt_sel_lostre").html(newHtml);
                        if (data.trim() != "") {
                            var val = $("#wthi_sel_lostre").val().trim().split(",");
                            var po = $("#nominalps_sel_lostre").val();
                            $("#out_pipe_dia_lostre").val(po - (val[1] * 2));
                            $("#pipe_wall_lostre").val(val[1]);

                        }

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_lostre"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function onchange_nps_lostre() {
                cleanOut_lostre();
                var po = $("#nominalps_sel_lostre").val();
                $("#nom_pipe_lostre").val(po);
                $("#pipe_dia_lostre").val(po);
                load_wt_sel_lostre();
            }

            function onchange_wt_lostre() {
                cleanOut_lostre();
                var val = $("#wthi_sel_lostre").val().trim().split(",");
                var po = $("#nominalps_sel_lostre").val();
                $("#out_pipe_dia_lostre").val(po - (val[1] * 2));
                $("#pipe_wall_lostre").val(val[1]);
            }

            function onchange_gra_lostre() {
                var po = $("#grade_sel_lostre").val().trim().split(",");
                $("#min_yield_lostre").val(po[1]);
                cleanOut_lostre();
            }

            function cleanOut_lostre() {
                $("#Sp_ELPI").val("");
                $("#Sr_ELT").val("");
                $("#Se_ELE").val("");
                $("#L_LRZ").val("");
                $("#Ss_ELE").val("");
                $("#Sa_ELFA").val("");
                $("#Ls_DMPA").val("");
            }

            function cleanIn_lostre() {
                $("#nom_pipe_lostre").val("");
                $("#pipe_dia_lostre").val("");
                $("#pipe_wall_lostre").val("");
                $("#out_pipe_dia_lostre").val("");
                $("#min_yield_lostre").val("");
                $("#mod_elast_lostre").val("");
                $("#poi_rat_lostre").val("");
                $("#des_ver_lostre").val("");
                $("#max_oper_lostre").val("");
                $("#inst_temp_lostre").val("");
                $("#oper_temp_pip_lostre").val("");
                $("#long_stress_elast_lostre").val("");
            }

            function cleanAll_lostre() {
                cleanIn_lostre();
                cleanOut_lostre();
            }

            function onchange_Input_lostre(inp) {

                var sw = validateDecimal(inp.value);

                if (sw !== true) {
                    inp.value = "";
                }

                onchange_Input_zero(inp);
                cleanOut_lostre();
            }

            function calculate_ls() {
                var variables = {
                    "TextBox5": $("#nom_pipe_lostre").val(),
                    "TextBox6": $("#pipe_dia_lostre").val(),
                    "TextBox7": $("#pipe_wall_lostre").val(),
                    "TextBox8": $("#out_pipe_dia_lostre").val(),
                    "TextBox9": $("#min_yield_lostre").val(),
                    "TextBox10": $("#mod_elast_lostre").val(),
                    "TextBox11": $("#poi_rat_lostre").val(),
                    "TextBox12": $("#des_ver_lostre").val(),
                    "TextBox13": $("#max_oper_lostre").val(),
                    "TextBox14": $("#inst_temp_lostre").val(),
                    "TextBox15": $("#oper_temp_pip_lostre").val(),
                    "ComboBox4": $("#sel_pipe_desig_lostre").val(),
                    "TextBox17": $("#long_stress_elast_lostre").val()

                };

                var isOk = validate(variables);

                if (isOk === false) {
                    alert("Debe diligenciar todos los campos");
                } else {
                    var unidades = {
                        "nom_pipe_sel_lostre": $("#nom_pipe_sel_lostre").val().split(",")[1],
                        "pipe_dia_sel_lostre": $("#pipe_dia_sel_lostre").val().split(",")[1],
                        "pipe_wall_sel_lostre": $("#pipe_wall_sel_lostre").val().split(",")[1],
                        "out_pipe_dia_sel_lostre": $("#out_pipe_dia_sel_lostre").val().split(",")[1],
                        "des_ver_sel_lostre": $("#des_ver_sel_lostre").val().split(",")[1],
                        
                        "inst_temp_sel_lostre": $("#inst_temp_sel_lostre").val().split(",")[1],
                        "oper_temp_pip_sel_lostre": $("#oper_temp_pip_sel_lostre").val().split(",")[1]
                    };

                    var res = longitudinal_Stress_Form(variables, unidades);
                    $("#Sp_ELPI").val(res[0]);
                    $("#Sr_ELT").val(res[1]);
                    $("#Se_ELE").val(res[2]);
                    $("#L_LRZ").val(res[3]);
                    $("#Ss_ELE").val(res[4]);
                    $("#Sa_ELFA").val(res[5]);
                    $("#Ls_DMPA").val(res[6]);
                    var station = res[7];
                    var deflection = res[8];
                    var St = station.toString().split("&");
                    var Df = deflection.toString().split("&");
                    var tam = St.length;
                    var i = 0;
                    var ht1 = '<table class="table table-hover"><thead><tr><th>Station-x(ft)</th><th>Deflection (ft)</th></tr></thead><tbody>';
                    var ht = "";
                    var data = [];
                    var j = 0;
                    for (i = 0; i < tam; i++) {
                        ht = "<tr><td>" + St[i] + "</td><td>" + Df[i] + "</td></tr>" + ht;
                        var TDf = parseFloat(Df[i]).toFixed(1);
                        var TSt = parseFloat(St[i]).toFixed(1);
                        data[j] = {x: TDf, a: TSt};
                        j += 1;
                    }

                    ht1 = ht1 + ht + '</tbody></table>';

                    $("#tablaRes").html(ht1);
                    $("#graficaLineal_mem").html("");
                    var data = [
                        {y: '2014', a: 50, b: 90},
                        {y: '2015', a: 65, b: 75},
                        {y: '2016', a: 50, b: 50},
                        {y: '2017', a: 75, b: 60},
                        {y: '2018', a: 80, b: 65},
                        {y: '2019', a: 90, b: 70},
                        {y: '2020', a: 100, b: 75},
                        {y: '2021', a: 115, b: 75},
                        {y: '2022', a: 120, b: 85},
                        {y: '2023', a: 145, b: 85},
                        {y: '2024', a: 160, b: 95}
                    ];
                    Morris.Line({data: data,
                        xkey: 'y',
                        ykeys: ['a', 'b'],
                        labels: ['Total Income', 'Total Outcome'],
                        hideHover: 'auto',
                        //behaveLikeLine: true,
                        resize: true,
                        element: 'graficaLineal_mem',
                        // pointFillColors:['#ffffff'],
                        // pointStrokeColors: ['black'],
                        // lineColors:['gray','red'],
                        parseTime: false
                                //events: [100]
                    });


                    show_OkDialog($("#calculate_Dialog_lostre"), "Proceso satisfactorio");
                }
            }

            function save_lostre() {
                var sel = $("input[type='radio'][name='pipe_rad_lostre']:checked");

                var parametros = {
                    "pipeo_lostre": $("#pipeo_lostre").val(),
                    "pipew_lostre": $("#pipew_lostre").val(),
                    "pipei_lostre": $("#pipei_lostre").val(),
                    "testp_lostre": $("#testp_lostre").val(),
                    "testt_lostre": $("#testt_lostre").val(),
                    "pipelinel_lostre": $("#pipelinel_lostre").val(),

                    "waterc_lostre": $("#waterc_lostre").val(),
                    "volumec_lostre": $("#volumec_lostre").val(),
                    "thermalc_lostre": $("#thermalc_lostre").val(),
                    "volumect_lostre": $("#volumect_lostre").val(),
                    "volumecr_lostre": $("#volumecr_lostre").val(),
                    "pipelinef_lostre": $("#pipelinef_lostre").val(),
                    "volumer_lostre": $("#volumer_lostre").val(),
                    "incrementalv_lostre": $("#incrementalv_lostre").val(),
                    "compf_lostre": $("#compf_lostre").val(),
                    "pressurec_lostre": $("#pressurec_lostre").val(),

                    "pipe_rad_lostre": sel.val(),
                    "nomps_sel_lostre": $("#nomps_sel_lostre").val(),
                    "wallt_sel_lostre": $("#wallt_sel_lostre").val(),
                    "po_sel_lostre": $("#po_sel_lostre").val(),
                    "pw_sel_lostre": $("#pw_sel_lostre").val(),
                    "pi_sel_lostre": $("#pi_sel_lostre").val(),
                    "tp_sel_lostre": $("#tp_sel_lostre").val(),
                    "tt_sel_lostre": $("#tt_sel_lostre").val(),
                    "pl_sel_lostre": $("#pl_sel_lostre").val(),

                    "idproyect": <% out.print(session.getAttribute("id_proyect"));%>,
                    "opcion": 1,
                    "iduser": <% out.print(session.getAttribute("idusu"));%>,
                    //"id_lostre": $("#id_lostre").val(),
                    "description_lostre": "des"
                };

                var isOk = validate(parametros);

                if (isOk === false) {
                    alert("Debe realizar el càlculo");
                } else {

                    var des = prompt("Digite la descripción del cálculo:", "");

                    if (des != null) {
                        if (des.trim() == "") {
                            alert("Debe diligenciar una descripciòn");
                        } else {
                            parametros.description_lostre = des;

                            $.ajax({
                                type: "POST",
                                url: "Modules/manager.jsp",
                                data: parametros,
                                beforeSend: function (xhr) {
                                    block("Cargando...");
                                },
                                success: function (data, status, request) {
                                    $("#id_lostre").val(data);
                                    $("#description_lostre").html(parametros.description_lostre);
                                    show_OkDialog($("#save_Dialog_lostre"), "Proceso satisfactorio");
                                },
                                error: function (xhr, ajaxOptions, err) {
                                    alert(err);
                                    show_OkDialog($("#error_Dialog_lostre"), "Error");
                                },
                                complete: function () {
                                    unBlock();
                                }
                            });

                        }
                    }
                }

            }

            function deleteReg_lostre() {
                var parametros = {
                    "id_lostre": $("#id_lostre").val(),
                    "opcion": "3"
                };
                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        $("#id_lostre").val("");
                        $("#description_lostre").val("");
                        cleanAll_lostre();
                        show_OkDialog($("#delete_Dialog_lostre"), "Proceso satisfactorio");
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_lostre"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }




        </script>     
    </body>
</html>