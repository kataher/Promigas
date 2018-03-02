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
                <h2><strong>Stell Pipe Design:</strong>  Wall Thickness Polyethylene Pipe</h2>
            </div>
            <div class="col-lg-3"> 

                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_wtpe()">
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
                                <div id="div-table_wtpe"></div>
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
                <input  class="form-control" type="text" id="description_wtpe" name="description_wtpe"><br>
                Projects: 
                <select class="form-control" id="proyects_sel_wtpe" name="proyects_sel_wtpe"> </select>
            </div>
        </div>
    <hr>

      <div class="col-lg-4">
        <div class="panel panel-default">
          <div class="panel-heading">
            Pipe and Operational Properties:
          </div>
          <div class="panel-body">
            <div class="row">
              <div class="col-lg-12">                                                 
                <div class="panel panel-default">
                  <div class="panel-heading">
                    Polyethylene Line Pipe API 15LE:
                  </div>
                  <div class="panel-body">
                    <div class="col-lg-12">
                        <label>Tamaño nominal de la tubería</label>                        
                        <div id="div_cole_sel_wtpe">
                          <select class="form-control" id="cole_sel_coef_wtpe" name="cole_sel_coef_wtpe"> </select>    
                        </div>
                                      
                    </div>                      
                                      
                  </div>
                </div>
                <div class="panel panel-default">
                  <div class="panel-heading">
                    HDB - 73°F
                  </div>
                  <div class="panel-body">
                    <div class="col-lg-12">
                        <label>Piping Material Designation:</label>                        
                         <div class="col-lg-12" id="div_material_sel_wtpe">
                        <select class="form-control" id="material_sel_wtpe" name="material_sel_wtpe"> </select>
                      </div> 
                      
                    </div>                      
                                        
                  </div>
                </div>
        
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="col-lg-5">
        <div class="panel panel-default">
          <div class="panel-heading">
            Selected Data:
          </div>
          <div class="panel-body">
            <div class="row">
              <div class="col-lg-12">                                    
                <div class="form-group">
                  <label>Nominal pipe size:</label>
                  <input type="text" class="form-control" id="nom_pipeop_wtpe" name="nom_pipeop_wtpe"> 
                  <label>Outside Diameter [in.]:</label>
                  <input type="text" class="form-control" id="out_pipeop_wtpe" name="out_pipeop_wtpe"> 
                  <label>Design Pressure [psi.]:</label>
                  <input type="text" class="form-control" id="despress_pipeop_wtpe" name="despress_pipeop_wtpe"> 
                  <label>Hydrostatic Design Basis [psi]: </label>            
                  <input type="text" name="hyd_pipeop_wtpe" id="hyd_pipeop_wtpe" class="form-control">
                  <label>Design Factor:</label>
                  <input type="text" name="fact_pipeop_wtpe" id="fact_pipeop_wtpe" class="form-control">
                </div> 
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="col-md-3">
        <div class="panel panel-default">
          <div class="panel-heading">
            Results
          </div>
          <div class="panel-body">
            <div class="row">
              <div class="col-lg-12">                                    
                <div class="form-group">
                  <label>Espesor mínimo de la pared de la tubería [in]:</label>
                  <input type="text" name="minimun_wallthick_wtpe" id="minimun_wallthick_wtpe" class="form-control"> 
                  <BR>
                  <div>    
                    <input type="button" id="calculateBtn_wtpe" name="calculateBtn_wtpe" value="Calculate" onclick="calculate_wtpe()" class="btn btn-info btn-block">
                    <input type="button" id="saveBtn_wtpe" name="saveBtn_wtpe" value="Save" onclick="save_wtpe()" class="btn btn-success btn-block">   
                    <input type="button" id="delteBtn_wtpe" name="delteBtn_wtpe" value="Eliminar" onclick="deleteReg_wtpe()" class="btn btn-danger btn-block">          
                  </div>
                </div>  
              </div> 
            </div>               
          </div>
        </div>
      </div> 

      <div class="col-lg-12">
        <div class="col-md-3">
          <input type="button" id="cleanAllBtn_wtpe" name="cleanBtn_wtpe" value="Clean All" onclick="cleanAll_wtpe()" class="btn btn-warning btn-block">
        </div>
        <div class="col-md-3">
          <input type="button" id="cleanInputBtn_wtpe" name="cleanBtn_wtpe" value="Clean Input Data" onclick="cleanIn_wtpe()" class="btn btn-warning btn-block">
        </div>
        <div class="col-md-3">
          <input type="button" id="cleanOutputBtn_wtpe" name="cleanBtn_wtpe" value="Clean Output Data" onclick="cleanOut_wtpe()" class="btn btn-warning btn-block">
        </div>    
      </div>

      <input type="hidden" id="opt_wtpe" name="opt_wtpe"> 
      <input type="hidden" id="id_wtpe" name="id_wtpe">   
      <script>
        $(document).ready(function() {  
            getproyectos(<%=session.getAttribute("idusu")%>,
                        $("#proyects_sel_wtpe"),
                        $("#error_Dialog_wtpe"));
                        
          $("#opt_wtpe").val("1");
          load_np_sel_wtpe("npsn");
          load_hyd_sel_wtpe("HDB");
          
        });         
                function calculate_wtpe(){
                    var variables = {
                        "nom_pipeop_wtpe"     : $("#nom_pipeop_wtpe").val(),
                        "out_pipeop_wtpe"     : $("#out_pipeop_wtpe").val(),
                        "despress_pipeop_wtpe": $("#despress_pipeop_wtpe").val(),
                        "hyd_pipeop_wtpe"     : $("#hyd_pipeop_wtpe").val(),
                        "fact_pipeop_wtpe"    : $("#fact_pipeop_wtpe").val()                      
                    };
                  
                     var res = wall_poly_lene_form(variables); 
                  
                   $("#minimun_wallthick_wtpe").val(res[0]);
                   
                   show_OkDialog($("#calculate_Dialog_wtpe"), "Proceso satisfactorio");
                }  
                
                function load_np_sel_wtpe(idcombo){
                    var parametros = {
                            "combo": idcombo,
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
                            var newHtml = "<select class=\"form-control\" name=\"cole_sel_coef_wtpe\" id= \"cole_sel_coef_wtpe\" onchange=\"onchange_nps_wtpe()\">" + data;
                           
                            $("#div_cole_sel_wtpe").html(newHtml);
                            var po = $("#cole_sel_coef_wtpe").val().trim().split(",")[1];
                            $("#nom_pipeop_wtpe").val(po);
                            $("#out_pipeop_wtpe").val(po);
                            onchange_nps_wtpe();
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_wtpe"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }  
                function onchange_nps_wtpe(){
                    var po = $("#cole_sel_coef_wtpe").val();
                     $("#nom_pipeop_wtpe").val(po);
                     $("#out_pipeop_wtpe").val(po);
                }
                
                 function load_hyd_sel_wtpe(idcombo){
                    var parametros = {
                            "combo": idcombo,
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
                            var newHtml = "<select class=\"form-control\" name=\"material_sel_wtpe\" id= \"material_sel_wtpe\" onchange=\"onchange_hyd_wtpe()\">" + data;
                           
                            $("#div_material_sel_wtpe").html(newHtml);
                            var po = $("#material_sel_wtpe").val().trim().split(",")[1];
                            $("#hyd_pipeop_wtpe").val(po.split(",")[1]);
                            //$("#out_pipeop_wtpe").val(po);
                            onchange_hyd_wtpe();
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_wtpe"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }  
                function onchange_hyd_wtpe(){
                    var po = $("#material_sel_wtpe").val();
                     $("#hyd_pipeop_wtpe").val(po.split(",")[1]);
                    
                }
              
                 
                </script>           
  </body>
</html>