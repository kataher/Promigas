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
                <h2><strong>Stell Pipe Design:</strong>  Maximum Impact Load & Penetration Depth</h2>
            </div>
            <div class="col-lg-3"> 

                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_milpd()">
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
                                <div id="div-table_milpd"></div>
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
                <input  class="form-control" type="text" id="description_milpd" name="description_milpd"><br>
                Projects: 
                <select class="form-control" id="proyects_sel_milpd" name="proyects_sel_milpd"> </select>
            </div>
        </div>
    <hr>

      <div class="col-lg-6">
        <div class="panel panel-default">
          <div class="panel-heading">
            Datos de Entrada
          </div>
          <div class="panel-body">
            <div class="row">
              <div class="col-lg-12">                              
                <div class="col-lg-7">
                  <label>Weight of Falling Object [lbs]</label>                    
                </div>
                <div class="col-lg-5">
                  <input type="text" class="form-control" id="weight_fall_milpd" name="weight_fall_milpd">
                </div>  
                <div class="col-lg-7">
                  <label>Drop Height [ft.]</label>                    
                </div>
                <div class="col-lg-5">
                  <input type="text" class="form-control" id="drop_height_milpd" name="drop_height_milpd">
                </div>
                <div class="col-lg-7">
                  <label>Impact Area Diameter [ft.]</label>                    
                </div>
                <div class="col-lg-5">
                  <input type="text" class="form-control" id="imp_area_milpd" name="imp_area_milpd">
                </div> 
                <div class="col-lg-7">
                  <label>Unit Weight of Soil [lbs/ft<sup>3</sup>]</label>                    
                </div>
                <div class="col-lg-5">
                  <input type="text" class="form-control" id="weight_soil_milpd" name="weight_soil_milpd">
                </div> 
                <div class="col-lg-7">
                  <label>Poisson's Ratio for Soil</label>                    
                </div>
                <div class="col-lg-5">
                  <input type="text" class="form-control" id="poi_soil_milpd" name="poi_soil_milpd">
                </div> 
                <div class="col-lg-7">
                  <label>Shear Wave Velocity of Near Surface Soil [in./sec]</label>                    
                </div>
                <div class="col-lg-5">
                  <input type="text" class="form-control" id="wave_vel_milpd" name="wave_vel_milpd">
                </div>
                <div class="col-lg-12">
                  <BR>
                  <div class="panel panel-default">
                    <div class="panel-heading">
                      Empirical Coefficient of Penetration:
                    </div>
                    <div class="panel-body">
                      <div class="form-group">
                        <div class="col-lg-8">
                            <div id="div_cole_sel_milpd" name="div_cole_sel_milpd">
                             <select class="form-control" id="sel_emp_coef" name="sel_emp_coef_milpd"> </select>
                            </div>
                         </div> 
                        <div class="col-lg-4">
                          <input type="text" class="form-control" id="emp_coef" name="emp_coef_milpd">
                        </div>                      
                      </div> 
                    </div>
                  </div>
                </div>                
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="col-md-6">
        <div class="panel panel-default">
          <div class="panel-heading">
            Results
          </div>
          <div class="panel-body">
            <div class="row">
              <div class="col-lg-12">                                    
                <div class="form-group">
                  <div class="col-lg-12">     
                  <label>Soil Shear Modulus [psi]:</label>
                  <input type="text" name="soil_mod_milpd" id="soil_mod_milpd" class="form-control"> 
                  </div>
                  <div class="col-lg-12">   
                  <label>Maximun Load at the Soil Surface [lbs]:</label>
                  <input type="text" name="max_soil_milpd" id="max_soil_milpd" class="form-control"> 
                  </div>
                  <div class="col-lg-12">
                  <label>Impact Velocity [ft/sec>]:</label>
                  <input type="text" name="imp_vel_milpd" id="imp_vel_milpd" class="form-control"> 
                  </div>
                  <div class="col-lg-12">
                  <label>Impact Pressure [psi>]:</label>
                  <input type="text" name="imp_press_milpd" id="imp_press_milpd" class="form-control"> 
                  </div>
                  <div class="col-lg-12">
                  <label>Weight per Unit of Impact Area [psi]:</label>
                  <input type="text" name="weight_imparea_milpd" id="weight_imparea_milpd" class="form-control"> 
                  </div>
                  <div class="col-lg-12">                                      
                  <label>Penetration Depth [ft.]:</label>
                  <input type="text" name="pen_depth_milpd" id="pen_depth_milpd" class="form-control"> 
                  </div>                                                                                               
                  <div>    
                    <input type="button" id="calculateBtn_milpd" name="calculateBtn_milpd" value="Calculate" onclick="calculate_milpd()" class="btn btn-info btn-block">
                    <input type="button" id="saveBtn_milpd" name="saveBtn_milpd" value="Save" onclick="save_milpd()" class="btn btn-success btn-block">   
                    <input type="button" id="reportBtn_milpd" name="reportBtn_milpd" value="Delete" onclick="reportReg_milpd()" class="btn btn-danger btn-block">          
                  </div>
                </div>  
              </div> 
            </div>               
          </div>
        </div>
      </div> 

      <div class="col-lg-12">
        <div class="col-md-3">
          <input type="button" id="cleanAllBtn_milpd" name="cleanBtn_milpd" value="Clean All" onclick="cleanAll_milpd()" class="btn btn-warning btn-block">
        </div>
        <div class="col-md-3">
          <input type="button" id="cleanInputBtn_milpd" name="cleanBtn_milpd" value="Clean Input Data" onclick="cleanIn_milpd()" class="btn btn-warning btn-block">
        </div>
        <div class="col-md-3">
          <input type="button" id="cleanOutputBtn_milpd" name="cleanBtn_milpd" value="Clean Output Data" onclick="cleanOut_milpd()" class="btn btn-warning btn-block">
        </div>    
      </div>

      <input type="hidden" id="opt_milpd" name="opt_milpd"> 
      <input type="hidden" id="id_milpd" name="id_milpd">   
      <script>
        $(document).ready(function() {  
            getproyectos(<%=session.getAttribute("idusu")%>,
                        $("#proyects_sel_milpd"),
                        $("#error_Dialog_milpd"));
          $("#opt_milpd").val("1");
          load_np_sel_milpd("mcip");
          
        });         
                function calculate_milpd(){
                    var variables = {
                        "weight_fall_milpd"  : $("#weight_fall_milpd").val(),
                        "drop_height_milpd"  : $("#drop_height_milpd").val(),
                        "imp_area_milpd"     : $("#imp_area_milpd").val(),
                        "weight_soil_milpd"  : $("#weight_soil_milpd").val(),
                        "poi_soil_milpd"     : $("#poi_soil_milpd").val(),
                        "wave_vel_milpd"     : $("#wave_vel_milpd").val(),
                        "emp_coef"           : $("#emp_coef").val()                      
                     };
                  
                     var res = maximun_impact_form(variables); 
                  
                   $("#soil_mod_milpd").val(res[0]);
                   $("#max_soil_milpd").val(res[1]);
                   $("#imp_vel_milpd").val(res[2]);
                   $("#imp_press_milpd").val(res[3]);
                   $("#weight_imparea_milpd").val(res[4]);
                   $("#pen_depth_milpd").val(res[5]);
                   show_OkDialog($("#calculate_Dialog_milpd"), "Proceso satisfactorio");
                }  
                
                function load_np_sel_milpd(idcombo){
                    var parametros = {
                            "combo": idcombo,
                            "type" : "5l",
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
                            var newHtml = "<select class=\"form-control\" name=\"sel_emp_coef\" id= \"sel_emp_coef\" onchange=\"onchange_nps_milpd()\">" + data;
                           
                            $("#div_cole_sel_milpd").html(newHtml);
                            var po = $("#sel_emp_coef").val().trim().split(",")[1];
                            $("#emp_coef").val(po.split(",")[1]);
                            onchange_nps_milpd();
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_milpd"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }  
                function onchange_nps_milpd(){
                    var po = $("#sel_emp_coef").val();
                    $("#emp_coef").val(po.split(",")[1]);
                }
              
                 
                </script>           
  </body>
</html>