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
                <h2><strong>Steel Pipe Design:</strong>  Gas Pipeline Rupture Analysis Depth, Radius and Width of Crater </h2>
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
                    <div class="form-group">
                        <div class="col-md-12">
                            <label>Pipe outside diameter [in.]:</label>
                        </div>
                        <div class="col-md-8">
                            <input type="text" name="pipe_out_diam_gp" id="pipe_out_diam_gp" class="form-control" onchange="onchange_Input_gp(this)" required>
                        </div>
                        <div class="col-md-4" id = "div_pipe_out_diam_sel_gp">
                            <select class='form-control' id='pipe_out_diam_sel_gp' name='pipe_out_diam_sel_gp' onchange='cleanOut_gp()'> </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-12">
                            <label>Height:</label>
                        </div>
                        <div class="col-md-8">
                            <input type="text" name="height_gp" id="height_gp" class="form-control" onchange="onchange_Input_gp(this)" required>
                        </div>
                        <div class="col-md-4" id = "div_height_sel_gp">
                            <select class='form-control' id='height_sel_gp' name='height_sel_gp' onchange='cleanOut_gp()'> </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-12">
                            <label>Pipe Internal Pressure [psig]:</label>
                        </div>
                        <div class="col-md-8">
                            <input type="text" name="pipe_press_gp" id="pipe_press_gp" class="form-control" onchange="onchange_Input_gp(this)" required>
                        </div>
                        <div class="col-md-4" id = "div_pipe_press_sel_gp">
                            <select class='form-control' id='pipe_press_sel_gp' name='pipe_press_sel_gp' onchange='cleanOut_gp()'> </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-12">
                            <label>Depth of Cover [ft]:</label>
                        </div>
                        <div class="col-md-8">
                            <input type="text" name="depth_cover_gp" id="depth_cover_gp" class="form-control" onchange="onchange_Input_gp(this)" required>
                        </div>
                        <div class="col-md-4" id = "div_depth_cover_sel_gp">
                            <select class='form-control' id='depth_cover_sel_gp' name='depth_cover_sel_gp' onchange='cleanOut_gp()'> </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-12">
                            <label>Average Unit Weight of Soil [lb/ft<sup>3</sup>]:</label>
                        </div>
                        <div class="col-md-8">
                            <input type="text" name="avg_weight_gp" id="avg_weight_gp" class="form-control" onchange="onchange_Input_gp(this)" required>
                        </div>
                        <div class="col-md-4" id = "div_avg_weight_sel_gp">
                            <select class='form-control' id='avg_weight_sel_gp' name='avg_weight_sel_gp' onchange='cleanOut_gp()'>
                                <option>lb/ft&sup3;</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-12">
                            <label>Natural Gas Specific Heat Ratio:</label>
                        </div>
                        <div class="col-md-12">
                            <input type="text" name="spc_heat_ratio_gp" id="spc_heat_ratio_gp" class="form-control" onchange="onchange_Input_gp(this)" required>
                        </div>
                    </div>

                    <div class="col-lg-12">
                        <br>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Soil Type:
                            </div>
                            <div class="panel-body">
                                <div class="col-lg-12">
                                    <div id="div_bt_sel_soil_gp">
                                        <select class="form-control" id="bt_sel_soil_gp" name="bt_sel_soil_gp"> </select>
                                    </div>
                                </div>                                                                              
                                <div class="col-lg-8">
                                    <label>w Soil Parameter:</label>
                                </div> 
                                <div class="col-lg-4">
                                    <input type="text" name="w_soil_gp" id="w_soil_gp" class="form-control">
                                </div> 
                                <div class="col-lg-8">                      
                                    <label>Alpha 1 - Crater Wall Angle at Ground Level [°]:</label>
                                </div> 
                                <div class="col-lg-4">
                                    <input type="text" name="alpha1_gp" id="alpha1_gp" class="form-control">
                                </div>                       
                                <div class="col-lg-8">                      
                                    <label>Alpha 2 - Crater Wall Angle at Half Depth [°]:</label>
                                </div> 
                                <div class="col-lg-4">
                                    <input type="text" name="alpha2_gp" id="alpha2_gp" class="form-control">
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
                                    <label>R Soil Parameter Function:</label>
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

            $("#opt_gp").val("1");
            load_soil_gp();
            load_in_sel_gp();
            load_pres_sel_gp();
        });

        function load_in_sel_gp() {
            var parametros = {
                "combo": "in",
                "opcion": "5"
            };
            $.ajax({
                type: "POST",
                url: "../manager.jsp",
                data: parametros,
                async: true,
                beforeSend: function (xhr) {
                    block("Cargando...");
                },
                success: function (data, status, request) {
                    var newHtml = "<select class='form-control' id='pipe_out_diam_sel_gp' name='pipe_out_diam_sel_gp' onchange='cleanOut_gp()'>" + data;
                    $("#div_pipe_out_diam_sel_gp").html(newHtml);

                    newHtml = "<select class='form-control' id='height_sel_gp' name='height_sel_gp' onchange='cleanOut_gp()'>" + data;
                    $("#div_height_sel_gp").html(newHtml);

                    newHtml = "<select class='form-control' id='depth_cover_sel_gp' name='depth_cover_sel_gp' onchange='cleanOut_gp()'>" + data;
                    $("#div_depth_cover_sel_gp").html(newHtml);
                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_gp"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function load_pres_sel_gp() {
            var parametros = {
                "combo": "pres",
                "opcion": "5"
            };
            $.ajax({
                type: "POST",
                url: "../manager.jsp",
                data: parametros,
                async: true,
                beforeSend: function (xhr) {
                    block("Cargando...");
                },
                success: function (data, status, request) {
                    var newHtml = "<select class='form-control' id='pipe_press_sel_gp' name='pipe_press_sel_gp' onchange='cleanOut_gp()'>" + data;
                    $("#div_pipe_press_sel_gp").html(newHtml);
                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_gp"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function load_soil_gp() {
            var parametros = {
                "combo": "soil_crater",
                "opcion": "5"
            };
            $.ajax({
                type: "POST",
                url: "../manager.jsp",
                data: parametros,
                async: false,
                beforeSend: function (xhr) {
                    block("Cargando...");
                },
                success: function (data, status, request) {
                    var newHtml = "<select class='form-control' id='bt_sel_soil_gp' name='bt_sel_soil_gp' onchange='onchange_sel_soil_gp()'>" + data;
                    $("#div_bt_sel_soil_gp").html(newHtml);

                    onchange_sel_soil_gp();
                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_gp"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }
        function onchange_sel_soil_gp() {
            var values = $("#bt_sel_soil_gp").val().trim().split(",");
            var w = values[1];
            var a1 = values[2];
            var a2 = values[3];
            $("#w_soil_gp").val(w);
            $("#alpha1_gp").val(a1);
            $("#alpha2_gp").val(a2);
            cleanOut_gp();
        }
        function calculate_gp() {
            var variables = {
                "height": $("#height_gp").val(),
                "Dp": $("#pipe_out_diam_gp").val(),
                "P0": $("#pipe_press_gp").val(),
                "Dc": $("#depth_cover_gp").val(),
                "y": $("#spc_heat_ratio_gp").val(),
                "w": $("#w_soil_gp").val(),
                "alpha1": $("#alpha1_gp").val(),
                "alpha2": $("#alpha2_gp").val(),
                "Psoil": $("#avg_weight_gp").val()
            };

            var unidades = {
                "pipe_out_diam_sel_gp": $("#pipe_out_diam_sel_gp").val().split(",")[1],
                "pipe_press_sel_gp": $("#pipe_press_sel_gp").val().split(",")[1],
                "depth_cover_sel_gp": $("#depth_cover_sel_gp").val().split(",")[1],
                "height_sel_gp": $("#height_sel_gp").val().split(",")[1]
            };

            var res = gaspipeline_form(variables, unidades);
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
            $("#w_soil_gp").val("");
            $("#alpha1_gp").val("");
            $("#alpha2_gp").val("");
        }

        function cleanAll_gp() {
            cleanOut_gp();
            cleanIn_gp();
        }
    </script>
</body>
</html>