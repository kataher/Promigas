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
        <h2><strong>Hydraulics:</strong> PanhandleB - Downstream Pressure</h2>
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
            <input class="form-control" type="text" id="basetemperature_bdp" name="basetemperature_bdp" onchange="onchange_Input_bdp(this)" required>
            </div>
            <div class="form-group">
            <label>Presión base:</label>
            
            <br><input  class="form-control" type="text" id="basepressure_bdp" name="basepressure_bdp" onchange="onchange_Input_bdp(this)" required><br>
            </div>
            <input type="button" id="load_bdp" name="load_bdp" value="Cargar Datos Sugeridos" onclick="loadSuggested_bdp()" class="btn btn-success">
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
            <input class="form-control" type="text" id="gasflowingtemp_bdp" name="gasflowingtemp_bdp" onchange="onchange_Input_bdp(this)" required>
            </div>                    
            <div class="form-group">
            <label>Gas Specific Gravity:</label>
            <input class="form-control" type="text" id="gasspecificgra_bdp" name="gasspecificgra_bdp" onchange="onchange_Input_bdp(this)" required>
            </div>
            <div class="form-group">
            <label>Compressibility Factor:</label>
            <input class="form-control" type="text" id="compressibilityf_bdp" name="compressibilityf_bdp" onchange="onchange_Input_bdp(this)" required>
            </div>   
            <div class="form-group">
            <label>Pipeline Efficiency Factor:</label>
            <input class="form-control" type="text" id="pipelineefficiency_bdp" name="pipelineefficiency_bdp" onchange="onchange_Input_bdp(this)" required>
            </div>
            <div class="form-group">
            <label>Upstream Pressure:</label>
            <input class="form-control" type="text" id="upstreampressure_bdp" name="upstreampressure_bdp" onchange="onchange_Input_bdp(this)" required>
            </div>
            <div class="form-group">
            <label>Tasa de flujo:</label>
            <input class="form-control" type="text" id="flowrate_bdp" name="flowrate_bdp" onchange="onchange_Input_bdp(this)" required ></div>
            <div class="form-group">
            <label>Internal Pipe Diameter:</label>
            <br><input class="form-control" type="text" id="internalpipe_bdp" name="internalpipe_bdp" onchange="onchange_Input_bdp(this)" required>
            </div>
            <div class="form-group">
            <label>Length of Pipeline:</label>
            <input class="form-control" type="text" id="lengthof_bdp" name="lengthof_bdp" onchange="onchange_Input_bdp(this)" required></div>
            <div class="form-group">
            <label>Upstream Elevation:</label>
            <input class="form-control" type="text" id="upstreamelevation_bdp" name="upstreamelevation_bdp" onchange="onchange_Input_bdp(this)" required>
            </div>
            <div class="form-group">
            <label>Downstream Elevation:</label>
            <input class="form-control" type="text" id="downstreamelevation_bdp" name="downstreamelevation_bdp" onchange="onchange_Input_bdp(this)" required></div>
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
            <input type="text" id="downstreampressure_bdp" name="downstreampressure_bdp" readonly required class="form-control">
            </div>
             <div class="form-group">
            <label>Transmission Factor:</label>
            <input type="text" id="transmissionfactor_bdp" name="transmissionfactor_bdp" readonly required class="form-control">
            </div>
            <div class="form-group">
            <label>Velocity:</label>            
            <input type="text" id="velocity_bdp" name="velocity_bdp" readonly required class="form-control">
            </div>          
 <input type="button" id="calculateBtn" name="calculateBtn" value="Calculate" onclick="calculate_bdp()" class="btn btn-info btn-block">
 <input type="submit" id="saveBtn" name="saveBtn" value="Save" onclick="save_bdp()" class="btn btn-success btn-block">   
 <input type="button" id="delteBtn" name="delteBtn" value="Eliminar" onclick="deleteReg_bdp()" class="btn btn-danger btn-block">
            
            </div>
                           </div>
                        </div>
                    </div>
            </div>
            <div class="col-lg-3">
            <input type="button" id="cleanAllBtn" name="cleanBtn" value="Clean All" onclick="cleanAll_bdp()" class="btn btn-warning btn-block">
            <input type="button" id="cleanInputBtn" name="cleanBtn" value="Clean Input Data" onclick="cleanIn_bdp()" class="btn btn-warning btn-block">
            <input type="button" id="cleanOutputBtn" name="cleanBtn" value="Clean Output Data" onclick="cleanOut_bdp()" class="btn btn-warning btn-block">
            <input type="button" id="cleanSuggestedBtn" name="cleanBtn" value="Limpiar Datos Sugeridos" onclick="cleanSugg_bdp()" class="btn btn-warning btn-block">
            </div>
            <input type="hidden" id="opcion_bdp" name="opcion_bdp"> 
            <input type="hidden" id="id_bdp" name="opcion_bdp">      
        
            <script>
                
                $(document).ready(function() {
                    
                    /*var parametros = {
                        "idproyect": <% out.print(session.getAttribute("id_proyect"));%>,
                        "form": "1",
                        "opcion" : "5"
                    };
                    
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        beforeSend: function (xhr) {
                            cleanAll_bdp();
                            block("Cargado datos...");
                        },
                        success: function(data, status, request){

                            var res = data.split("-");

                            if(res.length !== 1){
                                $("#basetemperature_bdp").val(res[0]);
                                $("#basepressure_bdp").val(res[1]);
                                $("#gasflowingtemp_bdp").val(res[2]);
                                $("#gasspecificgra_bdp").val(res[3]);
                                $("#pipelineefficiency_bdp").val(res[4]);
                                $("#upstreampressure_bdp").val(res[5]);
                                $("#flowrate_bdp").val(res[6]);
                                $("#internalpipe_bdp").val(res[7]);
                                $("#lengthof_bdp").val(res[8]);
                                $("#upstreamelevation_bdp").val(res[9]);
                                $("#downstreamelevation_bdp").val(res[10]);
                                $("#downstreampressure_bdp").val(res[11]);
                                $("#transmissionfactor_bdp").val(res[12]);
                                $("#velocity_bdp").val(res[13]);
                                $("#opcion_bdp").val("2"); //editar
                                $("#id_bdp").val(res[14]); //editar
                                
                                show_OkDialog($("#load_Dialog_bdp"), "Proceso satisfactorio");
                            }else{
                                $("#opcion_bdp").val("1"); //Save
                                $("#id_bdp").val("");
                                loadSuggested_bdp();

                            }
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_bdp"), "Error");
                        },
                        complete: function(){
                           unBlock();
                        }
                    });*/
                });
                
                function onchange_Input_bdp(inp){
                    var sw = validateDecimal(inp.value);
                    
                    if(sw !== true){
                        inp.value = "";
                    }       
                    
                    onchange_Input_zero(inp);
                    cleanOut_bdp();
                }
                                
                function cleanOut_bdp(){
                    $("#downstreampressure_bdp").val("");
                    $("#transmissionfactor_bdp").val("");
                    $("#velocity_bdp").val("");
                }
        
                function cleanSugg_bdp(){
                    $("#basepressure_bdp").val("");  
                    $("#basetemperature_bdp").val("");   
                }
        
                function cleanIn_bdp(){
                    $("#gasflowingtemp_bdp").val("");
                    $("#gasspecificgra_bdp").val("");
                    $("#pipelineefficiency_bdp").val("");
                    $("#upstreampressure_bdp").val("");
                    $("#flowrate_bdp").val("");
                    $("#internalpipe_bdp").val("");
                    $("#lengthof_bdp").val("");
                    $("#upstreamelevation_bdp").val("");
                    $("#downstreamelevation_bdp").val("");
                }
                
                function cleanAll_bdp(){
                    cleanIn_bdp();
                    cleanSugg_bdp();
                    cleanOut_bdp();
                }
                
                function save_bdp(){

                    var parametros = {
                            "basetemperature_pha" : $("#basetemperature_bdp").val(),
                            "basepressure_pha" : $("#basepressure_bdp").val(),
                            "gasflowingtemp_pha": $("#gasflowingtemp_bdp").val(),
                            "gasspecificgra_pha": $("#gasspecificgra_bdp").val(),           
                            "pipelineefficiency_pha": $("#pipelineefficiency_bdp").val(),
                            "upstreampressure_pha":$("#upstreampressure_bdp").val(),
                            "flowrate_pha": $("#flowrate_bdp").val(),
                            "internalpipe_pha": $("#internalpipe_bdp").val(),
                            "lengthof_pha": $("#lengthof_bdp").val(),

                            "upstreamelevation_pha": $("#upstreamelevation_bdp").val(),
                            "downstreamelevation_pha": $("#downstreamelevation_bdp").val(),
                            "downstreampressure_pha": $("#downstreampressure_bdp").val(),
                            "transmissionfactor_pha": $("#transmissionfactor_bdp").val(),
                            "velocity_pha": $("#velocity_bdp").val(),
                            "idproyect": <% out.print(session.getAttribute("id_proyect"));%>,
                            "form": "1",
                            "opcion": $("#opcion_bdp").val()
                    };

                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        beforeSend: function (xhr) {
                            block("Cargando...");
                        },
                        success: function(data, status, request){
                            $("#id_bdp").val(data);
                            show_OkDialog($("#save_Dialog_bdp"), "Proceso satisfactorio");
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_bdp"), "Error");

                            $("#basetemperature_bdp").val(parametros.basetemperature_pha);
                            $("#basepressure_bdp").val(parametros.basepressure_pha);
                            $("#gasflowingtemp_bdp").val(parametros.gasflowingtemp_pha);
                            $("#gasspecificgra_bdp").val(parametros.gasspecificgra_pha);
                            $("#pipelineefficiency_bdp").val(parametros.pipelineefficiency_pha);
                            $("#upstreampressure_bdp").val(parametros.upstreampressure_pha);
                            $("#flowrate_bdp").val(parametros.flowrate_pha);
                            $("#internalpipe_bdp").val(parametros.internalpipe_pha);
                            $("#lengthof_bdp").val(parametros.lengthof_pha);
                            $("#upstreamelevation_bdp").val(parametros.upstreamelevation_pha);
                            $("#downstreamelevation_bdp").val(parametros.downstreamelevation_pha);
                            $("#downstreampressure_bdp").val(parametros.downstreampressure_pha);
                            $("#transmissionfactor_bdp").val(parametros.transmissionfactor_pha);
                            $("#velocity_bdp").val(parametros.velocity_pha);
                        },
                        complete: function(){
                            unBlock();
                        }
                    });
                }
                                
                function calculate_bdp(){
                    var variables = {
                            "basetemperature_bdp" : $("#basetemperature_bdp").val(),
                            "basepressure_bdp": $("#basepressure_bdp").val(),
                            "gasflowingtemp_bdp" : $("#gasflowingtemp_bdp").val(),
                            "gasspecificgra_bdp" : $("#gasspecificgra_bdp").val(),
                            "pipelineefficiency_bdp" : $("#pipelineefficiency_bdp").val(),
                            "upstreampressure_bdp" : $("#upstreampressure_bdp").val(),
                            "flowrate_bdp" : $("#flowrate_bdp").val(),
                            "internalpipe_bdp" : $("#internalpipe_bdp").val(),
                            "lengthof_bdp" : $("#lengthof_bdp").val(),
                            "upstreamelevation_bdp" : $("#upstreamelevation_bdp").val(),
                            "downstreamelevation_bdp" : $("#downstreamelevation_bdp").val()
                    };

                    var res = downstreampressureB_Form(variables);
                    
                    $("#downstreampressure_bdp").val(res[0]);
                    $("#transmissionfactor_bdp").val(res[1]);
                    $("#velocity_bdp").val(res[2]);
                    
                    show_OkDialog($("#calculate_Dialog_bdp"), "Proceso satisfactorio");
                }

                function loadSuggested_bdp(){

                    var parametros = {
                            "idproyect": <% out.print(session.getAttribute("id_proyect"));%>,
                            "opcion" : "4"
                    };
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        beforeSend: function (xhr) {
                            cleanSugg_bdp();
                            block("Cargando...");
                        },
                        success: function(data, status, request){
                            show_OkDialog($("#load_Dialog_bdp"), "Proceso satisfactorio");
                            var res = data.split("-");

                            $("#basetemperature_bdp").val(res[1]);
                            $("#basepressure_bdp").val(res[0]);
                            cleanOut_bdp();                    
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_bdp"), "Error");                            
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function deleteReg_bdp(){

                    var parametros = {
                            "id_bdp": $("#id_bdp").val(),
                            "form": "1",
                            "opcion" : "3"
                    };
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        beforeSend: function (xhr) {
                            cleanSugg_bdp();
                            block("Cargando...");
                        },
                        success: function(data, status, request){               
                            cleanAll_bdp();
                            show_OkDialog($("#delete_Dialog_bdp"), "Proceso satisfactorio");                           
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_bdp"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                                
            </script>
            
            <div id="load_Dialog_bdp" title="Basic dialog" style='display:none;'>
                <p>Datos cargados exitosamente</p>
            </div>
            
            <div id="save_Dialog_bdp" title="Basic dialog" style='display:none;'>
                <p>Datos guardados exitosamente</p>
            </div>
            
            <div id="error_Dialog_bdp" title="Basic dialog" style='display:none;'>
                <p>Ha ocurrido un error en el proceso</p>
            </div>
            
            <div id="calculate_Dialog_bdp" title="Basic dialog" style='display:none;'>
                <p>Calculo realizado exitosamente</p>
            </div>
            
            <div id="delete_Dialog_bdp" title="Basic dialog" style='display:none;'>
                <p>Registro eliminado exitosamente</p>
            </div>
    </body>
</html>