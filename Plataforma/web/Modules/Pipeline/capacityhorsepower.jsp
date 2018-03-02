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
                <h2><strong>Pipe Installation:</strong> 1.1.5. Reciprocating Compressor-Cylinder Equivalent Capacity & HP</h2>
            </div>
             <div class="col-lg-3"> 
                 
                 <!-- Button trigger modal -->
                 <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_chp()">
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
                              <div id="div-table_chp"></div>
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
                <input  class="form-control" type="text" id="description_chp" name="description_chp"><br>      
                Projects: 
                <select class="form-control" id="proyects_sel_chp" name="proyects_sel_chp"> </select>
            </div>
        </div>
        <hr>
        <div class="col-lg-3">
            <div class="panel panel-default">
                        <div class="panel-heading">
                            Compressibilty Factor
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
             <div class="form-group">
            <div class="col-md-12">
                <input type="radio" id = "compfactors1_chp" name="opz_chp" value="compfactors1_chp" onchange="onchange_comf_chp()" required> Calculate <br>
                <input type="radio" id = "compfactors2_chp" name="opz_chp" value="compfactors2_chp" onchange="onchange_comf_chp()" required> User Supplied
            </div>
            </div>                                    
                                    
             <div class="form-group">
            <label>Z1 - Compressibility Factor ar Suction:</label>
            <input type="text" id="z1s_chp" name="z1s_chp" readonly required class="form-control" value="0">
            </div>
                                    
                                    <div class="form-group">
            <label>Z2 - Compressibility Factor at Discharge:</label>
            <input type="text" id="z2d_chp" name="z2d_chp" readonly required class="form-control" value="0">
            </div>
            
            </div>
                           </div>
                        </div>
                    </div>
           
       </div>
       <div class="col-lg-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Input Parameters
                        </div>
            <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="form-group">
            <div class="col-md-12">
            <label>Height:</label>
            </div>
            <div class="col-md-8">
            <input value = "0" class="form-control" type="text" id="enteree_chp" name="enteree_chp" onchange="onchange_Input_ah(this)" required>
            </div>
            <div class="col-md-4" id = "div_ee_sel_chp">
            <select class="form-control" id="ee_sel_chp" name="ee_sel_chp"> </select>
            </div>
            </div>
            <div class="form-group">
                                        <div class="col-md-12">
                                        <label>Base Temperature:</label> 
                                        </div>
                                        <div class="col-md-8">
                                            <input value="60"  class="form-control" type="text" id="basetemperature_chp" name="basetemperature_chp" onchange="onchange_Input_chp(this)" required>
                                        </div>
                                        <div class="col-md-4" id="div_bt_sel_chp">
                                            <select class="form-control" id="bt_sel_chp" name="bt_sel_chp"> </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-md-12">
                                            <label>Base Pressure:</label> 
                                        </div>
                                        <div class="col-md-8">
                                            <input value="14.65" class="form-control" type="text" id="basepressure_chp" name="basepressure_chp" onchange="onchange_Input_chp(this)" required><br>
                                        </div>
                                        <div class="col-md-4" id="div_bp_sel_chp">
                                            <select class="form-control" id="bp_sel_chp" name="bp_sel_chp"> </select>
                                        </div>
                                    </div>                      
            <div class="form-group">
                <div class="col-md-12">
            <label>Piston Acting Compression Type: </label>
                </div>
                <div class="col-md-12" id="div_pact_sel_chp">
                    <select class="form-control" id="pact_sel_chp" name="pact_sel_chp" onchange="onchangepact_chp(this)"></select> 
                </div>
                
            </div>
            <div class="form-group">
            <div class="col-md-12">
            <label>Bore/Cylinder Inside Diameter:</label>
            </div>
            <div class="col-md-8">
            <input value="3" class="form-control" type="text" id="borec_chp" name="borec_chp" onchange="onchange_Input_chp(this)" required>
            </div>
            <div class="col-md-4" id = "div_bc_sel_chp">
            <select class="form-control" id="bc_sel_chp" name="bc_sel_chp"> </select>
            </div>
            </div>
            <div class="form-group">
            <div class="col-md-12">
            <label>Stroke/Travel Length of Piston:</label>
            </div>
            <div class="col-md-8">
            <input value="10" class="form-control" type="text" id="stroket_chp" name="stroket_chp" onchange="onchange_Input_chp(this)" required>
            </div>
            <div class="col-md-4" id = "div_str_sel_chp">
            <select class="form-control" id="str_sel_chp" name="str_sel_chp"> </select>
            </div>
            </div>
            <div class="form-group">
            <div class="col-md-12">
            <label>Rotational Speed</label>
            </div>
            <div class="col-md-8">
            <input value="3600" class="form-control" type="text" id="rotationals_chp" name="rotationals_chp" onchange="onchange_Input_chp(this)" required>
            </div>
            <div class="col-md-4" id = "div_rs_sel_chp">
            <select class="form-control" id="rs_sel_chp" name="rs_sel_chp"> </select>
            </div>
            </div>
                                    <div class="form-group">
            <div class="col-md-12">
            <label>Cylider Clearance (%)</label>
            <input value="2" class="form-control" type="text" id="cylindercl_chp" name="cylindercl_chp" onchange="onchange_Input_chp(this)" required>
            </div>
            
            </div>
                                    <div class="form-group">
            <div class="col-md-12">
            <label>Piston Rod Diameter:</label>
            </div>
            <div class="col-md-8">
            <input value="1" class="form-control" type="text" id="pistonrd_chp" name="pistonrd_chp" onchange="onchange_Input_chp(this)" required >
            </div>
            <div class="col-md-4" id = "div_prd_sel_chp">
            <select class="form-control" id="prd_sel_chp" name="prd_sel_chp"> </select>
            </div>
            </div>
                     
                     <div class="form-group">
            <div class="col-md-12">
            <label>Suction Pressure:</label>
            </div>
            <div class="col-md-8">
            <input value="336"  class="form-control" type="text" id="suctionp_chp" name="suctionp_chp" onchange="validate_pres_chp(this)" required>
            </div>
            <div class="col-md-4" id = "div_sp_sel_chp">
            <select class="form-control" id="sp_sel_chp" name="sp_sel_chp"> </select>
            </div>
            </div>
                     
                     <div class="form-group">
            <div class="col-md-12">
            <label> Discharge Pressure:</label>
            </div>
            <div class="col-md-8">
            <input value="936" class="form-control" type="text" id="dischargep_chp" name="dischargep_chp" onchange="validate_pres_chp(this)" required>
            </div>
            <div class="col-md-4" id = "div_dp_sel_chp">
            <select class="form-control" id="dp_sel_chp" name="sp_sel_chp"> </select>
            </div>
            </div>
            <div class="form-group">
            <div class="col-md-12">
                <label>Suction Temperature:</label>
            </div>
             <div class="col-md-8">
            <input value="90" class="form-control" type="text" id="suctiont_chp" name="suctiont_chp" onchange="onchange_Input_chp(this)" required>
             </div>
            <div class="col-md-4"  id="div_st_sel_chp">
            <select class="form-control" id="st_sel_chp" name="st_sel_chp"> </select>
            </div>
             </div>
            
            <div class="form-group">
                <div class="col-md-12">
            <label>Gas Specific Ratio:</label>
                
            <input value="1.25" class="form-control" type="text" id="gass_chp" name="gass_chp" onchange="onchange_Input_chp(this)" required>
             </div>
           </div>
            <div class="form-group">
                <div class="col-md-12">
            <label>Select Option:</label>
                </div>
                <div class="col-md-8" id="div_gs_sel_chp">
                    <select class="form-control" id="gs_sel_chp" name="gs_sel_chp" onchange="onchange_gravity_chp()"></select> 
                </div>
                <div class="col-md-4">
                <input class="form-control" type="text" id="gst_chp" name="gst_chp" onchange="onchange_Input_chp(this)" required>
                 </div>
                
            </div>
            <div class="form-group">
                <div class="col-md-12">
            <label>Compressor Mechanical Efficiency:</label>
               
            <input value="0.7" class="form-control" type="text" id="mechanicale_chp" name="mechanicale_chp" onchange="onchange_Input_chp(this)" required >
             </div>            
            
            </div>
                                    <div class="form-group">
                <div class="col-md-12">
            <label>Effect of leakage, Losses, etc [%]:</label>
               
            <input value="2" class="form-control" type="text" id="effect_chp" name="effect_chp" onchange="onchange_Input_chp(this)" required >
             </div>            
            
            </div>
                                    <div class="form-group">
                <div class="col-md-12">
            <label>Effect due to Lack of Lubrication [%]:</label>
               
            <input value="2" class="form-control" type="text" id="effect2_chp" name="effect2_chp" onchange="onchange_Input_chp(this)" required >
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
            <label>Piston Displacement [ft3/min]:</label>
            <input type="text" id="pistond_chp" name="pistond_chp" readonly required class="form-control">
            </div>
            <div class="form-group">
            <label id="lab_dt_chp"> Discharge Temperature [°F]:</label>
            <input type="text" id="discharget_chp" name="discharget_chp" readonly required class="form-control">
            </div>
             <div class="form-group">
            <label>Z1 - Compressibility Factor at Suction:</label>
            <input type="text" id="z1_chp" name="z1_chp" readonly required class="form-control">
            </div>
            <div class="form-group">
            <label>Z2 - Compressibility Factor at Discharge:</label>
            <input type="text" id="z2_chp" name="z2_chp" readonly required class="form-control">
            </div>
            <div class="form-group">
            <label>Volumetric Efficiency %:</label>            
            <input type="text" id="volumetrice_chp" name="volumetrice_chp" readonly required class="form-control">
            </div> 
            <div class="form-group">
            <label>Cylinder Capacity [ft3/min]:</label>            
            <input type="text" id="cylinderc_chp" name="cylinderc_chp" readonly required class="form-control">
            </div>
            <div class="form-group">
            <label>Equivalent Capacity [MMSCFD]:</label>            
            <input type="text" id="equivalentc_chp" name="equivalentc_chp" readonly required class="form-control">
            </div>
             <div class="form-group">
            <label>Cylinder Brake Horse Power [HP]:</label>
            <input type="text" id="cylinderb_chp" name="cylinderb_chp" readonly required class="form-control">
            </div>
 <input type="button" id="calculateBtn_chp" name="calculateBtn_chp" value="Calculate" onclick="calculate_chp()" class="btn btn-info btn-block">
 <input type="button" id="saveBtn_chp" name="saveBtn_chp" value="Save" onclick="save_chp()" class="btn btn-success btn-block">   
 <input type="button" id="delteBtn_chp" name="delteBtn_chp" value="Delete" onclick="delete_chp()" class="btn btn-danger btn-block">
            
            </div>
                           </div>
                        </div>
                    </div>
            </div>
            <div class="col-lg-12">
            <div class="col-md-3">
                <input type="button" id="cleanAllBtn_chp" name="cleanBtn_chp" value="Clean All Data" onclick="cleanAll_chp()" class="btn btn-warning btn-block">
            </div>
                <div class="col-md-3">
                <input type="button" id="cleanInputBtn_chp" name="cleanBtn_chp" value="Clean Input Data" onclick="cleanIn_chp()" class="btn btn-warning btn-block">
            </div>
                <div class="col-md-3">
                <input type="button" id="cleanOutputBtn_chp" name="cleanBtn_chp" value="Clean Output Data" onclick="cleanOut_chp()" class="btn btn-warning btn-block">
            </div>
                
                </div>
            <input type="hidden" id="opt_chp" name="opt_chp"> 
            <input type="hidden" id="id_chp" name="id_chp">   
            
            <script>
                $(document).ready(function() {  
                    
                    $("#opt_chp").val("1");
                    $('#compfactors1_chp').attr('checked', 'checked');
                    
                    getproyectos(<%=session.getAttribute("idusu") %>,
                                $("#proyects_sel_chp"),
                                $("#error_Dialog_chp"));
                                
                    load_gs_sel_chp();                    
                    load_temp_sel_chp();
                    load_press_sel_chp();
                    load_pact_sel_chp();
                    load_in_sel_chp();
                    load_in4_sel_chp();
                    load_rpm_sel_chp();
                });
                
                function validate_pres_chp(inp){                                        
                    onchange_Input_chp(inp);
                    validatePress(inp, $("#suctionp_chp"), $("#dischargep_chp"));
                }
                
                function onchange_comf_chp(){    
                    
                    var sel = $("input[type='radio'][name='opz_chp']:checked");
                    if(sel.val() === "compfactors1_chp"){
                        $("#z1s_chp").addClass("readonly");
                        $("#z1s_chp").attr("readonly",true);
                        $("#z1s_chp").val("0");
                        
                        $("#z2d_chp").addClass("readonly");
                        $("#z2d_chp").attr("readonly",true);
                        $("#z2d_chp").val("0");
                    
                    }
                    else{
                        $("#z1s_chp").removeAttr("readonly");
                        $("#z1s_chp").removeClass("readOnly");
                        $("#z1s_chp").val("");
                        
                        $("#z2d_chp").removeAttr("readonly");
                        $("#z2d_chp").removeClass("readOnly");
                        $("#z2d_chp").val("");
                    }
                    
                    cleanOut_chp();
                }
                
                function onchangepact_chp(inp){
                    /*var val = inp.value.trim().split(",")[1];
                    
                    if(val == "1")
                    {
                        $("#pistonrd_chp").addClass("readonly");
                        $("#pistonrd_chp").attr("readonly",true);
                        $("#pistonrd_chp").val("0");
                    
                    }else{
                        $("#pistonrd_chp").removeAttr("readonly");
                        $("#pistonrd_chp").removeClass("readOnly");
                        $("#pistonrd_chp").val("");
                    }*/
                    
                    cleanOut_chp();
                }
                
                 function load_history_chp(){
                    var parametros = {
                        "idproyect": $("#proyects_sel_chp").val(),
			"iduser": <% out.print(session.getAttribute("idusu"));%>,
                        "opcion" : "6",
                        "nombre" : "historial",
                        "from": "chp"
                    };
                    
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        dataType: 'json',
                        async : false,
                        beforeSend: function (xhr) {
                            cleanAll_chp();
                            block("Cargado datos...");
                        },
                        success: function(data, status, request){
                            
                            if(data!==null){
                            var tags = Object.keys(data.historial[0]);
                            
                            var tamano = data.size;
                            
                            var html = "<table class='table table-bordered table-striped'>";
                                html += "<thead>";
                                html += "<tr>";
                                html += "<th>Creation date</th>";
                                html += "<th>Code</th>";
                                html += "<th>Description</th>";
                                html += "<th>Load</th>";
                                html += "</tr>";
                                html += "</thead>";
                           if(tamano > 0){
                              
                            html += '<tbody>';
                            for(var i = 0; i< tamano ; i++){
                               html += "<tr>";
                               html += "<td>"+data.historial[i].date+"</td>";
                               html += "<td>"+data.historial[i].id+"</td>";
                               html += "<td>"+data.historial[i].description_chp+"</td>";
                               html += "<td><a href='#' onClick=\"load_form_chp("+data.historial[i].id+")\"><span class='glyphicon glyphicon-plus' aria-hidden='true'></span></a></td>";
                               html += "<tr>";
                               
                            }
                               html += '</tbody>';
                           }else{
                               html += '<p>No records available.</p>';
                           }
                           html += "</table><br><br>";
                       
                           }else{
                            html = '<p>No records available.</p>';
                           }
                           $("#div-table_chp").empty();
                           $("#div-table_chp").html(html);
                           
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_chp"), "Error");
                        },
                        complete: function(){
                           unBlock();
                        }
                    });
                }
                
                function load_gs_sel_chp(){
                    var parametros = {
                            "combo": "gs_sel",
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
                            var newHtml = "<select class=\"form-control\" name=\"gs_sel_chp\" id=\"gs_sel_chp\" onchange=\"onchange_gravity_chp()\">" + data;
                            $("#div_gs_sel_chp").html(newHtml);  
                            $("#gst_chp").val($("#gs_sel_chp").val().trim().split(",")[1]);
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_chp"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function load_pact_sel_chp(){
                 
                    var parametros = {
                            "combo": "pact",
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
                            var newHtml = "<select class=\"form-control\" name=\"pact_sel_chp\" id=\"pact_sel_chp\" onchange=\"onchangepact_chp(this)\">" + data;
                            $("#div_pact_sel_chp").html(newHtml); 
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_chp"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function load_temp_sel_chp(){
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
                            var newHtml = "<select class=\"form-control\" name=\"st_sel_chp\" id= \"st_sel_chp\" onchange=\"onchange_temp_chp(this)\">" + data;
                            $("#div_st_sel_chp").html(newHtml);
                            
                            newHtml = "<select class=\"form-control\" name=\"bt_sel_chp\" id= \"bt_sel_chp\" onchange=\"onchange_temp_chp(this)\">" + data;
                            $("#div_bt_sel_chp").html(newHtml);
                            
                            var vecObj = [$("#bt_sel_chp"),  $("#st_sel_chp")];                            
                            onchageGeneral(vecObj, "3,F");
                            
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_chp"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function onchange_temp_chp(imp){
                    cleanOut_chp();
                    
                    var vecObj = [$("#bt_sel_chp"),  $("#st_sel_chp")];                            
                    onchageGeneral(vecObj, imp.value);
                    
                    var newHtml = "Discharge Temperature [°" + imp.value.split(",")[1] + "]:";                    
                    $("#lab_dt_chp").html(newHtml); 
                }
                
                function onchange_pres_chp(imp){
                    cleanOut_chp();
                    var obj = [$("#dp_sel_chp"), $("#sp_sel_chp")];
                    onchageGeneral(obj, imp.value);
                }
                
                function onchange_long_chp(imp){
                    cleanOut_chp();
                    var obj = [$("#bc_sel_chp"), $("#str_sel_chp")];
                    onchageGeneral(obj, imp.value);
                }
                
                function load_in4_sel_chp(){
                    var parametros = {
                            "combo": "in4",
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
                            var newHtml = "<select class=\"form-control\" name=\"bc_sel_chp\" id= \"bc_sel_chp\" onchange=\"onchange_long_chp(this)\">" + data;
                            $("#div_bc_sel_chp").html(newHtml);
                            
                            newHtml = "<select class=\"form-control\" name=\"str_sel_chp\" id= \"str_sel_chp\" onchange=\"onchange_long_chp(this)\">" + data;
                            $("#div_str_sel_chp").html(newHtml);
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_chp"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function load_rpm_sel_chp(){
                    var parametros = {
                            "combo": "rpm",
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
                            var newHtml = "<select class=\"form-control\" name=\"rs_sel_chp\" id= \"rs_sel_chp\" onchange=\"cleanOut_chp()\">" + data;
                            $("#div_rs_sel_chp").html(newHtml);
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_chp"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                
                
                function load_in_sel_chp(){
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
                            var newHtml = "<select class=\"form-control\" name=\"prd_sel_chp\" id= \"prd_sel_chp\" onchange=\"cleanOut_chp()\">" + data;
                            $("#div_prd_sel_chp").html(newHtml);
                            
                            newHtml = "<select class=\"form-control\" name=\"ee_sel_chp\" id= \"ee_sel_chp\" onchange=\"cleanOut_chp()\">" + data;
                            $("#div_ee_sel_chp").html(newHtml);
                            
                            
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_chp"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function load_press_sel_chp(){
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
                            var newHtml = "<select class=\"form-control\" name=\"sp_sel_chp\" id= \"sp_sel_chp\" onchange=\"onchange_pres_chp(this)\">" + data;
                            $("#div_sp_sel_chp").html(newHtml);  
                            
                            newHtml = "<select class=\"form-control\" name=\"dp_sel_chp\" id= \"dp_sel_chp\" onchange=\"onchange_pres_chp(this)\">" + data;
                            $("#div_dp_sel_chp").html(newHtml);
                            
                            newHtml = "<select class=\"form-control\" name=\"bp_sel_chp\" id= \"bp_sel_chp\" onchange=\"cleanOut_chp()\">" + data;
                            $("#div_bp_sel_chp").html(newHtml);
                            
                            var obj = [$("#dp_sel_chp"), $("#sp_sel_chp")];
                            onchageGeneral(obj, "65,psig");
                            
                            $("#bp_sel_chp").val("5,psia");
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_chp"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                 
                function onchange_gravity_chp(){
                    $("#gst_chp").val($("#gs_sel_chp").val().trim().split(",")[1]);
                    cleanOut_chp();
                }
                
                function load_form_chp(id){
                    
                   var parametros = {
                        "id": id,
                        "opcion" : "4",
                        "from": "chp"
                    };
                    
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        dataType: 'json',
                        beforeSend: function (xhr) {
                            cleanAll_chp();
                            block("Cargado datos...");
                        },
                        success: function(data, status, request){
                            if (data != null)
                            {
                                var tags = Object.keys(data.row);
                                
                                for(var i = 0; i < tags.length; i++){
                                    if(tags[i] != "date" && tags[i] != "id_proyect" && tags[i] != "id_user" && tags[i]!= "id")
                                    {
                                        $("#" + tags[i]).val(data.row[tags[i]]);
                                    }
                                }
                                
                                if(data.row["opz_chp"] == "compfactors1_chp"){
                                    document.getElementById("compfactors1_chp").checked = true;
                                    $("#compfactors1_chp").addClass("readonly");
                                    $("#compfactors1_chp").attr("readonly",true);

                                }else{
                                    document.getElementById("compfactors2_chp").checked = true;  
                                    $("#compfactors2_chp").removeAttr("readonly");
                                    $("#compfactors2_chp").removeClass("readOnly");
                                }
                                                                
                                $("#opt_chp").val("2");
                                $("#id_chp").val(data.row.id);
                                $("#proyects_sel_chp").val(data.row.id_proyect);
                            }else{
                                $("#opt_chp").val("1");
                            }
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            $("#opt_chp").val("1");
                            show_OkDialog($("#error_Dialog_chp"), "Error");
                        },
                        complete: function(){
                           unBlock();
                        }
                    });
                }
                
                function cleanOut_chp(){
                    $("#pistond_chp").val("");
                    $("#discharget_chp").val("");
                    $("#z1_chp").val("");
                    $("#z2_chp").val("");
                    $("#volumetrice_chp").val("");                    
                    $("#cylinderc_chp").val("");
                    $("#equivalentc_chp").val("");
                    $("#cylinderb_chp").val("");
                }
        
                function cleanIn_chp(){                    
                    $("#enteree_chp").val("");
                    $("#basetemperature_chp").val("");
                    $("#basepressure_chp").val("");
                    $("#z1s_chp").val("");
                    $("#z2d_chp").val("");
                    
                    $("#borec_chp").val("");
                    $("#stroket_chp").val("");
                    $("#rotationals_chp").val("");
                    $("#cylindercl_chp").val("");
                    $("#pistonrd_chp").val("");
                    
                    $("#suctionp_chp").val("");
                    $("#suctiont_chp").val("");
                    $("#dischargep_chp").val("");
                    $("#gass_chp").val("");
                    $("#capacityr_chp").val("");
                    $("#mechanicale_chp").val("");  
                    
                    $("#effect_chp").val("");
                    $("#effect2_chp").val("");  
                }
                
                function cleanAll_chp(){
                    cleanIn_chp();
                    cleanOut_chp();
                    $("#description_chp").val("");
                }
                
                function onchange_Input_chp(inp){
                    var sw = validateDecimal(inp.value);
                   
                    if(sw != true){
                        inp.value = "";
                    }     
                    onchange_Input_zero(inp);
                    cleanOut_chp();
                }
                
                function calculate_chp(){
                    var sel = $("input[type='radio'][name='opz_chp']:checked");
                   
                    var variables_chp = {
                            "enteree_chp": $("#enteree_chp").val(),
                            "basepressure_chp": $("#basepressure_chp").val(),
                            "basetemperature_chp": $("#basetemperature_chp").val(),
                            "pact_sel_chp": $("#pact_sel_chp").val().split(",")[1],
                            "borec_chp": $("#borec_chp").val(),
                            "stroket_chp": $("#stroket_chp").val(),
                            "rotationals_chp": $("#rotationals_chp").val(),
                            "cylindercl_chp": $("#cylindercl_chp").val(),
                            "pistonrd_chp": $("#pistonrd_chp").val(),
                            "suctionp_chp" : $("#suctionp_chp").val(),
                            "suctiont_chp": $("#suctiont_chp").val(),
                            "dischargep_chp" : $("#dischargep_chp").val(),
                            "gass_chp" : $("#gass_chp").val(),
                            "gst_chp": $("#gst_chp").val(),
                            "mechanicale_chp": $("#mechanicale_chp").val(),
                            "z1s_chp": $("#z1s_chp").val(),
                            "z2d_chp": $("#z2d_chp").val(),
                            "opz_chp": sel.val(),
                            "effect_chp": $("#effect_chp").val(),
                            "effect2_chp": $("#effect2_chp").val()
                            
                    };
                    
                   
                    var isOk = validate(variables_chp);
                     if(isOk === false){
                        alert("You must complete all fields");
                    }else{
                    
                        var unidades = {
                            "bt_sel_chp": $("#bt_sel_chp").val().split(",")[1],
                            "bp_sel_chp": $("#bp_sel_chp").val().split(",")[1],
                            "bc_sel_chp": $("#bc_sel_chp").val().split(",")[1],
                            "str_sel_chp": $("#str_sel_chp").val().split(",")[1],
                            "rs_sel_chp": $("#rs_sel_chp").val().split(",")[1],
                            "prd_sel_chp": $("#prd_sel_chp").val().split(",")[1],
                            "sp_sel_chp": $("#sp_sel_chp").val().split(",")[1],
                            "dp_sel_chp" : $("#dp_sel_chp").val().split(",")[1],
                            "st_sel_chp": $("#st_sel_chp").val().split(",")[1],
                            "ee_sel_chp": $("#ee_sel_chp").val().split(",")[1]
                        };
                        
                        var res = capacityHorsePower_Form(variables_chp, unidades);

                        $("#pistond_chp").val(res[0]);
                        $("#discharget_chp").val(res[1]);
                        $("#z1_chp").val(res[2]);
                        $("#z2_chp").val(res[3]);
                        $("#volumetrice_chp").val(res[4]);
                        $("#cylinderc_chp").val(res[5]);
                        $("#equivalentc_chp").val(res[6]);
                        $("#cylinderb_chp").val(res[7]);


                        show_OkDialog($("#calculate_Dialog_chp"), "Satisfactory process");
                    }
                }
                
                function save_chp(){
                        var sel = $("input[type='radio'][name='opz_chp']:checked");

                        var parametros = {
                                    "basepressure_chp": $("#basepressure_chp").val(),
                                    "basetemperature_chp": $("#basetemperature_chp").val(),
                                    "enteree_chp": $("#enteree_chp").val(),
                                    "ee_sel_chp": $("#ee_sel_chp").val(),
                                    "pact_sel_chp": $("#pact_sel_chp").val(),
                                    "borec_chp": $("#borec_chp").val(),
                                    "stroket_chp": $("#stroket_chp").val(),
                                    "rotationals_chp": $("#rotationals_chp").val(),
                                    "cylindercl_chp": $("#cylindercl_chp").val(),
                                    "pistonrd_chp": $("#pistonrd_chp").val(),
                                    "suctionp_chp" : $("#suctionp_chp").val(),
                                    "suctiont_chp": $("#suctiont_chp").val(),
                                    "dischargep_chp" : $("#dischargep_chp").val(),
                                    "gass_chp" : $("#gass_chp").val(),
                                    "gs_sel_chp" : $("#gs_sel_chp").val(),
                                    "gst_chp": $("#gst_chp").val(),
                                    "mechanicale_chp": $("#mechanicale_chp").val(),
                                    "z1s_chp": $("#z1s_chp").val(),
                                    "z2d_chp": $("#z2d_chp").val(),
                                    "opz_chp": sel.val(),
                                    "effect_chp": $("#effect_chp").val(),
                                    "effect2_chp": $("#effect2_chp").val(),

                                    "bt_sel_chp": $("#bt_sel_chp").val(),
                                    "bp_sel_chp": $("#bp_sel_chp").val(),
                                    "bc_sel_chp": $("#bc_sel_chp").val(),
                                    "st_sel_chp": $("#st_sel_chp").val(),
                                    "rs_sel_chp": $("#rs_sel_chp").val(),
                                    "prd_sel_chp": $("#prd_sel_chp").val(),                                    
                                    "sp_sel_chp": $("#sp_sel_chp").val(),
                                    "str_sel_chp": $("#str_sel_chp").val(),
                                    "dp_sel_chp": $("#dp_sel_chp").val(),
                                    
                                    "pistond_chp": $("#pistond_chp").val(),
                                    "discharget_chp": $("#discharget_chp").val(),
                                    "z1_chp": $("#z1_chp").val(),
                                    "z2_chp": $("#z2_chp").val(),
                                    "volumetrice_chp": $("#volumetrice_chp").val(),
                                    "cylinderc_chp": $("#cylinderc_chp").val(),
                                    "equivalentc_chp": $("#equivalentc_chp").val(),
                                    "cylinderb_chp": $("#cylinderb_chp").val(),
                                    

                                    "idproyect": $("#proyects_sel_chp").val(),
                                    "opcion": $("#opt_chp").val(),
                                    "iduser": <% out.print(session.getAttribute("idusu"));%>,
                                    "id_chp": 1,
                                    "description_chp": $("#description_chp").val(),
                                    "from": "chp"
                            };
                        
                        var isOk = validate(parametros);
                        
                        if(isOk == false){
                            alert("You must perform the calculation and fill out the description");
                        }else{
                            
                            if($("#opt_chp").val() == 2){
                                parametros.id_chp = $("#id_chp").val();
                            }
                            
                            $.ajax({
                                type: "POST",
                                url: "Modules/manager.jsp",
                                data: parametros,
                                dataType: 'json',
                                beforeSend: function (xhr) {
                                    block("Cargando...");
                                },
                                success: function(data, status, request){
                                    $("#id_chp").val(data.row.id);
                                    $("#opt_chp").val("2");
                                    show_OkDialog($("#save_Dialog_chp"), "Satisfactory process");
                                },
                                error: function (xhr, ajaxOptions, err) {
                                    alert(err);
                                    show_OkDialog($("#error_Dialog_chp"), "Error");
                                },
                                complete: function(){
                                    unBlock();
                                }
                            });
                        }   
                }
                
                function delete_chp(){
                    
                    //Confirmacion
                    if($("#opt_chp").val() == 2){
                        $( "#dialog-confirm_chp" ).dialog({
                            resizable: false,
                            height: "auto",
                            width: 400,
                            modal: true,
                            buttons: {
                              "Delete": function() {
                                deleteReg_chp();
                                $( this ).dialog( "close" );
                              },
                              Cancelar: function() {
                                $( this ).dialog( "close" );
                              }
                            }
                        });    
                    }else{
                        alert("You must load a record to be able to delete it");
                    }
                }
                function deleteReg_chp(){
                    var parametros = {
                        "id_chp": $("#id_chp").val(),
                        "opcion": 3,
                        "iduser": <%=session.getAttribute("idusu") %>,
                        "from": "chp"
                    };
                        
                        
                    if($("#opt_chp").val() == 2){
                        $.ajax({
                                type: "POST",
                                url: "Modules/manager.jsp",
                                data: parametros,
                                dataType: 'json',
                                beforeSend: function (xhr) {
                                    block("Cargando...");
                                },
                                success: function(data, status, request){
                                    cleanAll_chp();
                                    $("#id_chp").val("");
                                    $("#opt_chp").val("1");
                                    $('#compfactors1_chp').attr('checked', 'checked');
                                    onchange_comf_chp();
                                    show_OkDialog($("#delete_Dialog_chp"), "Satisfactory process");
                                },
                                error: function (xhr, ajaxOptions, err) {
                                    alert(err);
                                    show_OkDialog($("#error_Dialog_chp"), "Error");
                                },
                                complete: function(){
                                    unBlock();
                                }
                            });

                    }else{
                        alert("You must load a record to be able to delete it");
                    }
                }
                
                
            </script>
        
            <div id="load_Dialog_chp" title="Basic dialog" style='display:none;'>
                <p>Successfully uploaded data</p>
            </div>
            
            <div id="save_Dialog_chp" title="Basic dialog" style='display:none;'>
                <p>Data saved successfully</p>
            </div>
            
            <div id="error_Dialog_chp" title="Basic dialog" style='display:none;'>
                <p>An error has occurred in the process</p>
            </div>
            
            <div id="calculate_Dialog_chp" title="Basic dialog" style='display:none;'>
                <p>Calculation done successfully</p>
            </div>
            
            <div id="delete_Dialog_chp" title="Basic dialog" style='display:none;'>
                <p>Successfully deleted record</p>
            </div>
            
            <div id="dialog-confirm_chp" title="Delete record" style='display:none;'>
                <p><span class="ui-icon ui-icon-alert" style="float:left; margin:12px 12px 20px 0;"></span>
                    Are you sure you want to permanently delete this record?
                </p>
            </div>
    </body>
</html>