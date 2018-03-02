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
       <h2><strong>Hydraulics:</strong> PanhandleA - Tasa de flujo</h2>
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
            <input type="text" class="form-control" id="basetemperature_afr" name="basetemperature_afr" onchange="onchange_Input_afr(this)" required>
            </div>
            <div class="form-group">
            <label>Presión base:</label>        
            <input type="text" class="form-control" id="basepressure_afr" name="basepressure_afr" onchange="onchange_Input_afr(this)" required>
            </div>
            <input type="button" id="load_afr" name="load_afr" value="Cargar" onclick="loadSuggested_afr()" class="btn btn-success">
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
                                    <form role="form">
                                        <div class="form-group">

                                           <div class="form-group">
                                              <label>Gas Temperatura de flujo:</label>
                                              <br><input class="form-control" type="text" id="gasflowingtemp_afr" name="gasflowingtemp_afr" onchange="onchange_Input_afr(this)" required>
                                           </div>
                                           <div class="form-group">
                                           <label>Gas Specific Gravity:</label>
                                           <input class="form-control" type="text" id="gasspecificgra_afr" name="gasspecificgra_afr" onchange="onchange_Input_afr(this)" required>
                                           </div>
                                           <!--<div class="form-group">
                                            <label>Compressibility Factor:</label>
                                            <input class="form-control" type="text" id="compressibilityf_afr" name="compressibilityf_afr" onchange="onchange_Input_afr(this)" required>
                                            </div>-->
                                           <div class="form-group">
                                            <label>Pipeline Efficiency Factor</label>
                                            <input class="form-control" type="text" id="pipelineefficiency_afr" name="pipelineefficiency_afr" onchange="onchange_Input_afr(this)" required>
                                           </div>
                                           <div class="form-group">
                                            <label> Upstream Pressure</label>
                                            <input class="form-control" type="text" id="upstreampressure_afr" name="upstreampressure_afr" onchange="onchange_Input_afr(this)" required>
                                           </div>
                                           <div class="form-group">
                                            <label>Downstream Pressure</label>
                                            <input class="form-control" type="text" id="downstreampressure_afr" name="downstreampressure_afr"  onchange="onchange_Input_afr(this)" required>
                                           </div>
                                           <div class="form-group">
                                            <label>Internal Pipe Diameter</label>
                                            <input class="form-control" type="text" id="internalpipe_afr" name="internalpipe_afr" onchange="onchange_Input_afr(this)" required>
                                           </div>
                                           <div class="form-group">
                                            <label>Length of Pipeline</label>
                                            <input class="form-control" type="text" id="lengthof_afr" name="lengthof_afr" onchange="onchange_Input_afr(this)" required>
                                           </div>
                                           <div class="form-group">
                                            <label>Upstream Elevation</label>
                                            <input class="form-control" type="text" id="upstreamelevation_afr" name="upstreamelevation_afr" onchange="onchange_Input_afr(this)" required>
                                           </div>
                                           <div class="form-group">
                                            <label>Downstream Elevation</label>
                                            <input class="form-control" type="text" id="downstreamelevation_afr" name="downstreamelevation_afr" onchange="onchange_Input_afr(this)" required>
                                           </div>
           
                                        </div>
                                   </form>
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
                                    <form role="form">
                                        <div class="form-group">

            <div class="form-group">
              <label>Tasa de flujo</label>
              <input class="form-control" type="text" id="flowrate_afr" name="flowrate_afr" readonly required>
           </div>
            <div class="form-group">
              <label>Transmission Factor</label>
              <input class="form-control" type="text" id="transmissionfactor_afr" name="transmissionfactor_afr" readonly required>
           </div>
            <div class="form-group">
             <label>Velocity</label>
                <input type="text" class="form-control" id="velocity_afr" name="velocity_afr" readonly required> 
            </div>
            <input type="button" id="calculateBtn" name="calculateBtn" value="Calculate" onclick="calculate_afr()" class="btn btn-info btn-block">
            <input type="submit" id="saveBtn" name="saveBtn" value="Save" onclick="save_afr()"  class="btn btn-success btn-block"> 
            <input type="button" id="delteBtn" name="delteBtn" value="Eliminar" onclick="deleteReg_afr()"  class="btn btn-danger btn-block">
           
                                        </div>
                                   </form>
                                </div>
                            </div>
                        </div>  
                    </div>
       
       </div>
           <div class="col-lg-3">
            <input type="button" id="cleanAllBtn" name="cleanBtn" value="Clean All" onclick="cleanAll_afr()" class="btn btn-warning btn-block">
            <input type="button" id="cleanInputBtn" name="cleanBtn" value="Clean Input Data" onclick="cleanIn_afr()" class="btn btn-warning btn-block">
            <input type="button" id="cleanOutputBtn" name="cleanBtn" value="Clean Output Data" onclick="cleanOut_afr()" class="btn btn-warning btn-block">
            <input type="button" id="cleanSuggestedBtn" name="cleanBtn" value="Limpiar Datos Sugeridos" onclick="cleanSugg_afr()" class="btn btn-warning btn-block">
            
            <input type="hidden" id="opcion_afr" name="opcion_afr"> 
            <input type="hidden" id="id_afr" name="opcion_afr">    
            </div>  
        
            <script>
                
                $(document).ready(function() {
                    
                    /*var parametros = {
                        "idproyect": <% out.print(session.getAttribute("id_proyect"));%>,
                        "form": "2",
                        "opcion" : "5"
                    };
                    
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        beforeSend: function (xhr) {
                            cleanAll_afr();
                            block("Cargado datos...");
                        },
                        success: function(data, status, request){

                            var res = data.split("-");

                            if(res.length != 1){
                                $("#basetemperature_afr").val(res[0]);
                                $("#basepressure_afr").val(res[1]);
                                $("#gasflowingtemp_afr").val(res[2]);
                                $("#gasspecificgra_afr").val(res[3]);
                                $("#pipelineefficiency_afr").val(res[4]);
                                $("#upstreampressure_afr").val(res[5]);
                                $("#flowrate_afr").val(res[6]); 
                                $("#internalpipe_afr").val(res[7]);
                                $("#lengthof_afr").val(res[8]);
                                $("#upstreamelevation_afr").val(res[9]);
                                $("#downstreamelevation_afr").val(res[10]);
                                $("#downstreampressure_afr").val(res[11]);
                                $("#transmissionfactor_afr").val(res[12]);
                                $("#velocity_afr").val(res[13]);
                                $("#opcion_afr").val("2"); //editar
                                $("#id_afr").val(res[14]); //editar
                                
                                show_OkDialog($("#load_Dialog_afr"), "Proceso satisfactorio");
                            }else{
                                $("#opcion_afr").val("1"); //Save
                                $("#id_afr").val("");
                                loadSuggested_afr();
                            }
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_afr"), "Error");
                        },
                        complete: function(){
                           unBlock();
                        }
                    });*/
                });
                
                function onchange_Input_afr(inp){
                    var sw = validateDecimal(inp.value);
                    
                    if(sw != true){
                        inp.value = "";
                    }       
                    onchange_Input_zero(inp);
                    cleanOut_afr();
                }
                                
                function cleanOut_afr(){
                    $("#flowrate_afr").val("");
                    $("#transmissionfactor_afr").val("");
                    $("#velocity_afr").val("");
                }
        
                function cleanSugg_afr(){
                    $("#basepressure_afr").val("");  
                    $("#basetemperature_afr").val("");   
                }
        
                function cleanIn_afr(){
                    $("#gasflowingtemp_afr").val("");
                    $("#gasspecificgra_afr").val("");
                    $("#pipelineefficiency_afr").val("");
                    $("#upstreampressure_afr").val("");
                    $("#downstreampressure_afr").val("");
                    $("#internalpipe_afr").val("");
                    $("#lengthof_afr").val("");
                    $("#upstreamelevation_afr").val("");
                    $("#downstreamelevation_afr").val("");
                }
                
                function cleanAll_afr(){
                    cleanIn_afr();
                    cleanSugg_afr();
                    cleanOut_afr();
                }
                
                function save_afr(){

                    var parametros = {
                            "basetemperature_pha" : $("#basetemperature_afr").val(),
                            "basepressure_pha" : $("#basepressure_afr").val(),
                            "gasflowingtemp_pha": $("#gasflowingtemp_afr").val(),
                            "gasspecificgra_pha": $("#gasspecificgra_afr").val(),           
                            "pipelineefficiency_pha": $("#pipelineefficiency_afr").val(),
                            "upstreampressure_pha":$("#upstreampressure_afr").val(),
                            "flowrate_pha": $("#flowrate_afr").val(),
                            "internalpipe_pha": $("#internalpipe_afr").val(),
                            "lengthof_pha": $("#lengthof_afr").val(),

                            "upstreamelevation_pha": $("#upstreamelevation_afr").val(),
                            "downstreamelevation_pha": $("#downstreamelevation_afr").val(),
                            "downstreampressure_pha": $("#downstreampressure_afr").val(),
                            "transmissionfactor_pha": $("#transmissionfactor_afr").val(),
                            "velocity_pha": $("#velocity_afr").val(),
                            "idproyect": <% out.print(session.getAttribute("id_proyect"));%>,
                            "form": "2",
                            "opcion": $("#opcion_afr").val()
                    };

                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        beforeSend: function (xhr) {
                            block("Cargando...");
                        },
                        success: function(data, status, request){
                            $("#id_afr").val(data);
                            show_OkDialog($("#save_Dialog_afr"), "Proceso satisfactorio");
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_afr"), "Error");

                            $("#basetemperature_afr").val(parametros.basetemperature_pha);
                            $("#basepressure_afr").val(parametros.basepressure_pha);
                            $("#gasflowingtemp_afr").val(parametros.gasflowingtemp_pha);
                            $("#gasspecificgra_afr").val(parametros.gasspecificgra_pha);
                            $("#pipelineefficiency_afr").val(parametros.pipelineefficiency_pha);
                            $("#upstreampressure_afr").val(parametros.upstreampressure_pha);
                            $("#flowrate_afr").val(parametros.flowrate_pha);
                            $("#internalpipe_afr").val(parametros.internalpipe_pha);
                            $("#lengthof_afr").val(parametros.lengthof_pha);
                            $("#upstreamelevation_afr").val(parametros.upstreamelevation_pha);
                            $("#downstreamelevation_afr").val(parametros.downstreamelevation_pha);
                            $("#downstreampressure_afr").val(parametros.downstreampressure_pha);
                            $("#transmissionfactor_afr").val(parametros.transmissionfactor_pha);
                            $("#velocity_afr").val(parametros.velocity_pha);
                        },
                        complete: function(){
                            unBlock();
                        }
                    });
                }
                                
                function calculate_afr(){
                    var variables = {
                            "basetemperature_afr" : $("#basetemperature_afr").val(),
                            "basepressure_afr": $("#basepressure_afr").val(),
                            "gasflowingtemp_afr" : $("#gasflowingtemp_afr").val(),
                            "gasspecificgra_afr" : $("#gasspecificgra_afr").val(),
                            "pipelineefficiency_afr" : $("#pipelineefficiency_afr").val(),
                            "upstreampressure_afr" : $("#upstreampressure_afr").val(),
                            "downstreampressure_afr" : $("#downstreampressure_afr").val(),
                            "internalpipe_afr" : $("#internalpipe_afr").val(),
                            "lengthof_afr" : $("#lengthof_afr").val(),
                            "upstreamelevation_afr" : $("#upstreamelevation_afr").val(),
                            "downstreamelevation_afr" : $("#downstreamelevation_afr").val()
                    };
                   var res = flowrate_Form(variables);
                    
                    $("#flowrate_afr").val(res[0]);
                    //$("#transmissionfactor_afr").val(res[1]);
                   // $("#velocity_afr").val(res[2]);
                    
                    show_OkDialog($("#calculate_Dialog_afr"), "Proceso satisfactorio");
                }

                function loadSuggested_afr(){

                    var parametros = {
                        "idproyect": <% out.print(session.getAttribute("id_proyect"));%>,
                        "opcion" : "4"
                    };
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        beforeSend: function (xhr) {
                            cleanSugg_afr();
                            block("Cargando...");
                        },
                        success: function(data, status, request){
                            show_OkDialog($("#load_Dialog_afr"), "Proceso satisfactorio");
                            var res = data.split("-");

                            $("#basetemperature_afr").val(res[1]);
                            $("#basepressure_afr").val(res[0]);
                            cleanOut_afr();                    
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_afr"), "Error");                            
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function deleteReg_afr(){

                    var parametros = {
                            "id_afr": $("#id_afr").val(),
                            "form": "2",
                            "opcion" : "3"
                    };
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        beforeSend: function (xhr) {
                            cleanSugg_afr();
                            block("Cargando...");
                        },
                        success: function(data, status, request){               
                            cleanAll_afr();
                            show_OkDialog($("#delete_Dialog_afr"), "Proceso satisfactorio");                           
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_afr"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                                
            </script>
            
            <div id="load_Dialog_afr" title="Basic dialog" style='display:none;'>
                <p>Datos cargados exitosamente</p>
            </div>
            
            <div id="save_Dialog_afr" title="Basic dialog" style='display:none;'>
                <p>Datos guardados exitosamente</p>
            </div>
            
            <div id="error_Dialog_afr" title="Basic dialog" style='display:none;'>
                <p>Ha ocurrido un error en el proceso</p>
            </div>
            
            <div id="calculate_Dialog_afr" title="Basic dialog" style='display:none;'>
                <p>Calculo realizado exitosamente</p>
            </div>
            
            <div id="delete_Dialog_afr" title="Basic dialog" style='display:none;'>
                <p>Registro eliminado exitosamente</p>
            </div>
    </body>
</html>