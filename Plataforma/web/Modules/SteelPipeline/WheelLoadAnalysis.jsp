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
                <h2><strong>Steel Pipeline Crossings:</strong>Wheel Load Analysis</h2>
            </div>
            <div class="col-lg-3"> 

                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_wl()">
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
                                <div id="div-table_wl"></div>
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
                <input  class="form-control" type="text" id="description_wl" name="description_wl"><br>
                Projects: 
                <select class="form-control" id="proyects_sel_wl" name="proyects_sel_wl"> </select>
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
                                      <div id="div_nominalps_sel_wl">
                                       <select class="form-control" id="nominalps_sel_wl" name="nominalps_sel_wl"> </select></div>
                                      </div>
                                     </div>
                                     <div class="form-group">
                                        <div class="col-lg-12">                      
                                          <label>Wall Thickness [.in]:</label>
                                        </div> 
                                       <div class="col-lg-12" id="div_wt_sel_wl">
                                         <select class="form-control" id="wt_sel_wl" name="wt_sel_wl"> </select>
                                       </div>
                                     </div> 
                                    <div class="form-group">
                                      <div class="col-md-12">
                                        <label>Grade:</label> 
                                      </div>
                                      <div class="col-md-12">
                                          <div id="div_grade_sel_wl">
                                        <select class="form-control" id="grade_sel_wl" name="grade_sel_wl"> </select>
                                          </div>
                                      </div>
                                    </div>
                                    </div>    
                                    <!--div class="form-group">
                                      <div class="col-md-12">
                                        <label>Design Class Location:</label> 
                                      </div>
                                      <div class="col-md-12">
                                       <div id="div_desing_sel_wl">
                                        <select class="form-control" id="desing_sel_wl" name="desing_sel_wl"> 
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
                                       <div id="div_operating_sel_wl">
                                        <select class="form-control" id="desing_sel_wl" name="operating_sel_wl"> 
                                            <option>1</option>
                                            <option>2</option>
                                            <option>3</option>
                                            <option>4</option>
                                        </select>
                                       </div>
                                      </div>
                                    </div>
                                    
                                    <br/>
                                    <div class="form-group">
                                      <div class="col-md-12">
                                        <label>Soil Type:</label> 
                                      </div>
                                      <div class="col-md-12">
                                       <div id="div_soiltype_sel_wl">
                                       <div id="div_cole_sel_wl" >
                                         <select class="form-control" id="sel_emp_wl" name="sel_emp_wl"> </select>
                                        </div>
                                        </div>
                                      </div>
                                    </div>
                                    <div class="form-group">
                                      <div class="col-md-12">
                                        <label>Top Layer/Pavement Type & Material:</label> 
                                      </div> 
                                      <div class="col-md-12">
                                       <div id="div_slayer_sel_wl">
                                        <select class="form-control" id="slayer_sel_wl" name="slayer_sel_wl"> 
                                        </select>
                                       </div>
                                      </div>
                                    </div>
                                   
                                    <div class="form-group">
                                      <div class="col-md-12">
                                        <label>Crossing Construction Type:</label> 
                                      </div> 
                                      <div class="col-md-12">
                                       <div id="div_crocoty_sel_wl">
                                        <select class="form-control" id="crocoty_sel_wl" name="crocoty_sel_wl"> 
                                        </select>
                                       </div>
                                      </div>
                                    </div-->       
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
                                    <input class="form-control" id="pipeOutsideDiameter_wl" name="pipeOutsideDiameter_wl" type="text" required/>
                                    <br/>
                                    <label>Pipe Wall Thickness:</label>
                                    <input class="form-control" id="pipeWallThickness_wl" name="pipeWallThickness_wl" type="text" required/>
                                    <br/>
                                    <label>Specified Minimum Yield Strength:</label>
                                    <input class="form-control" id="specificiedMinimunYieldStrenght_wl" name="specificiedMinimunYieldStrenght_wl" type="text" required/>
                                    <br/>
                                    <label>Maximum Allowable Internal Stress:</label>
                                    <input class="form-control" id="maximumAllowableInternalStress_wl" name="maximumAllowableInternalStress_wl" type="text" required/>
                                    <br/>
                                    <label>Maximum Allowable Combined Stress:</label>
                                    <input class="form-control" id="maximumAllowableCombinedStress_wl" name="maximumAllowableCombinedStress_wl" type="text" required/>
                                    <br/>
                                    <label>Friction Force Coefficient:</label>
                                    <input class="form-control" id="frictionForceCoefficient_wl" name="frictionForceCoefficient_wl" type="text" required/>
                                    <br/>
                                    <label>Weight per Unit of Backfill:</label>
                                    <input class="form-control" id="weigthPerUnitOfBackfill_wl" name="weigthPerUnitOfBackfill_wl" type="text" required/>
                                    <br/>
                                    <label>Impact Factor:</label>
                                    <input class="form-control" id="impactFactor_wl" name="impactFactor_wl" type="text" required/>
                                    <br/>
                                    <label>Modulus of Elasticity of the Top Layer:</label>
                                    <input class="form-control" id="modulusOfElasticityOfTheTopLayer_wl" name="modulusOfElasticityOfTheTopLayer_wl" type="text" required/>
                                    <br/>
                                    <label>Modulus of Elasticity of the Soil Cover:</label>
                                    <input class="form-control" id="modulusOfElasticityOfTheSoilCover_wl" name="modulusOfElasticityOfTheSoilCover_wl" type="text" value="15000" required/>
                                    <br/>
                                    <label>Poisson's Ratio of the Top Layer:</label>
                                    <input class="form-control" id="poissonsRatioOfTheTopLayer_wl" name="poissonsRatioOfTheTopLayer_wl" type="text" required/>
                                    <br/>
                                    <label>Poisson's Ratio of the Soil Cover:</label>
                                    <input class="form-control" id="poissonsRatioOfTheSoilCover_wl" name="poissonsRatioOfTheSoilCover_wl" type="text" value="0.35" required/>
                                    <br/>
                                    <label>Bending Coefficient:</label>
                                    <input class="form-control" id="bendingCoefficient_wl" name="bendingCoefficient_wl" type="text" required/>
                                    <br/>
                                    <label>Deflection Coefficient:</label>
                                    <input class="form-control" id="deflectionCoefficient_wl" name="deflectionCoefficient_wl" type="text" required/>
                                    <br/>
                                    <label>Pipe Internal Pressure:</label>
                                    <input class="form-control" id="pipeInternalPressure_wl" name="pipeInternalPressure_wl" type="text" required/>
                                    <br/>
                                    <label>Concentrated Surface Load:</label>
                                    <input class="form-control" id="concentratedSurfaceLoad_wl" name="concentratedSurfaceLoad_wl" type="text" value="16000" required/>
                                    <br/>
                                    <label>Vertical Depth of the Soil Cover:</label>
                                    <input class="form-control" id="verticaDepthOfTheSoilCover_wl" name="verticaDepthOfTheSoilCover_wl" type="text" required/>
                                    <br/>
                                    <label>Thickness of the Pavement Layer:</label>
                                    <input class="form-control" id="thicknessOfThePavementLayer_wl" name="thicknessOfThePavementLayer_wl" type="text" required/>
                                    <br/>
                                    <label>Trench Width:</label>
                                    <input class="form-control" id="trenchWidth_wl" name="trenchWidth_wl" type="text" required/>
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
                                    <input class="form-control" id="loadCoefficient_wl" name="loadCoefficient_wl" type="text" required readonly/>
                                    <br/>
                                    <label>Load due to Overburden:</label>
                                    <input class="form-control" id="loadDueToOverburden_wl" name="loadDueToOverburden_wl" type="text" required readonly/>
                                    <br/>
                                    <label>Average Vehicular Load:</label>
                                    <input class="form-control" id="averageVehicularLoad_wl" name="averageVehicularLoad_wl" type="text" required readonly/>
                                    <br/>
                                    <label>Total Load:</label>
                                    <input class="form-control" id="totalLoad_wl" name="totalLoad_wl" type="text" required readonly/>
                                    <br/>
                                    <label>Logitudinal Bending Stress:</label>
                                    <input class="form-control" id="longitudinalBendingStress_wl" name="longitudinalBendingStress_wl" type="text" required readonly/>
                                    <br/>
                                    <label>Circumferential Stress:</label>
                                    <input class="form-control" id="circumferentialStress_wl" name="circumferentialStress_wl" type="text" required readonly/>
                                    <br/>
                                    <label>Hoop Stress:</label>
                                    <input class="form-control" id="hoopStress_wl" name="hoopStress_wl" type="text" required readonly/>
                                    <br/>
                                    <label>Total Circumferential Stress:</label>
                                    <input class="form-control" id="totalCircumferentialStress_wl" name="totalCircumferentialStress_wl" type="text" required readonly/>
                                    <br/>
                                    <label>Total Combined Stress:</label>
                                    <input class="form-control" id="totalCombinedStress_wl" name="totalCombinedStress_wl" type="text" required readonly/>
                                    <br/>
                                    <label>Percent of SMYS:</label>
                                    <input class="form-control" id="percentOfSYMS_wl" name="percentOfSYMS_wl" type="text" required readonly/>
                                    <br/>
                                    <input class="form-control" id="isSafe_wl" name="isSafe_wl" type="text" required readonly/>
                                    <br/>
                                    <input type="button" value="Calculate" id="calculatebtn_wl" onclick="calculate_tl()" name="calculatebtn_wl" class="btn btn-info btn-block">
                                    <input type="button" value="Save" id="savebtn_wl" name="savebtn_wl" class="btn btn-success btn-block">   
                                    <input type="button" value="Reportar" id="reportbtn_wl" name="reportbtn_wl" class="btn btn-warning btn-block">   
                                    <input type="button" value="Cerrar" id="clearbtn_wl" name="clearbtn_wl" class="btn btn-danger btn-block">
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
                        $("#proyects_sel_wl"),
                        $("#error_Dialog_wl"));
                        
                    $("#opt_wl").val("1");
                    $('#api5l_wl').attr('checked', 'checked');
                    load_nps_sel_wl("5l");
                    //load_np_sel_wl("soiltype44");
                    //load_crocoty_sel_wl("kzdeco44");
                    //load_slayer_sel_wl("slayer45");
                    load_grade_sel_wl("gra5l");
                    //onchange_wt_wl(); 
                    //onchange_gra_wl();
                  
                    
                });
            function load_nps_sel_wl(type){
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
                            var newHtml = "<select class=\"form-control\" name=\"nominalps_sel_wl\" id= \"nominalps_sel_wl\" onchange=\"onchange_nps_wl()\">" + data;
                            $("#div_nominalps_sel_wl").html(newHtml);
                             var res =  $("#nominalps_sel_wl option:selected").html();
                             //$("#pipeOutsideDiameter_wl").val(res); 
                              $("#pipeOutsideDiameter_wl").val($("#nominalps_sel_wl").val());
                            load_wt_sel_wl();
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_wl"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                function load_wt_sel_wl(){
                var parametros = {
                    "combo": "wtn",
                    "nps": $("#nominalps_sel_wl").val(),
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
                        var newHtml = "<select class=\"form-control\" name=\"wt_sel_wl\" id= \"wt_sel_wl\" onchange=\"onchange_wt_wl()\">" + data;
                        $("#div_wt_sel_wl").html(newHtml);                            
                        $("#pipeWallThickness_wl").val($("#wt_sel_wl").val().split(",")[1]);

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_wl"), "Error");
                    },
                    complete: function(){
                        unBlock();
                    }
                 });
            }
                function load_grade_sel_wl(idcombo){
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
                            var newHtml = "<select class=\"form-control\" name=\"grade_sel_wl\" id=\"grade_sel_wl\" onchange=\"onchange_gra_wl()\">" + data;
                            $("#div_grade_sel_wl").html(newHtml); 
                            
                            onchange_gra_wl();
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_wl"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                function onchange_nps_wl(){
                    var res =  $("#nominalps_sel_wl option:selected").html();
                    $("#pipeOutsideDiameter_wl").val($("#nominalps_sel_wl").val());
                    load_wt_sel_wl();
                }
                function onchange_nps44_wl(){
                    var res =  $("#sel_emp_wl option:selected").html();
                    var po = $("#sel_emp_wl").val().trim().split(",")[1];
                    var po1 = $("#sel_emp_wl").val().trim().split(",")[2];
                    $("#frictionForceCoefficient_wl").val(po);
                    $("#weigthPerUnitOfBackfill_wl").val(po1);
                }
                function onchange_wt_wl(){
                    $("#pipeWallThickness_wl").val($("#wt_sel_wl").val().split(",")[1]);
                }
                function onchange_gra_wl(){
                  $("#specificiedMinimunYieldStrenght_wl").val($("#grade_sel_wl").val().split(",")[1]);
                }
                function onchange_cocoty44_wl(){
                  var po = $("#crocoty_sel_wl").val().trim().split(",")[1];
                  var po1 = $("#crocoty_sel_wl").val().trim().split(",")[2];
                  $("#bendingCoefficient_wl").val(po);
                  $("#deflectionCoefficient_wl").val(po1);  
                }
                function load_np_sel_wl(idcombo){
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
                            var newHtml = "<select class=\"form-control\" name=\"sel_emp_wl\" id= \"sel_emp_wl\" onchange=\"onchange_nps44_wl()\">" + data;
                           
                            $("#div_cole_sel_wl").html(newHtml);
                            var po = $("#sel_emp_wl").val().trim().split(",")[1];
                            var po1 = $("#sel_emp_wl").val().trim().split(",")[2];
                            $("#frictionForceCoefficient_wl").val(po);
                            $("#weigthPerUnitOfBackfill_wl").val(po1);
                           onchange_nps_wl();
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_wl"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                } 
                function load_crocoty_sel_wl(idcombo){
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
                            var newHtml = "<select class=\"form-control\" name=\"crocoty_sel_wl\" id= \"crocoty_sel_wl\" onchange=\"onchange_cocoty44_wl()\">" + data;
                           
                            $("#div_crocoty_sel_wl").html(newHtml);
                            var po = $("#crocoty_sel_wl").val().trim().split(",")[1];
                            var po1 = $("#crocoty_sel_wl").val().trim().split(",")[2];
                            $("#bendingCoefficient_wl").val(po);
                            $("#deflectionCoefficient_wl").val(po1);
                            onchange_cocoty44_wl();
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_wl"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }  
                 function onchange_cocty44_tla(){
                    var po = $("#crocoty_sel_wl").val().trim().split(",")[1];
                    var po1 = $("#crocoty_sel_wl").val().trim().split(",")[2];
                    $("#bendingCoefficient_wl").val(po);
                    $("#deflectionCoefficient_wl").val(po1);
                }
                function load_slayer_sel_wl(idcombo){
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
                            var newHtml = "<select class=\"form-control\" name=\"slayer_sel_wl\" id= \"slayer_sel_wl\" onchange=\"onchange_slayer_wl()\">" + data;
                           
                            $("#div_slayer_sel_wl").html(newHtml);
                            var po = $("#slayer_sel_wl").val().trim().split(",")[1];
                            var po1 = $("#slayer_sel_wl").val().trim().split(",")[2];
                            var po2 = $("#slayer_sel_wl").val().trim().split(",")[3];
                            $("#impactFactor_wl").val(po);
                            $("#modulusOfElasticityOfTheTopLayer_wl").val(po1);
                            $("#poissonsRatioOfTheTopLayer_wl").val(po2);
                           onchange_slayer_wl();
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_wl"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }  
                function onchange_slayer_wl(){
                    var po = $("#slayer_sel_wl").val().trim().split(",")[1];
                    var po1 = $("#slayer_sel_wl").val().trim().split(",")[2];
                    var po2 = $("#slayer_sel_wl").val().trim().split(",")[3];
                    $("#impactFactor_wl").val(po);
                    $("#modulusOfElasticityOfTheTopLayer_wl").val(po1);
                    $("#poissonsRatioOfTheTopLayer_wl").val(po2);
                }
                function calculate_tl(){
                    var variables = {
                        "TextBox14"  : $("#pipeOutsideDiameter_wl").val(),
                        "TextBox15"  : $("#pipeWallThickness_wl").val(),
                        "TextBox16"  : $("#specificiedMinimunYieldStrenght_wl").val(),
                        "TextBox17"  : $("#maximumAllowableInternalStress_wl").val(),
                        "TextBox18"  : $("#maximumAllowableCombinedStress_wl").val(),
                        "TextBox19"  : $("#frictionForceCoefficient_wl").val(),
                        "TextBox20"  : $("#weigthPerUnitOfBackfill_wl").val(),
                        "TextBox21"  : $("#impactFactor_wl").val(),
                        "TextBox22"  : $("#modulusOfElasticityOfTheTopLayer_wl").val(),
                        "TextBox23"  : $("#modulusOfElasticityOfTheSoilCover_wl").val(),
                        "TextBox24"  : $("#poissonsRatioOfTheTopLayer_wl").val(),
                        "TextBox25"  : $("#poissonsRatioOfTheSoilCover_wl").val(),
                        "TextBox26"  : $("#bendingCoefficient_wl").val(),
                        "TextBox27"  : $("#deflectionCoefficient_wl").val(),
                        "TextBox28"  : $("#pipeInternalPressure_wl").val(),
                        "TextBox29"  : $("#concentratedSurfaceLoad_wl").val(),
                        "TextBox30"  : $("#verticaDepthOfTheSoilCover_wl").val(),
                        "TextBox31"  : $("#thicknessOfThePavementLayer_wl").val(),
                        "TextBox32"  : $("#trenchWidth_wl").val()
                    };
                   var   res = wheelLoadAnalysis(variables); 
                  
                   $("#loadCoefficient_wl").val(res[0]);
                   $("#loadDueToOverburden_wl").val(res[1]);
                   $("#averageVehicularLoad_wl").val(res[2]);
                   $("#totalLoad_wl").val(res[3]);
                   $("#longitudinalBendingStress_wl").val(res[4]);
                   $("#circumferentialStress_wl").val(res[5]);
                   $("#hoopStress_wl").val(res[6]);
                   $("#totalCircumferentialStress_wl").val(res[7]);
                   $("#totalCombinedStress_wl").val(res[8]);
                   $("#percentOfSYMS_wl").val(res[9]); 
                   $("#isSafe_wl").val(res[10]); 
                     show_OkDialog($("#calculate_Dialog_milpd"), "Proceso satisfactorio");
                }
        </script>
    </body>
</html>