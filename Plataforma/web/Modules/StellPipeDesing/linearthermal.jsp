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
                <h2><strong>Stell Pipe Design:</strong>  Linear Thermal Pipeline Expansion </h2>
            </div>
            <div class="col-lg-3"> 

                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_lther()">
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
                                <div id="div-table_lther"></div>
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
                <input  class="form-control" type="text" id="description_lther" name="description_lther"><br>
                Projects: 
                <select class="form-control" id="proyects_sel_lther" name="proyects_sel_lther"> </select>
            </div>
        </div>
        <hr>

        <div class="col-lg-6">
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">                               
                            <div class="col-lg-6">
                                <label>Pipe Lenght:</label>
                            </div> 
                            <div class="col-lg-6">
                                <input class="form-control" type="text" id="pipe_lenght_lther" name="pipe_lenght_lther"><br>
                            </div> 
                            <div class="col-lg-6">                      
                                <label>Coefficient of Linear Expansion [in./in.°F]:</label>
                            </div> 
                            <div class="col-lg-3">
                                <div id="div_cole_sel_lther">
                                    <select class="form-control" id="cole_sel_coef_lther" name="cole_sel_coef_lther"> </select>
                                </div>

                            </div>
                            <div class="col-lg-3">
                                <input class="form-control" type="text" id="coeff_exp_lther" name="coeff_exp_lther"><br>                  
                            </div>
                            <div class="col-lg-6">
                                <label>Temperature Change [°F]:</label>
                            </div> 
                            <div class="col-lg-6">
                                <input class="form-control" type="text" id="temp_chan_lther" name="temp_chan_lther"><br>
                            </div> 
                            <div class="col-lg-6">
                                <label>Modulus of Elasticity [psi]:</label>
                            </div> 
                            <div class="col-lg-6">
                                <input class="form-control" type="text" id="mod_elas_lther" name="mod_elas_lther"><br>
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
                                <label>Pipe Linear Elongation [in.]:</label>
                                <input type="text" name="pipe_linear_lther" id="pipe_linear_lther" class="form-control">
                                <BR>
                                <label>Longitudinal Stress Due to Temperature Change [psi]:</label>
                                <input type="text" name="long_temp_lther" id="long_temp_lther" class="form-control">
                                <BR>                                                           
                                <div>    
                                    <input type="button" id="calculateBtn_lther" name="calculateBtn_lther" value="Calculate" onclick="calculate_lther()" class="btn btn-info btn-block">
                                    <input type="button" id="saveBtn_lther" name="saveBtn_lther" value="Save" onclick="save_lther()" class="btn btn-success btn-block">   
                                    <input type="button" id="reportBtn_lther" name="reportBtn_lther" value="Delete" onclick="reportReg_lther()" class="btn btn-danger btn-block">          
                                </div>                              
                            </div>  
                        </div> 
                    </div>               
                </div>
            </div>
        </div>       

        <div class="col-lg-12">
            <div class="col-md-3">
                <input type="button" id="cleanAllBtn_lther" name="cleanBtn_lther" value="Clean All" onclick="cleanAll_lther()" class="btn btn-warning btn-block">
            </div>
            <div class="col-md-3">
                <input type="button" id="cleanInputBtn_lther" name="cleanBtn_lther" value="Clean Input Data" onclick="cleanIn_lther()" class="btn btn-warning btn-block">
            </div>
            <div class="col-md-3">
                <input type="button" id="cleanOutputBtn_lther" name="cleanBtn_lther" value="Clean Output Data" onclick="cleanOut_lther()" class="btn btn-warning btn-block">
            </div>    
        </div>

        <input type="hidden" id="opt_lther" name="opt_lther"> 
        <input type="hidden" id="id_lther" name="id_lther">   
        <script>
            $(document).ready(function () {
                getproyectos(<%=session.getAttribute("idusu")%>,
                        $("#proyects_sel_lther"),
                        $("#error_Dialog_lther"));
                $("#opt_lther").val("1");
                load_np_sel_lther("ltpe");

            });
            function calculate_lther() {
                var variables = {
                    "pipe_lenght_lther": $("#pipe_lenght_lther").val(),
                    "coeff_exp_lther": $("#coeff_exp_lther").val(),
                    "temp_chan_lther": $("#temp_chan_lther").val(),
                    "mod_elas_lther": $("#mod_elas_lther").val()
                };

                var res = linear_thermal_form(variables);

                $("#pipe_linear_lther").val(res[0]);
                $("#long_temp_lther").val(res[1]);
                show_OkDialog($("#calculate_Dialog_lther"), "Proceso satisfactorio");
            }

            function load_np_sel_lther(idcombo) {
                var parametros = {
                    "combo": idcombo,
                    "opcion": "5"
                };
                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    async: false,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        var newHtml = "<select class=\"form-control\" name=\"cole_sel_coef_lther\" id= \"cole_sel_coef_lther\" onchange=\"onchange_nps_lther()\">" + data;

                        $("#div_cole_sel_lther").html(newHtml);
                        var po = $("#cole_sel_coef_lther").val().trim().split(",")[1];
                        $("#coeff_exp_lther").val(po.split(",")[1]);
                        onchange_nps_lther();

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_lther"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            function onchange_nps_lther() {
                var po = $("#cole_sel_coef_lther").val();
                $("#coeff_exp_lther").val(po.split(",")[1]);
            }

            function cleanOut_lther() {
                $("#pipe_linear_lther").val("");
                $("#long_temp_lther").val("");
            }

            function cleanIn_lther() {
                $("#pipe_lenght_lther").val("");
                $("#coeff_exp_lther").val("");
                $("#temp_chan_lther").val("");
                $("#mod_elas_lther").val("");
            }

            function cleanAll_lther() {
                cleanOut_lther();
                cleanIn_lther();
            }
        </script>      
    </body>
</html>