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
        <h2><strong>Hydraulics:</strong> PanhandleB - Internal Pipe Diameter</h2><hr>
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
              <label>Temperatura base:</label><input type="text" class="form-control" id="basetemperature_bip" name="basetemperature_bip" onchange="onchange_Input_bip(this)" required>
              </div>
            <div class="form-group">
              <label>Presión base:</label><input type="text" class="form-control" id="basepressure_bip" name="basepressure_bip" onchange="onchange_Input_bip(this)" required>
           </div>
           
           <input type="button" id="load_bip" name="load_bip" value="Cargar" onclick="loadSuggested_bip()" class="btn btn-success">
            
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
                                          <label>Gas Temperatura de flujo:</label><input type="text" id="gasflowingtemp_bip" name="gasflowingtemp_bip" onchange="onchange_Input_bip(this)" required class="form-control">
                                       </div>
                                       <div class="form-group">
                                          <label>Gas Specific Gravity:</label><input type="text" id="gasspecificgra_bip" name="gasspecificgra_bip" onchange="onchange_Input_bip(this)" required class="form-control">
                                       </div>
                                       <div class="form-group">
                                        <label>Compressibility Factor:</label>
                                        <input class="form-control" type="text" id="compressibilityf_bip" name="compressibilityf_bip" onchange="onchange_Input_bip(this)" required>
                                        </div>   
                                       <div class="form-group">
                                          <label>Pipeline Efficiency Factor</label><input type="text" id="pipelineefficiency_bip" name="pipelineefficiency_bip" onchange="onchange_Input_bip(this)" required class="form-control">
                                       </div>
                                       <div class="form-group">
                                          <label>Upstream Pressure</label><input type="text" id="upstreampressure_bip" name="upstreampressure_bip" onchange="onchange_Input_bip(this)" required class="form-control">
                                       </div> 
                                       <div class="form-group">
                                          <label>Tasa de flujo</label><input type="text" id="flowrate_bip" name="flowrate_bip" onchange="onchange_Input_bip(this)" required  class="form-control">
                                       </div>
                                       <div class="form-group">
                                          <label>Downstream Pressure</label><input type="text" id="downstreampressure_bip" name="downstreampressure_bip" onchange="onchange_Input_bip(this)" required class="form-control">
                                       </div> 
                                       <div class="form-group">
                                          <label>Length of Pipeline</label><input type="text" id="lengthof_bip" name="lengthof_bip" onchange="onchange_Input_bip(this)" required class="form-control">
                                       </div>
                                       <div class="form-group">
                                          <label>Upstream Elevation</label><input type="text" id="upstreamelevation_bip" name="upstreamelevation_bip" onchange="onchange_Input_bip(this)" required class="form-control">
                                       </div>
                                       <div class="form-group">
                                          <label>Downstream Elevation</label><input type="text" id="downstreamelevation_bip" name="downstreamelevation_bip" onchange="onchange_Input_bip(this)" required class="form-control">
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
              <label>Internal Pipe Diameter</label><input type="text" class="form-control" id="internalpipe_bip" name="internalpipe_bip" readonly required>
           </div>
            <div class="form-group">
              <label> Transmission Factor</label><input type="text" class="form-control" id="transmissionfactor_bip" name="transmissionfactor_bip" readonly required>
           </div>
           <div class="form-group">
           <label>Velocity</label><input type="text" id="velocity_bip" class="form-control" name="velocity_bip" readonly required>
           </div>
             <input type="button" id="calculateBtn" name="calculateBtn" value="Calculate" onclick="calculate_bip()"  class="btn btn-info btn-block">
            <input type="submit" id="saveBtn" name="saveBtn" value="Save" onclick="save_bip()" class="btn btn-success btn-block"> 
            <input type="button" id="delteBtn" name="delteBtn" value="Eliminar" onclick="deleteReg_bip()" class="btn btn-danger btn-block">
          
            
                                        </div>
                                   </form>
                                </div>
                            </div>
                        </div>  
                    </div>
           

            </div>
            <div class="col-md-3">
            <input type="button" id="cleanAllBtn" name="cleanBtn" value="Clean All" onclick="cleanAll_bip()"  class="btn btn-warning btn-block"> 
            <input type="button" id="cleanInputBtn" name="cleanBtn" value="Clean Input Data" onclick="cleanIn_bip()"  class="btn btn-warning btn-block">
            <input type="button" id="cleanOutputBtn" name="cleanBtn" value="Clean Output Data" onclick="cleanOut_bip()"  class="btn btn-warning btn-block">
            <input type="button" id="cleanSuggestedBtn" name="cleanBtn" value="Limpiar Datos Sugeridos" onclick="cleanSugg_bip()"  class="btn btn-warning btn-block">
            
            <input type="hidden" id="opcion_bip" name="opcion_bip"> 
            <input type="hidden" id="id_bip" name="opcion_bip"> 
            </div>     
        
            <script>
                
                $(document).ready(function() {
                    
                    /*var parametros = {
                        "idproyect": <% out.print(session.getAttribute("id_proyect"));%>,
                        "form": "3",
                        "opcion" : "5"
                    };
                    
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        beforeSend: function (xhr) {
                            cleanAll_bip();
                            block("Cargado datos...");
                        },
                        success: function(data, status, request){

                            var res = data.split("-");

                            if(res.length != 1){
                                $("#basetemperature_bip").val(res[0]);
                                $("#basepressure_bip").val(res[1]);
                                $("#gasflowingtemp_bip").val(res[2]);
                                $("#gasspecificgra_bip").val(res[3]);
                                $("#pipelineefficiency_bip").val(res[4]);
                                $("#upstreampressure_bip").val(res[5]);
                                $("#flowrate_bip").val(res[6]);
                                $("#internalpipe_bip").val(res[7]);
                                $("#lengthof_bip").val(res[8]);
                                $("#upstreamelevation_bip").val(res[9]);
                                $("#downstreamelevation_bip").val(res[10]);
                                $("#downstreampressure_bip").val(res[11]);
                                $("#transmissionfactor_bip").val(res[12]);
                                $("#velocity_bip").val(res[13]);
                                $("#opcion_bip").val("2"); //editar
                                $("#id_bip").val(res[14]); //editar
                                
                                show_OkDialog($("#load_Dialog_bip"), "Proceso satisfactorio");
                            }else{
                                $("#opcion_bip").val("1"); //Save
                                $("#id_bip").val("");
                                loadSuggested_bip();

                            }
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_bip"), "Error");
                        },
                        complete: function(){
                           unBlock();
                        }
                    });*/
                });
                
                function onchange_Input_bip(inp){
                    var sw = validateDecimal(inp.value);
                    
                    if(sw != true){
                        inp.value = "";
                    }       
                    onchange_Input_zero(inp);
                    cleanOut_bip();
                }
                                
                function cleanOut_bip(){
                    $("#internalpipe_bip").val("");
                    $("#transmissionfactor_bip").val("");
                    $("#velocity_bip").val("");
                }
        
                function cleanSugg_bip(){
                    $("#basepressure_bip").val("");  
                    $("#basetemperature_bip").val("");   
                }
        
                function cleanIn_bip(){
                    $("#gasflowingtemp_bip").val("");
                    $("#gasspecificgra_bip").val("");
                    $("#pipelineefficiency_bip").val("");
                    $("#upstreampressure_bip").val("");
                    $("#downstreampressure_bip").val("");
                    $("#flowrate_bip").val("");
                    $("#lengthof_bip").val("");
                    $("#upstreamelevation_bip").val("");
                    $("#downstreamelevation_bip").val("");
                }
                
                function cleanAll_bip(){
                    cleanIn_bip();
                    cleanSugg_bip();
                    cleanOut_bip();
                }
                
                function save_bip(){

                    var parametros = {
                            "basetemperature_pha" : $("#basetemperature_bip").val(),
                            "basepressure_pha" : $("#basepressure_bip").val(),
                            "gasflowingtemp_pha": $("#gasflowingtemp_bip").val(),
                            "gasspecificgra_pha": $("#gasspecificgra_bip").val(),           
                            "pipelineefficiency_pha": $("#pipelineefficiency_bip").val(),
                            "upstreampressure_pha":$("#upstreampressure_bip").val(),
                            "flowrate_pha": $("#flowrate_bip").val(),
                            "internalpipe_pha": $("#internalpipe_bip").val(),
                            "lengthof_pha": $("#lengthof_bip").val(),

                            "upstreamelevation_pha": $("#upstreamelevation_bip").val(),
                            "downstreamelevation_pha": $("#downstreamelevation_bip").val(),
                            "downstreampressure_pha": $("#downstreampressure_bip").val(),
                            "transmissionfactor_pha": $("#transmissionfactor_bip").val(),
                            "velocity_pha": $("#velocity_bip").val(),
                            "idproyect": <% out.print(session.getAttribute("id_proyect"));%>,
                            "form": "3",
                            "opcion": $("#opcion_bip").val()
                    };

                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        beforeSend: function (xhr) {
                            block("Cargando...");
                        },
                        success: function(data, status, request){
                            $("#id_bip").val(data);
                            show_OkDialog($("#save_Dialog_bip"), "Proceso satisfactorio");
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_bip"), "Error");

                            $("#basetemperature_bip").val(parametros.basetemperature_pha);
                            $("#basepressure_bip").val(parametros.basepressure_pha);
                            $("#gasflowingtemp_bip").val(parametros.gasflowingtemp_pha);
                            $("#gasspecificgra_bip").val(parametros.gasspecificgra_pha);
                            $("#pipelineefficiency_bip").val(parametros.pipelineefficiency_pha);
                            $("#upstreampressure_bip").val(parametros.upstreampressure_pha);
                            $("#flowrate_bip").val(parametros.flowrate_pha);
                            $("#internalpipe_bip").val(parametros.internalpipe_pha);
                            $("#lengthof_bip").val(parametros.lengthof_pha);
                            $("#upstreamelevation_bip").val(parametros.upstreamelevation_pha);
                            $("#downstreamelevation_bip").val(parametros.downstreamelevation_pha);
                            $("#downstreampressure_bip").val(parametros.downstreampressure_pha);
                            $("#transmissionfactor_bip").val(parametros.transmissionfactor_pha);
                            $("#velocity_bip").val(parametros.velocity_pha);
                        },
                        complete: function(){
                            unBlock();
                        }
                    });
                }
                                
                function calculate_bip(){
                    var variables = {
                            "basetemperature_bip" : $("#basetemperature_bip").val(),
                            "basepressure_bip": $("#basepressure_bip").val(),
                            "gasflowingtemp_bip" : $("#gasflowingtemp_bip").val(),
                            "gasspecificgra_bip" : $("#gasspecificgra_bip").val(),
                            "pipelineefficiency_bip" : $("#pipelineefficiency_bip").val(),
                            "upstreampressure_bip" : $("#upstreampressure_bip").val(),
                            "flowrate_bip" : $("#flowrate_bip").val(),
                            "downstreampressure_bip" : $("#downstreampressure_bip").val(),
                            "lengthof_bip" : $("#lengthof_bip").val(),
                            "upstreamelevation_bip" : $("#upstreamelevation_bip").val(),
                            "downstreamelevation_bip" : $("#downstreamelevation_bip").val()
                    };

                    var res = internalpipediameterB_Form(variables);
                    
                    $("#internalpipe_bip").val(res[0]);
                    $("#transmissionfactor_bip").val(res[1]);
                    $("#velocity_bip").val(res[2]);
                    
                    show_OkDialog($("#calculate_Dialog_bip"), "Proceso satisfactorio");
                }

                function loadSuggested_bip(){

                    var parametros = {
                            "idproyect": <% out.print(session.getAttribute("id_proyect"));%>,
                            "opcion" : "4"
                    };
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        beforeSend: function (xhr) {
                            cleanSugg_bip();
                            block("Cargando...");
                        },
                        success: function(data, status, request){
                            show_OkDialog($("#load_Dialog_bip"), "Proceso satisfactorio");
                            var res = data.split("-");

                            $("#basetemperature_bip").val(res[1]);
                            $("#basepressure_bip").val(res[0]);
                            cleanOut_bip();                    
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_bip"), "Error");                            
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function deleteReg_bip(){

                    var parametros = {
                            "id_bip": $("#id_bip").val(),
                            "form": "3",
                            "opcion" : "3"
                    };
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        beforeSend: function (xhr) {
                            cleanSugg_bip();
                            block("Cargando...");
                        },
                        success: function(data, status, request){               
                            cleanAll_bip();
                            show_OkDialog($("#delete_Dialog_bip"), "Proceso satisfactorio");                           
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_bip"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                                
            </script>
            
            <div id="load_Dialog_bip" title="Basic dialog" style='display:none;'>
                <p>Datos cargados exitosamente</p>
            </div>
            
            <div id="save_Dialog_bip" title="Basic dialog" style='display:none;'>
                <p>Datos guardados exitosamente</p>
            </div>
            
            <div id="error_Dialog_bip" title="Basic dialog" style='display:none;'>
                <p>Ha ocurrido un error en el proceso</p>
            </div>
            
            <div id="calculate_Dialog_bip" title="Basic dialog" style='display:none;'>
                <p>Calculo realizado exitosamente</p>
            </div>
            
            <div id="delete_Dialog_bip" title="Basic dialog" style='display:none;'>
                <p>Registro eliminado exitosamente</p>
            </div>
    </body>
</html>