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
                <h2><strong>Pipe Design:</strong>  Design Pressure Polyethylene Pipe</h2>
            </div>
            <div class="col-lg-3"> 

                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_dpp()">
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
                                <div id="div-table_dpp"></div>
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
                <input  class="form-control" type="text" id="description_dpp" name="description_dpp"><br>
                Projects: 
                <select class="form-control" id="proyects_sel_dpp" name="proyects_sel_dpp"> </select>
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
                                    <div class="col-lg-7">
                                        <label>Tamaño nominal de la tubería</label>                        
                                    </div>
                                    <div class="col-lg-5">
                                        <div id="div_nomps_sel_dpp">
                                            <select class="form-control" id="nominal_sel_dpp" name="nominal_sel_dpp"> </select>
                                        </div>

                                    </div>                      
                                    <div class="col-lg-7">
                                        <label>Wall Thickness</label>                        
                                    </div>
                                    <div class="col-lg-5">
                                        <div id="div_wallt_sel_dpp">
                                            <select class="form-control" id="wthi_sel_dpp" name="wthi_sel_dpp"> </select>     
                                        </div>
                                    </div>                      
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    Select Hydrostatic Design Basis
                                </div>
                                <div class="panel-body">
                                    <div class="col-lg-12">
                                        <label>Piping Material Designation:</label>                        
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="col-lg-12" id="div_piping_sel_dpp">
                                            <select class="form-control" id="piping_sel_dpp" name="piping_sel_dpp"> </select>
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
                                <div class="form-group">
                                    <div class="col-md-12">
                                        <label>Nominal pipe size:</label>
                                    </div>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" id="nom_pipeop_dpp" name="nom_pipeop_dpp" onchange='onchange_Input_dpp(this)' required> 
                                    </div>
                                    <div class="col-md-4" id = "div_nom_pipeop_sel_dpp">
                                        <select class="form-control" id="nom_pipeop_sel_dpp" name="nom_pipeop_sel_dpp" onchange='cleanOut_dpp()'> 
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-md-12">
                                        <label>Outside Diameter [in.]:</label>
                                    </div>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" id="out_pipeop_dpp" name="out_pipeop_dpp" onchange='onchange_Input_dpp(this)' required> 
                                    </div>
                                    <div class="col-md-4" id = "div_out_pipeop_sel_dpp">
                                        <select class="form-control" id="out_pipeop_sel_dpp" name="out_pipeop_sel_dpp" onchange='cleanOut_dpp()'> 
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-md-12">
                                        <label>Wall Thickness [in.]:</label>
                                    </div>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" id="wall_pipeop_dpp" name="wall_pipeop_dpp" onchange='onchange_Input_dpp(this)' required> 
                                    </div>
                                    <div class="col-md-4" id = "div_wall_pipeop_sel_dpp">
                                        <select class="form-control" id="wall_pipeop_sel_dpp" name="wall_pipeop_sel_dpp" onchange='cleanOut_dpp()'> 
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-md-12">
                                        <label>Hydrostatic Design Basis [psi]:</label>
                                    </div>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" id="hyd_pipeop_dpp" name="hyd_pipeop_dpp" onchange='onchange_Input_dpp(this)' required> 
                                    </div>
                                    <div class="col-md-4" id = "div_hyd_pipeop_sel_dpp">
                                        <select class="form-control" id="hyd_pipeop_sel_dpp" name="hyd_pipeop_sel_dpp" onchange='cleanOut_dpp()'> 
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-md-12">
                                        <label>Design Factor:</label>
                                    </div>
                                    <div class="col-md-12">
                                        <input type="text" class="form-control" id="fact_pipeop_dpp" name="fact_pipeop_dpp" onchange='onchange_Input_dpp(this)' required> 
                                    </div>
                                </div>
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
                                <label>Design Pressure [psig]:</label>
                                <input type="text" name="despress_pipeop_dpp" id="despress_pipeop_dpp" class="form-control" readonly> 
                                <BR>
                                <div>    
                                    <input type="button" id="calculateBtn_dpp" name="calculateBtn_dpp" value="Calculate" onclick="calculate_dpp()" class="btn btn-info btn-block">
                                    <input type="button" id="saveBtn_dpp" name="saveBtn_dpp" value="Save" onclick="save_dpp()" class="btn btn-success btn-block">   
                                    <input type="button" id="delteBtn_dpp" name="delteBtn_dpp" value="Eliminar" onclick="deleteReg_dpp()" class="btn btn-danger btn-block">          
                                </div>
                            </div>  
                        </div> 
                    </div>               
                </div>
            </div>
        </div> 

        <div class="col-lg-12">
            <div class="col-md-3">
                <input type="button" id="cleanAllBtn_dpp" name="cleanBtn_dpp" value="Clean All" onclick="cleanAll_dpp()" class="btn btn-warning btn-block">
            </div>
            <div class="col-md-3">
                <input type="button" id="cleanInputBtn_dpp" name="cleanBtn_dpp" value="Clean Input Data" onclick="cleanIn_dpp()" class="btn btn-warning btn-block">
            </div>
            <div class="col-md-3">
                <input type="button" id="cleanOutputBtn_dpp" name="cleanBtn_dpp" value="Clean Output Data" onclick="cleanOut_dpp()" class="btn btn-warning btn-block">
            </div>    
        </div>

        <input type="hidden" id="opt_dpp" name="opt_dpp"> 
        <input type="hidden" id="id_dpp" name="id_dpp">   
        <script>
            $(document).ready(function () {
                getproyectos(<%=session.getAttribute("idusu")%>,
                        $("#proyects_sel_dpp"),
                        $("#error_Dialog_dpp"));

                $("#opt_dpp").val("1");
                load_np_sel_dpp("npsn");
                load_hyd_sel_wtpe("HDB");
                load_in_sel_dpp();
                load_pres_sel_dpp();
            });
            
            function load_in_sel_dpp() {
                var parametros = {
                    "combo": "in2",
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
                        var newHtml = "<select class='form-control' name='nom_pipeop_sel_dpp' id='nom_pipeop_sel_dpp' onchange='cleanOut_dpp()'>" + data;
                        $("#div_nom_pipeop_sel_dpp").html(newHtml);

                        newHtml = "<select class='form-control' name='out_pipeop_sel_dpp' id='out_pipeop_sel_dpp' onchange='cleanOut_dpp()'>" + data;
                        $("#div_out_pipeop_sel_dpp").html(newHtml);

                        newHtml = "<select class='form-control' name='wall_pipeop_sel_dpp' id='wall_pipeop_sel_dpp' onchange='cleanOut_dpp()'>" + data;
                        $("#div_wall_pipeop_sel_dpp").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_dpp"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_pres_sel_dpp() {
                var parametros = {
                    "combo": "presf",
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
                        var newHtml = "<select class='form-control' name='hyd_pipeop_sel_dpp' id='hyd_pipeop_sel_dpp' onchange='cleanOut_dpp()'>" + data;
                        $("#div_hyd_pipeop_sel_dpp").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_dpp"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            
            function calculate_dpp() {
                var variables = {
                    "nom_pipeop_dpp": $("#nom_pipeop_dpp").val(),
                    "out_pipeop_dpp": $("#out_pipeop_dpp").val(),
                    "wall_pipeop_dpp": $("#wall_pipeop_dpp").val(),
                    "hyd_pipeop_dpp": $("#hyd_pipeop_dpp").val(),
                    "fact_pipeop_dpp": $("#fact_pipeop_dpp").val(),
                    "minimal_sel_dpp": $("#wthi_sel_dpp option:selected").html()
                };

                var unidades = {
                    "nom_pipeop_sel_dpp": $("#nom_pipeop_sel_dpp").val().split(",")[1],
                    "wall_pipeop_sel_dpp": $("#wall_pipeop_sel_dpp").val().split(",")[1],
                    "out_pipeop_sel_dpp": $("#out_pipeop_sel_dpp").val().split(",")[1],
                    "hyd_pipeop_sel_dpp": $("#hyd_pipeop_sel_dpp").val().split(",")[1]
                };
                
                var res = desing_pressure_polyethylene_form(variables, unidades);

                $("#despress_pipeop_dpp").val(res[0]);



                show_OkDialog($("#calculate_Dialog_dpp"), "Proceso satisfactorio");
            }

            function load_np_sel_dpp(idcombo) {
                var parametros = {
                    "combo": idcombo,
                    "type": "polyet",
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
                        var newHtml = "<select class=\"form-control\" name=\"nomps_sel_dpp\" id= \"nomps_sel_dpp\" onchange=\"onchange_nps_dpp()\">" + data;

                        $("#div_nomps_sel_dpp").html(newHtml);


                        var po = $("#nomps_sel_dpp").val().trim().split(",")[1];

                        $("#nom_pipeop_dpp").val(po);
                        $("#out_pipeop_dpp").val(po);


                        load_wt_sel_dpp();

                        onchange_nps_dpp();

                        onchange_wt_dpp();

                        /*onchange_gra_dpp();*/


                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_dpp"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            function load_wt_sel_dpp() {
                var idOp = $("#nomps_sel_dpp").val();
                //alert(idOp);
                var parametros = {
                    "combo": "wtn",
                    "nps": idOp,
                    "type": "polyet",
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

                        var newHtml = "<select class=\"form-control\" name=\"wthi_sel_dpp\" id= \"wthi_sel_dpp\" onchange=\"onchange_wt_dpp()\">" + data;

                        $("#div_wallt_sel_dpp").html(newHtml);


                        if (data.trim() != "") {
                            var val = $("#wthi_sel_dpp").val().trim().split(",");
                            $("#wall_pipeop_dpp").val(val[1]);
                        }

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_dpp"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            function onchange_nps_dpp() {
                cleanOut_dpp();
                var po = $("#nomps_sel_dpp").val();
                $("#nom_pipeop_dpp").val(po);
                $("#out_pipeop_dpp").val(po);
                load_wt_sel_dpp();
            }
            function onchange_wt_dpp() {
                cleanOut_dpp();
                var val = $("#wthi_sel_dpp").val().trim().split(",");
                $("#wall_pipeop_dpp").val(val[1]);
            }
            function load_hyd_sel_wtpe(idcombo) {
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
                        var newHtml = "<select class=\"form-control\" name=\"piping_sel_dpp\" id= \"piping_sel_dpp\" onchange=\"onchange_hyd_wtpe()\">" + data;

                        $("#div_piping_sel_dpp").html(newHtml);
                        var po = $("#piping_sel_dpp").val().trim().split(",")[1];
                        $("#hyd_pipeop_dpp").val(po.split(",")[1]);
                        //$("#out_pipeop_wtpe").val(po);
                        onchange_hyd_wtpe();

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_wtpe"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            function onchange_hyd_wtpe() {
                var po = $("#piping_sel_dpp").val();
                $("#hyd_pipeop_dpp").val(po.split(",")[1]);
                cleanOut_dpp();
            }

            function cleanOut_dpp() {
                $("#despress_pipeop_dpp").val("");
            }

            function cleanIn_dpp() {
                $("#nom_pipeop_dpp").val("");
                $("#out_pipeop_dpp").val("");
                $("#wall_pipeop_dpp").val("");
                $("#hyd_pipeop_dpp").val("");
                $("#fact_pipeop_dpp").val("");
            }

            function cleanAll_dpp() {
                cleanOut_dpp();
                cleanIn_dpp();
            }
            
            function onchange_Input_dpp(inp) {

                var sw = validateDecimal(inp.value);

                if (sw !== true) {
                    inp.value = "";
                }

                onchange_Input_zero(inp);
                cleanOut_dpp();
            }
        </script>          
    </body>
</html>