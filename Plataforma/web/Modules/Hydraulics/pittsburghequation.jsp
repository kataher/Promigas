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
        <h2><strong>Hydraulics:</strong> Pittsburgh Equation - Downstream Pressure</h2>
        <hr>
         <div class="col-lg-14">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Datos de Entrada
                        </div>
            <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
            <div class="form-group">
            <label>Upstream Pressure:</label>
            <input class="form-control" type="text" id="upstreampressure_pe" name="upstreampressure_pe" onchange="onchange_Input_pe(this)" required>
            </div>
            <div class="form-group">
            <label>Tasa de flujo:</label>
            <input class="form-control" type="text" id="flowrate_pe" name="flowrate_pe" onchange="onchange_Input_pe(this)" required >
            </div>
            <div class="form-group">
            <label>Internal Pipe Diameter:</label>
            <br><input class="form-control" type="text" id="internalpipe_pe" name="internalpipe_pe" onchange="onchange_Input_pe(this)" required>
            </div>
            <div class="form-group">
            <label>Length of Pipeline:</label>
            <input class="form-control" type="text" id="lengthof_pe" name="lengthof_pe" onchange="onchange_Input_pe(this)" required>
            </div>
            <div class="form-group">
            <label>Gas Specific Gravity:</label>
            <input class="form-control" type="text" id="gasspecificgra_pe" name="gasspecificgra_pe" onchange="onchange_Input_pe(this)" required>
            </div>
                            </div>
            </div>
            </div>
      </div>
            <div class="col-lg-9">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Resultados
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
             <div class="form-group">
            <label>Downstream Pressure:</label>
            <input type="text" id="downstreampressure_pe" name="downstreampressure_pe" readonly required class="form-control">
            </div>
            </div>
                           </div>
                            <div class ="col-xs-4">
                  <input type="button" id="calculateBtn" name="calculateBtn" value="Calculate" onclick="calculate_pe()" class="btn btn-info btn-block">
                  </div> 
                   <div class ="col-xs-4">
                  <input type="submit" id="saveBtn" name="saveBtn" value="Save" onclick="save_pe()" class="btn btn-success btn-block">   
                   </div>
                  <div class ="col-xs-4">
                  <input type="button" id="delteBtn" name="delteBtn" value="Eliminar" onclick="deleteReg_pe()" class="btn btn-danger btn-block">
                 </div>
             </div>
                            </div>
                        </div>
                    </div>
            </div>
             
            <div class="col-lg-3">
            <input type="button" id="cleanAllBtn" name="cleanBtn" value="Clean All" onclick="cleanAll_pe()" class="btn btn-warning btn-block">
            <input type="button" id="cleanInputBtn" name="cleanBtn" value="Clean Input Data" onclick="cleanIn_pe()" class="btn btn-warning btn-block">
            <input type="button" id="cleanOutputBtn" name="cleanBtn" value="Clean Output Data" onclick="cleanOut_pe()" class="btn btn-warning btn-block">
            </div>
            <input type="hidden" id="opcion_pe" name="opcion_pe"> 
            <input type="hidden" id="id_pe" name="opcion_pe">      
        
            <script>
                
                $(document).ready(function() {
                    
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
                            cleanAll_pe();
                            block("Cargado datos...");
                        },
                        success: function(data, status, request){

                            var res = data.split("-");

                            if(res.length !== 1){
                                $("#basetemperature_pe").val(res[0]);
                                $("#basepressure_pe").val(res[1]);
                                $("#gasflowingtemp_pe").val(res[2]);
                                $("#gasspecificgra_pe").val(res[3]);
                                $("#pipelineefficiency_pe").val(res[4]);
                                $("#upstreampressure_pe").val(res[5]);
                                $("#flowrate_pe").val(res[6]);
                                $("#internalpipe_pe").val(res[7]);
                                $("#lengthof_pe").val(res[8]);
                                $("#upstreamelevation_pe").val(res[9]);
                                $("#downstreamelevation_pe").val(res[10]);
                                $("#downstreampressure_pe").val(res[11]);
                                $("#transmissionfactor_pe").val(res[12]);
                                $("#velocity_pe").val(res[13]);
                                $("#opcion_pe").val("2"); //editar
                                $("#id_pe").val(res[14]); //editar
                                
                                show_OkDialog($("#load_Dialog_pe"), "Proceso satisfactorio");
                            }else{
                                $("#opcion_pe").val("1"); //Save
                                $("#id_pe").val("");
                                loadSuggested_pe();

                            }
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_pe"), "Error");
                        },
                        complete: function(){
                           unBlock();
                        }
                    });
                });
                
                function onchange_Input_pe(inp){
                    var sw = validateDecimal(inp.value);
                    
                    if(sw !== true){
                        inp.value = "";
                    }      
                    onchange_Input_zero(inp);
                    cleanOut_pe();
                }
                                
                function cleanOut_pe(){
                    $("#downstreampressure_pe").val("");
                    $("#transmissionfactor_pe").val("");
                    $("#velocity_pe").val("");
                }
        
                function cleanSugg_pe(){
                    $("#basepressure_pe").val("");  
                    $("#basetemperature_pe").val("");   
                }
        
                function cleanIn_pe(){
                    $("#gasflowingtemp_pe").val("");
                    $("#gasspecificgra_pe").val("");
                    $("#pipelineefficiency_pe").val("");
                    $("#upstreampressure_pe").val("");
                    $("#flowrate_pe").val("");
                    $("#internalpipe_pe").val("");
                    $("#lengthof_pe").val("");
                    $("#upstreamelevation_pe").val("");
                    $("#downstreamelevation_pe").val("");
                }
                
                function cleanAll_pe(){
                    cleanIn_pe();
                    cleanSugg_pe();
                    cleanOut_pe();
                }
                
                function save_pe(){

                    var parametros = {
                            "basetemperature_pha" : $("#basetemperature_pe").val(),
                            "basepressure_pha" : $("#basepressure_pe").val(),
                            "gasflowingtemp_pha": $("#gasflowingtemp_pe").val(),
                            "gasspecificgra_pha": $("#gasspecificgra_pe").val(),           
                            "pipelineefficiency_pha": $("#pipelineefficiency_pe").val(),
                            "upstreampressure_pha":$("#upstreampressure_pe").val(),
                            "flowrate_pha": $("#flowrate_pe").val(),
                            "internalpipe_pha": $("#internalpipe_pe").val(),
                            "lengthof_pha": $("#lengthof_pe").val(),

                            "upstreamelevation_pha": $("#upstreamelevation_pe").val(),
                            "downstreamelevation_pha": $("#downstreamelevation_pe").val(),
                            "downstreampressure_pha": $("#downstreampressure_pe").val(),
                            "transmissionfactor_pha": $("#transmissionfactor_pe").val(),
                            "velocity_pha": $("#velocity_pe").val(),
                            "idproyect": <% out.print(session.getAttribute("id_proyect"));%>,
                            "form": "1",
                            "opcion": $("#opcion_pe").val()
                    };

                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        beforeSend: function (xhr) {
                            block("Cargando...");
                        },
                        success: function(data, status, request){
                            $("#id_pe").val(data);
                            show_OkDialog($("#save_Dialog_pe"), "Proceso satisfactorio");
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_pe"), "Error");

                            $("#basetemperature_pe").val(parametros.basetemperature_pha);
                            $("#basepressure_pe").val(parametros.basepressure_pha);
                            $("#gasflowingtemp_pe").val(parametros.gasflowingtemp_pha);
                            $("#gasspecificgra_pe").val(parametros.gasspecificgra_pha);
                            $("#pipelineefficiency_pe").val(parametros.pipelineefficiency_pha);
                            $("#upstreampressure_pe").val(parametros.upstreampressure_pha);
                            $("#flowrate_pe").val(parametros.flowrate_pha);
                            $("#internalpipe_pe").val(parametros.internalpipe_pha);
                            $("#lengthof_pe").val(parametros.lengthof_pha);
                            $("#upstreamelevation_pe").val(parametros.upstreamelevation_pha);
                            $("#downstreamelevation_pe").val(parametros.downstreamelevation_pha);
                            $("#downstreampressure_pe").val(parametros.downstreampressure_pha);
                            $("#transmissionfactor_pe").val(parametros.transmissionfactor_pha);
                            $("#velocity_pe").val(parametros.velocity_pha);
                        },
                        complete: function(){
                            unBlock();
                        }
                    });
                }
                                
                function calculate_pe(){
                    var variables = {
                            "basetemperature_pe" : $("#basetemperature_pe").val(),
                            "basepressure_pe": $("#basepressure_pe").val(),
                            "gasflowingtemp_pe" : $("#gasflowingtemp_pe").val(),
                            "gasspecificgra_pe" : $("#gasspecificgra_pe").val(),
                            "pipelineefficiency_pe" : $("#pipelineefficiency_pe").val(),
                            "upstreampressure_pe" : $("#upstreampressure_pe").val(),
                            "flowrate_pe" : $("#flowrate_pe").val(),
                            "internalpipe_pe" : $("#internalpipe_pe").val(),
                            "lengthof_pe" : $("#lengthof_pe").val(),
                            "upstreamelevation_pe" : $("#upstreamelevation_pe").val(),
                            "downstreamelevation_pe" : $("#downstreamelevation_pe").val()
                    };

                    var res = downstreampressure_Form(variables);
                    
                    $("#downstreampressure_pe").val(res[0]);
                    $("#transmissionfactor_pe").val(res[1]);
                    $("#velocity_pe").val(res[2]);
                    
                    show_OkDialog($("#calculate_Dialog_pe"), "Proceso satisfactorio");
                }

                function loadSuggested_pe(){

                    var parametros = {
                            "idproyect": <% out.print(session.getAttribute("id_proyect"));%>,
                            "opcion" : "4"
                    };
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        beforeSend: function (xhr) {
                            cleanSugg_pe();
                            block("Cargando...");
                        },
                        success: function(data, status, request){
                            show_OkDialog($("#load_Dialog_pe"), "Proceso satisfactorio");
                            var res = data.split("-");

                            $("#basetemperature_pe").val(res[1]);
                            $("#basepressure_pe").val(res[0]);
                            cleanOut_pe();                    
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_pe"), "Error");                            
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function deleteReg_pe(){

                    var parametros = {
                            "id_pe": $("#id_pe").val(),
                            "form": "1",
                            "opcion" : "3"
                    };
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        beforeSend: function (xhr) {
                            cleanSugg_pe();
                            block("Cargando...");
                        },
                        success: function(data, status, request){               
                            cleanAll_pe();
                            show_OkDialog($("#delete_Dialog_pe"), "Proceso satisfactorio");                           
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_pe"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                                
            </script>
            
            <div id="load_Dialog_pe" title="Basic dialog" style='display:none;'>
                <p>Datos cargados exitosamente</p>
            </div>
            
            <div id="save_Dialog_pe" title="Basic dialog" style='display:none;'>
                <p>Datos guardados exitosamente</p>
            </div>
            
            <div id="error_Dialog_pe" title="Basic dialog" style='display:none;'>
                <p>Ha ocurrido un error en el proceso</p>
            </div>
            
            <div id="calculate_Dialog_pe" title="Basic dialog" style='display:none;'>
                <p>Calculo realizado exitosamente</p>
            </div>
            
            <div id="delete_Dialog_pe" title="Basic dialog" style='display:none;'>
                <p>Registro eliminado exitosamente</p>
            </div>
    </body>
</html>