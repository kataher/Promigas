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
                <h2><strong>Steel Pipeline Crossings: </strong>Track Load Analysis</h2>
            </div>
            <div class="col-lg-3"> 

                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_tla()">
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
                                <div id="div-table_tla"></div>
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
                <input  class="form-control" type="text" id="description_tla" name="description_tla"><br>
                Projects: 
                <select class="form-control" id="proyects_sel_tla" name="proyects_sel_tla"> </select>
            </div>
        </div>
        <hr> 
        <div class="col-lg-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Propiedades de Tuberia
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <form role="form">
                                <div class="form-group">
                                    
                                    <div id="Lpipe">
                                        
                                     <div class="form-group">
                                      <div class="col-md-12">
                                       <label>Nominal Pipe Size:</label> 
                                      </div>
                                      <div class="col-md-12">
                                      <div id="div_nominalps_sel_tla">
                                       <select class="form-control" id="nominalps_sel_tla" name="nominalps_sel_tla"> </select></div>
                                      </div>
                                     </div>
                                     <div class="form-group">
                                        <div class="col-lg-12">                      
                                          <label>Wall Thickness [.in]:</label>
                                        </div> 
                                       <div class="col-lg-12" id="div_wt_sel_tla">
                                         <select class="form-control" id="wt_sel_tla" name="wt_sel_tla"> </select>
                                       </div>
                                     </div> 
                                    <div class="form-group">
                                      <div class="col-md-12">
                                        <label>Grade:</label> 
                                      </div>
                                      <div class="col-md-12">
                                          <div id="div_grade_sel_tla">
                                        <select class="form-control" id="grade_sel_tla" name="grade_sel_tla"> </select>
                                          </div>
                                      </div>
                                    </div>
                                    </div>    
                                    <div class="form-group">
                                      <div class="col-md-12">
                                        <label>Design Class Location:</label> 
                                      </div>
                                      <div class="col-md-12">
                                       <div id="div_desing_sel_tla">
                                        <select class="form-control" id="desing_sel_tla" name="desing_sel_tla"> 
                                            <option>1</option>
                                            <option>2</option>
                                            <option>3</option>
                                        </select>
                                       </div>
                                      </div>
                                    </div>
                                    <div class="form-group">
                                      <div class="col-md-12">
                                        <label>Operating Class:</label> 
                                      </div>
                                      <div class="col-md-12">
                                       <div id="div_operating_sel_tla">
                                        <select class="form-control" id="desing_sel_tla" name="operating_sel_tla"> 
                                            <option>1</option>
                                            <option>2</option>
                                            <option>3</option>
                                            <option>4</option>
                                        </select>
                                       </div>
                                      </div>
                                    </div>
                                   
                                    <div class="form-group">
                                      <div class="col-md-12">
                                        <label>Soil Type:</label> 
                                      </div>
                                      <div class="col-md-12">
                                       <div id="div_soiltype_sel_tla">
                                       <div id="div_cole_sel_tla" name="div_cole_sel_tla">
                                         <select class="form-control" id="sel_emp_tla" name="sel_emp_tla"> </select>
                                        </div>
                        
                                       </div>
                                      </div>
                                    </div>
                                    
                                     <div class="form-group">
                                      <div class="col-md-12">
                                        <label>Crossing Construction Type:</label> 
                                      </div> 
                                      <div class="col-md-12">
                                       <div id="div_crocoty_sel_tla">
                                        <select class="form-control" id="crocoty_sel_tla" name="crocoty_sel_tla"> 
                                        </select>
                                       </div>
                                      </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>  
            </div>
        </div>
        <div class="col-lg-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Datos Operacionales y de la Tuberia
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <form role="form">
                                <div class="form-group">
                                    <label>Pipe Outside Diameter:</label>
                                    <input class="form-control" id="pipeOutsideDiameter_tl" name="pipeOutsideDiameter_tl" type="text" required/>
                                    <br/>
                                    <label>Pipe Wall Thickness:</label>
                                    <input class="form-control" id="pipeWallThickness_tl" name="pipeWallThickness_tl" type="text" required/>
                                    <br/>
                                    <label>Specified Minimum Yield Strength:</label>
                                    <input class="form-control" id="specificiedMinimunYieldStrenght_tl" name="specificiedMinimunYieldStrenght_tl" type="text" required/>
                                    <br/>
                                    <label>Maximum Allowable Internal Stress:</label>
                                    <input class="form-control" id="maximumAllowableInternalStress_tl" name="maximumAllowableInternalStress_tl" type="text" required/>
                                    <br/>
                                    <label>Maximum Allowable Combined Stress:</label>
                                    <input class="form-control" id="maximumAllowableCombinedStress_tl" name="maximumAllowableCombinedStress_tl" type="text" required/>
                                    <br/>
                                    <label>Km-Friction Force Coefficient:</label>
                                    <input class="form-control" id="frictionForceCoefficient_tl" name="frictionForceCoefficient_tl" type="text" required/>
                                    <br/>
                                    <label>Weight per Unit of Backfill[lbs/ft3]:</label>
                                    <input class="form-control" id="weigthPerUnitOfBackfill_tl" name="weigthPerUnitOfBackfill_tl" type="text" required/>
                                    <br/>
                                    <label>Impact Factor:</label>
                                    <input class="form-control" id="impactFactor_tl" name="impactFactor_tl" type="text" value="1.5" required/>
                                    <br/>
                                    <label>Operating Weight (Object with Tracks):</label>
                                    <input class="form-control" id="operatingWeight_tl" name="operatingWeight_tl" type="text"  required/>
                                    <br/>
                                    <label>Width of Standard Track Shoe:</label>
                                    <input class="form-control" id="widthOfStandarTrackShoe_tl" name="widthOfStandarTrackShoe_tl" type="text" value="24" required/>
                                    <br/>
                                    <label>Length of the Track on the Ground:</label>
                                    <input class="form-control" id="lengthOfTheTrackOnTheGround_tl" name="lengthOfTheTrackOnTheGround_tl" value="15" type="text" required/>
                                    <br/>
                                    <label>Kb-Bending Coefficient:</label>
                                    <input class="form-control" id="bendingCoefficient_tl" name="bendingCoefficient_tl" type="text" required/>
                                    <br/>
                                    <label>Kz-Deflection Coefficient:</label>
                                    <input class="form-control" id="deflectionCoefficient_tl" name="deflectionCoefficient_tl" type="text" required/>
                                    <br/>
                                    <label>Pipe Internal Pressure:</label>
                                    <input class="form-control" id="pipeInternalPressure_tl" name="pipeInternalPressure_tl" type="text" required/>
                                    <br/>
                                    <label>H-Vertical Depth of the Soil Cover:</label>
                                    <input class="form-control" id="verticaDepthOfTheSoilCover_tl" name="verticaDepthOfTheSoilCover_tl" type="text" required/>
                                    <br/>
                                    <label>B-Trench Width:</label>
                                    <input class="form-control" id="trenchWidth_tl" name="trenchWidth_tl" type="text" required/>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>  
            </div>
        </div>
        <div class="col-lg-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Include Longitudinal Bending Stress in Calculation
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <form role="form">
                                <div class="form-group">
                                    <div class="radio-inline" >
                                        <label><input type="radio" id="Cyes" name="Coption_tl" onclick="Checked()">Yes</label>
                                    </div>
                                    <div class="radio-inline">
                                        <label><input type="radio" id="CNo" name="Coption_tl" onclick="Checked()">No</label>
                                    </div>
                                    <br/>
                                    <div id="ifyes">
                                        <label>X - Longitudinal Distance:</label>
                                        <input class="form-control" id="longitudinalDistance_tl" name="longitudinalDistance_tl" type="text" required/>
                                        <br/>
                                        <label>Y - Vertical Deflection:</label>
                                        <input class="form-control" id="verticalDeflection_tl" name="verticalDeflection_tl" type="text" required/>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>  
            </div>
        </div>
        <div class="col-lg-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Resultados
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <form role="form">
                                <div class="form-group">
                                    <label>Load Coefficient:</label>
                                    <input class="form-control" id="loadCoefficient_tl" name="loadCoefficient_tl" type="text" required/>
                                    <br/>
                                    <label>Load due to Overburden:</label>
                                    <input class="form-control" id="loadDueToOverburden_tl" name="loadDueToOverburden_tl" type="text" required/>
                                    <br/>
                                    <label>m - Influence Factor:</label>
                                    <input class="form-control" id="mInfluenceFactor_tl" name="mInfluenceFactor_tl" type="text" required/>
                                    <br/>
                                    <label>n - Influence Factor:</label>
                                    <input class="form-control" id="nInfluenceFactor_tl" name="nInfluenceFactor_tl" type="text" required/>
                                    <br/>
                                    <label>Influence Coefficient:</label>
                                    <input class="form-control" id="influenceCoefficient_tl" name="influenceCoefficient_tl" type="text" required/>
                                    <br/>
                                    <label>Max Static Pressure:</label>
                                    <input class="form-control" id="maxStaticPressure_tl" name="maxStaticPressure_tl" type="text" required/>
                                    <br/>
                                    <label>Total Track Load:</label>
                                    <input class="form-control" id="totalTrackLoad_tl" name="totalTrackLoad_tl" type="text" required/>
                                    <br/>
                                    <label>Total Load:</label>
                                    <input class="form-control" id="totalLoad_tl" name="totalLoad_tl" type="text" required/>
                                    <br/>
                                    <label>Logitudinal Bending Stress:</label>
                                    <input class="form-control" id="longitudinalBendingStress_tl" name="longitudinalBendingStress_tl" type="text" required/>
                                    <br/>
                                    <label>Circumferential Stress:</label>
                                    <input class="form-control" id="circumferentialStress_tl" name="circumferentialStress_tl" type="text" required/>
                                    <br/>
                                    <label>Hoop Stress:</label>
                                    <input class="form-control" id="hoopStress_tl" name="hoopStress_tl" type="text" required/>
                                    <br/>
                                    <label>Total Circumferential Stress:</label>
                                    <input class="form-control" id="totalCircumferentialStress_tl" name="totalCircumferentialStress_tl" type="text" required/>
                                    <br/>
                                    <label>Total Combined Stress:</label>
                                    <input class="form-control" id="totalCombinedStress_tl" name="totalCombinedStress_tl" type="text" required/>
                                    <br/>
                                    <label>Percent of SMYS:</label>
                                    <input class="form-control" id="percentOfSYMS_tl" name="percentOfSYMS_tl" type="text" required/>
                                    <br/>
                                    <input class="form-control" id="isSafe_tl" name="isSafe_tl" type="text" required/>
                                    <br/>
                                    <input type="button" value="Calculate" id="calculatebtn_tl" name="calculatebtn_tl" class="btn btn-info btn-block"  onclick="calculate_tl()" >
                                    <input type="button" value="Save" id="savebtn_tl" name="savebtn_tl" class="btn btn-success btn-block">   
                                    <input type="button" value="Reportar" id="reportbtn_tl" name="reportbtn_tl" class="btn btn-warning btn-block">   
                                    <input type="button" value="Cerrar" id="clearbtn_tl" name="clearbtn_tl" class="btn btn-danger btn-block">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>  
            </div>
        </div>
        <script>
            
             $(document).ready(function() {  
                    getproyectos(<%=session.getAttribute("idusu")%>,
                        $("#proyects_sel_tla"),
                        $("#error_Dialog_tla"));
                        
                    $("#opt_tla").val("1");
                    $('#api5l_tla').attr('checked', 'checked');
                    //load_nps_sel_tla("5l");
                    //load_np_sel_tla("soiltype44");
                    //load_crocoty_sel_tla("kzdeco44");
                    //load_grade_sel_tla("gra5l");
                    //onchange_wt_tla(); 
                    //onchange_gra_tla();
                    //load_joinf_sel_tla("jointf5l");
                    //load_desingf_sel_tla();
                    
                });
            function calculate_tl(){
                    var variables = {
                        "TextBox5"  : $("#pipeOutsideDiameter_tl").val(),
                        "TextBox6"  : $("#pipeWallThickness_tl").val(),
                        "TextBox7"  : $("#specificiedMinimunYieldStrenght_tl").val(),
                        "TextBox8"  : $("#maximumAllowableInternalStress_tl").val(),
                        "TextBox9"  : $("#maximumAllowableCombinedStress_tl").val(),
                        "TextBox10"  : $("#frictionForceCoefficient_tl").val(),
                        "TextBox11"  : $("#weigthPerUnitOfBackfill_tl").val(),
                        "TextBox12"  : $("#impactFactor_tl").val(),
                        "TextBox13"  : $("#operatingWeight_tl").val(),
                        "TextBox14"  : $("#widthOfStandarTrackShoe_tl").val(),
                        "TextBox15"  : $("#lengthOfTheTrackOnTheGround_tl").val(),
                        "TextBox16"  : $("#bendingCoefficient_tl").val(),
                        "TextBox17"  : $("#deflectionCoefficient_tl").val(),
                        "TextBox18"  : $("#pipeInternalPressure_tl").val(),
                        "TextBox19"  : $("#verticaDepthOfTheSoilCover_tl").val(),
                        "TextBox20"  : $("#trenchWidth_tl").val(),
                        "TextBox21"  : $("#longitudinalDistance_tl").val(),
                        "TextBox22"  : $("#verticalDeflection_tl").val()   
                    };
                  
                     var res = trackliadanalysis(variables); 
                  
                   $("#loadCoefficient_tl").val(res[0]);
                   $("#loadDueToOverburden_tl").val(res[1]);
                   $("#mInfluenceFactor_tl").val(res[2]);
                   $("#nInfluenceFactor_tl").val(res[3]);
                   $("#influenceCoefficient_tl").val(res[4]);
                   $("#maxStaticPressure_tl").val(res[5]);
                   $("#totalTrackLoad_tl").val(res[6]);
                   $("#totalLoad_tl").val(res[7]);
                   $("#longitudinalBendingStress_tl").val(res[8]);
                   $("#circumferentialStress_tl").val(res[9]);
                   $("#hoopStress_tl").val(res[10]);
                   $("#totalCircumferentialStress_tl").val(res[11]);
                   $("#totalCombinedStress_tl").val(res[12]);
                   $("#percentOfSYMS_tl").val(res[13]);
                   $("#isSafe_tl").val(res[14]);
                   
                  // $("#influenceCoefficient_tl").val(res[4]);
                   //$("#pen_depth_milpd").val(res[5]);
                   show_OkDialog($("#calculate_Dialog_milpd"), "Proceso satisfactorio");
                }  
         function load_nps_sel_tla(type){
                    var parametros = {
                            "combo": "npsn",
                            "type": type,
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
                            var newHtml = "<select class=\"form-control\" name=\"nominalps_sel_tla\" id= \"nominalps_sel_tla\" onchange=\"onchange_nps_tla()\">" + data;
                            $("#div_nominalps_sel_tla").html(newHtml);
                             var res =  $("#nominalps_sel_tla option:selected").html();
                             $("#nom_pipeop_tla").val(res); 
                            $("#nomout_pipeop_tla").val($("#nominalps_sel_tla").val());
                            load_wt_sel_tla();
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_tla"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                function load_wt_sel_tla(){
                var parametros = {
                    "combo": "wtn",
                    "nps": $("#nominalps_sel_tla").val(),
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
                        var newHtml = "<select class=\"form-control\" name=\"wt_sel_tla\" id= \"wt_sel_tla\" onchange=\"onchange_wt_tla()\">" + data;
                        $("#div_wt_sel_tla").html(newHtml);                            
                        $("#nomwall_pipeop_tla").val($("#wt_sel_tla").val().split(",")[1]);

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_tla"), "Error");
                    },
                    complete: function(){
                        unBlock();
                    }
                 });
            }
             
              function load_grade_sel_tla(idcombo){
                    var parametros = {
                            "combo": idcombo,
                            "opcion" : "5"
                    };
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        async: false,
                        data: parametros,
                        beforeSend: function (xhr) {                            
                            block("Cargando...");
                        },
                        success: function(data, status, request){ 
                            var newHtml = "<select class=\"form-control\" name=\"grade_sel_tla\" id=\"grade_sel_tla\" onchange=\"onchange_gra_tla()\">" + data;
                            $("#div_grade_sel_tla").html(newHtml); 
                            
                            var x = $("#grade_sel_tla").val();
                            $("#specifiedmys_tla").val(x.split(",")[1]);
                            var res =  $("#grade_sel_tla option:selected").html();
                             $("#gra_pipeop_tla").val(res); 
                             $("#yield_pipeop_tla").val(x.split(",")[1]); 
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_tla"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function onchange_nps_tla(){
                    var res =  $("#nominalps_sel_tla option:selected").html();
                    $("#pipeOutsideDiameter_tl").val($("#nominalps_sel_tla").val());
                    load_wt_sel_tla();
                }
                function onchange_nps44_tla(){
                    var res =  $("#sel_emp_tla option:selected").html();
                    var po = $("#sel_emp_tla").val().trim().split(",")[1];
                    var po1 = $("#sel_emp_tla").val().trim().split(",")[2];
                    $("#frictionForceCoefficient_tl").val(po);
                    $("#weigthPerUnitOfBackfill_tl").val(po1);
                }
                   function onchange_wt_tla(){
                    $("#pipeWallThickness_tl").val($("#wt_sel_tla").val().split(",")[1]);
                }
                function onchange_gra_tla(){
                  $("#specificiedMinimunYieldStrenght_tl").val($("#grade_sel_tla").val().split(",")[1]);
                }
                function onchange_cocoty44_tla(){
                  var po = $("#crocoty_sel_tla").val().trim().split(",")[1];
                  var po1 = $("#crocoty_sel_tla").val().trim().split(",")[2];
                  $("#bendingCoefficient_tl").val(po);
                  $("#deflectionCoefficient_tl").val(po1);  
                }
             function load_np_sel_tla(idcombo){
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
                            var newHtml = "<select class=\"form-control\" name=\"sel_emp_tla\" id= \"sel_emp_tla\" onchange=\"onchange_nps44_tla()\">" + data;
                           
                            $("#div_cole_sel_tla").html(newHtml);
                            var po = $("#sel_emp_tla").val().trim().split(",")[1];
                            var po1 = $("#sel_emp_tla").val().trim().split(",")[2];
                            $("#frictionForceCoefficient_tl").val(po);
                            $("#weigthPerUnitOfBackfill_tl").val(po1);
                           onchange_nps_tla();
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_tla"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                } 
                  function load_crocoty_sel_tla(idcombo){
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
                            var newHtml = "<select class=\"form-control\" name=\"crocoty_sel_tla\" id= \"crocoty_sel_tla\" onchange=\"onchange_cocoty44_tla()\">" + data;
                           
                            $("#div_crocoty_sel_tla").html(newHtml);
                            var po = $("#crocoty_sel_tla").val().trim().split(",")[1];
                            var po1 = $("#crocoty_sel_tla").val().trim().split(",")[2];
                            $("#bendingCoefficient_tl").val(po);
                            $("#deflectionCoefficient_tl").val(po1);
                           onchange_cocoty44_tla();
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_tla"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }  
                function onchange_cocty44_tla(){
                    var po = $("#crocoty_sel_tla").val().trim().split(",")[1];
                            var po1 = $("#crocoty_sel_tla").val().trim().split(",")[2];
                            $("#bendingCoefficient_tl").val(po);
                            $("#deflectionCoefficient_tl").val(po1);
                }
    </script>
    </body>
    
</html>