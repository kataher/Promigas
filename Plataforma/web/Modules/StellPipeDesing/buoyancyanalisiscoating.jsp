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
                <h2><strong>Stell Pipe Design:</strong>  Buoyancy Analysis & Concrete Coating Requeriments</h2>
            </div>
            <div class="col-lg-3"> 

                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_basc()">
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
                                <div id="div-table_basc"></div>
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
                <input  class="form-control" type="text" id="description_basc" name="description_basc"><br>
                Projects: 
                <select class="form-control" id="proyects_sel_basc" name="proyects_sel_basc"> </select>
            </div>
        </div>
        <hr>

        <div class="col-lg-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Pipe and Operational Data
                </div>
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

                                            <div id="div_nomps_sel_basc">
                                                <select class="form-control" id="div_nomps_sel_basc" name="div_nomps_sel_basc"> </select>
                                            </div>

                                        </div>
                                        <div class="col-lg-12">

                                            <label>Wall Thickness [.in]:</label>

                                            <div id="div_wallt_sel_basc">
                                                <select class="form-control" id="wthi_sel_basc" name="wthi_sel_basc"> </select>     
                                            </div>

                                        </div>
                                    </div> 
                                </div>
                            </div>
                            <div class="col-lg-12">

                                <label>Water Density [lbs/ft<sup>3</sup>]</label>                    

                                <input type="text" class="form-control" id="water_dens" name="water_dens" value="62.40"> 

                            </div>
                            <div class="col-lg-12">

                                <label>Concrete Coating Density [lbs/ft<sup>3</sup>]</label>                    

                                <input type="text" class="form-control" id="conc_water_dens" name="conc_water_dens" value="143">

                            </div>
                            <div class="col-lg-12">

                                <label>Corrision Coating Density [lbs/ft<sup>3</sup>]:</label>                    

                                <input type="text" class="form-control" id="corr_coa" name="corr_coa" value="71.80">

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
                                <label>Nominal Outside Diameter [in.]:</label>
                                <input type="text" class="form-control" id="nomout_basc" name="nomout_basc"> 
                                <label>Nominal Wall Thickness [in.]:</label>
                                <input type="text" class="form-control" id="nom_wall_basc" name="nom_wall_basc">                  
                                <label>Design Specific Gravity Ratio: </label>            
                                <input type="text" name="spec_gra_basc" id="spec_gra_basc" class="form-control">
                                <label>Corrosion Coating Thickness [MIL.]: </label>
                                <input type="text" name="corr_coa_thick_basc" id="corr_coa_thick_basc" class="form-control">
                                <label>Pipe Lenght [ft./Join]:</label>
                                <input type="text" name="pipe_lenght_basc" id="pipe_lenght_basc" class="form-control">
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
                                <label>Pipe Weight [lbs/ft.]:</label>
                                <input type="text" name="pipe_weight_basc" id="pipe_weight_basc" class="form-control"> 
                                <BR>
                                <label>Total Volume [ft<sup>3</sup>]:</label>
                                <input type="text" name="total_vol_basc" id="total_vol_basc" class="form-control"> 
                                <BR>
                                <label>Corrosion Coating Volume [ft<sup>3</sup>]:</label>
                                <input type="text" name="corr_coat_vol_basc" id="corr_coat_vol_basc" class="form-control"> 
                                <BR>
                                <label>Concrete Coating Thickness [in.]:</label>
                                <input type="text" name="conc_coat_thick_basc" id="conc_coat_thick_basc" class="form-control"> 
                                <BR>
                                <label>Concrete Coating Volume [ft<sup>3</sup>]:</label>
                                <input type="text" name="max_stress_basc" id="max_stress_basc" class="form-control"> 
                                <BR>
                                <label>Weight of Pipe in Air [lbs/ft]:</label>
                                <input type="text" name="weight_pipe_air_basc" id="weight_pipe_air_basc" class="form-control"> 
                                <BR>
                                <label>Weight of Water Displaced [lbs/ft]:</label>
                                <input type="text" name="weight_wat_dis_basc" id="weight_wat_dis_basc" class="form-control"> 
                                <BR>
                                <label>Weight of Sugmerged Pipe [lbs/ft]:</label>
                                <input type="text" name="weight_sugm_pipe_basc" id="weight_sugm_pipe_basc" class="form-control"> 
                                <BR>                      
                                <label>Weight per Joint [lbs/Joint]:</label>
                                <input type="text" name="weight_joint_basc" id="weight_joint_basc" class="form-control"> 
                                <BR>                                                                          
                                <div>    
                                    <input type="button" id="calculateBtn_basc" name="calculateBtn_basc" value="Calculate" onclick="calculate_basc()" class="btn btn-info btn-block">
                                    <input type="button" id="saveBtn_basc" name="saveBtn_basc" value="Save" onclick="save_basc()" class="btn btn-success btn-block">   
                                    <input type="button" id="reportBtn_basc" name="reportBtn_basc" value="Delete" onclick="reportReg_basc()" class="btn btn-danger btn-block">          
                                </div>
                            </div>  
                        </div> 
                    </div>               
                </div>
            </div>
        </div> 

        <div class="col-lg-12">
            <div class="col-md-3">
                <input type="button" id="cleanAllBtn_basc" name="cleanBtn_basc" value="Clean All" onclick="cleanAll_basc()" class="btn btn-warning btn-block">
            </div>
            <div class="col-md-3">
                <input type="button" id="cleanInputBtn_basc" name="cleanBtn_basc" value="Clean Input Data" onclick="cleanIn_basc()" class="btn btn-warning btn-block">
            </div>
            <div class="col-md-3">
                <input type="button" id="cleanOutputBtn_basc" name="cleanBtn_basc" value="Clean Output Data" onclick="cleanOut_basc()" class="btn btn-warning btn-block">
            </div>    
        </div>

        <input type="hidden" id="opt_basc" name="opt_basc"> 
        <input type="hidden" id="id_basc" name="id_basc">   
        <script>
            $(document).ready(function () {
                getproyectos(<%=session.getAttribute("idusu")%>,
                        $("#proyects_sel_basc"),
                        $("#error_Dialog_basc"));
                        
                $("#opt_basc").val("1");
                load_np_sel_basc("npsn");

            });
            function calculate_basc() {
                var variables = {
                    "water_dens": $("#water_dens").val(),
                    "conc_water_dens": $("#conc_water_dens").val(),
                    "corr_coa": $("#corr_coa").val(),
                    "nomout_basc": $("#nomout_basc").val(),
                    "nom_wall_basc": $("#nom_wall_basc").val(),
                    "spec_gra_basc": $("#spec_gra_basc").val(),
                    "corr_coa_thick_basc": $("#corr_coa_thick_basc").val(),
                    "pipe_lenght_basc": $("#pipe_lenght_basc").val(),

                };

                var res = buoyancy_analisis_form(variables);

                $("#pipe_weight_basc").val(res[0]);
                $("#total_vol_basc").val(res[1]);
                $("#corr_coat_vol_basc").val(res[2]);
                $("#conc_coat_thick_basc").val(res[3]);
                $("#max_stress_basc").val(res[4]);
                $("#weight_pipe_air_basc").val(res[5]);
                $("#weight_wat_dis_basc").val(res[6]);
                $("#weight_sugm_pipe_basc").val(res[7]);
                $("#weight_joint_basc").val(res[8]);










                show_OkDialog($("#calculate_Dialog_basc"), "Proceso satisfactorio");
            }

            function load_np_sel_basc(idcombo) {
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
                        var newHtml = "<select class=\"form-control\" name=\"nomps_sel_basc\" id= \"nomps_sel_basc\" onchange=\"onchange_nps_basc()\">" + data;

                        $("#div_nomps_sel_basc").html(newHtml);
                        var po = $("#nomps_sel_basc").val().trim().split(",")[1];
                        $("#nomout").val(po);
                        load_wt_sel_basc();
                        onchange_nps_basc();
                        onchange_wt_basc();
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_basc"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            function load_wt_sel_basc() {
                var idOp = $("#nomps_sel_basc").val();
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

                        var newHtml = "<select class=\"form-control\" name=\"wthi_sel_basc\" id= \"wthi_sel_basc\" onchange=\"onchange_wt_basc()\">" + data;

                        $("#div_wallt_sel_basc").html(newHtml);


                        if (data.trim() != "") {
                            var val = $("#wthi_sel_basc").val().trim().split(",");
                            $("#wall_pipeop_basc").val(val[1]);
                        }

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_basc"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function onchange_nps_basc() {
                //cleanOut_basc();
                var po = $("#nomps_sel_basc").val();
                $("#nom_pipe_basc").val(po);
                $("#nomout_basc").val(po);
                load_wt_sel_basc();
            }
            function onchange_wt_basc() {
                //cleanOut_basc();
                var val = $("#wthi_sel_basc").val().trim().split(",");
                $("#nom_wall_basc").val(val[1]);
            }
                    
            function cleanOut_basc() {
                $("#pipe_weight_basc").val("");
                $("#total_vol_basc").val("");
                $("#corr_coat_vol_basc").val("");
                $("#conc_coat_thick_basc").val("");
                $("#max_stress_basc").val("");
                $("#weight_pipe_air_basc").val("");
                $("#weight_wat_dis_basc").val("");
                $("#weight_sugm_pipe_basc").val("");
                $("#weight_joint_basc").val("");
            }
            
            function cleanIn_basc() {
                $("#nomout_basc").val("");
                $("#nom_wall_basc").val("");
                $("#spec_gra_basc").val("");
                $("#corr_coa_thick_basc").val("");
                $("#pipe_lenght_basc").val("");
            }
            
            function cleanAll_basc() {
                cleanOut_basc();
                cleanIn_basc();
                $("#water_dens").val("");
                $("#conc_water_dens").val("");
                $("#corr_coa").val("");
            }
        </script>        
    </body>
</html>