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
                <h2><strong>Stell Pipe Design:</strong>  Hoop Stress & Longitudinal Stress </h2>
            </div>
            <div class="col-lg-3"> 

                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_hoop()">
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
                                <div id="div-table_hoop"></div>
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
                <input  class="form-control" type="text" id="description_hoop" name="description_hoop"><br>
                Projects: 
                <select class="form-control" id="proyects_sel_hoop" name="proyects_sel_hoop"> </select>
            </div>
        </div>
        <hr>

        <div class="col-lg-4">
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">

                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    Datos de Tubería
                                </div>
                                <div class="panel-body">
                                    <div class="form-group">
                                        <div class="col-lg-12">
                                            <label>Nominal pipe size:</label>

                                            <div id="div_nomps_sel_hoop">
                                                <select class="form-control" id="div_nomps_sel_hoop" name="div_nomps_sel_hoop"> </select>
                                            </div>
                                        </div> 
                                        <div class="col-lg-12">                      
                                            <label>Wall Thickness [.in]:</label>

                                            <div id="div_wallt_sel_hoop">
                                                <select class="form-control" id="wthi_sel_hoop" name="wthi_sel_hoop"> </select>     
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

        <div class="col-lg-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Input Data:
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">                                    
                            <div class="form-group">
                                <label>Nominal pipe size:</label>
                                <input type="text" name="nom_pipe_hoop" id="nom_pipe_hoop" class="form-control">
                                <label>Nominal Outside Diameter [in.]:</label>
                                <input type="text" class="form-control" id="nomout_hoop" name="nomout_hoop"> 
                                <label>Nominal Wall Thickness [in.]:</label>
                                <input type="text" class="form-control" id="nom_wall_hoop" name="nom_wall_hoop">                  
                                <label>Internal Pressure [psig]: </label>            
                                <input type="text" name="int_press_hoop" id="int_press_hoop" class="form-control">                
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
                                <input type="text" name="hoop_press_hoop" id="hoop_press_hoop" class="form-control"> 
                                <BR>
                                <label>Longitudinal Stress [psi]:</label>
                                <input type="text" name="long_press_hoop" id="long_press_hoop" class="form-control"> 
                                <BR>                                                                                                
                                <div>    
                                    <input type="button" id="calculateBtn_hoop" name="calculateBtn_hoop" value="Calculate" onclick="calculate_hoop()" class="btn btn-info btn-block">
                                    <input type="button" id="saveBtn_hoop" name="saveBtn_hoop" value="Save" onclick="save_hoop()" class="btn btn-success btn-block">   
                                    <input type="button" id="reportBtn_hoop" name="reportBtn_hoop" value="Delete" onclick="reportReg_hoop()" class="btn btn-danger btn-block">          
                                </div>                              
                            </div>  
                        </div> 
                    </div>               
                </div>
            </div>
        </div> 

        <div class="col-lg-12">
            <div class="col-md-3">
                <input type="button" id="cleanAllBtn_hoop" name="cleanBtn_hoop" value="Clean All" onclick="cleanAll_hoop()" class="btn btn-warning btn-block">
            </div>
            <div class="col-md-3">
                <input type="button" id="cleanInputBtn_hoop" name="cleanBtn_hoop" value="Clean Input Data" onclick="cleanIn_hoop()" class="btn btn-warning btn-block">
            </div>
            <div class="col-md-3">
                <input type="button" id="cleanOutputBtn_hoop" name="cleanBtn_hoop" value="Clean Output Data" onclick="cleanOut_hoop()" class="btn btn-warning btn-block">
            </div>    
        </div>

        <input type="hidden" id="opt_hoop" name="opt_hoop"> 
        <input type="hidden" id="id_hoop" name="id_hoop">   
        <script>
            $(document).ready(function () {
                getproyectos(<%=session.getAttribute("idusu")%>,
                        $("#proyects_sel_hoop"),
                        $("#error_Dialog_hoop"));
                $("#opt_hoop").val("1");
                load_np_sel_hoop("npsn");

            });
            function calculate_hoop() {
                var variables = {
                    "nom_pipe_hoop": $("#nom_pipe_hoop").val(),
                    "nomout_hoop": $("#nomout_hoop").val(),
                    "nom_wall_hoop": $("#nom_wall_hoop").val(),
                    "int_press_hoop": $("#int_press_hoop").val()
                };

                var res = hoop_longitudinal_form(variables);

                $("#hoop_press_hoop").val(res[0]);
                $("#long_press_hoop").val(res[1]);
                show_OkDialog($("#calculate_Dialog_hoop"), "Proceso satisfactorio");
            }

            function load_np_sel_hoop(idcombo) {
                var parametros = {
                    "combo": idcombo,
                    "type": "5l",
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
                        var newHtml = "<select class=\"form-control\" name=\"nomps_sel_hoop\" id= \"nomps_sel_hoop\" onchange=\"onchange_nps_hoop()\">" + data;

                        $("#div_nomps_sel_hoop").html(newHtml);
                        var po = $("#nomps_sel_hoop").val().trim().split(",")[1];
                        $("#nomout").val(po);
                        load_wt_sel_hoop();
                        onchange_nps_hoop();
                        onchange_wt_hoop();
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_hoop"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            function load_wt_sel_hoop() {
                var idOp = $("#nomps_sel_hoop").val();
                //alert(idOp);
                var parametros = {
                    "combo": "wtn",
                    "nps": idOp,
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

                        var newHtml = "<select class=\"form-control\" name=\"wthi_sel_hoop\" id= \"wthi_sel_hoop\" onchange=\"onchange_wt_hoop()\">" + data;

                        $("#div_wallt_sel_hoop").html(newHtml);


                        if (data.trim() != "") {
                            var val = $("#wthi_sel_hoop").val().trim().split(",");
                            $("#wall_pipeop_hoop").val(val[1]);
                        }

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_hoop"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function onchange_nps_hoop() {
                //cleanOut_hoop();
                var po = $("#nomps_sel_hoop").val();
                $("#nom_pipe_hoop").val(po);
                $("#nomout_hoop").val(po);
                load_wt_sel_hoop();
            }
            function onchange_wt_hoop() {
                //cleanOut_hoop();
                var val = $("#wthi_sel_hoop").val().trim().split(",");
                $("#nom_wall_hoop").val(val[1]);
            }

            function cleanOut_hoop() {
                $("#hoop_press_hoop").val("");
                $("#long_press_hoop").val("");
            }

            function cleanIn_hoop() {
                $("#nom_pipe_hoop").val("");
                $("#nomout_hoop").val("");
                $("#nom_wall_hoop").val("");
                $("#int_press_hoop").val("");
            }

            function cleanAll_hoop() {
                cleanOut_hoop();
                cleanIn_hoop();
            }
        </script>          
    </body>
</html>