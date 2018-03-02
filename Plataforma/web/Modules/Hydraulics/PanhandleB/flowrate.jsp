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
       <h2><strong>Hydraulics:</strong> PanhandleB - Tasa de flujo</h2>
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
            <input type="text" class="form-control" id="basetemperature_bfr" name="basetemperature_bfr" onchange="onchange_Input_bfr(this)" required>
            </div>
            <div class="form-group">
            <label>Presión base:</label>        
            <input type="text" class="form-control" id="basepressure_bfr" name="basepressure_bfr" onchange="onchange_Input_bfr(this)" required>
            </div>
            <input type="button" id="load_bfr" name="load_bfr" value="Cargar" onclick="loadSuggested_bfr()" class="btn btn-success">
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
                                              <br><input class="form-control" type="text" id="gasflowingtemp_bfr" name="gasflowingtemp_bfr" onchange="onchange_Input_bfr(this)" required>
                                           </div>
                                           <div class="form-group">
                                           <label>Gas Specific Gravity:</label>
                                           <input class="form-control" type="text" id="gasspecificgra_bfr" name="gasspecificgra_bfr" onchange="onchange_Input_bfr(this)" required>
                                           </div>
                                          <!-- <div class="form-group">
                                            <label>Compressibility Factor:</label>
                                            <input class="form-control" type="text" id="compressibilityf_bfr" name="compressibilityf_bfr" onchange="onchange_Input_bfr(this)" required>
                                            </div>-->
                                           <div class="form-group">
                                            <label>Pipeline Efficiency Factor</label>
                                            <input class="form-control" type="text" id="pipelineefficiency_bfr" name="pipelineefficiency_bfr" onchange="onchange_Input_bfr(this)" required>
                                           </div>
                                           <div class="form-group">
                                            <label> Upstream Pressure</label>
                                            <input class="form-control" type="text" id="upstreampressure_bfr" name="upstreampressure_bfr" onchange="onchange_Input_bfr(this)" required>
                                           </div>
                                           <div class="form-group">
                                            <label>Downstream Pressure</label>
                                            <input class="form-control" type="text" id="downstreampressure_bfr" name="downstreampressure_bfr"  onchange="onchange_Input_bfr(this)" required>
                                           </div>
                                           <div class="form-group">
                                            <label>Internal Pipe Diameter</label>
                                            <input class="form-control" type="text" id="internalpipe_bfr" name="internalpipe_bfr" onchange="onchange_Input_bfr(this)" required>
                                           </div>
                                           <div class="form-group">
                                            <label>Length of Pipeline</label>
                                            <input class="form-control" type="text" id="lengthof_bfr" name="lengthof_bfr" onchange="onchange_Input_bfr(this)" required>
                                           </div>
                                           <div class="form-group">
                                            <label>Upstream Elevation</label>
                                            <input class="form-control" type="text" id="upstreamelevation_bfr" name="upstreamelevation_bfr" onchange="onchange_Input_bfr(this)" required>
                                           </div>
                                           <div class="form-group">
                                            <label>Downstream Elevation</label>
                                            <input class="form-control" type="text" id="downstreamelevation_bfr" name="downstreamelevation_bfr" onchange="onchange_Input_bfr(this)" required>
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
              <input class="form-control" type="text" id="flowrate_bfr" name="flowrate_bfr" readonly required>
           </div>
            <div class="form-group">
              <label>Transmission Factor</label>
              <input class="form-control" type="text" id="transmissionfactor_bfr" name="transmissionfactor_bfr" readonly required>
           </div>
            <div class="form-group">
             <label>Velocity</label>
                <input type="text" class="form-control" id="velocity_bfr" name="velocity_bfr" readonly required> 
            </div>
            <input type="button" id="calculateBtn" name="calculateBtn" value="Calculate" onclick="calculate_bfr()" class="btn btn-info btn-block">
            <input type="submit" id="saveBtn" name="saveBtn" value="Save" onclick="save_bfr()"  class="btn btn-success btn-block"> 
            <input type="button" id="delteBtn" name="delteBtn" value="Eliminar" onclick="deleteReg_bfr()"  class="btn btn-danger btn-block">
           
                                        </div>
                                   </form>
                                </div>
                            </div>
                        </div>  
                    </div>
       
       </div>
           <div class="col-lg-3">
            <input type="button" id="cleanAllBtn" name="cleanBtn" value="Clean All" onclick="cleanAll_bfr()" class="btn btn-warning btn-block">
            <input type="button" id="cleanInputBtn" name="cleanBtn" value="Clean Input Data" onclick="cleanIn_bfr()" class="btn btn-warning btn-block">
            <input type="button" id="cleanOutputBtn" name="cleanBtn" value="Clean Output Data" onclick="cleanOut_bfr()" class="btn btn-warning btn-block">
            <input type="button" id="cleanSuggestedBtn" name="cleanBtn" value="Limpiar Datos Sugeridos" onclick="cleanSugg_bfr()" class="btn btn-warning btn-block">
            
            <input type="hidden" id="opcion_bfr" name="opcion_bfr"> 
            <input type="hidden" id="id_bfr" name="opcion_bfr">    
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
                            cleanAll_bfr();
                            block("Cargado datos...");
                        },
                        success: function(data, status, request){

                            var res = data.split("-");

                            if(res.length != 1){
                                $("#basetemperature_bfr").val(res[0]);
                                $("#basepressure_bfr").val(res[1]);
                                $("#gasflowingtemp_bfr").val(res[2]);
                                $("#gasspecificgra_bfr").val(res[3]);
                                $("#pipelineefficiency_bfr").val(res[4]);
                                $("#upstreampressure_bfr").val(res[5]);
                                $("#flowrate_bfr").val(res[6]); 
                                $("#internalpipe_bfr").val(res[7]);
                                $("#lengthof_bfr").val(res[8]);
                                $("#upstreamelevation_bfr").val(res[9]);
                                $("#downstreamelevation_bfr").val(res[10]);
                                $("#downstreampressure_bfr").val(res[11]);
                                $("#transmissionfactor_bfr").val(res[12]);
                                $("#velocity_bfr").val(res[13]);
                                $("#opcion_bfr").val("2"); //editar
                                $("#id_bfr").val(res[14]); //editar
                                
                                show_OkDialog($("#load_Dialog_bfr"), "Proceso satisfactorio");
                            }else{
                                $("#opcion_bfr").val("1"); //Save
                                $("#id_bfr").val("");
                                loadSuggested_bfr();
                            }
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_bfr"), "Error");
                        },
                        complete: function(){
                           unBlock();
                        }
                    });*/
                });
                
                function onchange_Input_bfr(inp){
                    var sw = validateDecimal(inp.value);
                    
                    if(sw != true){
                        inp.value = "";
                    }    
                    onchange_Input_zero(inp);
                    cleanOut_bfr();
                }
                                
                function cleanOut_bfr(){
                    $("#flowrate_bfr").val("");
                    $("#transmissionfactor_bfr").val("");
                    $("#velocity_bfr").val("");
                }
        
                function cleanSugg_bfr(){
                    $("#basepressure_bfr").val("");  
                    $("#basetemperature_bfr").val("");   
                }
        
                function cleanIn_bfr(){
                    $("#gasflowingtemp_bfr").val("");
                    $("#gasspecificgra_bfr").val("");
                    $("#pipelineefficiency_bfr").val("");
                    $("#upstreampressure_bfr").val("");
                    $("#downstreampressure_bfr").val("");
                    $("#internalpipe_bfr").val("");
                    $("#lengthof_bfr").val("");
                    $("#upstreamelevation_bfr").val("");
                    $("#downstreamelevation_bfr").val("");
                }
                
                function cleanAll_bfr(){
                    cleanIn_bfr();
                    cleanSugg_bfr();
                    cleanOut_bfr();
                }
                
                function save_bfr(){

                    var parametros = {
                            "basetemperature_pha" : $("#basetemperature_bfr").val(),
                            "basepressure_pha" : $("#basepressure_bfr").val(),
                            "gasflowingtemp_pha": $("#gasflowingtemp_bfr").val(),
                            "gasspecificgra_pha": $("#gasspecificgra_bfr").val(),           
                            "pipelineefficiency_pha": $("#pipelineefficiency_bfr").val(),
                            "upstreampressure_pha":$("#upstreampressure_bfr").val(),
                            "flowrate_pha": $("#flowrate_bfr").val(),
                            "internalpipe_pha": $("#internalpipe_bfr").val(),
                            "lengthof_pha": $("#lengthof_bfr").val(),

                            "upstreamelevation_pha": $("#upstreamelevation_bfr").val(),
                            "downstreamelevation_pha": $("#downstreamelevation_bfr").val(),
                            "downstreampressure_pha": $("#downstreampressure_bfr").val(),
                            "transmissionfactor_pha": $("#transmissionfactor_bfr").val(),
                            "velocity_pha": $("#velocity_bfr").val(),
                            "idproyect": <% out.print(session.getAttribute("id_proyect"));%>,
                            "form": "2",
                            "opcion": $("#opcion_bfr").val()
                    };

                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        beforeSend: function (xhr) {
                            block("Cargando...");
                        },
                        success: function(data, status, request){
                            $("#id_bfr").val(data);
                            show_OkDialog($("#save_Dialog_bfr"), "Proceso satisfactorio");
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_bfr"), "Error");

                            $("#basetemperature_bfr").val(parametros.basetemperature_pha);
                            $("#basepressure_bfr").val(parametros.basepressure_pha);
                            $("#gasflowingtemp_bfr").val(parametros.gasflowingtemp_pha);
                            $("#gasspecificgra_bfr").val(parametros.gasspecificgra_pha);
                            $("#pipelineefficiency_bfr").val(parametros.pipelineefficiency_pha);
                            $("#upstreampressure_bfr").val(parametros.upstreampressure_pha);
                            $("#flowrate_bfr").val(parametros.flowrate_pha);
                            $("#internalpipe_bfr").val(parametros.internalpipe_pha);
                            $("#lengthof_bfr").val(parametros.lengthof_pha);
                            $("#upstreamelevation_bfr").val(parametros.upstreamelevation_pha);
                            $("#downstreamelevation_bfr").val(parametros.downstreamelevation_pha);
                            $("#downstreampressure_bfr").val(parametros.downstreampressure_pha);
                            $("#transmissionfactor_bfr").val(parametros.transmissionfactor_pha);
                            $("#velocity_bfr").val(parametros.velocity_pha);
                        },
                        complete: function(){
                            unBlock();
                        }
                    });
                }
                                
                function calculate_bfr(){
                    var variables = {
                            "basetemperature_bfr" : $("#basetemperature_bfr").val(),
                            "basepressure_bfr": $("#basepressure_bfr").val(),
                            "gasflowingtemp_bfr" : $("#gasflowingtemp_bfr").val(),
                            "gasspecificgra_bfr" : $("#gasspecificgra_bfr").val(),
                            "pipelineefficiency_bfr" : $("#pipelineefficiency_bfr").val(),
                            "upstreampressure_bfr" : $("#upstreampressure_bfr").val(),
                            "downstreampressure_bfr" : $("#downstreampressure_bfr").val(),
                            "internalpipe_bfr" : $("#internalpipe_bfr").val(),
                            "lengthof_bfr" : $("#lengthof_bfr").val(),
                            "upstreamelevation_bfr" : $("#upstreamelevation_bfr").val(),
                            "downstreamelevation_bfr" : $("#downstreamelevation_bfr").val()
                    };

                    var res = flowrateB_Form(variables);
                    
                    $("#flowrate_bfr").val(res[0]);
                    $("#transmissionfactor_bfr").val(res[1]);
                    $("#velocity_bfr").val(res[2]);
                    
                    show_OkDialog($("#calculate_Dialog_bfr"), "Proceso satisfactorio");
                }

                function loadSuggested_bfr(){

                    var parametros = {
                        "idproyect": <% out.print(session.getAttribute("id_proyect"));%>,
                        "opcion" : "4"
                    };
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        beforeSend: function (xhr) {
                            cleanSugg_bfr();
                            block("Cargando...");
                        },
                        success: function(data, status, request){
                            show_OkDialog($("#load_Dialog_bfr"), "Proceso satisfactorio");
                            var res = data.split("-");

                            $("#basetemperature_bfr").val(res[1]);
                            $("#basepressure_bfr").val(res[0]);
                            cleanOut_bfr();                    
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_bfr"), "Error");                            
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function deleteReg_bfr(){

                    var parametros = {
                            "id_bfr": $("#id_bfr").val(),
                            "form": "2",
                            "opcion" : "3"
                    };
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        beforeSend: function (xhr) {
                            cleanSugg_bfr();
                            block("Cargando...");
                        },
                        success: function(data, status, request){               
                            cleanAll_bfr();
                            show_OkDialog($("#delete_Dialog_bfr"), "Proceso satisfactorio");                           
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_bfr"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                                
            </script>
            
            <div id="load_Dialog_bfr" title="Basic dialog" style='display:none;'>
                <p>Datos cargados exitosamente</p>
            </div>
            
            <div id="save_Dialog_bfr" title="Basic dialog" style='display:none;'>
                <p>Datos guardados exitosamente</p>
            </div>
            
            <div id="error_Dialog_bfr" title="Basic dialog" style='display:none;'>
                <p>Ha ocurrido un error en el proceso</p>
            </div>
            
            <div id="calculate_Dialog_bfr" title="Basic dialog" style='display:none;'>
                <p>Calculo realizado exitosamente</p>
            </div>
            
            <div id="delete_Dialog_bfr" title="Basic dialog" style='display:none;'>
                <p>Registro eliminado exitosamente</p>
            </div>
    </body>
</html>