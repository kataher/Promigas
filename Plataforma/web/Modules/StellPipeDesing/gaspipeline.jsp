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
                <h2><strong>Stell Pipe Design:</strong>  Gas Pipeline Rupture Analysis Depth, Radius and Width of Crater </h2>
            </div>
            <div class="col-lg-3"> 

                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_soil()">
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
                                <div id="div-table_soil"></div>
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
                <input  class="form-control" type="text" id="description_soil" name="description_soil"><br>
                Projects: 
                <select class="form-control" id="proyects_sel_soil" name="proyects_sel_soil"> </select>
            </div>
        </div>
        <hr>

        <div class="col-lg-6">
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="col-lg-8">
                        <label>Pipe outside diameter [in]:</label>
                    </div> 
                    <div class="col-lg-4">
                        <input type="text" name="pipe_out" id="pipe_out" class="form-control">
                    </div> 
                    <div class="col-lg-8">
                        <label>Pipe Internal Pressure [psig]:</label>
                    </div> 
                    <div class="col-lg-4">
                        <input type="text" name="pipe_int" id="pipe_int" class="form-control">
                    </div>  
                    <div class="col-lg-8">
                        <label>Depth of Cover [ft]:</label>
                    </div> 
                    <div class="col-lg-4">
                        <input type="text" name="depth_cover" id="depth_cover" class="form-control">
                    </div>  
                    <div class="col-lg-8">
                        <label>Average Unit Weight of Soil [lb/ft<sup>3</sup>]:</label>
                    </div> 
                    <div class="col-lg-4">
                        <input type="text" name="ave_unit" id="ave_unit" class="form-control">
                    </div>  
                    <div class="col-lg-8">
                        <label>Natural Gas Specific Heat Radio:</label>
                    </div> 
                    <div class="col-lg-4">
                        <input type="text" name="nat_gas" id="nat_gas" class="form-control">
                    </div>
                    <div class="col-lg-12">
                        <br>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Soil Type:
                            </div>
                            <div class="panel-body">
                                <div class="col-lg-12">
                                    <div id="div_bt_sel_soil">
                                        <select class="form-control" id="bt_sel_soil" name="bt_sel_soil"> </select>
                                    </div>
                                </div>                                                                              
                                <div class="col-lg-8">
                                    <label>w Soil Parameter:</label>
                                </div> 
                                <div class="col-lg-4">
                                    <input type="text" name="w_soil" id="w_soil" class="form-control">
                                </div> 
                                <div class="col-lg-8">                      
                                    <label>Alpha 1 - Creater Wall Angle at Ground Level [°]:</label>
                                </div> 
                                <div class="col-lg-4">
                                    <input type="text" name="alpha1" id="alpha1" class="form-control">
                                </div>                       
                                <div class="col-lg-8">                      
                                    <label>Alpha 2 - Creater Wall Angle at Half Depht [°]:</label>
                                </div> 
                                <div class="col-lg-4">
                                    <input type="text" name="alpha2" id="alpha2" class="form-control">
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
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    Gasunie Model:
                                </div>
                                <div class="panel-body">                                                        
                                    <label>R Soil Parameter Funcion:</label>
                                    <input type="text" name="r_soil" id="r_soil" class="form-control" readonly>
                                    <label>Depth of Crater [ft.]:</label>
                                    <input type="text" name="depth_cra" id="depth_cra" class="form-control" readonly>                   
                                    <label>Width of Crater [ft.]:</label>
                                    <input type="text" name="width_cra" id="width_cra" class="form-control" readonly>                    
                                </div>          
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    NEN 3651 Model:
                                </div>
                                <div class="panel-body">                                                        
                                    <label>Radius of Crater [ft.]:</label>
                                    <input type="text" name="rad_cra" id="rad_cra" class="form-control" readonly>                  
                                </div>          
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    PRCI/Gasunine/Batelle Model:
                                </div>
                                <div class="panel-body">                                                        
                                    <label>Velocity of Explosive Gases [ft/sec]:</label>
                                    <input type="text" name="vel_exp" id="vel_exp" class="form-control" readonly>                  
                                    <label>Depth of Crater [ft.]:</label>
                                    <input type="text" name="depth_cra_PRCI" id="depth_cra_PRCI" class="form-control" readonly>                   
                                    <label>Width of Crater [ft.]:</label>
                                    <input type="text" name="width_cra_PRCI" id="width_cra_PRCI" class="form-control" readonly>
                                </div>          
                            </div>  
                            <div class="col-lg-12">&nbsp;</div>
                            <div>    
                                <BR>                    
                                <input type="button" id="calculateBtn_gp" name="calculateBtn_gp" value="Calculate" onclick="calculate_gp()" class="btn btn-info btn-block">
                                <input type="button" id="saveBtn_gp" name="saveBtn_gp" value="Save" onclick="save_gp()" class="btn btn-success btn-block">   
                                <input type="button" id="reportBtn_gp" name="reportBtn_gp" value="Delete" onclick="reportReg_gp()" class="btn btn-danger btn-block">          
                            </div>                   
                        </div>  
                    </div> 
                </div>               
            </div>
        </div>
    </div>

    <div class="col-lg-12">
        <div class="col-md-3">
            <input type="button" id="cleanAllBtn_gp" name="cleanBtn_gp" value="Clean All" onclick="cleanAll_gp()" class="btn btn-warning btn-block">
        </div>
        <div class="col-md-3">
            <input type="button" id="cleanInputBtn_gp" name="cleanBtn_gp" value="Clean Input Data" onclick="cleanIn_gp()" class="btn btn-warning btn-block">
        </div>
        <div class="col-md-3">
            <input type="button" id="cleanOutputBtn_gp" name="cleanBtn_gp" value="Clean Output Data" onclick="cleanOut_gp()" class="btn btn-warning btn-block">
        </div>    
    </div>

    <input type="hidden" id="opt_gp" name="opt_gp"> 
    <input type="hidden" id="id_gp" name="id_gp">   
    <script>
        $(document).ready(function () {
            getproyectos(<%=session.getAttribute("idusu")%>,
                    $("#proyects_sel_soil"),
                    $("#error_Dialog_soil"));

            $("#opt_basc").val("1");
            //load_np_sel_basc("soil");
        });
        function load_np_sel_basc(idcombo) {
            var parametros = {
                "combo": idcombo,
                "type": "5l",
                "opcion": "5"
            };
            //  alert(parametros);
            $.ajax({
                type: "POST",
                url: "Modules/manager.jsp",
                data: parametros,
                async: false,
                beforeSend: function (xhr) {
                    block("Cargando...");
                },
                success: function (data, status, request) {
                    var newHtml = "<select class=\"form-control\" name=\"bt_sel_soil\" id= \"bt_sel_soil\" onchange=\"onchange_nps_basc()\">" + data;

                    $("#div_bt_sel_soil").html(newHtml);
                    var p = $("#bt_sel_soil").val().trim().split("-")[0];
                    var w = p.split(",")[1];
                    var a1 = $("#bt_sel_soil").val().trim().split("-")[1];
                    var a2 = $("#bt_sel_soil").val().trim().split("-")[2];
                    $("#w_soil").val(w);
                    $("#alpha1").val(a1);
                    $("#alpha2").val(a2);
                    /* load_wt_sel_basc();
                     onchange_nps_basc();
                     onchange_wt_basc();*/
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
            var p = $("#bt_sel_soil").val().trim().split("-")[0];
            var w = p.split(",")[1];
            var a1 = $("#bt_sel_soil").val().trim().split("-")[1];
            var a2 = $("#bt_sel_soil").val().trim().split("-")[2];
            $("#w_soil").val(w);
            $("#alpha1").val(a1);
            $("#alpha2").val(a2);
        }
        function calculate_gp() {
            var variables = {
                "Dp": $("#pipe_out").val(),
                "P0": $("#pipe_int").val(),
                "Dc": $("#depth_cover").val(),
                "y": $("#nat_gas").val(),
                "w": $("#w_soil").val(),
                "alpha1": $("#alpha1").val(),
                "alpha2": $("#alpha2").val(),
                "Psoil": $("#ave_unit").val()
            };

            var res = gaspipeline_form(variables);
            //alert(res);
            $("#r_soil").val(res[0]);
            $("#depth_cra").val(res[1]);
            $("#width_cra").val(res[2]);
            $("#rad_cra").val(res[3]);
            $("#vel_exp").val(res[4]);
            $("#depth_cra_PRCI").val(res[5]);
            $("#width_cra_PRCI").val(res[6]);

            show_OkDialog($("#calculate_Dialog_basc"), "Proceso satisfactorio");
        }

        function cleanOut_gp() {
            $("#r_soil").val("");
            $("#depth_cra").val("");
            $("#width_cra").val("");
            $("#rad_cra").val("");
            $("#vel_exp").val("");
            $("#depth_cra_PRCI").val("");
            $("#width_cra_PRCI").val("");
        }

        function cleanIn_gp() {
            $("#pipe_out").val("");
            $("#pipe_int").val("");
            $("#depth_cover").val("");
            $("#ave_unit").val("");
            $("#nat_gas").val("");
            $("#w_soil").val("");
            $("#alpha1").val("");
            $("#alpha2").val("");
        }

        function cleanAll_gp() {
            cleanOut_gp();
            cleanIn_gp();
        }
    </script>
</body>
</html>