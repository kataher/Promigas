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
                <h2><strong>Stell Pipe Design:</strong>  Buoyancy Analysis & Concrete Weights Spacing</h2>
            </div>
            <div class="col-lg-3"> 

                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_baw()">
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
                                <div id="div-table_baw"></div>
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
                <input  class="form-control" type="text" id="description_baw" name="description_baw"><br>
                Projects: 
                <select class="form-control" id="proyects_sel_baw" name="proyects_sel_baw"> </select>
            </div>
        </div>
        <hr>

        <div class="col-sm-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Pipe and Operational Data
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    Line Pipe API 5L
                                </div>
                                <div class="panel-body">
                                    <div class="form-group">
                                        <div class="col-sm-12">
                                            <div class="col-sm-5">
                                                <label>Nominal pipe size:</label>
                                            </div> 
                                            <div class="col-sm-7">
                                                <div id="div_nomps_sel_baw">
                                                    <select class="form-control" id="nominal_sel_baw" name="nominal_sel_baw"> </select>
                                                </div>
                                            </div> 
                                        </div>
                                        <div class="col-sm-12">
                                            <div class="col-sm-5">                      
                                                <label>Wall Thickness [.in]:</label>
                                            </div> 
                                            <div class="col-sm-7">
                                                <div id="div_wallt_sel_baw">
                                                    <select class="form-control" id="wthi_sel_baw" name="wthi_sel_baw"> </select>     
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
        </div>

        <div class="col-sm-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Input Data:
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-sm-12">                                    
                            <div class="form-group">
                                <label>Nominal Pipe Outside Diameter [in.]:</label>
                                <input type="text" class="form-control" id="nomout_baw" name="nomout_baw"> 
                                <label>Espesor de la pared nominal de la tubería [in.]:</label>
                                <input type="text" class="form-control" id="nom_wall_baw" name="nom_wall_baw">                  
                                <label>Corrosion Coating Thickness [in.]: </label>
                                <input type="text" name="corr_coa_baw" id="corr_coa_baw" class="form-control">
                                <label>Espesor de capa de concreto [lbs/ft<sup>3</sup>]: </label>            
                                <input type="text" name="esp_capa_baw" id="esp_capa_baw" class="form-control">
                                <label>Densidad del agua [ft<sup>3</sup>]:</label>
                                <input type="text" name="vol_agua_baw" id="vol_agua_baw" class="form-control">
                                <label>Densidad del recubrimiento [lbs/ft<sup>3</sup>]</label>                    
                                <input type="text" class="form-control" id="dens_recu_baw" name="dens_recu_baw">
                                <label>Densidad del Producto [lbs/ft<sup>3</sup>]</label>                    
                                <input type="text" class="form-control" id="dens_prod_baw" name="dens_prod_baw">
                                <label>Densidad del Concreto [lbs/ft<sup>3</sup>]</label>                    
                                <input type="text" class="form-control" id="dens_conc_baw" name="dens_conc_baw">
                                <label>Factor de Seguridad</label>
                                <input type="text" name="safe_fact_baw" id="safe_fact_baw" class="form-control">
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
                        <div class="col-sm-12">                                    
                            <div class="form-group">
                                <label>Buoyant Force [lbf/ft.]:</label>
                                <input type="text" name="buoy_force_baw" id="buoy_force_baw" class="form-control"> 
                                <BR>
                                <label>Weight of Pipe in the Air [lbs/ft]:</label>
                                <input type="text" name="weight_pipe_baw" id="weight_pipe_baw" class="form-control"> 
                                <BR>
                                <label>Weight of Coating in the Air [lbf/ft]:</label>
                                <input type="text" name="weight_coat_baw" id="weight_coat_baw" class="form-control"> 
                                <BR>                    
                                <label>Weight of Product int the Pipe [lbf/ft]:</label>
                                <input type="text" name="weight_prod_pipe_baw" id="weight_prod_pipe_baw" class="form-control"> 
                                <BR>  
                                <label>Downward Force of the Pipe [lbf/ft]:</label>
                                <input type="text" name="down_force_baw" id="down_force_baw" class="form-control"> 
                                <BR>
                                <label>Net Controlling Force [lbf/ft]:</label>
                                <input type="text" name="net_force_baw" id="net_force_baw" class="form-control"> 
                                <BR>
                                <label>Downward Force of the Concrete Weight [lbf]:</label>
                                <input type="text" name="down_force_conc_baw" id="down_force_conc_baw" class="form-control"> 
                                <BR>
                                <label>Concrete Weight Spacing [ft]:</label>
                                <input type="text" name="conc_weight_spac_baw" id="conc_weight_spac_baw" class="form-control"> 
                                <BR>                                               
                                <div>    
                                    <input type="button" id="calculateBtn_baw" name="calculateBtn_baw" value="Calculate" onclick="calculate_baw()" class="btn btn-info btn-block">
                                    <input type="button" id="saveBtn_baw" name="saveBtn_baw" value="Save" onclick="save_baw()" class="btn btn-success btn-block">   
                                    <input type="button" id="reportBtn_baw" name="reportBtn_baw" value="Delete" onclick="reportReg_baw()" class="btn btn-danger btn-block">          
                                </div>
                            </div>  
                        </div> 
                    </div>               
                </div>
            </div>
        </div> 

        <div class="col-sm-12">
            <div class="col-md-3">
                <input type="button" id="cleanAllBtn_baw" name="cleanBtn_baw" value="Clean All" onclick="cleanAll_baw()" class="btn btn-warning btn-block">
            </div>
            <div class="col-md-3">
                <input type="button" id="cleanInputBtn_baw" name="cleanBtn_baw" value="Clean Input Data" onclick="cleanIn_baw()" class="btn btn-warning btn-block">
            </div>
            <div class="col-md-3">
                <input type="button" id="cleanOutputBtn_bac" name="cleanBtn_bac" value="Clean Output Data" onclick="cleanOut_baw()" class="btn btn-warning btn-block">
            </div>    
        </div>

        <input type="hidden" id="opt_baw" name="opt_bac"> 
        <input type="hidden" id="id_baw" name="id_bac">  
        <script>
            $(document).ready(function () {
                getproyectos(<%=session.getAttribute("idusu")%>,
                        $("#proyects_sel_baw"),
                        $("#error_Dialog_baw"));
                $("#opt_baw").val("1");
                load_np_sel_baw("npsn");
            });
            function calculate_baw() {
                var variables = {
                    "nomout_baw": $("#nomout_baw").val(),
                    "nom_wall_baw": $("#nom_wall_baw").val(),
                    "corr_coa_baw": $("#corr_coa_baw").val(),
                    "esp_capa_baw": $("#esp_capa_baw").val(),
                    "vol_agua_baw": $("#vol_agua_baw").val(),
                    "dens_recu_baw": $("#dens_recu_baw").val(),
                    "dens_prod_baw": $("#dens_prod_baw").val(),
                    "dens_conc_baw": $("#dens_conc_baw").val(),
                    "safe_fact_baw": $("#safe_fact_baw").val()
                };

                var res = buyancy_weight_form(variables);

                $("#buoy_force_baw").val(res[0]);
                $("#weight_pipe_baw").val(res[1]);
                $("#weight_coat_baw").val(res[2]);
                $("#weight_prod_pipe_baw").val(res[3]);
                $("#down_force_baw").val(res[4]);
                $("#net_force_baw").val(res[5]);
                $("#down_force_conc_baw").val(res[6]);
                $("#conc_weight_spac_baw").val(res[7]);



                show_OkDialog($("#calculate_Dialog_baw"), "Proceso satisfactorio");
            }

            function load_np_sel_baw(idcombo) {
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
                        var newHtml = "<select class=\"form-control\" name=\"nomps_sel_baw\" id= \"nomps_sel_baw\" onchange=\"onchange_nps_baw()\">" + data;

                        $("#div_nomps_sel_baw").html(newHtml);


                        var po = $("#nomps_sel_baw").val().trim().split(",")[1];

                        $("#nom_pipeop_baw").val(po);
                        $("#out_pipeop_baw").val(po);


                        load_wt_sel_baw();

                        onchange_nps_baw();

                        onchange_wt_baw();

                        /*onchange_gra_baw();*/


                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_baw"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            function load_wt_sel_baw() {
                var idOp = $("#nomps_sel_baw").val();
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

                        var newHtml = "<select class=\"form-control\" name=\"wthi_sel_baw\" id= \"wthi_sel_baw\" onchange=\"onchange_wt_baw()\">" + data;

                        $("#div_wallt_sel_baw").html(newHtml);


                        if (data.trim() != "") {
                            var val = $("#wthi_sel_baw").val().trim().split(",");
                            $("#wall_pipeop_baw").val(val[1]);
                        }

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_baw"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            function onchange_nps_baw() {
                var po = $("#nomps_sel_baw").val();
                $("#nomout_baw").val(po);
                load_wt_sel_baw();
            }
            function onchange_wt_baw() {
                //cleanOut_rwb();
                var val = $("#wthi_sel_baw").val().trim().split(",");
                $("#nom_wall_baw").val(val[1]);
            }
        </script>
    </body>
</html>