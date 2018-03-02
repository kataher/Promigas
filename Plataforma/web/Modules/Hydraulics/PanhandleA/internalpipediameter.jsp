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
        <h2><strong>Hydraulics:</strong> PanhandleA - Internal Pipe Diameter</h2><hr>
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
              <label>Temperatura base:</label><input type="text" class="form-control" id="basetemperature_aip" name="basetemperature_aip" onchange="onchange_Input_aip(this)" required>
              </div>
            <div class="form-group">
              <label>Presión base:</label><input type="text" class="form-control" id="basepressure_aip" name="basepressure_aip" onchange="onchange_Input_aip(this)" required>
           </div>
           
           <input type="button" id="load_aip" name="load_aip" value="Cargar" onclick="loadSuggested_aip()" class="btn btn-success">
            
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
                                          <label>Gas Temperatura de flujo:</label><input type="text" id="gasflowingtemp_aip" name="gasflowingtemp_aip" onchange="onchange_Input_aip(this)" required class="form-control">
                                       </div>
                                       <div class="form-group">
                                          <label>Gas Specific Gravity:</label><input type="text" id="gasspecificgra_aip" name="gasspecificgra_aip" onchange="onchange_Input_aip(this)" required class="form-control">
                                       </div>
                                      <!-- <div class="form-group">
                                        <label>Compressibility Factor:</label>
                                        <input class="form-control" type="text" id="compressibilityf_aip" name="compressibilityf_aip" onchange="onchange_Input_aip(this)" required>
                                        </div>   -->
                                       <div class="form-group">
                                          <label>Pipeline Efficiency Factor</label><input type="text" id="pipelineefficiency_aip" name="pipelineefficiency_aip" onchange="onchange_Input_aip(this)" required class="form-control">
                                       </div>
                                       <div class="form-group">
                                          <label>Upstream Pressure</label><input type="text" id="upstreampressure_aip" name="upstreampressure_aip" onchange="onchange_Input_aip(this)" required class="form-control">
                                       </div> 
                                       <div class="form-group">
                                          <label>Tasa de flujo</label><input type="text" id="flowrate_aip" name="flowrate_aip" onchange="onchange_Input_aip(this)" required  class="form-control">
                                       </div>
                                       <div class="form-group">
                                          <label>Downstream Pressure</label><input type="text" id="downstreampressure_aip" name="downstreampressure_aip" onchange="onchange_Input_aip(this)" required class="form-control">
                                       </div> 
                                       <div class="form-group">
                                          <label>Length of Pipeline</label><input type="text" id="lengthof_aip" name="lengthof_aip" onchange="onchange_Input_aip(this)" required class="form-control">
                                       </div>
                                       <div class="form-group">
                                          <label>Upstream Elevation</label><input type="text" id="upstreamelevation_aip" name="upstreamelevation_aip" onchange="onchange_Input_aip(this)" required class="form-control">
                                       </div>
                                       <div class="form-group">
                                          <label>Downstream Elevation</label><input type="text" id="downstreamelevation_aip" name="downstreamelevation_aip" onchange="onchange_Input_aip(this)" required class="form-control">
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
              <label>Internal Pipe Diameter</label><input type="text" class="form-control" id="internalpipe_aip" name="internalpipe_aip" readonly required>
           </div>
            <div class="form-group">
              <label> Transmission Factor</label><input type="text" class="form-control" id="transmissionfactor_aip" name="transmissionfactor_aip" readonly required>
           </div>
           <div class="form-group">
           <label>Velocity</label><input type="text" id="velocity_aip" class="form-control" name="velocity_aip" readonly required>
           </div>
             <input type="button" id="calculateBtn" name="calculateBtn" value="Calculate" onclick="calculate_aip()"  class="btn btn-info btn-block">
            <input type="submit" id="saveBtn" name="saveBtn" value="Save" onclick="save_aip()" class="btn btn-success btn-block"> 
            <input type="button" id="delteBtn" name="delteBtn" value="Eliminar" onclick="deleteReg_aip()" class="btn btn-danger btn-block">
          
            
                                        </div>
                                   </form>
                                </div>
                            </div>
                        </div>  
                    </div>
           

            </div>
            <div class="col-md-3">
            <input type="button" id="cleanAllBtn" name="cleanBtn" value="Clean All" onclick="cleanAll_aip()"  class="btn btn-warning btn-block"> 
            <input type="button" id="cleanInputBtn" name="cleanBtn" value="Clean Input Data" onclick="cleanIn_aip()"  class="btn btn-warning btn-block">
            <input type="button" id="cleanOutputBtn" name="cleanBtn" value="Clean Output Data" onclick="cleanOut_aip()"  class="btn btn-warning btn-block">
            <input type="button" id="cleanSuggestedBtn" name="cleanBtn" value="Limpiar Datos Sugeridos" onclick="cleanSugg_aip()"  class="btn btn-warning btn-block">
            
            <input type="hidden" id="opcion_aip" name="opcion_aip"> 
            <input type="hidden" id="id_aip" name="opcion_aip"> 
            </div>     
        
            <script>
                
                $(document).ready(function() {
                    /*
                    var parametros = {
                        "idproyect": <% out.print(session.getAttribute("id_proyect"));%>,
                        "form": "3",
                        "opcion" : "5"
                    };
                    
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        beforeSend: function (xhr) {
                            cleanAll_aip();
                            block("Cargado datos...");
                        },
                        success: function(data, status, request){

                            var res = data.split("-");

                            if(res.length != 1){
                                $("#basetemperature_aip").val(res[0]);
                                $("#basepressure_aip").val(res[1]);
                                $("#gasflowingtemp_aip").val(res[2]);
                                $("#gasspecificgra_aip").val(res[3]);
                                $("#pipelineefficiency_aip").val(res[4]);
                                $("#upstreampressure_aip").val(res[5]);
                                $("#flowrate_aip").val(res[6]);
                                $("#internalpipe_aip").val(res[7]);
                                $("#lengthof_aip").val(res[8]);
                                $("#upstreamelevation_aip").val(res[9]);
                                $("#downstreamelevation_aip").val(res[10]);
                                $("#downstreampressure_aip").val(res[11]);
                                $("#transmissionfactor_aip").val(res[12]);
                                $("#velocity_aip").val(res[13]);
                                $("#opcion_aip").val("2"); //editar
                                $("#id_aip").val(res[14]); //editar
                                
                                show_OkDialog($("#load_Dialog_aip"), "Proceso satisfactorio");
                            }else{
                                $("#opcion_aip").val("1"); //Save
                                $("#id_aip").val("");
                                loadSuggested_aip();

                            }
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_aip"), "Error");
                        },
                        complete: function(){
                           unBlock();
                        }
                    });*/
                });
                
                function onchange_Input_aip(inp){
                    var sw = validateDecimal(inp.value);
                    
                    if(sw != true){
                        inp.value = "";
                    }    
                    onchange_Input_zero(inp);
                    cleanOut_aip();
                }
                                
                function cleanOut_aip(){
                    $("#internalpipe_aip").val("");
                    $("#transmissionfactor_aip").val("");
                    $("#velocity_aip").val("");
                }
        
                function cleanSugg_aip(){
                    $("#basepressure_aip").val("");  
                    $("#basetemperature_aip").val("");   
                }
        
                function cleanIn_aip(){
                    $("#gasflowingtemp_aip").val("");
                    $("#gasspecificgra_aip").val("");
                    $("#pipelineefficiency_aip").val("");
                    $("#upstreampressure_aip").val("");
                    $("#downstreampressure_aip").val("");
                    $("#flowrate_aip").val("");
                    $("#lengthof_aip").val("");
                    $("#upstreamelevation_aip").val("");
                    $("#downstreamelevation_aip").val("");
                }
                
                function cleanAll_aip(){
                    cleanIn_aip();
                    cleanSugg_aip();
                    cleanOut_aip();
                }
                
                function save_aip(){

                    var parametros = {
                            "basetemperature_pha" : $("#basetemperature_aip").val(),
                            "basepressure_pha" : $("#basepressure_aip").val(),
                            "gasflowingtemp_pha": $("#gasflowingtemp_aip").val(),
                            "gasspecificgra_pha": $("#gasspecificgra_aip").val(),           
                            "pipelineefficiency_pha": $("#pipelineefficiency_aip").val(),
                            "upstreampressure_pha":$("#upstreampressure_aip").val(),
                            "flowrate_pha": $("#flowrate_aip").val(),
                            "internalpipe_pha": $("#internalpipe_aip").val(),
                            "lengthof_pha": $("#lengthof_aip").val(),

                            "upstreamelevation_pha": $("#upstreamelevation_aip").val(),
                            "downstreamelevation_pha": $("#downstreamelevation_aip").val(),
                            "downstreampressure_pha": $("#downstreampressure_aip").val(),
                            "transmissionfactor_pha": $("#transmissionfactor_aip").val(),
                            "velocity_pha": $("#velocity_aip").val(),
                            "idproyect": <% out.print(session.getAttribute("id_proyect"));%>,
                            "form": "3",
                            "opcion": $("#opcion_aip").val()
                    };

                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        beforeSend: function (xhr) {
                            block("Cargando...");
                        },
                        success: function(data, status, request){
                            $("#id_aip").val(data);
                            show_OkDialog($("#save_Dialog_aip"), "Proceso satisfactorio");
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_aip"), "Error");

                            $("#basetemperature_aip").val(parametros.basetemperature_pha);
                            $("#basepressure_aip").val(parametros.basepressure_pha);
                            $("#gasflowingtemp_aip").val(parametros.gasflowingtemp_pha);
                            $("#gasspecificgra_aip").val(parametros.gasspecificgra_pha);
                            $("#pipelineefficiency_aip").val(parametros.pipelineefficiency_pha);
                            $("#upstreampressure_aip").val(parametros.upstreampressure_pha);
                            $("#flowrate_aip").val(parametros.flowrate_pha);
                            $("#internalpipe_aip").val(parametros.internalpipe_pha);
                            $("#lengthof_aip").val(parametros.lengthof_pha);
                            $("#upstreamelevation_aip").val(parametros.upstreamelevation_pha);
                            $("#downstreamelevation_aip").val(parametros.downstreamelevation_pha);
                            $("#downstreampressure_aip").val(parametros.downstreampressure_pha);
                            $("#transmissionfactor_aip").val(parametros.transmissionfactor_pha);
                            $("#velocity_aip").val(parametros.velocity_pha);
                        },
                        complete: function(){
                            unBlock();
                        }
                    });
                }
                                
                function calculate_aip(){
                    var variables = {
                            "basetemperature_aip" : $("#basetemperature_aip").val(),
                            "basepressure_aip": $("#basepressure_aip").val(),
                            "gasflowingtemp_aip" : $("#gasflowingtemp_aip").val(),
                            "gasspecificgra_aip" : $("#gasspecificgra_aip").val(),
                            "pipelineefficiency_aip" : $("#pipelineefficiency_aip").val(),
                            "upstreampressure_aip" : $("#upstreampressure_aip").val(),
                            "flowrate_aip" : $("#flowrate_aip").val(),
                            "downstreampressure_aip" : $("#downstreampressure_aip").val(),
                            "lengthof_aip" : $("#lengthof_aip").val(),
                            "upstreamelevation_aip" : $("#upstreamelevation_aip").val(),
                            "downstreamelevation_aip" : $("#downstreamelevation_aip").val()
                    };

                    var res = internalpipediameter_Form(variables);
                    
                    $("#internalpipe_aip").val(res[0]);
                    $("#transmissionfactor_aip").val(res[1]);
                    $("#velocity_aip").val(res[2]);
                    
                    show_OkDialog($("#calculate_Dialog_aip"), "Proceso satisfactorio");
                }

                function loadSuggested_aip(){

                    var parametros = {
                            "idproyect": <% out.print(session.getAttribute("id_proyect"));%>,
                            "opcion" : "4"
                    };
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        beforeSend: function (xhr) {
                            cleanSugg_aip();
                            block("Cargando...");
                        },
                        success: function(data, status, request){
                            show_OkDialog($("#load_Dialog_aip"), "Proceso satisfactorio");
                            var res = data.split("-");

                            $("#basetemperature_aip").val(res[1]);
                            $("#basepressure_aip").val(res[0]);
                            cleanOut_aip();                    
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_aip"), "Error");                            
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function deleteReg_aip(){

                    var parametros = {
                            "id_aip": $("#id_aip").val(),
                            "form": "3",
                            "opcion" : "3"
                    };
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        beforeSend: function (xhr) {
                            cleanSugg_aip();
                            block("Cargando...");
                        },
                        success: function(data, status, request){               
                            cleanAll_aip();
                            show_OkDialog($("#delete_Dialog_aip"), "Proceso satisfactorio");                           
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_aip"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                                
            </script>
            
            <div id="load_Dialog_aip" title="Basic dialog" style='display:none;'>
                <p>Datos cargados exitosamente</p>
            </div>
            
            <div id="save_Dialog_aip" title="Basic dialog" style='display:none;'>
                <p>Datos guardados exitosamente</p>
            </div>
            
            <div id="error_Dialog_aip" title="Basic dialog" style='display:none;'>
                <p>Ha ocurrido un error en el proceso</p>
            </div>
            
            <div id="calculate_Dialog_aip" title="Basic dialog" style='display:none;'>
                <p>Calculo realizado exitosamente</p>
            </div>
            
            <div id="delete_Dialog_aip" title="Basic dialog" style='display:none;'>
                <p>Registro eliminado exitosamente</p>
            </div>
    </body>
</html>