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
                <h2><strong>Stell Pipe Design:</strong>  Pipe Anchor Force Analysis</h2>
            </div>
            <div class="col-lg-3"> 

                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_paf()">
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
                                <div id="div-table_paf"></div>
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
                <input  class="form-control" type="text" id="description_paf" name="description_paf"><br>
                Projects: 
                <select class="form-control" id="proyects_sel_paf" name="proyects_sel_paf"> </select>
            </div>
        </div>
    <hr>

      <div class="col-lg-4">
        <div class="panel panel-default">
          <div class="panel-heading">
            Select Pipe Properties
          </div>
          <div class="panel-body">
            <div class="row">
              <div class="col-lg-12">
               <div class="col-lg-12">
                      
                        <label>Nominal pipe size:</label>
                       
                         <div id="div_nomps_sel_paf">
                        <select class="form-control" id="div_nomps_sel_paf" name="div_nomps_sel_paf"> </select>
                        </div>
                      
                      </div>
                       <div class="col-lg-12">
                                         
                        <label>Wall Thickness [.in]:</label>
                     
                        <div id="div_wallt_sel_paf">
                        <select class="form-control" id="wthi_sel_paf" name="wthi_sel_paf"> </select>     
                      </div>
                       
                       </div>
                    
                 
                
                <div class="col-lg-12">
                  <label>Poisson's Ratio<sup>3</sup></label>                    
                </div>
                <div class="col-lg-12">
                  <input type="text" class="form-control" id="poi_paf" name="poi_paf" value="0.3">
                </div>  
                <div class="col-lg-12">
                  <label>Young's Modulus of Elasticity [psi]</label>                    
                </div>
                <div class="col-lg-12">
                  <input type="text" class="form-control" id="you_elas_paf" name="you_elas_paf" value="29000000">
                </div>
                <div class="col-lg-12">
                  <label>Thermal Expansion Coefficient [in./in.°F]</label>                    
                </div>
                <div class="col-lg-12">
                  <input type="text" class="form-control" id="ther_exp_paf" name="ther_exp_paf" value="0.0000065">
                </div>                 
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="col-lg-4">
        <div class="panel panel-default">
          <div class="panel-heading">
            Pipe and Operational Data:
          </div>
          <div class="panel-body">
            <div class="row">
              <div class="col-lg-12">                                    
                <div class="form-group">
                  <label>Design Pressure [psig]:</label>
                  <input type="text" name="design_press_paf" id="design_press_paf" class="form-control" >
                  <label>Nominal Outside Diameter [in.]:</label>
                  <input type="text" class="form-control" id="nomout_paf" name="nomout_paf"> 
                  <label>Nominal Inside Diameter [in.]:</label>
                  <input type="text" class="form-control" id="nomin_paf" name="nomin_paf"> 
                  <label>Nominal Wall Thickness [in.]:</label>
                  <input type="text" class="form-control" id="nom_wall_paf" name="nom_wall_paf">                  
                  <label>Installation Temperature [°F]: </label>            
                  <input type="text" name="temp_paf" id="temp_paf" class="form-control">
                  <label>Operating Temperature [°F]: </label>
                  <input type="text" name="oper_temp_paf" id="oper_temp_paf" class="form-control">
                </div> 
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="col-md-4">
        <div class="panel panel-default">
          <div class="panel-heading">
            Results
          </div>
          <div class="panel-body">
            <div class="row">
              <div class="col-lg-12">                                    
                <div class="form-group">
                  <label>Hoop Stress [psi]:</label>
                  <input type="text" name="hoop_stress_paf" id="hoop_stress_paf" class="form-control"> 
                  <BR>
                  <label>Compressive Stress Due to Temperature Change [psi]:</label>
                  <input type="text" name="comp_stress_paf" id="comp_stress_paf" class="form-control"> 
                  <BR>
                  <label>Net Longitudinal Stress at Point A [psi>]:</label>
                  <input type="text" name="netA_paf" id="netA_paf" class="form-control"> 
                  <BR>
                  <label>Net Longitudinal Stress at Point B [psi>]:</label>
                  <input type="text" name="netB_paf" id="netB_paf" class="form-control"> 
                  <BR>
                  <label>Net Longitudinal Strain at Point B [in./in.]:</label>
                  <input type="text" name="net_strain_A_paf" id="net_strain_A_paf" class="form-control"> 
                  <BR>                                      
                  <label>Soil Resistance [lb./ft]:</label>
                  <input type="text" name="soil_res_paf" id="soil_res_paf" class="form-control"> 
                  <BR>                      
                  <label>Lenght of the Transition Zone A-B [ft.]:</label>
                  <input type="text" name="lenght_zone_paf" id="lenght_zone_paf" class="form-control"> 
                  <BR>
                  <label>Total Pipe Movement at Point B [in.]:</label>
                  <input type="text" name="total_pipe_paf" id="total_pipe_paf" class="form-control"> 
                  <BR>    
                  <label>Anchor Force [lbs.]:</label>
                  <input type="text" name="anchor_force_paf" id="anchor_force_paf" class="form-control"> 
                  <BR>                                                                                                
                  <div>    
                    <input type="button" id="calculateBtn_paf" name="calculateBtn_paf" value="Calculate" onclick="calculate_paf()" class="btn btn-info btn-block">
                    <input type="button" id="saveBtn_paf" name="saveBtn_paf" value="Save" onclick="save_paf()" class="btn btn-success btn-block">   
                    <input type="button" id="reportBtn_paf" name="reportBtn_paf" value="Delete" onclick="reportReg_paf()" class="btn btn-danger btn-block">          
                  </div>
                </div>  
              </div> 
            </div>               
          </div>
        </div>
      </div> 

      <div class="col-lg-12">
        <div class="col-md-3">
          <input type="button" id="cleanAllBtn_paf" name="cleanBtn_paf" value="Clean All" onclick="cleanAll_paf()" class="btn btn-warning btn-block">
        </div>
        <div class="col-md-3">
          <input type="button" id="cleanInputBtn_paf" name="cleanBtn_paf" value="Clean Input Data" onclick="cleanIn_paf()" class="btn btn-warning btn-block">
        </div>
        <div class="col-md-3">
          <input type="button" id="cleanOutputBtn_paf" name="cleanBtn_paf" value="Clean Output Data" onclick="cleanOut_paf()" class="btn btn-warning btn-block">
        </div>    
      </div>

      <input type="hidden" id="opt_paf" name="opt_paf"> 
      <input type="hidden" id="id_paf" name="id_paf">   
         <script>
        $(document).ready(function() {  
            getproyectos(<%=session.getAttribute("idusu")%>,
                        $("#proyects_sel_paf"),
                        $("#error_Dialog_paf"));
                        
          $("#opt_paf").val("1");
          load_np_sel_paf("npsn");
          
        });         
                function calculate_paf(){
                    var variables = {
                        "poi_paf"          : $("#poi_paf").val(),
                        "you_elas_paf"     : $("#you_elas_paf").val(),
                        "ther_exp_paf"     : $("#ther_exp_paf").val(),
                        "design_press_paf" : $("#design_press_paf").val(),
                        "nomout_paf"       : $("#nomout_paf").val(),
                        "nomin_paf"        : $("#nomin_paf").val(),
                        "nom_wall_paf"     : $("#nom_wall_paf").val(),
                        "temp_paf"         : $("#temp_paf").val(),
                        "oper_temp_paf"    : $("#oper_temp_paf").val()
                    };
                  
                     var res = pipeanchorforce_form(variables); 
                  
                   $("#hoop_stress_paf").val(res[0]);
                   $("#comp_stress_paf").val(res[1]);
                   $("#netA_paf").val(res[2]);
                   $("#netB_paf").val(res[3]);
                   $("#net_strain_A_paf").val(res[4]);
                   $("#soil_res_paf").val(res[5]);
                   $("#lenght_zone_paf").val(res[6]);
                   $("#total_pipe_paf").val(res[7]);
                   $("#anchor_force_paf").val(res[8]);
                

                   show_OkDialog($("#calculate_Dialog_paf"), "Proceso satisfactorio");
                }  
                
                function load_np_sel_paf(idcombo){
                    var parametros = {
                            "combo": idcombo,
                            "type": "5l",
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
                            var newHtml = "<select class=\"form-control\" name=\"nomps_sel_paf\" id= \"nomps_sel_paf\" onchange=\"onchange_nps_paf()\">" + data;
                           
                            $("#div_nomps_sel_paf").html(newHtml);
                            var po = $("#nomps_sel_paf").val().trim().split(",")[1];
                            $("#nomout").val(po);
                            load_wt_sel_paf();
                            onchange_nps_paf();
                            onchange_wt_paf();
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_paf"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }  
                 function load_wt_sel_paf(){
                    var idOp = $("#nomps_sel_paf").val();
                     //alert(idOp);
                    var parametros = {
                        "combo": "wtn",
                        "nps": idOp,
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
                           
                            var newHtml = "<select class=\"form-control\" name=\"wthi_sel_paf\" id= \"wthi_sel_paf\" onchange=\"onchange_wt_paf()\">" + data;
                           
                            $("#div_wallt_sel_paf").html(newHtml);
                           
                            
                           if(data.trim() != ""){
                                var val = $("#wthi_sel_paf").val().trim().split(",");
                                $("#wall_pipeop_paf").val(val[1]); 
                            }
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_paf"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
               
                function onchange_nps_paf(){
                    //cleanOut_paf();
                    var po = $("#nomps_sel_paf").val();
                    $("#nom_pipe_paf").val(po);
                    $("#nomout_paf").val(po);
                    load_wt_sel_paf();
                }
                 function onchange_wt_paf(){
                    //cleanOut_paf();
                   var val = $("#wthi_sel_paf").val().trim().split(",");
                   $("#nom_wall_paf").val(val[1]);
                }
                 
                </script>        
  </body>
</html>