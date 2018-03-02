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
        <h2><strong>Hydraulics:</strong> PanhandleB - Upstream Pressure</h2>
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
                                              <label>Presión base:</label><input type="text" id="basepressure_bup" name="basepressure_bup" onchange="onchange_Input_bup(this)" required class="form-control">
                                           </div>
                                            <div class="form-group">
                                              <label>Temperatura base:</label><input type="text" id="basetemperature_bup" name="basetemperature_bup" onchange="onchange_Input_bup(this)" required class="form-control">
                                           </div>
                                           <input type="button" id="load_bup" name="load" value="Cargar" class="btn btn-success" onclick="loadSuggested_bup()">
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
              <label>Gas Temperatura de flujo:</label><input type="text" class="form-control" id="gasflowingtemp_bup" name="gasflowingtemp_bup" onchange="onchange_Input_bup(this)" required>
           </div>
           <div class="form-group">
              <label>Gas Specific Gravity:</label><input type="text" class="form-control" id="gasspecificgra_bup" name="gasspecificgra_bup" onchange="onchange_Input_bup(this)" required>
           </div>
           <!--<div class="form-group">
           <label>Compressibility Factor:</label>
           <input class="form-control" type="text" id="compressibilityf_bup" name="compressibilityf_fr" onchange="onchange_Input_bup(this)" required>
           </div>       -->                          
           <div class="form-group">
              <label>Pipeline Efficiency Factor</label><input class="form-control" type="text" id="pipelineefficiency_bup" name="pipelineefficiency_bup" onchange="onchange_Input_bup(this)" required>
           </div>
           <div class="form-group">
              <label>Downstream Pressure</label><input class="form-control" type="text" id="downstreampressure_bup" name="downstreampressure_bup" onchange="onchange_Input_bup(this)" required>
           </div>
           <div class="form-group">
              <label>Tasa de flujo</label><input class="form-control" type="text" id="flowrate_bup" name="flowrate_bup" onchange="onchange_Input_bup(this)" required >
           </div>
           <div class="form-group">
              <label>Internal Pipe Diameter</label><input class="form-control" type="text" id="internalpipe_bup" name="internalpipe_bup" onchange="onchange_Input_bup(this)" required>
           </div>
           <div class="form-group">
              <label>Length of Pipeline</label><input type="text" id="lengthof_bup" name="lengthof_bup" onchange="onchange_Input_bup(this)" required  class="form-control">
           </div>
           <div class="form-group">
              <label>Upstream Elevation</label><input class="form-control" type="text" id="upstreamelevation_bup" name="upstreamelevation_bup" onchange="onchange_Input_bup(this)" required>
           </div>
           <div class="form-group">
              <label>Downstream Elevation</label><input class="form-control" type="text" id="downstreamelevation_bup" name="downstreamelevation_bup" onchange="onchange_Input_bup(this)" required>
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
              <label>Upstream Pressure</label><input type="text" id="upstreampressure_bup" class="form-control" name="upstreampressure_bup" readonly required>
           </div>
           <div class="form-group">
              <label>Transmission Factor</label><input type="text" id="transmissionfactor_bup" class="form-control" name="transmissionfactor_bup" readonly required>
           </div>
           <div class="form-group">
              <label>Velocity</label><input type="text" id="velocity_bup" class="form-control" name="velocity_bup" readonly required>
           </div>
            <input type="button" id="calculateBtn" name="calculateBtn" value="Calculate" onclick="calculate_bup()" class="btn btn-info btn-block">
            <input type="submit" id="saveBtn" name="saveBtn" value="Save" onclick="save_bup()"  class="btn btn-success btn-block"> 
            <input type="button" id="delteBtn" name="delteBtn" value="Eliminar" onclick="deleteReg_bup()"  class="btn btn-danger btn-block">                                
            
                                        </div>
                                   </form>
                                </div>
                            </div>
                        </div>  
                    </div>
            </div>
            <div class="col-lg-3">
            <input type="button" id="cleanAllBtn" name="cleanBtn" value="Clean All" onclick="cleanAll_bup()" class="btn btn-warning btn-block">
            <input type="button" id="cleanInputBtn" name="cleanBtn" value="Clean Input Data" onclick="cleanIn_bup()" class="btn btn-warning btn-block">
            <input type="button" id="cleanOutputBtn" name="cleanBtn" value="Clean Output Data" onclick="cleanOut_bup()" class="btn btn-warning btn-block">
            <input type="button" id="cleanSuggestedBtn" name="cleanBtn" value="Limpiar Datos Sugeridos" onclick="cleanSugg_bup()" class="btn btn-warning btn-block">
            
            <input type="hidden" id="opcion_bup" name="opcion_bup"> 
            <input type="hidden" id="id_bup" name="opcion_bup">    
            </div>      
        
            <script>
                
                $(document).ready(function() {
                    
                    /*var parametros = {
                        "idproyect": <% out.print(session.getAttribute("id_proyect"));%>,
                        "form": "4",
                        "opcion" : "5"
                    };
                    
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        beforeSend: function (xhr) {
                            cleanAll_bup();
                            block("Cargado datos...");
                        },
                        success: function(data, status, request){

                            var res = data.split("-");

                            if(res.length != 1){
                                $("#basetemperature_bup").val(res[0]);
                                $("#basepressure_bup").val(res[1]);
                                $("#gasflowingtemp_bup").val(res[2]);
                                $("#gasspecificgra_bup").val(res[3]);
                                $("#pipelineefficiency_bup").val(res[4]);
                                $("#upstreampressure_bup").val(res[5]);
                                $("#flowrate_bup").val(res[6]);
                                $("#internalpipe_bup").val(res[7]);
                                $("#lengthof_bup").val(res[8]);
                                $("#upstreamelevation_bup").val(res[9]);
                                $("#downstreamelevation_bup").val(res[10]);
                                $("#downstreampressure_bup").val(res[11]);
                                $("#transmissionfactor_bup").val(res[12]);
                                $("#velocity_bup").val(res[13]);
                                $("#opcion_bup").val("2"); //editar
                                $("#id_bup").val(res[14]); //editar
                                
                                show_OkDialog($("#load_Dialog_bup"), "Proceso satisfactorio");
                            }else{
                                $("#opcion_bup").val("1"); //Save
                                $("#id_bup").val("");
                                loadSuggested_bup();

                            }
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_bup"), "Error");
                        },
                        complete: function(){
                           unBlock();
                        }
                    });*/
                });
                
                function onchange_Input_bup(inp){
                    var sw = validateDecimal(inp.value);
                    
                    if(sw != true){
                        inp.value = "";
                    }       
                    onchange_Input_zero(inp);
                    cleanOut_bup();
                }
                                
                function cleanOut_bup(){
                    $("#upstreampressure_bup").val("");
                    $("#transmissionfactor_bup").val("");
                    $("#velocity_bup").val("");
                }
        
                function cleanSugg_bup(){
                    $("#basepressure_bup").val("");  
                    $("#basetemperature_bup").val("");   
                }
        
                function cleanIn_bup(){
                    $("#gasflowingtemp_bup").val("");
                    $("#gasspecificgra_bup").val("");
                    $("#pipelineefficiency_bup").val("");
                    $("#downstreampressure_bup").val("");
                    $("#flowrate_bup").val("");
                    $("#internalpipe_bup").val("");
                    $("#lengthof_bup").val("");
                    $("#upstreamelevation_bup").val("");
                    $("#downstreamelevation_bup").val("");
                }
                
                function cleanAll_bup(){
                    cleanIn_bup();
                    cleanSugg_bup();
                    cleanOut_bup();
                }
                
                function save_bup(){

                    var parametros = {
                            "basetemperature_pha" : $("#basetemperature_bup").val(),
                            "basepressure_pha" : $("#basepressure_bup").val(),
                            "gasflowingtemp_pha": $("#gasflowingtemp_bup").val(),
                            "gasspecificgra_pha": $("#gasspecificgra_bup").val(),           
                            "pipelineefficiency_pha": $("#pipelineefficiency_bup").val(),
                            "upstreampressure_pha":$("#upstreampressure_bup").val(),
                            "flowrate_pha": $("#flowrate_bup").val(),
                            "internalpipe_pha": $("#internalpipe_bup").val(),
                            "lengthof_pha": $("#lengthof_bup").val(),
                            "upstreamelevation_pha": $("#upstreamelevation_bup").val(),
                            "downstreamelevation_pha": $("#downstreamelevation_bup").val(),
                            "downstreampressure_pha": $("#downstreampressure_bup").val(),
                            "transmissionfactor_pha": $("#transmissionfactor_bup").val(),
                            "velocity_pha": $("#velocity_bup").val(),
                            "idproyect": <% out.print(session.getAttribute("id_proyect"));%>,
                            "form": "4",
                            "opcion": $("#opcion_bup").val()
                    };

                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        beforeSend: function (xhr) {
                            block("Cargando...");
                        },
                        success: function(data, status, request){
                            $("#id_bup").val(data);
                            show_OkDialog($("#save_Dialog_bup"), "Proceso satisfactorio");
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_bup"), "Error");

                            $("#basetemperature_bup").val(parametros.basetemperature_pha);
                            $("#basepressure_bup").val(parametros.basepressure_pha);
                            $("#gasflowingtemp_bup").val(parametros.gasflowingtemp_pha);
                            $("#gasspecificgra_bup").val(parametros.gasspecificgra_pha);
                            $("#pipelineefficiency_bup").val(parametros.pipelineefficiency_pha);
                            $("#upstreampressure_bup").val(parametros.upstreampressure_pha);
                            $("#flowrate_bup").val(parametros.flowrate_pha);
                            $("#internalpipe_bup").val(parametros.internalpipe_pha);
                            $("#lengthof_bup").val(parametros.lengthof_pha);
                            $("#upstreamelevation_bup").val(parametros.upstreamelevation_pha);
                            $("#downstreamelevation_bup").val(parametros.downstreamelevation_pha);
                            $("#downstreampressure_bup").val(parametros.downstreampressure_pha);
                            $("#transmissionfactor_bup").val(parametros.transmissionfactor_pha);
                            $("#velocity_bup").val(parametros.velocity_pha);
                        },
                        complete: function(){
                            unBlock();
                        }
                    });
                }
                                
                function calculate_bup(){
                    var variables = {
                            "basetemperature_bup" : $("#basetemperature_bup").val(),
                            "basepressure_bup": $("#basepressure_bup").val(),
                            "gasflowingtemp_bup" : $("#gasflowingtemp_bup").val(),
                            "gasspecificgra_bup" : $("#gasspecificgra_bup").val(),
                            "pipelineefficiency_bup" : $("#pipelineefficiency_bup").val(),
                            "downstreampressure_bup" : $("#downstreampressure_bup").val(),
                            "flowrate_bup" : $("#flowrate_bup").val(),
                            "internalpipe_bup" : $("#internalpipe_bup").val(),                            
                            "lengthof_bup" : $("#lengthof_bup").val(),
                            "upstreamelevation_bup" : $("#upstreamelevation_bup").val(),
                            "downstreamelevation_bup" : $("#downstreamelevation_bup").val()
                    };

                    var res = upstreampressureB_Form(variables);
                    
                    $("#upstreampressure_bup").val(res[0]);
                    $("#transmissionfactor_bup").val(res[1]);
                    $("#velocity_bup").val(res[2]);
                    
                    show_OkDialog($("#calculate_Dialog_bup"), "Proceso satisfactorio");
                }

                function loadSuggested_bup(){

                    var parametros = {
                            "idproyect": <% out.print(session.getAttribute("id_proyect"));%>,
                            "opcion" : "4"
                    };
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        beforeSend: function (xhr) {
                            cleanSugg_bup();
                            block("Cargando...");
                        },
                        success: function(data, status, request){
                            show_OkDialog($("#load_Dialog_bup"), "Proceso satisfactorio");
                            var res = data.split("-");

                            $("#basetemperature_bup").val(res[1]);
                            $("#basepressure_bup").val(res[0]);
                            cleanOut_bup();                    
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_bup"), "Error");                            
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function deleteReg_bup(){

                    var parametros = {
                            "id_bup": $("#id_bup").val(),
                            "form": "4",
                            "opcion" : "3"
                    };
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        beforeSend: function (xhr) {
                            cleanSugg_bup();
                            block("Cargando...");
                        },
                        success: function(data, status, request){               
                            cleanAll_bup();
                            show_OkDialog($("#delete_Dialog_bup"), "Proceso satisfactorio");                           
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_bup"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                                
            </script>
            
            <div id="load_Dialog_bup" title="Basic dialog" style='display:none;'>
                <p>Datos cargados exitosamente</p>
            </div>
            
            <div id="save_Dialog_bup" title="Basic dialog" style='display:none;'>
                <p>Datos guardados exitosamente</p>
            </div>
            
            <div id="error_Dialog_bup" title="Basic dialog" style='display:none;'>
                <p>Ha ocurrido un error en el proceso</p>
            </div>
            
            <div id="calculate_Dialog_bup" title="Basic dialog" style='display:none;'>
                <p>Calculo realizado exitosamente</p>
            </div>
            
            <div id="delete_Dialog_bup" title="Basic dialog" style='display:none;'>
                <p>Registro eliminado exitosamente</p>
            </div>
    </body>
</html>