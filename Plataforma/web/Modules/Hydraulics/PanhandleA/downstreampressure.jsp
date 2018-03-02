<%-- 
    Document   : index
    Created on : 03-mar-2016, 17:02:38
    Author     : kata__000
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <%@include file="../../../includehead.html" %>
    </head>
    
    <body>
        <h2><strong>Hydraulics:</strong> PanhandleA - Downstream Pressure</h2>
        <hr>
         <div class="col-lg-3">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Datos Sugeridos
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    <form role="form">
                                        <div class="form-group">

            <div class="form-group">
            <label>Temperatura base:</label>
            <input class="form-control" type="text" id="basetemperature_adp" name="basetemperature_adp" onchange="onchange_Input_adp(this)" required>
            </div>
            <div class="form-group">
            <label>Presión base:</label>
            
            <br><input  class="form-control" type="text" id="basepressure_adp" name="basepressure_adp" onchange="onchange_Input_adp(this)" required><br>
            </div>
            <input type="button" id="load_adp" name="load_adp" value="Cargar Datos Sugeridos" onclick="loadSuggested_adp()" class="btn btn-success">
                                        </div>
                                   </form>
                                </div>
                            </div>
                        </div>  
                    </div>   
       </div>
       <div class="col-lg-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Datos de Entrada
                        </div>
            <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
            <div class="form-group">
            <label>Gas Temperatura de flujo:</label>
            <input class="form-control" type="text" id="gasflowingtemp_adp" name="gasflowingtemp_adp" onchange="onchange_Input_adp(this)" required>
            </div>                    
            <div class="form-group">
            <label>Gas Specific Gravity:</label>
            <input class="form-control" type="text" id="gasspecificgra_adp" name="gasspecificgra_adp" onchange="onchange_Input_adp(this)" required>
            </div>
            <!--<div class="form-group">
            <label>Compressibility Factor:</label>
            <input class="form-control" type="text" id="compressibilityf_adp" name="compressibilityf_adp" onchange="onchange_Input_adp(this)" required>
            </div>   -->
            <div class="form-group">
            <label>Pipeline Efficiency Factor:</label>
            <input class="form-control" type="text" id="pipelineefficiency_adp" name="pipelineefficiency_adp" onchange="onchange_Input_adp(this)" required>
            </div>
            <div class="form-group">
            <label>Upstream Pressure:</label>
            <input class="form-control" type="text" id="upstreampressure_adp" name="upstreampressure_adp" onchange="onchange_Input_adp(this)" required>
            </div>
            <div class="form-group">
            <label>Tasa de flujo:</label>
            <input class="form-control" type="text" id="flowrate_adp" name="flowrate_adp" onchange="onchange_Input_adp(this)" required ></div>
            <div class="form-group">
            <label>Internal Pipe Diameter:</label>
            <br><input class="form-control" type="text" id="internalpipe_adp" name="internalpipe_adp" onchange="onchange_Input_adp(this)" required>
            </div>
            <div class="form-group">
            <label>Length of Pipeline:</label>
            <input class="form-control" type="text" id="lengthof_adp" name="lengthof_adp" onchange="onchange_Input_adp(this)" required></div>
            <div class="form-group">
            <label>Upstream Elevation:</label>
            <input class="form-control" type="text" id="upstreamelevation_adp" name="upstreamelevation_adp" onchange="onchange_Input_adp(this)" required>
            </div>
            <div class="form-group">
            <label>Downstream Elevation:</label>
            <input class="form-control" type="text" id="downstreamelevation_adp" name="downstreamelevation_adp" onchange="onchange_Input_adp(this)" required>
            </div>
            
            </div>
                            </div>
            </div>
            </div>
      </div>
            <div class="col-lg-3">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Resultados
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
             <div class="form-group">
            <label>Downstream Pressure:</label>
            <input type="text" id="downstreampressure_adp" name="downstreampressure_adp" readonly required class="form-control">
            </div>
             <div class="form-group">
            <label>Transmission Factor:</label>
            <input type="text" id="transmissionfactor_adp" name="transmissionfactor_adp" readonly required class="form-control">
            </div>
            <div class="form-group">
            <label>Velocity:</label>            
            <input type="text" id="velocity_adp" name="velocity_adp" readonly required class="form-control">
            </div>          
 <input type="button" id="calculateBtn" name="calculateBtn" value="Calculate" onclick="calculate_adp()" class="btn btn-info btn-block">
 <input type="submit" id="saveBtn" name="saveBtn" value="Save" onclick="save_adp()" class="btn btn-success btn-block">   
 <input type="button" id="delteBtn" name="delteBtn" value="Eliminar" onclick="deleteReg_adp()" class="btn btn-danger btn-block">
            
            </div>
                           </div>
                        </div>
                    </div>
            </div>
            <div class="col-lg-3">
            <input type="button" id="cleanAllBtn" name="cleanBtn" value="Clean All" onclick="cleanAll_adp()" class="btn btn-warning btn-block">
            <input type="button" id="cleanInputBtn" name="cleanBtn" value="Clean Input Data" onclick="cleanIn_adp()" class="btn btn-warning btn-block">
            <input type="button" id="cleanOutputBtn" name="cleanBtn" value="Clean Output Data" onclick="cleanOut_adp()" class="btn btn-warning btn-block">
            <input type="button" id="cleanSuggestedBtn" name="cleanBtn" value="Limpiar Datos Sugeridos" onclick="cleanSugg_adp()" class="btn btn-warning btn-block">
            </div>
            <input type="hidden" id="opcion_adp" name="opcion_adp"> 
            <input type="hidden" id="id_adp" name="opcion_adp">      
        
            <script>
                
               /* $(document).ready(function() {
                    
                    var parametros = {
                        "idproyect": <% out.print(session.getAttribute("id_proyect"));%>,
                        "form": "1",
                        "opcion" : "5"
                    };
                    
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        beforeSend: function (xhr) {
                            cleanAll_adp();
                            block("Cargado datos...");
                        },
                        success: function(data, status, request){

                            var res = data.split("-");

                            if(res.length !== 1){
                                $("#basetemperature_adp").val(res[0]);
                                $("#basepressure_adp").val(res[1]);
                                $("#gasflowingtemp_adp").val(res[2]);
                                $("#gasspecificgra_adp").val(res[3]);
                                $("#pipelineefficiency_adp").val(res[4]);
                                $("#upstreampressure_adp").val(res[5]);
                                $("#flowrate_adp").val(res[6]);
                                $("#internalpipe_adp").val(res[7]);
                                $("#lengthof_adp").val(res[8]);
                                $("#upstreamelevation_adp").val(res[9]);
                                $("#downstreamelevation_adp").val(res[10]);
                                $("#downstreampressure_adp").val(res[11]);
                                $("#transmissionfactor_adp").val(res[12]);
                                $("#velocity_adp").val(res[13]);
                                $("#opcion_adp").val("2"); //editar
                                $("#id_adp").val(res[14]); //editar
                                
                                show_OkDialog($("#load_Dialog_adp"), "Proceso satisfactorio");
                            }else{
                                $("#opcion_adp").val("1"); //Save
                                $("#id_adp").val("");
                                loadSuggested_adp();

                            }
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_adp"), "Error");
                        },
                        complete: function(){
                           unBlock();
                        }
                    });
                });*/
                
                function onchange_Input_adp(inp){
                    
                    
                    var sw = validateDecimal(inp.value);
                    
                    if(sw !== true){
                        inp.value = "";
                    }    
                    onchange_Input_zero(inp);
                    cleanOut_adp();
                }
                                
                function cleanOut_adp(){
                    $("#downstreampressure_adp").val("");
                    $("#transmissionfactor_adp").val("");
                    $("#velocity_adp").val("");
                }
        
                function cleanSugg_adp(){
                    $("#basepressure_adp").val("");  
                    $("#basetemperature_adp").val("");   
                }
        
                function cleanIn_adp(){
                    $("#gasflowingtemp_adp").val("");
                    $("#gasspecificgra_adp").val("");
                    $("#pipelineefficiency_adp").val("");
                    $("#upstreampressure_adp").val("");
                    $("#flowrate_adp").val("");
                    $("#internalpipe_adp").val("");
                    $("#lengthof_adp").val("");
                    $("#upstreamelevation_adp").val("");
                    $("#downstreamelevation_adp").val("");
                }
                
                function cleanAll_adp(){
                    cleanIn_adp();
                    cleanSugg_adp();
                    cleanOut_adp();
                }
                
                function save_adp(){

                    var parametros = {
                            "basetemperature_pha" : $("#basetemperature_adp").val(),
                            "basepressure_pha" : $("#basepressure_adp").val(),
                            "gasflowingtemp_pha": $("#gasflowingtemp_adp").val(),
                            "gasspecificgra_pha": $("#gasspecificgra_adp").val(),           
                            "pipelineefficiency_pha": $("#pipelineefficiency_adp").val(),
                            "upstreampressure_pha":$("#upstreampressure_adp").val(),
                            "flowrate_pha": $("#flowrate_adp").val(),
                            "internalpipe_pha": $("#internalpipe_adp").val(),
                            "lengthof_pha": $("#lengthof_adp").val(),

                            "upstreamelevation_pha": $("#upstreamelevation_adp").val(),
                            "downstreamelevation_pha": $("#downstreamelevation_adp").val(),
                            "downstreampressure_pha": $("#downstreampressure_adp").val(),
                            "transmissionfactor_pha": $("#transmissionfactor_adp").val(),
                            "velocity_pha": $("#velocity_adp").val(),
                            "idproyect": <% out.print(session.getAttribute("id_proyect"));%>,
                            "form": "1",
                            "opcion": $("#opcion_adp").val()
                    };

                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        beforeSend: function (xhr) {
                            block("Cargando...");
                        },
                        success: function(data, status, request){
                            $("#id_adp").val(data);
                            show_OkDialog($("#save_Dialog_adp"), "Proceso satisfactorio");
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_adp"), "Error");

                            $("#basetemperature_adp").val(parametros.basetemperature_pha);
                            $("#basepressure_adp").val(parametros.basepressure_pha);
                            $("#gasflowingtemp_adp").val(parametros.gasflowingtemp_pha);
                            $("#gasspecificgra_adp").val(parametros.gasspecificgra_pha);
                            $("#pipelineefficiency_adp").val(parametros.pipelineefficiency_pha);
                            $("#upstreampressure_adp").val(parametros.upstreampressure_pha);
                            $("#flowrate_adp").val(parametros.flowrate_pha);
                            $("#internalpipe_adp").val(parametros.internalpipe_pha);
                            $("#lengthof_adp").val(parametros.lengthof_pha);
                            $("#upstreamelevation_adp").val(parametros.upstreamelevation_pha);
                            $("#downstreamelevation_adp").val(parametros.downstreamelevation_pha);
                            $("#downstreampressure_adp").val(parametros.downstreampressure_pha);
                            $("#transmissionfactor_adp").val(parametros.transmissionfactor_pha);
                            $("#velocity_adp").val(parametros.velocity_pha);
                        },
                        complete: function(){
                            unBlock();
                        }
                    });
                }
                                
                function calculate_adp(){
                    var variables = {
                            "basetemperature_adp" : $("#basetemperature_adp").val(),
                            "basepressure_adp": $("#basepressure_adp").val(),
                            "gasflowingtemp_adp" : $("#gasflowingtemp_adp").val(),
                            "gasspecificgra_adp" : $("#gasspecificgra_adp").val(),
                            "pipelineefficiency_adp" : $("#pipelineefficiency_adp").val(),
                            "upstreampressure_adp" : $("#upstreampressure_adp").val(),
                            "flowrate_adp" : $("#flowrate_adp").val(),
                            "internalpipe_adp" : $("#internalpipe_adp").val(),
                            "lengthof_adp" : $("#lengthof_adp").val(),
                            "upstreamelevation_adp" : $("#upstreamelevation_adp").val(),
                            "downstreamelevation_adp" : $("#downstreamelevation_adp").val(),
                            "efficiency_adp" : $("#efficiency_adp").val()
                            
                    };

                    var res = downstreampressure_Form(variables);
                    if(res[3]){
                      show_OkDialog($("#calculate_Dialog_adp"), "Con estos datos se obtuvo un valor negativo");
                    }else{
                      show_OkDialog($("#calculate_Dialog_adp"), "Proceso satisfactorio");

                    }
                    $("#downstreampressure_adp").val(res[0]);
                   // $("#transmissionfactor_adp").val(res[1]);
                   // $("#velocity_adp").val(res[2]);
                    
                }

                function loadSuggested_adp(){

                    var parametros = {
                            "idproyect": <% out.print(session.getAttribute("id_proyect"));%>,
                            "opcion" : "4"
                    };
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        beforeSend: function (xhr) {
                            cleanSugg_adp();
                            block("Cargando...");
                        },
                        success: function(data, status, request){
                            show_OkDialog($("#load_Dialog_adp"), "Proceso satisfactorio");
                            var res = data.split("-");

                            $("#basetemperature_adp").val(res[1]);
                            $("#basepressure_adp").val(res[0]);
                            cleanOut_adp();                    
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_adp"), "Error");                            
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function deleteReg_adp(){

                    var parametros = {
                            "id_adp": $("#id_adp").val(),
                            "form": "1",
                            "opcion" : "3"
                    };
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        beforeSend: function (xhr) {
                            cleanSugg_adp();
                            block("Cargando...");
                        },
                        success: function(data, status, request){               
                            cleanAll_adp();
                            show_OkDialog($("#delete_Dialog_adp"), "Proceso satisfactorio");                           
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_adp"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                                
            </script>
            
            <div id="load_Dialog_adp" title="Basic dialog" style='display:none;'>
                <p>Datos cargados exitosamente</p>
            </div>
            
            <div id="save_Dialog_adp" title="Basic dialog" style='display:none;'>
                <p>Datos guardados exitosamente</p>
            </div>
            
            <div id="error_Dialog_adp" title="Basic dialog" style='display:none;'>
                <p>Ha ocurrido un error en el proceso</p>
            </div>
            
            <div id="calculate_Dialog_adp" title="Basic dialog" style='display:none;'>
                <p>Calculo realizado exitosamente</p>
            </div>
            
            <div id="delete_Dialog_adp" title="Basic dialog" style='display:none;'>
                <p>Registro eliminado exitosamente</p>
            </div>
    </body>
</html>