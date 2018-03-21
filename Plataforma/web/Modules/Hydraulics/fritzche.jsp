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
                <h2><strong>Hydraulics:</strong> Fritzche</h2>
            </div>
            <div class="col-lg-3"> 

                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_fri()">
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
                                <div id="div-table_fri"></div>
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
                <input  class="form-control" type="text" id="description_fri" name="description_fri"><br>
                Projects: 
                <select class="form-control" id="proyects_sel_fri" name="proyects_sel_fri"> </select>
            </div>
        </div>
        <hr>
         <div class="col-lg-3">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Suggested Data 
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    <form role="form">
                                        <div class="form-group">

              <div class="form-group">
                <div class="col-sm-12"> <label>Base Temperature:</label> </div>
             <div class="col-sm-5">
             <input class="form-control" type="text" id="basetemperature_fri" name="basetemperature_fri" onchange="onchange_Input_fri(this)" required value="60">
             </div>
             <div class="col-sm-6" id="div_bt_sel_fri">
                <select class="form-control" id="bt_sel_fri" name="bt_sel_fri" onchange="cleanOut_fri()"> </select>
            </div>
            
            </div>
            <div class="form-group">
            <div class="col-sm-12">
              <label>Base Pressure:</label>
            </div>
            <div class="col-sm-6">
             <input  class="form-control" type="text" id="basepressure_fri" name="basepressure_fri" onchange="onchange_Input_fri(this)" required value="14.65"><br>
            </div>
            
                <div class="col-sm-6" id="div_bte_sel_fri">
                <select class="form-control" id="bte_sel_fri" name="bte_sel_fri"> </select>
             </div>
            </div>
            <div class="form-group">
                <div class="col-md-12"><label>Unknown</label>        </div>
            <select class="form-control" onchange="hide(this)" id="unknown_fri" name="unknown_fri">
                 <option value="-" >--Choose One--</option>
                 <option value="flowrate" >Flow rate</option>
                 <option value="internal" >Internal Pipe Diameter</option>
                 <option value="upstream" >Upstream Pressure</option>
                 <option value="downstream" >Downstream Pressure</option>
             </select>
            </div>
            
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
                           Input Data
                        </div>
            <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
             <div class="form-group">
                 <div class="col-md-12">
                                        <div class="col-md-12">
                                        <label>Height:</label>
                                        </div>
                                        <div class="col-md-8">
                                        <input value = "0" class="form-control" type="text" id="enteree_fri" name="enteree_fri" required>
                                        </div>
                                                                    <div class="col-md-4" id = "div_ee_sel_fri">
                                        <select class="form-control" id="ee_sel_fri" name="ee_sel_fri"> </select>
                                        </div>
                                        </div>
                                            
                                           <div class="col-md-12">
                                               <div class="col-md-12"> <label>Gas flow temperature</label></div>
                                              <div class="col-md-8">                                              
                                                <input class="form-control" type="text" id="gasflowingtemp_fri" name="gasflowingtemp_fri" onchange="onchange_Input_zero(this)" required>
                                              </div>   
                                               <div class="col-md-4" id = "div_gft_sel_fri">
                                                <select class="form-control" id="gft_sel_fri" name="gft_sel_fri"> </select>
                                              </div>
                                           </div>
                 <div class="col-md-12">
                                           <div class="col-md-12 form-group">
                                           <label>Gas Specific Gravity:</label>
                                           <input class="form-control" type="text" id="gasspecificgra_fri" name="gasspecificgra_fri" onchange="onchange_Input_fri(this)" required>
                                           </div>
                 </div>
                 <div class="col-md-12">
                                          
                                           <div class="col-md-12 form-group">
                                            <label>Pipeline Efficiency Factor</label>
                                            <input class="form-control" type="text" id="pipelineefficiency_fri" name="pipelineefficiency_fri"  required>
                                           </div>
                 </div>
                                            <!-- Desaparece opción 1-->
                                            <!-- Desaparece opción 1-->
                                            <div class="col-md-12" id="flowrate">
                                                <div class="col-md-12"><label>Flow Rate</label></div>
                                                <div class="col-md-8">
                                            <input class="form-control" type="text" id="flowrate_fri" name="flowrate_fri" required >
                                                </div>
                                            <div class="col-md-4" id = "div_if_sel_fri">
                                                <select class="form-control" id="if_sel_fri" name="if_sel_fri" onchange="onchange_fr_fri(this)"> </select>
                                              </div>
                                            
                                            </div>
                                            <!-- fin -->
                                           <div class="col-md-12"  id="upstream">
                                               <div class="col-md-12"> <label> Upstream Pressure</label></div>
                                               <div class="col-md-8">                                            
                                                <input class="form-control" type="text" id="upstreampressure_fri" name="upstreampressure_fri"  required>
                                               </div>
                                             <div class="col-md-4" id="div_up_sel_fri">
                                              <select class="form-control" id="up_sel_fri" name="up_sel_fri"> </select>
                                            </div>
                                            
                                           </div>
                                           <div class="col-md-12 success"  id="downstream">
                                               <div class="col-md-12"> <label>Downstream Pressure</label></div>
                                               <div class="col-md-8">                                            
                                            <input class="form-control" type="text" id="downstreampressure_fri" name="downstreampressure_fri"  required>
                                               </div>
                                             <div class="col-md-4" id="div_bp_sel_fri">
                                              <select class="form-control" id="bp_sel_fri" name="bp_sel_fri"> </select>
                                                </div>
                                           </div>
                                            <div class="col-md-12">
                                           <div class="col-md-12 form-group success"  id="internal">
                                            <label>Internal Pipe Diameter</label>
                                            <input class="form-control" type="text" id="internalpipe_fri" name="internalpipe_fri"  required>
                                           </div>
                                            </div>
                                            <div class="col-md-12">
                                               <div class="col-md-12"><label>Length of Pipeline</label></div>
                                               <div class="col-md-8">
                                                <input class="form-control" type="text" id="lengthof_fri" name="lengthof_fri"  required onchange="onchange_Input_zero(this)">
                                               </div>
                                               <div class="col-md-4" id = "div_le_sel_fri">
                                               <select class="form-control" id="le_sel_fri" name="le_sel_fri"> </select>
                                             </div>
                                           </div>
                                           <div class="col-md-12">
                                            <div class="col-md-12">  <label>Upstream Elevation</label></div>
                                            <div class="col-md-8">
                                              <input class="form-control" type="text" id="upstreamelevation_fri" name="upstreamelevation_fri" required onchange="onchange_Input_zero(this)">
                                            </div>
                                             <div class="col-md-4" id = "div_ue_sel_fri">
                                               <select class="form-control" id="ue_sel_fri" name="ue_sel_fri"> </select>
                                             </div>
                                           </div>
                                           <div class="col-md-12">
                                               <div class="col-md-12"><label>Downstream Elevation</label></div>
                                               <div class="col-md-8">
                                                 <input class="form-control" type="text" id="downstreamelevation_fri" name="downstreamelevation_fri"  required onchange="onchange_Input_zero(this)">
                                               </div>
                                               <div class="col-md-4" id = "div_de_sel_fri">
                                                 <select class="form-control" id="de_sel_fri" name="de_sel_fri"> </select>
                                               </div>
                                           </div>
           
                                        </div>
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
             <div class="form-group">
            <label id="lbltipAddedComment">-</label>
            <input type="text" id="resultado_fri" name="resultado_fri" readonly required class="form-control">
            </div>
                      
 <input type="button" id="calculateBtn" name="calculateBtn" value="Calculate" onclick="calculate_fri()" class="btn btn-info btn-block">
 <input type="submit" id="saveBtn" name="saveBtn" value="Save" onclick="save_fri()" class="btn btn-success btn-block">   
 <input type="button" id="delteBtn" name="delteBtn" value="Delete" onclick="deleteReg_fri()" class="btn btn-danger btn-block">
            
            </div>
                           </div>
                        </div>
                    </div>
            </div>
            <div class="col-lg-3">
            <input type="button" id="cleanAllBtn" name="cleanBtn" value="Clean All" onclick="cleanAll_fri()" class="btn btn-warning btn-block">
            <input type="button" id="cleanInputBtn" name="cleanBtn" value="Clean Input Data" onclick="cleanIn_fri()" class="btn btn-warning btn-block">
            <input type="button" id="cleanOutputBtn" name="cleanBtn" value="Clean Output Data" onclick="cleanOut_fri()" class="btn btn-warning btn-block">
            <!-- input type="button" id="cleanSuggestedBtn" name="cleanBtn" value="Limpiar Datos Sugeridos" onclick="cleanSugg_fri()" class="btn btn-warning btn-block" -->
            </div>
            <input type="hidden" id="opcion_fri" name="opcion_fri"> 
            <input type="hidden" id="id_fri" name="opcion_fri">      
        
            <script>
                 function hide(form){
                   var opcion = (form.value);
                   document.getElementById("flowrate").style.display="block";
                   document.getElementById("upstream").style.display="block";
                   document.getElementById("downstream").style.display="block";
                   document.getElementById("internal").style.display="block";
                   document.getElementById(opcion).style.display="none";
                   var x = document.getElementById("unknown_fri").selectedIndex;
                   var y = document.getElementById("unknown_fri").options;
                    document.getElementById('lbltipAddedComment').innerHTML = y[x].text;
                } 
                 function onchange_Input_zero(inp){
                   
                    var str = inp.value;
                     var pos = str.indexOf(".");
                    
                    if(pos == 0){
                        inp.value = "0"+str;
                    }                    
                    
}
                $(document).ready(function() {
                    getproyectos(<%=session.getAttribute("idusu")%>,
                        $("#proyects_sel_fri"),
                        $("#error_Dialog_fri"));
                        
                    load_friuE_sel_fri();
                    load_friuE_sel_fri();
                    load_press_sel_fri();
                    load_in_sel_fri();
                    load_temp_sel_fri();
                    load_len_sel_fri();
                    load_he_sel_fri();
                });
                
                function load_he_sel_fri(){
                    var parametros = {
                            "combo": "he",
                            "opcion" : "5"
                    };
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        async: false,
                        beforeSend: function (xhr) {                            
                            block("Cargando...");
                        },
                        success: function(data, status, request){ 
                            var newHtml = "<select class='form-control' name='ee_sel_fri' id= 'ee_sel_fri'>" + data;
                            $("#div_ee_sel_fri").html(newHtml);
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_fri"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
             
                                
                function cleanOut_fri(){
                    $("#downstreampressure_fri").val("");
                    $("#transmissionfactor_fri").val("");
                    $("#velocity_fri").val("");
                }
        
                function cleanSugg_fri(){
                    $("#basepressure_fri").val("");  
                    $("#basetemperature_fri").val("");   
                }
        
                function cleanIn_fri(){
                    $("#gasflowingtemp_fri").val("");
                    $("#gasspecificgra_fri").val("");
                    $("#pipelineefficiency_fri").val("");
                    $("#upstreampressure_fri").val("");
                    $("#downstreampressure_fri").val("");
                    $("#flowrate_fri").val("");
                    $("#internalpipe_fri").val("");
                    $("#lengthof_fri").val("");
                    $("#upstreamelevation_fri").val("");
                    $("#downstreamelevation_fri").val("");
                }
                
                function cleanAll_fri(){
                    cleanIn_fri();
                    cleanSugg_fri();
                    cleanOut_fri();
                }
                
                function save_fri(){

                    var parametros = {
                            "basetemperature_pha" : $("#basetemperature_fri").val(),
                            "basepressure_pha" : $("#basepressure_fri").val(),
                            "gasflowingtemp_pha": $("#gasflowingtemp_fri").val(),
                            "gasspecificgra_pha": $("#gasspecificgra_fri").val(),           
                            "pipelineefficiency_pha": $("#pipelineefficiency_fri").val(),
                            "upstreampressure_pha":$("#upstreampressure_fri").val(),
                            "flowrate_pha": $("#flowrate_fri").val(),
                            "internalpipe_pha": $("#internalpipe_fri").val(),
                            "lengthof_pha": $("#lengthof_fri").val(),

                            "upstreamelevation_pha": $("#upstreamelevation_fri").val(),
                            "downstreamelevation_pha": $("#downstreamelevation_fri").val(),
                            "downstreampressure_pha": $("#downstreampressure_fri").val(),
                            "transmissionfactor_pha": $("#transmissionfactor_fri").val(),
                            "velocity_pha": $("#velocity_fri").val(),
                            "idproyect": <% out.print(session.getAttribute("id_proyect"));%>,
                            "form": "1",
                            "opcion": $("#opcion_fri").val()
                    };

                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        beforeSend: function (xhr) {
                            block("Cargando...");
                        },
                        success: function(data, status, request){
                            $("#id_fri").val(data);
                            show_OkDialog($("#save_Dialog_fri"), "Proceso satisfactorio");
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_fri"), "Error");

                            $("#basetemperature_fri").val(parametros.basetemperature_pha);
                            $("#basepressure_fri").val(parametros.basepressure_pha);
                            $("#gasflowingtemp_fri").val(parametros.gasflowingtemp_pha);
                            $("#gasspecificgra_fri").val(parametros.gasspecificgra_pha);
                            $("#pipelineefficiency_fri").val(parametros.pipelineefficiency_pha);
                            $("#upstreampressure_fri").val(parametros.upstreampressure_pha);
                            $("#flowrate_fri").val(parametros.flowrate_pha);
                            $("#internalpipe_fri").val(parametros.internalpipe_pha);
                            $("#lengthof_fri").val(parametros.lengthof_pha);
                            $("#upstreamelevation_fri").val(parametros.upstreamelevation_pha);
                            $("#downstreamelevation_fri").val(parametros.downstreamelevation_pha);
                            $("#downstreampressure_fri").val(parametros.downstreampressure_pha);
                            $("#transmissionfactor_fri").val(parametros.transmissionfactor_pha);
                            $("#velocity_fri").val(parametros.velocity_pha);
                        },
                        complete: function(){
                            unBlock();
                        }
                    });
                }
                                
                function calculate_fri(){
                    var variables = {
                            "basetemperature" : $("#basetemperature_fri").val(),
                            "basepressure" : $("#basepressure_fri").val(),
                            "gasflowingtemp" : $("#gasflowingtemp_fri").val(),
                            "gasspecificgra" : $("#gasspecificgra_fri").val(),
                            
                            "pipelineroughness" : $("#pipelineroughness_fri").val(),
                            "pipelineefficiency" : $("#pipelineefficiency_fri").val(),
                            
                            "flowrate" : $("#flowrate_fri").val(),
                            "downstreampressure" : $("#downstreampressure_fri").val(),
                            "internalpipe" : $("#internalpipe_fri").val(),
                            "upstreampressure" : $("#upstreampressure_fri").val(),
                            
                            "upstreamelevation" : $("#upstreamelevation_fri").val(),
                            "lengthof" : $("#lengthof_fri").val(),
                            "downstreamelevation" : $("#downstreamelevation_fri").val()
                            
                    };
                     var unidades = {
                            "bt_sel_fri": $("#bt_sel_fri").val().split(",")[1],
                            "bte_sel_fri": $("#bte_sel_fri").val().split(",")[1],
                            "gft_sel_fri": $("#gft_sel_fri").val().split(",")[1],
                            "if_sel_fri": $("#if_sel_fri").val().split(",")[1],
                            "up_sel_fri": $("#up_sel_fri").val().split(",")[1],
                            "bp_sel_fri": $("#bp_sel_fri").val().split(",")[1],
                            "le_sel_fri": $("#le_sel_fri").val().split(",")[1],
                            "ue_sel_fri": $("#ue_sel_fri").val().split(",")[1],
                            "de_sel_fri": $("#de_sel_fri").val().split(",")[1]
                        };
                  var opcion =  $("#unknown_fri").val();
                   if(opcion === 'flowrate'){
                    //alert("1");
                    var res = flowrate_fri_form(variables,unidades);
                   }
                   if(opcion === 'upstream'){
                    // alert("2"); 
                     var res = upstream_fri_form(variables,unidades); 
                   }
                   if(opcion === 'downstream'){
                      // alert("3");
                     var res = downstream_fri_form(variables,unidades);  
                   }
                   if(opcion === 'internal'){
                      // alert("4");
                     var res = internal_fri_form(variables,unidades); 
                   }
                   $("#resultado_fri").val(res[0]);
                  
                    
                    show_OkDialog($("#calculate_Dialog_fri"), "Proceso satisfactorio");
                }

                function loadSuggested_fri(){

                    var parametros = {
                            "idproyect": <% out.print(session.getAttribute("id_proyect"));%>,
                            "opcion" : "4"
                    };
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        beforeSend: function (xhr) {
                            cleanSugg_fri();
                            block("Cargando...");
                        },
                        success: function(data, status, request){
                            show_OkDialog($("#load_Dialog_fri"), "Proceso satisfactorio");
                            var res = data.split("-");

                            $("#basetemperature_fri").val(res[1]);
                            $("#basepressure_fri").val(res[0]);
                            cleanOut_fri();                    
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_fri"), "Error");                            
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function deleteReg_fri(){

                    var parametros = {
                            "id_fri": $("#id_fri").val(),
                            "form": "1",
                            "opcion" : "3"
                    };
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        beforeSend: function (xhr) {
                            cleanSugg_fri();
                            block("Cargando...");
                        },
                        success: function(data, status, request){               
                            cleanAll_fri();
                            show_OkDialog($("#delete_Dialog_fri"), "Proceso satisfactorio");                           
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_fri"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                function load_friuE_sel_fri(){
                    var parametros = {
                            "combo": "fluE",
                            "opcion" : "5"
                    };
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        async: false,
                        beforeSend: function (xhr) {                            
                            block("Cargando...");
                        },
                        success: function(data, status, request){ 
                            var newHtml = "<select class=\"form-control\" name=\"if_sel_fri\" id= \"if_sel_fri\" onchange=\"onchange_fr_fri(this)\">" + data;
                            $("#div_if_sel_fri").html(newHtml);
                            
                            $("#if_sel_fri").val("71,MMSCFD");
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_fri"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                function load_press_sel_fri(){
                    var parametros = {
                            "combo": "pres",
                            "opcion" : "5"
                    };
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                         async: false,
                        beforeSend: function (xhr) {                            
                            block("Cargando...");
                        },
                        success: function(data, status, request){ 
                            var newHtml = "<select class=\"form-control\" name=\"up_sel_fri\" id= \"up_sel_fri\" onchange=\"onchange_pres_fri(this)\">" + data;
                            $("#div_up_sel_fri").html(newHtml);   
                            
                            newHtml = "<select class=\"form-control\" name=\"dp_sel_fri\" id= \"dp_sel_fri\" onchange=\"onchange_pres_fri(this)\">" + data;
                            $("#div_dp_sel_fri").html(newHtml);
                            
                            newHtml = "<select class=\"form-control\" name=\"bp_sel_fri\" id= \"bp_sel_fri\" onchange=\"cleanOut_fri()\">" + data;
                            $("#div_bp_sel_fri").html(newHtml);
                            
                            var newHtml = "<select class=\"form-control\" name=\"bte_sel_fri\" id= \"bte_sel_fri\" onchange=\"onchange_pres_fri(this)\">" + data;
                            $("#div_bte_sel_fri").html(newHtml);
                            
                          /*  var newHtml = "<select class=\"form-control\" name=\"gft_sel_fri\" id= \"gft_sel_fri\" onchange=\"onchange_pres_fri(this)\">" + data;
                            $("#div_gft_sel_fri").html(newHtml);*/
                            
                            var obj = [$("#up_sel_fri"), $("#dp_sel_fri"), $("#bp_sel_fri"), $("#bte_sel_fri")];
                            onchageGeneral(obj, "5,psia");
                            
                            //$("#bp_sel_fri").val("5,psia");
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_fri"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                function onchange_pres_fri(imp){
                    /*cleanOut_fri();
                    var obj = [$("#dp_sel_fri"), $("#sp_sel_fri")];
                    onchageGeneral(obj, imp.value);*/
                }  
                function load_in_sel_fri(){
                    var parametros = {
                            "combo": "in",
                            "opcion" : "5"
                    };
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                         async: false,
                        beforeSend: function (xhr) {                            
                            block("Cargando...");
                        },
                        success: function(data, status, request){ 
                            var newHtml = "<select class=\"form-control\" name=\"bc_sel_fri\" id= \"bc_sel_fri\" onchange=\"onchange_long_fri(this)\">" + data;
                            $("#div_bc_sel_fri").html(newHtml);
                            
                           /* newHtml = "<select class=\"form-control\" name=\"gft_sel_fri\" id= \"gft_sel_fri\" onchange=\"onchange_long_fri(this)\">" + data;
                            $("#div_gft_sel_fri").html(newHtml);*/
                            
                            
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_fri"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                function load_temp_sel_fri(){
                    var parametros = {
                            "combo": "temp",
                            "opcion" : "5"
                    };
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        async: false,
                        beforeSend: function (xhr) {                            
                            block("Cargando...");
                        },
                        success: function(data, status, request){ 
                            var newHtml = "<select class='form-control' name='st_sel_fri' id= 'st_sel_fri' onchange='onchange_temp_fri(this)'>" + data;
                            $("#div_st_sel_fri").html(newHtml);      
                            
                            newHtml = "<select class='form-control' name='bt_sel_fri' id= 'bt_sel_fri' onchange='onchange_temp_fri(this)'>" + data;
                            $("#div_bt_sel_fri").html(newHtml);
                            
                             var newHtml = "<select class=\"form-control\" name=\"gft_sel_fri\" id= \"gft_sel_fri\" onchange=\"onchange_pres_fri(this)\">" + data;
                            $("#div_gft_sel_fri").html(newHtml)
                            
                            var vecObj = [$("#bt_sel_fri"),  $("#gft_sel_fri")];                            
                            onchageGeneral(vecObj, "3,F");
                            
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_fri"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                function load_len_sel_fri(){
                    var parametros = {
                            "combo": "len",
                            "opcion" : "5"
                    };
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        async: false,
                        beforeSend: function (xhr) {                            
                            block("Cargando...");
                        },
                        success: function(data, status, request){ 
                            var newHtml = "<select class='form-control' name='ue_sel_fri' id= 'ue_sel_fri' >" + data;
                            $("#div_ue_sel_fri").html(newHtml);
                            
                            var newHtml = "<select class='form-control' name='de_sel_fri' id= 'de_sel_fri' >" + data;
                            $("#div_de_sel_fri").html(newHtml);
                            
                            var newHtml = "<select class='form-control' name='le_sel_fri' id= 'le_sel_fri' >" + data;
                            $("#div_le_sel_fri").html(newHtml);
                            
                            var vecObj = [$("#de_sel_fri"),  $("#ue_sel_fri"),,  $("#le_sel_fri")];                            
                            onchageGeneral(vecObj, "2463,mt");
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_fri"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                function onchange_Input_zero(inp){
                   
                    var str = inp.value;
                     var pos = str.indexOf(".");
                    
                    if(pos == 0){
                        inp.value = "0"+str;
                    }                    
                    
}
                              
            </script>
            
            <div id="load_Dialog_fri" title="Basic dialog" style='display:none;'>
                <p>Datos cargados exitosamente</p>
            </div>
            
            <div id="save_Dialog_fri" title="Basic dialog" style='display:none;'>
                <p>Datos guardados exitosamente</p>
            </div>
            
            <div id="error_Dialog_fri" title="Basic dialog" style='display:none;'>
                <p>Ha ocurrido un error en el proceso</p>
            </div>
            
            <div id="calculate_Dialog_fri" title="Basic dialog" style='display:none;'>
                <p>Calculo realizado exitosamente</p>
            </div>
            
            <div id="delete_Dialog_fri" title="Basic dialog" style='display:none;'>
                <p>Registro eliminado exitosamente</p>
            </div>
    </body>
</html>         