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
                <h2><strong>Steel Pipe Design:</strong>  Wall Thickness - Straight Steel Pipe</h2>
            </div>
            <div class="col-lg-3"> 

                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_wts()">
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
                                <div id="div-table_wts"></div>
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
                <input  class="form-control" type="text" id="description_wts" name="description_wts"><br>
                Projects: 
                <select class="form-control" id="proyects_sel_wts" name="proyects_sel_wts"> </select>
            </div>
        </div>
        <hr>

        <div class="col-lg-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Select Pipe and Location Data
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="form-group">
                                <input type="radio" id = "pipelocation1_wts" name="oppl_wts" value="pipelocation1_wts" onchange="onchange_pipel_wts()" required> Tubería - especificación API 5L <br> 
                                <input type="radio" id = "pipelocation2_wts" name="oppl_wts" value="pipelocation2_wts" onchange="onchange_pipel_wts()" required> Standard Steel Pipe - ASTM - ANSI B 36.10 <br>
                            </div>                                    

                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    Line Pipe API 5L
                                </div>
                                <div class="panel-body">
                                    <div class="form-group">
                                        <div class="col-lg-12">
                                            <div class="col-lg-6">
                                                <label>Nominal pipe size:</label>
                                            </div> 
                                            <div class="col-lg-6">
                                                <select class="form-control" id="nominal_sel_wts" name="nominal_sel_wts"> </select>
                                            </div>  
                                        </div>
                                        <div class="col-lg-12">
                                            <div class="col-lg-6">
                                                <label>Grade:</label>
                                            </div>
                                            <div class="col-lg-6">
                                                <select class="form-control" id="grade_sel_wts" name="grade_sel_wts"> </select>
                                            </div>
                                        </div>
                                    </div> 
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    F - Design Factor:
                                    <select class="form-control" id="f_desing_factor_wts" name="f_desing_factor_wts"> </select>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    E - Longitudinal Join Factor:
                                    <select class="form-control" id="e_long_join_wts" name="e_long_join_wts"> </select>
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
                                        <select class="form-control" id="f_temperature_wts" name="f_temperature_wts"> </select>                    
                                    </div>                      
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    About thickness corrosion:
                                </div>
                                <div class="panel-body">
                                    <div class="col-lg-6">
                                        <input type="radio" id = "espesor_wts" name="oppl_wts" onchange="onchange_esp_wts(1)" required> Si<br> 
                                        <input type="radio" id = "espesor_wts" name="oppl_wts" onchange="onchange_esp_wts(0)" required> No <br>                   
                                    </div>                      
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-lg-5">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Pipe and Operational Data:
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">                                    
                            <div class="form-group">
                                <div class="form-group">
                                    <div class="col-md-12">
                                        <label>Nominal pipe size:</label>
                                    </div>
                                    <div class="col-md-12">
                                        <input type="text" class="form-control" id="nom_pipeop_wts" name="nom_pipeop_wts"> 
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <div class="col-md-12">
                                        <label>Nominal Outside Diameter:</label>
                                    </div>
                                    <div class="col-md-8">
                                         <input type="text" class="form-control" id="nomout_pipeop_wts" name="nomout_pipeop_wts">  
                                    </div>
                                    <div class="col-md-4" id = "div_nomout_sel_wts">
                                        <select class="form-control" id="nomout_sel_wts" name="nomout_sel_wts" onchange='cleanOut_wts()'> 
                                        </select>
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <div class="col-md-12">
                                        <label>Design Pressure:</label>
                                    </div>
                                    <div class="col-md-8">
                                         <input type="text" class="form-control" id="despress_pipeop_wts" name="despress_pipeop_wts">   
                                    </div>
                                    <div class="col-md-4" id = "div_despress_sel_wts">
                                        <select class="form-control" id="despress_sel_wts" name="despress_sel_wts" onchange='cleanOut_wts()'> 
                                        </select>
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <div class="col-md-12">
                                        <label>Grade: </label>      
                                    </div>
                                    <div class="col-md-12">
                                        <input type="text" name="gra_pipeop_wts" id="gra_pipeop_wts" class="form-control">
                                    </div>
                                </div>
                                
                               
                                
                                
                                      
                                
                                
                                <div class="form-group">
                                    <div class="col-md-12">
                                        <label>Specified Minimum Yield Strength [psi]: </label>
                                    </div>
                                    <div class="col-md-8">
                                          <input type="text" name="yield_pipeop_wts" id="yield_pipeop_wts" class="form-control">
                                    </div>
                                    <div class="col-md-4" id = "div_yield_sel_wts">
                                        <select class="form-control" id="yield_sel_wts" name="yield_sel_wts" onchange='cleanOut_wts()'> 
                                        </select>
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <div class="col-md-12">
                                       <label>Design Factor:</label>
                                    </div>
                                    <div class="col-md-12">
                                        <input type="text" name="fact_pipeop_wts" id="fact_pipeop_wts" class="form-control">
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <div class="col-md-12">
                                       <label>Longitudinal Join Factor:</label>
                                    </div>
                                    <div class="col-md-12">
                                        <input type="text" name="long_pipeop_wts" id="long_pipeop_wts" class="form-control">
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <div class="col-md-12">
                                       <label>Temperature Derating Factor:</label>
                                    </div>
                                    <div class="col-md-12">
                                        <input type="text" name="temp_pipeop_wts" id="temp_pipeop_wts" class="form-control">
                                    </div>
                                </div>
                                
                                <div id="aboutthi" name="aboutthi" style="display:none;">
                                    <div class="form-group">
                                    <div class="col-md-12">
                                      <label>About thickness corrosion:</label>
                                    </div>
                                    <div class="col-md-12">
                                        <input type="text" name="about_thick_wts" id="about_thick_wts" class="form-control" value="0">
                                    </div>
                                </div>
                                    
                                    
                                    
                                </div>
                            </div> 
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-md-3">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Results
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">                                    
                            <div class="form-group">
                                <label>Espesor mínimo de la pared de la tubería [in.]:</label>
                                <input type="text" name="minpipe_wts" id="minpipe_wts" class="form-control" readonly> 
                                <BR>
                                <div>    
                                    <input type="button" id="calculateBtn_wt" name="calculateBtn_wts" value="Calculate" onclick="calculate_wts()" class="btn btn-info btn-block">
                                    <input type="button" id="saveBtn_wt" name="saveBtn_wts" value="Save" onclick="save_wts()" class="btn btn-success btn-block">   
                                    <input type="button" id="delteBtn_wt" name="delteBtn_wts" value="Eliminar" onclick="deleteReg_wts()" class="btn btn-danger btn-block">          
                                </div>
                            </div>  
                        </div> 
                    </div>               
                </div>
            </div>
        </div> 

        <div class="col-lg-12">
            <div class="col-md-3">
                <input type="button" id="cleanAllBtn_wts" name="cleanBtn_wts" value="Clean All" onclick="cleanAll_wts()" class="btn btn-warning btn-block">
            </div>
            <div class="col-md-3">
                <input type="button" id="cleanInputBtn_wts" name="cleanBtn_wts" value="Clean Input Data" onclick="cleanIn_wts()" class="btn btn-warning btn-block">
            </div>
            <div class="col-md-3">
                <input type="button" id="cleanOutputBtn_wts" name="cleanBtn_wts" value="Clean Output Data" onclick="cleanOut_wts()" class="btn btn-warning btn-block">
            </div>    
        </div>

        <input type="hidden" id="opt_wts" name="opt_wts"> 
        <input type="hidden" id="id_wts" name="id_wts">   
        <script>
            $(document).ready(function () {
                
                load_in_sel_wts();
                load_pres_sel_wts();
                load_presf_sel_wts();
                
                getproyectos(<%=session.getAttribute("idusu")%>,
                        $("#proyects_sel_wts"),
                        $("#error_Dialog_wts"));
            });
            
            function load_pres_sel_wts() {
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
                        var newHtml = "<select class='form-control' name='despress_sel_wts' id='despress_sel_wts' onchange='cleanOut_wts()'>" + data;
                        $("#div_despress_sel_wts").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_wts"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            
            function load_presf_sel_wts() {
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
                        var newHtml = "<select class='form-control' name='yield_sel_wts' id='yield_sel_wts' onchange='cleanOut_wts()'>" + data;
                        $("#div_yield_sel_wts").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_wts"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            
            function load_in_sel_wts() {
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
                        var newHtml = "<select class='form-control' name='nomout_sel_wts' id='nomout_sel_wts' onchange='cleanOut_wts()'>" + data;
                        $("#div_nomout_sel_wts").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_wts"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function onchange_esp_wts(val) {
                if (val === 1) {
                    document.getElementById("aboutthi").style.display = "block";
                    document.getElementById("about_thick_wts").value = 0;
                } else {
                    document.getElementById("aboutthi").style.display = "none";
                    document.getElementById("about_thick_wts").value = 0;
                }
            }
            function calculate_wts() {

                var variables = {
                    "nom_pipeop_wts": $("#nom_pipeop_wts").val(),
                    "nomout_pipeop_wts": $("#nomout_pipeop_wts").val(),
                    "despress_pipeop_wts": $("#despress_pipeop_wts").val(),
                    "gra_pipeop_wts": $("#gra_pipeop_wts").val(),
                    "yield_pipeop_wts": $("#yield_pipeop_wts").val(),
                    "fact_pipeop_wts": $("#fact_pipeop_wts").val(),
                    "long_pipeop_wts": $("#long_pipeop_wts").val(),
                    "temp_pipeop_wts": $("#temp_pipeop_wts").val(),
                    "about_thick_wts": $("#about_thick_wts").val()


                };
                
                var unidades = {
                    "nomout_sel_wts": $("#nomout_sel_wts").val().split(",")[1],
                    "despress_sel_wts": $("#despress_sel_wts").val().split(",")[1],
                    "yield_sel_wts": $("#yield_sel_wts").val().split(",")[1]
                };
                //alert(variables);
                var res = wallthickness_ssp(variables, unidades);

                $("#minpipe_wts").val(res[0]);


                show_OkDialog($("#calculate_Dialog_wdp"), "Proceso satisfactorio");
            }

            function cleanOut_wts() {
                $("#minpipe_wts").val("");
            }

            function cleanIn_wts() {
                $("#nom_pipeop_wts").val("");
                $("#nomout_pipeop_wts").val("");
                $("#despress_pipeop_wts").val("");
                $("#gra_pipeop_wts").val("");
                $("#yield_pipeop_wts").val("");
                $("#fact_pipeop_wts").val("");
                $("#long_pipeop_wts").val("");
                $("#temp_pipeop_wts").val("");
            }

            function cleanAll_wts() {
                cleanOut_wts();
                cleanIn_wts();
            }
        </script>            
    </body>
</html>