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
                <h2><strong>Hydraulics:</strong> Weymouth - Downstream Pressure</h2>
            </div>
            <div class="col-lg-3"> 

                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_wdp()">
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
                                <div id="div-table_wdp"></div>
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
                <input  class="form-control" type="text" id="description_wdp" name="description_wdp"><br>
                Projects: 
                <select class="form-control" id="proyects_sel_wdp" name="proyects_sel_wdp"> </select>
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
             <input class="form-control" type="text" id="basetemperature_wdp" name="basetemperature_wdp" onchange="onchange_Input_wdp(this)" required value="60">
             </div>
             <div class="col-sm-6" id="div_bt_sel_wdp">
                <select class="form-control" id="bt_sel_wdp" name="bt_sel_wdp" onchange="cleanOut_wdp()"> </select>
            </div>
            
            </div>
            <div class="form-group">
            <div class="col-sm-12">
              <label>Base Pressure:</label>
            </div>
            <div class="col-sm-6">
             <input  class="form-control" type="text" id="basepressure_wdp" name="basepressure_wdp" onchange="onchange_Input_wdp(this)" required value="14.65"><br>
            </div>
            
                <div class="col-sm-6" id="div_bte_sel_wdp">
                <select class="form-control" id="bte_sel_wdp" name="bte_sel_wdp"> </select>
             </div>
            </div>
              <div class="form-group">
                <div class="col-md-12"><label>Unknown</label>        </div>
            <select class="form-control" onchange="hide(this)" id="unknown_wdp" name="unknown_wdp">
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
                                        <input value = "0" class="form-control" type="text" id="enteree_wdp" name="enteree_wdp" required>
                                        </div>
                                                                    <div class="col-md-4" id = "div_ee_sel_wdp">
                                        <select class="form-control" id="ee_sel_wdp" name="ee_sel_wdp"> </select>
                                        </div>
                                        </div>
                                            
                                          <div class="col-md-12">
                                               <div class="col-md-12"> <label>Gas flow temperature</label></div>
                                              <div class="col-md-8">                                              
                                                <input class="form-control" type="text" id="gasflowingtemp_wdp" name="gasflowingtemp_wdp" onchange="onchange_Input_zero(this)" required>
                                              </div>   
                                               <div class="col-md-4" id = "div_gft_sel_wdp">
                                                <select class="form-control" id="gft_sel_wdp" name="gft_sel_wdp"> </select>
                                              </div>
                                           </div>
                                            <div class="col-md-12">
                                            <div class="col-md-12">
                                           <div class="form-group">
                                           <label>Gas Specific Gravity:</label>
                                           <input class="form-control" type="text" id="gasspecificgra_wdp" name="gasspecificgra_wdp" onchange="onchange_Input_zero(this)" required>
                                           </div>
                                            </div>
                                            </div>
                                          <div class="col-md-12">
                                          <div class="col-md-12">
                                           <div class="form-group">
                                            <label>Pipeline Efficiency Factor</label>
                                            <input class="form-control" type="text" id="pipelineefficiency_wdp" name="pipelineefficiency_wdp"  onchange="onchange_Input_zero(this)" required>
                                           </div>
                                          </div>
                                          </div>
                                            <!-- Desaparece opción 1-->
                                            <!-- Desaparece opción 1-->
                                            <div class="col-md-12" id="flowrate">
                                                <div class="col-md-12"><label>Flow Rate</label></div>
                                                <div class="col-md-8">
                                            <input class="form-control" type="text" id="flowrate_wdp" name="flowrate_wdp" required >
                                                </div>
                                            <div class="col-md-4" id = "div_if_sel_wdp">
                                                <select class="form-control" id="if_sel_wdp" name="if_sel_wdp" onchange="onchange_fr_wdp(this)"> </select>
                                              </div>
                                            
                                            </div>
                                            <!-- fin -->
                                           <div class="col-md-12"  id="upstream">
                                               <div class="col-md-12"> <label> Upstream Pressure</label></div>
                                               <div class="col-md-8">                                            
                                                <input class="form-control" type="text" id="upstreampressure_wdp" name="upstreampressure_wdp"  required>
                                               </div>
                                             <div class="col-md-4" id="div_up_sel_wdp">
                                              <select class="form-control" id="up_sel_wdp" name="up_sel_wdp"> </select>
                                            </div>
                                            
                                           </div>
                                           <div class="col-md-12 success"  id="downstream">
                                               <div class="col-md-12"> <label>Downstream Pressure</label></div>
                                               <div class="col-md-8">                                            
                                            <input class="form-control" type="text" id="downstreampressure_wdp" name="downstreampressure_wdp"  required>
                                               </div>
                                             <div class="col-md-4" id="div_bp_sel_wdp">
                                              <select class="form-control" id="bp_sel_wdp" name="bp_sel_wdp"> </select>
                                                </div>
                                           </div>
                                            <div class="col-md-12">
                                            <div class="col-md-12">
                                           <div class="form-group success"  id="internal">
                                            <label>Internal Pipe Diameter</label>
                                            <input class="form-control" type="text" id="internalpipe_wdp" name="internalpipe_wdp"  required>
                                           </div>
                                            </div>
                                            </div>
                                           <div class="col-md-12">
                                               <div class="col-md-12"><label>Length of Pipeline</label></div>
                                               <div class="col-md-8">
                                                <input class="form-control" type="text" id="lengthof_wdp" name="lengthof_wdp"  required onchange="onchange_Input_zero(this)">
                                               </div>
                                               <div class="col-md-4" id = "div_le_sel_wdp">
                                               <select class="form-control" id="le_sel_wdp" name="le_sel_wdp"> </select>
                                             </div>
                                           </div>
                                           <div class="col-md-12">
                                            <div class="col-md-12">  <label>Upstream Elevation</label></div>
                                            <div class="col-md-8">
                                              <input class="form-control" type="text" id="upstreamelevation_wdp" name="upstreamelevation_wdp" required onchange="onchange_Input_zero(this)">
                                            </div>
                                             <div class="col-md-4" id = "div_ue_sel_wdp">
                                               <select class="form-control" id="ue_sel_wdp" name="ue_sel_wdp"> </select>
                                             </div>
                                           </div>
                                           <div class="col-md-12">
                                               <div class="col-md-12"><label>Downstream Elevation</label></div>
                                               <div class="col-md-8">
                                                 <input class="form-control" type="text" id="downstreamelevation_wdp" name="downstreamelevation_wdp"  required onchange="onchange_Input_zero(this)">
                                               </div>
                                               <div class="col-md-4" id = "div_de_sel_wdp">
                                                 <select class="form-control" id="de_sel_wdp" name="de_sel_wdp"> </select>
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
            <input type="text" id="resultado" name="resultado" readonly required class="form-control">
            </div>
                      
 <input type="button" id="calculateBtn" name="calculateBtn" value="Calculate" onclick="calculate_wdp()" class="btn btn-info btn-block">
 <input type="submit" id="saveBtn" name="saveBtn" value="Save" onclick="save_wdp()" class="btn btn-success btn-block">   
 <input type="button" id="delteBtn" name="delteBtn" value="Delete" onclick="deleteReg_wdp()" class="btn btn-danger btn-block">
            
            </div>
                           </div>
                        </div>
                    </div>
            </div>
            <div class="col-lg-3">
            <input type="button" id="cleanAllBtn" name="cleanBtn" value="Clean All" onclick="cleanAll_wdp()" class="btn btn-warning btn-block">
            <input type="button" id="cleanInputBtn" name="cleanBtn" value="Clean Input Data" onclick="cleanIn_wdp()" class="btn btn-warning btn-block">
            <input type="button" id="cleanOutputBtn" name="cleanBtn" value="Clean Output Data" onclick="cleanOut_wdp()" class="btn btn-warning btn-block">
            <!-- input type="button" id="cleanSuggestedBtn" name="cleanBtn" value="Limpiar Datos Sugeridos" onclick="cleanSugg_wdp()" class="btn btn-warning btn-block"-->
            </div>
            <input type="hidden" id="opcion_wdp" name="opcion_wdp"> 
            <input type="hidden" id="id_wdp" name="opcion_wdp">      
        
            <script>
                 function hide(form){
                   var opcion = (form.value);
                   document.getElementById("flowrate").style.display="block";
                   document.getElementById("upstream").style.display="block";
                   document.getElementById("downstream").style.display="block";
                   document.getElementById("internal").style.display="block";
                   document.getElementById(opcion).style.display="none";
                   var x = document.getElementById("unknown_wdp").selectedIndex;
                   var y = document.getElementById("unknown_wdp").options;
                    document.getElementById('lbltipAddedComment').innerHTML = y[x].text;
                } 
                $(document).ready(function() {
                    getproyectos(<%=session.getAttribute("idusu")%>,
                        $("#proyects_sel_wdp"),
                        $("#error_Dialog_wdp"));
                        
                    load_wdpuE_sel_wdp();
                    load_press_sel_wdp();
                    load_in_sel_wdp();
                    load_temp_sel_wdp();
                    load_len_sel_wdp();
                    load_he_sel_wdp();
                });
                
                function load_he_sel_wdp(){
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
                            var newHtml = "<select class='form-control' name='ee_sel_wdp' id= 'ee_sel_wdp'>" + data;
                            $("#div_ee_sel_wdp").html(newHtml);
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_wdp"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
             
                                
                function cleanOut_wdp(){
                    $("#downstreampressure_wdp").val("");
                    $("#transmissionfactor_wdp").val("");
                    $("#velocity_wdp").val("");
                }
        
                function cleanSugg_wdp(){
                    $("#basepressure_wdp").val("");  
                    $("#basetemperature_wdp").val("");   
                }
        
                function cleanIn_wdp(){
                    $("#gasflowingtemp_wdp").val("");
                    $("#gasspecificgra_wdp").val("");
                    $("#pipelineefficiency_wdp").val("");
                    $("#upstreampressure_wdp").val("");
                    $("#downstreampressure_wdp").val("");
                    $("#flowrate_wdp").val("");
                    $("#internalpipe_wdp").val("");
                    $("#lengthof_wdp").val("");
                    $("#upstreamelevation_wdp").val("");
                    $("#downstreamelevation_wdp").val("");
                }
                
                function cleanAll_wdp(){
                    cleanIn_wdp();
                    cleanSugg_wdp();
                    cleanOut_wdp();
                }
                
                function save_wdp(){

                    var parametros = {
                            "basetemperature_pha" : $("#basetemperature_wdp").val(),
                            "basepressure_pha" : $("#basepressure_wdp").val(),
                            "gasflowingtemp_pha": $("#gasflowingtemp_wdp").val(),
                            "gasspecificgra_pha": $("#gasspecificgra_wdp").val(),           
                            "pipelineefficiency_pha": $("#pipelineefficiency_wdp").val(),
                            "upstreampressure_pha":$("#upstreampressure_wdp").val(),
                            "flowrate_pha": $("#flowrate_wdp").val(),
                            "internalpipe_pha": $("#internalpipe_wdp").val(),
                            "lengthof_pha": $("#lengthof_wdp").val(),

                            "upstreamelevation_pha": $("#upstreamelevation_wdp").val(),
                            "downstreamelevation_pha": $("#downstreamelevation_wdp").val(),
                            "downstreampressure_pha": $("#downstreampressure_wdp").val(),
                            "transmissionfactor_pha": $("#transmissionfactor_wdp").val(),
                            "velocity_pha": $("#velocity_wdp").val(),
                            "idproyect": <% out.print(session.getAttribute("id_proyect"));%>,
                            "form": "1",
                            "opcion": $("#opcion_wdp").val()
                    };

                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        beforeSend: function (xhr) {
                            block("Cargando...");
                        },
                        success: function(data, status, request){
                            $("#id_wdp").val(data);
                            show_OkDialog($("#save_Dialog_wdp"), "Proceso satisfactorio");
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_wdp"), "Error");

                            $("#basetemperature_wdp").val(parametros.basetemperature_pha);
                            $("#basepressure_wdp").val(parametros.basepressure_pha);
                            $("#gasflowingtemp_wdp").val(parametros.gasflowingtemp_pha);
                            $("#gasspecificgra_wdp").val(parametros.gasspecificgra_pha);
                            $("#pipelineefficiency_wdp").val(parametros.pipelineefficiency_pha);
                            $("#upstreampressure_wdp").val(parametros.upstreampressure_pha);
                            $("#flowrate_wdp").val(parametros.flowrate_pha);
                            $("#internalpipe_wdp").val(parametros.internalpipe_pha);
                            $("#lengthof_wdp").val(parametros.lengthof_pha);
                            $("#upstreamelevation_wdp").val(parametros.upstreamelevation_pha);
                            $("#downstreamelevation_wdp").val(parametros.downstreamelevation_pha);
                            $("#downstreampressure_wdp").val(parametros.downstreampressure_pha);
                            $("#transmissionfactor_wdp").val(parametros.transmissionfactor_pha);
                            $("#velocity_wdp").val(parametros.velocity_pha);
                        },
                        complete: function(){
                            unBlock();
                        }
                    });
                }
                                
                function calculate_wdp(){
                    var variables = {
                            "basetemperature_wdp" : $("#basetemperature_wdp").val(),
                            "basepressure_wdp" : $("#basepressure_wdp").val(),
                            "gasflowingtemp_wdp" : $("#gasflowingtemp_wdp").val(),
                            "gasspecificgra_wdp" : $("#gasspecificgra_wdp").val(),
                            
                            "pipelineroughness_wdp" : $("#pipelineroughness_wdp").val(),
                            "pipelineefficiency_wdp" : $("#pipelineefficiency_wdp").val(),
                            
                            "flowrate_wdp" : $("#flowrate_wdp").val(),
                            "downstreampressure_wdp" : $("#downstreampressure_wdp").val(),
                            "internalpipe_wdp" : $("#internalpipe_wdp").val(),
                            "upstreampressure_wdp" : $("#upstreampressure_wdp").val(),
                            
                            "upstreamelevation_wdp" : $("#upstreamelevation_wdp").val(),
                            "lengthof_wdp" : $("#lengthof_wdp").val(),
                            "downstreamelevation_wdp" : $("#downstreamelevation_wdp").val()
                            
                    };
                     var unidades = {
                            "bt_sel_wdp": $("#bt_sel_wdp").val().split(",")[1],
                            "bte_sel_wdp": $("#bte_sel_wdp").val().split(",")[1],
                            "gft_sel_wdp": $("#gft_sel_wdp").val().split(",")[1],
                            "if_sel_wdp": $("#if_sel_wdp").val().split(",")[1],
                            "up_sel_wdp": $("#up_sel_wdp").val().split(",")[1],
                            "bp_sel_wdp": $("#bp_sel_wdp").val().split(",")[1],
                            "le_sel_wdp": $("#le_sel_wdp").val().split(",")[1],
                            "ue_sel_wdp": $("#ue_sel_wdp").val().split(",")[1],
                            "de_sel_wdp": $("#de_sel_wdp").val().split(",")[1]
                        };
                  var opcion =  $("#unknown_wdp").val();
                   if(opcion === 'flowrate'){
                    var res = flowrate_wdp_form(variables,unidades);
                   }
                   if(opcion === 'upstream'){
                      var res = upstream_wdp_form(variables,unidades); 
                   }
                   if(opcion === 'downstream'){
                     var res = downstream_wdp_form(variables,unidades);  
                   }
                   if(opcion === 'internal'){
                     var res = internal_wdp_form(variables,unidades); 
                   }
                   $("#resultado").val(res[0]);
                  
                    
                    show_OkDialog($("#calculate_Dialog_wdp"), "Proceso satisfactorio");
                }

                function loadSuggested_wdp(){

                    var parametros = {
                            "idproyect": <% out.print(session.getAttribute("id_proyect"));%>,
                            "opcion" : "4"
                    };
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        beforeSend: function (xhr) {
                            cleanSugg_wdp();
                            block("Cargando...");
                        },
                        success: function(data, status, request){
                            show_OkDialog($("#load_Dialog_wdp"), "Proceso satisfactorio");
                            var res = data.split("-");

                            $("#basetemperature_wdp").val(res[1]);
                            $("#basepressure_wdp").val(res[0]);
                            cleanOut_wdp();                    
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_wdp"), "Error");                            
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function deleteReg_wdp(){

                    var parametros = {
                            "id_wdp": $("#id_wdp").val(),
                            "form": "1",
                            "opcion" : "3"
                    };
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        beforeSend: function (xhr) {
                            cleanSugg_wdp();
                            block("Cargando...");
                        },
                        success: function(data, status, request){               
                            cleanAll_wdp();
                            show_OkDialog($("#delete_Dialog_wdp"), "Proceso satisfactorio");                           
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_wdp"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                function load_wdpuE_sel_wdp(){
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
                            var newHtml = "<select class=\"form-control\" name=\"if_sel_wdp\" id= \"if_sel_wdp\" onchange=\"onchange_fr_wdp(this)\">" + data;
                            $("#div_if_sel_wdp").html(newHtml);
                            
                            $("#if_sel_wdp").val("71,MMSCFD");
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_wdp"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                function load_press_sel_wdp(){
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
                            var newHtml = "<select class=\"form-control\" name=\"up_sel_wdp\" id= \"up_sel_wdp\" onchange=\"onchange_pres_wdp(this)\">" + data;
                            $("#div_up_sel_wdp").html(newHtml);   
                            
                            newHtml = "<select class=\"form-control\" name=\"dp_sel_wdp\" id= \"dp_sel_wdp\" onchange=\"onchange_pres_wdp(this)\">" + data;
                            $("#div_dp_sel_wdp").html(newHtml);
                            
                            newHtml = "<select class=\"form-control\" name=\"bp_sel_wdp\" id= \"bp_sel_wdp\" onchange=\"cleanOut_wdp()\">" + data;
                            $("#div_bp_sel_wdp").html(newHtml);
                            
                            var newHtml = "<select class=\"form-control\" name=\"bte_sel_wdp\" id= \"bte_sel_wdp\" onchange=\"onchange_pres_wdp(this)\">" + data;
                            $("#div_bte_sel_wdp").html(newHtml);
                            
                          /*  var newHtml = "<select class=\"form-control\" name=\"gft_sel_wdp\" id= \"gft_sel_wdp\" onchange=\"onchange_pres_wdp(this)\">" + data;
                            $("#div_gft_sel_wdp").html(newHtml);*/
                            
                            var obj = [$("#up_sel_wdp"), $("#dp_sel_wdp"), $("#bp_sel_wdp"), $("#bte_sel_wdp")];
                            onchageGeneral(obj, "5,psia");
                            
                            //$("#bp_sel_wdp").val("5,psia");
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_wdp"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                function onchange_pres_wdp(imp){
                    /*cleanOut_wdp();
                    var obj = [$("#dp_sel_wdp"), $("#sp_sel_wdp")];
                    onchageGeneral(obj, imp.value);*/
                }  
                function load_in_sel_wdp(){
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
                            var newHtml = "<select class=\"form-control\" name=\"bc_sel_wdp\" id= \"bc_sel_wdp\" onchange=\"onchange_long_wdp(this)\">" + data;
                            $("#div_bc_sel_wdp").html(newHtml);
                            
                           /* newHtml = "<select class=\"form-control\" name=\"gft_sel_wdp\" id= \"gft_sel_wdp\" onchange=\"onchange_long_wdp(this)\">" + data;
                            $("#div_gft_sel_wdp").html(newHtml);*/
                            
                            
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_wdp"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                function load_temp_sel_wdp(){
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
                            var newHtml = "<select class='form-control' name='st_sel_wdp' id= 'st_sel_wdp' onchange='onchange_temp_wdp(this)'>" + data;
                            $("#div_st_sel_wdp").html(newHtml);      
                            
                            newHtml = "<select class='form-control' name='bt_sel_wdp' id= 'bt_sel_wdp' onchange='onchange_temp_wdp(this)'>" + data;
                            $("#div_bt_sel_wdp").html(newHtml);
                            
                             var newHtml = "<select class=\"form-control\" name=\"gft_sel_wdp\" id= \"gft_sel_wdp\" onchange=\"onchange_pres_wdp(this)\">" + data;
                            $("#div_gft_sel_wdp").html(newHtml)
                            
                            var vecObj = [$("#bt_sel_wdp"),  $("#gft_sel_wdp")];                            
                            onchageGeneral(vecObj, "3,F");
                            
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_wdp"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                function load_len_sel_wdp(){
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
                            var newHtml = "<select class='form-control' name='ue_sel_wdp' id= 'ue_sel_wdp' >" + data;
                            $("#div_ue_sel_wdp").html(newHtml);
                            
                            var newHtml = "<select class='form-control' name='de_sel_wdp' id= 'de_sel_wdp' >" + data;
                            $("#div_de_sel_wdp").html(newHtml);
                            
                            var newHtml = "<select class='form-control' name='le_sel_wdp' id= 'le_sel_wdp' >" + data;
                            $("#div_le_sel_wdp").html(newHtml);
                            
                            var vecObj = [$("#de_sel_wdp"),  $("#ue_sel_wdp"),,  $("#le_sel_wdp")];                            
                            onchageGeneral(vecObj, "2463,mt");
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_wdp"), "Error");
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
            
            <div id="load_Dialog_wdp" title="Basic dialog" style='display:none;'>
                <p>Datos cargados exitosamente</p>
            </div>
            
            <div id="save_Dialog_wdp" title="Basic dialog" style='display:none;'>
                <p>Datos guardados exitosamente</p>
            </div>
            
            <div id="error_Dialog_wdp" title="Basic dialog" style='display:none;'>
                <p>Ha ocurrido un error en el proceso</p>
            </div>
            
            <div id="calculate_Dialog_wdp" title="Basic dialog" style='display:none;'>
                <p>Calculo realizado exitosamente</p>
            </div>
            
            <div id="delete_Dialog_wdp" title="Basic dialog" style='display:none;'>
                <p>Registro eliminado exitosamente</p>
            </div>
    </body>
</html>