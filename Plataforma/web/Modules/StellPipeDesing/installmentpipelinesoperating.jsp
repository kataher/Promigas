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
                <h2><strong>Stell Pipe Design:</strong>  Installment of Pipelines by Horizontal Directional Drilling - Operation Stress Analysis </h2>
            </div>
            <div class="col-lg-3"> 

                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_ippo()">
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
                                <div id="div-table_ippo"></div>
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
                <input  class="form-control" type="text" id="description_ippo" name="description_ippo"><br>
                Projects: 
                <select class="form-control" id="proyects_sel_ippo" name="proyects_sel_ippo"> </select>
            </div>
        </div>
    <hr>
    <div class="col-lg-8">
        <div class="panel panel-default">
          <div class="panel-heading">
            Pipe and Operational Data:
          </div>
          <div class="panel-body">
            <div class="row">
              <div class="col-lg-12">
                <div class="form-group">
                  <div class="col-lg-12">
                    <label>Operating Pressure [psig]:</label>
                  
                    <input type="text" name="oper_press_ippo" id="oper_press_ippo" class="form-control">
                  </div>                     
                  <div class="col-lg-12">
                    <label>Pipe outside diameter [in.]:</label>
                  
                    <input type="text" name="pipe_dia_ippo" id="pipe_dia_ippo" class="form-control">
                  </div>                       
                  <div class="col-lg-12">
                    <label>Wall Thickness [in.]:</label>
                   
                    <input type="text" name="pipe_wall_ippo" id="pipe_wall_ippo" class="form-control">
                  </div> 
                  <div class="col-lg-12">
                    <label>Specified Minimun Yield Strength [psi]:</label>
                   
                    <input type="text" name="min_yield_ippo" id="min_yield_ippo" class="form-control">
                  </div>  
                  <div class="col-lg-12">
                    <label>Installation Temperature [°F]:</label>
                 
                    <input type="text" name="inst_temp_ippo" id="inst_temp_ippo" class="form-control">
                  </div>                     
                  <div class="col-lg-12">
                    <label>Operating Temperature [°F]:</label>
                  
                    <input type="text" name="oper_temp_ippo" id="oper_temp_ippo" class="form-control">
                  </div>                       
                  <div class="col-lg-12">
                    <label>Depth of the Pipe at Horizontal Section [ft]:</label>
                   
                    <input type="text" name="depth_pipe_ippo" id="depth_pipe_ippo" class="form-control">
                  </div> 
                  <div class="col-lg-12">
                    <label>Groundwater Table below Datum [ft]:</label>
                  
                    <input type="text" name="ground_table_ippo" id="ground_table_ippo" class="form-control">
                  </div>  
                  <div class="col-lg-12">
                    <label>Shortest Radius of Curvature [ft]:</label>
                    <input type="text" name="short_rad_ippo" id="short_rad_ippo" class="form-control">
                  </div>
                  <div class="col-lg-12">
                      <label>Poisson's Ratio for Steel:</label>
                     
                      <input type="text" name="poi_rat_ippo" id="poi_rat_ippo" class="form-control">
                    </div>  
                  <div class="col-lg-12">
                      <label>Young's Modulus for Steel [ksi]:</label>
                   
                      <input type="text" name="youn_steel_ippo" id="youn_steel_ippo" class="form-control">
                    </div> 
                    <div class="col-lg-12">
                      <label>Coefficient of Thermal Expansion [per°F]:</label>
                    
                      <input type="text" name="coeff_therm_ippo" id="coeff_therm_ippo" class="form-control">
                    </div>
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
                  <label>Bending Stress [psi]:</label>
                  <input type="text" name="bend_stress_ippo" id="bend_stress_ippo" class="form-control">
                  <label>Hoop Stress [psi]:</label>
                  <input type="text" name="hoop_stress_ippo" id="hoop_stress_ippo" class="form-control">
                  <label>Thermal Stress [psi]:</label>
                  <input type="text" name="ther_stress_ippo" id="ther_stress_ippo" class="form-control">
                  <label>Total Longitudinal Compressive Stress [psi]:</label>
                  <input type="text" name="total_long_comp_ippo" id="total_long_comp_ippo" class="form-control">
                  <label>Maximun Shear Stress [psi]:</label>
                  <input type="text" name="max_shear_ippo" id="max_shear_ippo" class="form-control">
                  <label>Maximun Allowable Shear Stress (45% of SMYS) [psi]:</label>
                  <input type="text" name="total_pull_force_ippo" id="total_pull_force_ippo" class="form-control">
                  <label>Operating Conditions:</label>
                  <BR>
                  <input type="text" name="acceptablep_ippo" id="acceptablep_ippo" class="form-control" readonly="readonly">
                  <br>
                  <div>    
                    <input type="button" id="calculateBtn_ippo" name="calculateBtn_ippo" value="Calculate" onclick="calculate_ippo()" class="btn btn-info btn-block">
                    <input type="button" id="saveBtn_ippo" name="saveBtn_ippo" value="Save" onclick="save_ippo()" class="btn btn-success btn-block">   
                    <input type="button" id="reportBtn_ippo" name="reportBtn_ippo" value="Delete" onclick="reportReg_ippo()" class="btn btn-danger btn-block">          
                  </div>                   
                </div>  
              </div> 
            </div>               
          </div>
        </div>
      </div>
                                                
      <div class="col-lg-12">
        <div class="col-md-3">
          <input type="button" id="cleanAllBtn_ippo" name="cleanBtn_ippo" value="Clean All" onclick="cleanAll_ippo()" class="btn btn-warning btn-block">
        </div>
        <div class="col-md-3">
          <input type="button" id="cleanInputBtn_ippo" name="cleanBtn_ippo" value="Clean Input Data" onclick="cleanIn_ippo()" class="btn btn-warning btn-block">
        </div>
        <div class="col-md-3">
          <input type="button" id="cleanOutputBtn_ippo" name="cleanBtn_ippo" value="Clean Output Data" onclick="cleanOut_ippo()" class="btn btn-warning btn-block">
        </div>    
      </div>

      <input type="hidden" id="opt_ippo" name="opt_ippo"> 
      <input type="hidden" id="id_ippo" name="id_ippo">   
      <script>
        $(document).ready(function() {  
            getproyectos(<%=session.getAttribute("idusu")%>,
                        $("#proyects_sel_ippo"),
                        $("#error_Dialog_ippo"));
          $("#opt_ippo").val("1");
          //load_np_sel_ippo("npsn");
          
        });         
                function calculate_ippo(){
                    var variables = {
                        "oper_press_ippo"   : $("#oper_press_ippo").val(),
                        "pipe_dia_ippo"     : $("#pipe_dia_ippo").val(),
                        "pipe_wall_ippo"     : $("#pipe_wall_ippo").val(),
                        "min_yield_ippo"   : $("#min_yield_ippo").val(),
                        "inst_temp_ippo"     : $("#inst_temp_ippo").val(),
                        "oper_temp_ippo"     : $("#oper_temp_ippo").val(),
                        "depth_pipe_ippo"   : $("#depth_pipe_ippo").val(),
                        "ground_table_ippo"     : $("#ground_table_ippo").val(),
                        "short_rad_ippo"     : $("#short_rad_ippo").val(),
                        "poi_rat_ippo"      : $("#poi_rat_ippo").val(),
                        "youn_steel_ippo"      : $("#youn_steel_ippo").val(),
                        "coeff_therm_ippo"      : $("#coeff_therm_ippo").val()
                    };
                    var res = installment_pipe_opera_form(variables); 
                   $("#bend_stress_ippo").val(res[0]);
                   $("#hoop_stress_ippo").val(res[1]);
                   $("#ther_stress_ippo").val(res[2]);
                   $("#total_long_comp_ippo").val(res[3]);
                   $("#max_shear_ippo").val(res[4]);
                   $("#total_pull_force_ippo").val(res[5]);
                   $("#acceptablep_ippo").val(res[6]);
                   show_OkDialog($("#calculate_Dialog_ippo"), "Proceso satisfactorio");
                }  
                 
                </script>           
  </body>
</html>