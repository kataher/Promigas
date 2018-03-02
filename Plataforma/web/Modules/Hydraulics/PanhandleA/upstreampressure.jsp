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
        <h2><strong>Hydraulics:</strong> PanhandleA - Upstream Pressure</h2>
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
                                              <label>Presión base:</label><input type="text" id="basepressure_aup" name="basepressure_aup" onchange="onchange_Input_aup(this)" required class="form-control">
                                           </div>
                                            <div class="form-group">
                                              <label>Temperatura base:</label><input type="text" id="basetemperature_aup" name="basetemperature_aup" onchange="onchange_Input_aup(this)" required class="form-control">
                                           </div>
                                           <input type="button" id="load_aup" name="load" value="Cargar" class="btn btn-success" onclick="loadSuggested_aup()">
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
              <label>Gas Temperatura de flujo:</label><input type="text" class="form-control" id="gasflowingtemp_aup" name="gasflowingtemp_aup" onchange="onchange_Input_aup(this)" required>
           </div>
           <div class="form-group">
              <label>Gas Specific Gravity:</label><input type="text" class="form-control" id="gasspecificgra_aup" name="gasspecificgra_aup" onchange="onchange_Input_aup(this)" required>
           </div>
           <div class="form-group">
           <label>Compressibility Factor:</label>
           <input class="form-control" type="text" id="compressibilityf_aup" name="compressibilityf_fr" onchange="onchange_Input_aup(this)" required>
           </div>                                 
           <div class="form-group">
              <label>Pipeline Efficiency Factor</label><input class="form-control" type="text" id="pipelineefficiency_aup" name="pipelineefficiency_aup" onchange="onchange_Input_aup(this)" required>
           </div>
           <div class="form-group">
              <label>Downstream Pressure</label><input class="form-control" type="text" id="downstreampressure_aup" name="downstreampressure_aup" onchange="onchange_Input_aup(this)" required>
           </div>
           <div class="form-group">
              <label>Tasa de flujo</label><input class="form-control" type="text" id="flowrate_aup" name="flowrate_aup" onchange="onchange_Input_aup(this)" required >
           </div>
           <div class="form-group">
              <label>Internal Pipe Diameter</label><input class="form-control" type="text" id="internalpipe_aup" name="internalpipe_aup" onchange="onchange_Input_aup(this)" required>
           </div>
           <div class="form-group">
              <label>Length of Pipeline</label><input type="text" id="lengthof_aup" name="lengthof_aup" onchange="onchange_Input_aup(this)" required  class="form-control">
           </div>
           <div class="form-group">
              <label>Upstream Elevation</label><input class="form-control" type="text" id="upstreamelevation_aup" name="upstreamelevation_aup" onchange="onchange_Input_aup(this)" required>
           </div>
           <div class="form-group">
              <label>Downstream Elevation</label><input class="form-control" type="text" id="downstreamelevation_aup" name="downstreamelevation_aup" onchange="onchange_Input_aup(this)" required>
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
              <label>Upstream Pressure</label><input type="text" id="upstreampressure_aup" class="form-control" name="upstreampressure_aup" readonly required>
           </div>
           <div class="form-group">
              <label>Transmission Factor</label><input type="text" id="transmissionfactor_aup" class="form-control" name="transmissionfactor_aup" readonly required>
           </div>
           <div class="form-group">
              <label>Velocity</label><input type="text" id="velocity_aup" class="form-control" name="velocity_aup" readonly required>
           </div>
            <input type="button" id="calculateBtn" name="calculateBtn" value="Calculate" onclick="calculate_aup()" class="btn btn-info btn-block">
            <input type="submit" id="saveBtn" name="saveBtn" value="Save" onclick="save_aup()"  class="btn btn-success btn-block"> 
            <input type="button" id="delteBtn" name="delteBtn" value="Eliminar" onclick="deleteReg_aup()"  class="btn btn-danger btn-block">                                
            
                                        </div>
                                   </form>
                                </div>
                            </div>
                        </div>  
                    </div>
            </div>
            <div class="col-lg-3">
            <input type="button" id="cleanAllBtn" name="cleanBtn" value="Clean All" onclick="cleanAll_aup()" class="btn btn-warning btn-block">
            <input type="button" id="cleanInputBtn" name="cleanBtn" value="Clean Input Data" onclick="cleanIn_aup()" class="btn btn-warning btn-block">
            <input type="button" id="cleanOutputBtn" name="cleanBtn" value="Clean Output Data" onclick="cleanOut_aup()" class="btn btn-warning btn-block">
            <input type="button" id="cleanSuggestedBtn" name="cleanBtn" value="Limpiar Datos Sugeridos" onclick="cleanSugg_aup()" class="btn btn-warning btn-block">
            
            <input type="hidden" id="opcion_aup" name="opcion_aup"> 
            <input type="hidden" id="id_aup" name="opcion_aup">    
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
                            cleanAll_aup();
                            block("Cargado datos...");
                        },
                        success: function(data, status, request){

                            var res = data.split("-");

                            if(res.length != 1){
                                $("#basetemperature_aup").val(res[0]);
                                $("#basepressure_aup").val(res[1]);
                                $("#gasflowingtemp_aup").val(res[2]);
                                $("#gasspecificgra_aup").val(res[3]);
                                $("#pipelineefficiency_aup").val(res[4]);
                                $("#upstreampressure_aup").val(res[5]);
                                $("#flowrate_aup").val(res[6]);
                                $("#internalpipe_aup").val(res[7]);
                                $("#lengthof_aup").val(res[8]);
                                $("#upstreamelevation_aup").val(res[9]);
                                $("#downstreamelevation_aup").val(res[10]);
                                $("#downstreampressure_aup").val(res[11]);
                                $("#transmissionfactor_aup").val(res[12]);
                                $("#velocity_aup").val(res[13]);
                                $("#opcion_aup").val("2"); //editar
                                $("#id_aup").val(res[14]); //editar
                                
                                show_OkDialog($("#load_Dialog_aup"), "Proceso satisfactorio");
                            }else{
                                $("#opcion_aup").val("1"); //Save
                                $("#id_aup").val("");
                                loadSuggested_aup();

                            }
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_aup"), "Error");
                        },
                        complete: function(){
                           unBlock();
                        }
                    });*/
                });
                
                function onchange_Input_aup(inp){
                    var sw = validateDecimal(inp.value);
                    
                    if(sw != true){
                        inp.value = "";
                    }  
                    onchange_Input_zero(inp);
                    cleanOut_aup();
                }
                                
                function cleanOut_aup(){
                    $("#upstreampressure_aup").val("");
                    $("#transmissionfactor_aup").val("");
                    $("#velocity_aup").val("");
                }
        
                function cleanSugg_aup(){
                    $("#basepressure_aup").val("");  
                    $("#basetemperature_aup").val("");   
                }
        
                function cleanIn_aup(){
                    $("#gasflowingtemp_aup").val("");
                    $("#gasspecificgra_aup").val("");
                    $("#pipelineefficiency_aup").val("");
                    $("#downstreampressure_aup").val("");
                    $("#flowrate_aup").val("");
                    $("#internalpipe_aup").val("");
                    $("#lengthof_aup").val("");
                    $("#upstreamelevation_aup").val("");
                    $("#downstreamelevation_aup").val("");
                }
                
                function cleanAll_aup(){
                    cleanIn_aup();
                    cleanSugg_aup();
                    cleanOut_aup();
                }
                
                function save_aup(){

                    var parametros = {
                            "basetemperature_pha" : $("#basetemperature_aup").val(),
                            "basepressure_pha" : $("#basepressure_aup").val(),
                            "gasflowingtemp_pha": $("#gasflowingtemp_aup").val(),
                            "gasspecificgra_pha": $("#gasspecificgra_aup").val(),           
                            "pipelineefficiency_pha": $("#pipelineefficiency_aup").val(),
                            "upstreampressure_pha":$("#upstreampressure_aup").val(),
                            "flowrate_pha": $("#flowrate_aup").val(),
                            "internalpipe_pha": $("#internalpipe_aup").val(),
                            "lengthof_pha": $("#lengthof_aup").val(),

                            "upstreamelevation_pha": $("#upstreamelevation_aup").val(),
                            "downstreamelevation_pha": $("#downstreamelevation_aup").val(),
                            "downstreampressure_pha": $("#downstreampressure_aup").val(),
                            "transmissionfactor_pha": $("#transmissionfactor_aup").val(),
                            "velocity_pha": $("#velocity_aup").val(),
                            "idproyect": <% out.print(session.getAttribute("id_proyect"));%>,
                            "form": "4",
                            "opcion": $("#opcion_aup").val()
                    };

                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        beforeSend: function (xhr) {
                            block("Cargando...");
                        },
                        success: function(data, status, request){
                            $("#id_aup").val(data);
                            show_OkDialog($("#save_Dialog_aup"), "Proceso satisfactorio");
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_aup"), "Error");

                            $("#basetemperature_aup").val(parametros.basetemperature_pha);
                            $("#basepressure_aup").val(parametros.basepressure_pha);
                            $("#gasflowingtemp_aup").val(parametros.gasflowingtemp_pha);
                            $("#gasspecificgra_aup").val(parametros.gasspecificgra_pha);
                            $("#pipelineefficiency_aup").val(parametros.pipelineefficiency_pha);
                            $("#upstreampressure_aup").val(parametros.upstreampressure_pha);
                            $("#flowrate_aup").val(parametros.flowrate_pha);
                            $("#internalpipe_aup").val(parametros.internalpipe_pha);
                            $("#lengthof_aup").val(parametros.lengthof_pha);
                            $("#upstreamelevation_aup").val(parametros.upstreamelevation_pha);
                            $("#downstreamelevation_aup").val(parametros.downstreamelevation_pha);
                            $("#downstreampressure_aup").val(parametros.downstreampressure_pha);
                            $("#transmissionfactor_aup").val(parametros.transmissionfactor_pha);
                            $("#velocity_aup").val(parametros.velocity_pha);
                        },
                        complete: function(){
                            unBlock();
                        }
                    });
                }
                                
                function calculate_aup(){
                    var variables = {
                            "basetemperature_aup" : $("#basetemperature_aup").val(),
                            "basepressure_aup": $("#basepressure_aup").val(),
                            "gasflowingtemp_aup" : $("#gasflowingtemp_aup").val(),
                            "gasspecificgra_aup" : $("#gasspecificgra_aup").val(),
                            "pipelineefficiency_aup" : $("#pipelineefficiency_aup").val(),
                            "downstreampressure_aup" : $("#downstreampressure_aup").val(),
                            "flowrate_aup" : $("#flowrate_aup").val(),
                            "internalpipe_aup" : $("#internalpipe_aup").val(),                            
                            "lengthof_aup" : $("#lengthof_aup").val(),
                            "upstreamelevation_aup" : $("#upstreamelevation_aup").val(),
                            "downstreamelevation_aup" : $("#downstreamelevation_aup").val()
                    };

                    var res = upstreampressure_Form(variables);
                    
                    $("#upstreampressure_aup").val(res[0]);
                    $("#transmissionfactor_aup").val(res[1]);
                    $("#velocity_aup").val(res[2]);
                    
                    show_OkDialog($("#calculate_Dialog_aup"), "Proceso satisfactorio");
                }

                function loadSuggested_aup(){

                    var parametros = {
                            "idproyect": <% out.print(session.getAttribute("id_proyect"));%>,
                            "opcion" : "4"
                    };
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        beforeSend: function (xhr) {
                            cleanSugg_aup();
                            block("Cargando...");
                        },
                        success: function(data, status, request){
                            show_OkDialog($("#load_Dialog_aup"), "Proceso satisfactorio");
                            var res = data.split("-");

                            $("#basetemperature_aup").val(res[1]);
                            $("#basepressure_aup").val(res[0]);
                            cleanOut_aup();                    
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_aup"), "Error");                            
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function deleteReg_aup(){

                    var parametros = {
                            "id_aup": $("#id_aup").val(),
                            "form": "4",
                            "opcion" : "3"
                    };
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        beforeSend: function (xhr) {
                            cleanSugg_aup();
                            block("Cargando...");
                        },
                        success: function(data, status, request){               
                            cleanAll_aup();
                            show_OkDialog($("#delete_Dialog_aup"), "Proceso satisfactorio");                           
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_aup"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                                
            </script>
            
            <div id="load_Dialog_aup" title="Basic dialog" style='display:none;'>
                <p>Datos cargados exitosamente</p>
            </div>
            
            <div id="save_Dialog_aup" title="Basic dialog" style='display:none;'>
                <p>Datos guardados exitosamente</p>
            </div>
            
            <div id="error_Dialog_aup" title="Basic dialog" style='display:none;'>
                <p>Ha ocurrido un error en el proceso</p>
            </div>
            
            <div id="calculate_Dialog_aup" title="Basic dialog" style='display:none;'>
                <p>Calculo realizado exitosamente</p>
            </div>
            
            <div id="delete_Dialog_aup" title="Basic dialog" style='display:none;'>
                <p>Registro eliminado exitosamente</p>
            </div>
    </body>
</html>