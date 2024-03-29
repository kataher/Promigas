<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>
<!DOCTYPE html>

<html lang="en">
    <head>  
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>::PROMIGAS::</title>  
        <script src="../../js/jquery.js" type="text/JavaScript" ></script>
        <script src="../../js/jquery-ui/jquery-ui.js"></script>
        <script src="../../js/jquery-ui/external/blockui/jquery-blockui.js"></script>
        <script src="../../js/functions/formulasK.js"></script>
        <script src="../../js/functions/formulasM.js"></script>
        <script src="../../js/functions/functions.js"></script>
        <script src="../../js/jspdf/jspdf.min.js" type="text/JavaScript" > </script>
        <script src="../../js/jspdf/autotable.min.js" type="text/JavaScript" > </script>
        <script src="../../bower_components/morrisjs/morris.js"></script>
        <script src="../../dist/js/sb-admin-2.js"></script>
        <script src="../../bower_components/metisMenu/dist/metisMenu.min.js"></script>
        <script src="../../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
        <script src="../../bower_components/raphael/raphael-min.js"></script>
        <script src="../../js/dataTables/jquery.dataTables.js" type="text/javascript"></script>
        <link rel="stylesheet" href="../../js/jquery-ui/jquery-ui.css">
        <link rel="stylesheet" href="../../bower_components/morrisjs/morris.css">
        <link rel="stylesheet" href="../../bower_components/bootstrap/dist/css/bootstrap.min.css" />
        <link rel="stylesheet" href="../../bower_components/metisMenu/dist/metisMenu.min.css" />
        <link rel="stylesheet" href="../../dist/css/timeline.css" >
        <link rel="stylesheet" href="../../dist/css/sb-admin-2.css" >
        <link rel="stylesheet" href="../../bower_components/font-awesome/css/font-awesome.min.css" type="text/css">
        <link rel="stylesheet" href="../../css/dataTables/jquery.dataTables.min.css" type="text/css">
        <link rel="stylesheet" href="../../css/user-profiles-list-basic.css">
        <link rel="stylesheet" href="../../css/menu.css">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.13/css/jquery.dataTables.min.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/select/1.2.1/css/select.dataTables.min.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.2.4/css/buttons.dataTables.min.css">
    </head>
    <body>

        <div id="wrapper">

            <!-- Navigation -->
            <jsp:include page="../../allmenu.jsp"/>

            <div id="page-wrapper">
                <div class="row">
                    <div id="content">
                        <div class="row">
                            <div class="col-lg-9">
                                <h2><strong>Steel Pipe Design:</strong>  Bending Stress & Deflection </h2>
                            </div>
                            <div class="col-lg-3"> 
                                <br>
                                <!-- Button trigger modal -->
                                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_bds()">
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
                                                <div id="div-table_bds"></div>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- FIN MODAL -->
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-12">
                                Description: 
                                <input class="form-control" type="text" id="description_bds" name="description_bds"><br>
                                Projects: 
                                <select class="form-control" id="proyects_sel_bds" name="proyects_sel_bds"> </select>
                            </div>
                        </div>

                        <hr>
                        <div class="row">

                            <div class="col-lg-9">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        Data
                                    </div>
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-lg-12">

                                                <div class="form-group">
                                                    <div class="panel panel-default">
                                                        <div class="panel-heading">
                                                            Pipe Properties
                                                        </div>
                                                        <div class="panel-body">
                                                            <div class="row">
                                                                <div class="col-lg-12">
                                                                    <div class="panel panel-default">
                                                                        <div class="panel-heading">
                                                                            Line Pipe API 5L
                                                                        </div>
                                                                        <div class="panel-body">
                                                                            <div class="form-group">
                                                                                <div class="col-lg-12">
                                                                                    <label>Nominal pipe size:</label>
                                                                                </div> 
                                                                                <div class="col-lg-12" id="div_nps_sel_bds">
                                                                                    <select class="form-control" id="nps_sel_bds" name="nps_sel_bds"> </select>
                                                                                </div> 
                                                                            </div>   
                                                                            <div class="form-group">
                                                                                <div class="col-lg-12">                      
                                                                                    <label>Wall Thickness [.in]:</label>
                                                                                </div> 
                                                                                <div class="col-lg-12" id="div_wt_sel_bds">
                                                                                    <select class="form-control" id="wt_sel_bds" name="wt_sel_bds"> </select>
                                                                                </div>   
                                                                            </div>                    
                                                                        </div> 
                                                                    </div>
                                                                </div>                          
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="panel panel-default">
                                                        <div class="panel-heading"> Input Parameters </div>
                                                        <div class="panel-body">
                                                            <div class="row">
                                                                <div class="col-lg-12"> 
                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Pipe outside diameter:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" name="pipe_dia_bds" id="pipe_dia_bds" class="form-control" onchange="onchange_Input_bds(this)" required>
                                                                        </div>
                                                                        <div class="col-md-4" id = "div_pipe_out_diam_sel_bds">
                                                                            <select class="form-control" id="pipe_out_diam_sel_bds" name="pipe_out_diam_sel_bds" onchange='cleanOut_bds()'> </select>
                                                                        </div>
                                                                    </div>

                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Wall Thickness:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" class="form-control" id="pipe_wt_bds" name="pipe_wt_bds" onchange="onchange_Input_bds(this)" required>
                                                                        </div>
                                                                        <div class="col-md-4" id = "div_wall_thick_sel_bds">
                                                                            <select class="form-control" id="wall_thick_sel_bds" name="wall_thick_sel_bds" onchange='cleanOut_bds()'> </select>
                                                                        </div>
                                                                    </div>

                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Pipe Length:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" name="pipe_lenght_bds" id="pipe_lenght_bds" class="form-control" onchange="onchange_Input_bds(this)" required>
                                                                        </div>
                                                                        <div class="col-md-4" id = "div_pipe_lenght_sel_bds">
                                                                            <select class="form-control" id="pipe_lenght_sel_bds" name="pipe_lenght_sel_bds">
                                                                                <option value="ft">ft</option>
                                                                                <option value="mt">m</option>
                                                                            </select>
                                                                        </div>
                                                                    </div>

                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Modulus of Elasticity:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" value="30000000" class="form-control" id="mod_elas_bds" name="mod_elas_bds" onchange="onchange_Input_bds(this)" required>   
                                                                        </div>
                                                                        <div class="col-md-4" id = "div_mod_elast_sel_bds">
                                                                            <select class="form-control" id="mod_elast_sel_bds" name="mod_elast_sel_bds"> 
                                                                                <option value="psi">psi</option>
                                                                                <option value="MPa">MPa</option>
                                                                            </select>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>  
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="panel panel-default">
                                                        <div class="panel-heading">
                                                            Results                        
                                                        </div>
                                                        <div class="panel-body">
                                                            <div class="row">
                                                                <div class="col-lg-12">                                    
                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>FIXED ENDS SUPPORT :</label>
                                                                        </div>
                                                                               
                                                                        <div class="col-md-12">
                                                                            <label>Maximum Bending Stress:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" name="max_stress_bds" id="max_stress_bds" class="form-control" readonly>
                                                                        </div>
                                                                        <div class="col-md-4">
                                                                            <select class="form-control output-unit-select" data-output-type="presf" data-output-value="max_stress_bds" id="bend_stress_sel_bdsf" name="bend_stress_sel_bdsf">
                                                                                <option value="psi">psi</option>
                                                                                <option value="kpa">kPa</option>
                                                                            </select>
                                                                        </div>
                                                                        
                                                                        
                                                                        
                                                                        <div class="col-md-12">
                                                                            <label>Maximum Deflection:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" class="form-control" id="max_defl_bds" name="max_defl_bds" readonly>
                                                                        </div>
                                                                        <div class="col-md-4">
                                                                            <select class="form-control output-unit-select" data-output-type="long" data-output-value="max_defl_bds" id="bend_stress_sel_bdsf" name="bend_stress_sel_bdsf">
                                                                                <option value="in">in</option>
                                                                                <option value="mm">mm</option>
                                                                            </select>
                                                                        </div>
                                                                        
                                                                        
                                                                        <div class="col-md-12">       
                                                                            <label>SIMPLE SUPPORT :</label>       
                                                                        </div>
                                                                        <div class="col-md-12">
                                                                            <label>Maximum Bending Stress:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" name="max_stress2_bds" id="max_stress2_bds" class="form-control" readonly>
                                                                        </div>
                                                                        <div class="col-md-4">
                                                                            <select class="form-control output-unit-select" data-output-type="presf" data-output-value="max_stress2_bds" id="max_stress2_sel_bds">
                                                                                <option value="psi">psi</option>
                                                                                <option value="kpa">kPa</option>
                                                                            </select>
                                                                        </div>
                                                                        
                                                                        <div class="col-md-12">
                                                                            <label>Maximum Deflection:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" class="form-control" id="max_defl2_bds" name="max_defl2_bds" readonly> 
                                                                        </div>
                                                                        <div class="col-md-4">
                                                                            <select class="form-control output-unit-select" data-output-type="long" data-output-value="max_defl2_bds" id="max_defl2_sel_bds">
                                                                                <option value="in">in</option>
                                                                                <option value="mm">mm</option>
                                                                            </select>
                                                                        </div>
                                                                        
                                                                        <div class="col-md-12">        
                                                                            <label>CANTILEVER SUPPORT :</label>       
                                                                        </div>
                                                                        <div class="col-md-12">
                                                                            <label>Maximum Bending Stress:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" name="max_stress3_bds" id="max_stress3_bds" class="form-control" readonly>
                                                                        </div>
                                                                        <div class="col-md-4">
                                                                            <select class="form-control output-unit-select" data-output-type="presf" data-output-value="max_stress3_bds" id="max_stress3_sel_bds">
                                                                                <option value="psi">psi</option>
                                                                                <option value="kpa">kPa</option>
                                                                            </select>
                                                                        </div>
                                                                        
                                                                        <div class="col-md-12">
                                                                            <label>Maximum Deflection:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" class="form-control" id="max_defl3_bds" name="max_defl3_bds" readonly>
                                                                        </div>
                                                                        <div class="col-md-4">
                                                                            <select class="form-control output-unit-select" data-output-type="long" data-output-value="max_defl3_bds" id="max_defl3_sel_bds">
                                                                                <option value="in">in</option>
                                                                                <option value="mm">mm</option>
                                                                            </select>
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
                            </div>  

                            <div class="col-lg-3">

                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        Actions
                                    </div>
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-lg-12">

                                                <input type="button" id="calculateBtn_bds" name="calculateBtn_bds" value="Calculate" onclick="calculate_bds()" class="btn btn-info btn-block">
                                                <input type="button" id="saveBtn_bds" name="saveBtn_bds" value="Save" onclick="save_bds()" class="btn btn-success btn-block">   
                                                <input type="button" id="reportBtn_bds" name="reportBtn_bds" value="Delete" onclick="delete_bds()" class="btn btn-danger btn-block">          
                                                <input type="button" id="cleanAllBtn_bds" name="cleanBtn_bds" value="Clean All" onclick="cleanAll_bds()" class="btn btn-warning btn-block">
                                                <input type="button" id="cleanInputBtn_bds" name="cleanBtn_bds" value="Clean Input Data" onclick="cleanIn_bds()" class="btn btn-warning btn-block">
                                                <input type="button" id="cleanOutputBtn_bds" name="cleanBtn_bds" value="Clean Output Data" onclick="cleanOut_bds()" class="btn btn-warning btn-block">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <input type="hidden" id="opt_bds" name="opt_bds"> 
                            <input type="hidden" id="id_bds" name="id_bds"> </div>
                        <div id="load_Dialog_bds" title="Basic dialog" style='display:none;'>
                            <p>Successfully uploaded data</p>
                        </div>

                        <div id="save_Dialog_bds" title="Basic dialog" style='display:none;'>
                            <p>Data saved successfully</p>
                        </div>

                        <div id="error_Dialog_bds" title="Basic dialog" style='display:none;'>
                            <p>An error has occurred in the process</p>
                        </div>

                        <div id="calculate_Dialog_bds" title="Basic dialog" style='display:none;'>
                            <p>Calculation done successfully</p>
                        </div>

                        <div id="delete_Dialog_bds" title="Basic dialog" style='display:none;'>
                            <p>Successfully deleted record</p>
                        </div>

                        <div id="dialog-confirm_bds" title="Delete record" style='display:none;'>
                            <p><span class="ui-icon ui-icon-alert" style="float:left; margin:12px 12px 20px 0;"></span>
                                Are you sure you want to permanently delete this record?
                            </p>
                        </div>
                    </div>
                </div>

            </div>
            <!-- /#page-wrapper -->

        </div>
        <!-- /#wrapper -->
    </body>

    <script>

        $(document).ready(function () {
            $("#opt_bds").val("1");
            load_nps_sel_bds();

            load_in_sel_bds();

        getproyectos(<%=session.getAttribute("idusu")%>,
                    $("#proyects_sel_bds"),
                    $("#error_Dialog_bds"));
        });

        function load_history_bds() {
            var parametros = {
                "idproyect": $("#proyects_sel_bds").val(  ),
                "iduser": <% out.print(session.getAttribute("idusu"));%>,
                "from": "bds",
                "opcion": "6",
                "nombre": "historial"
            };

            $.ajax({
                type: "POST",
                url: "../manager.jsp",
                data: parametros,
                dataType: 'json',
                async: false,
                beforeSend: function (xhr) {
                    $("#opt_bds").val("1");
                    $("#id_bds").val("");
                    cleanAll_bds();
                    block("Cargado datos...");
                },
                success: function (data, status, request) {

                    if (data !== null) {
                        var tags = Object.keys(data.historial[0]);

                        var tamano = data.size;

                        var html = "<table class='table table-bordered table-striped'>";
                        html += "<thead>";
                        html += "<tr>";
                        html += "<th>Creation date</th>";
                        html += "<th>Code</th>";
                        html += "<th>Description</th>";
                        html += "<th>Load</th>";
                        html += "</tr>";
                        html += "</thead>";
                        if (tamano > 0) {

                            html += '<tbody>';
                            for (var i = 0; i < tamano; i++) {
                                html += "<tr>";
                                html += "<td>" + data.historial[i].date + "</td>";
                                html += "<td>" + data.historial[i].id + "</td>";
                                html += "<td>" + data.historial[i].description_bds + "</td>";
                                html += "<td><a href='#' onClick='load_form_bds(" + data.historial[i].id + ")'><span class='glyphicon glyphicon-plus' aria-hidden='true'></span></a></td>";
                                html += "<tr>";

                            }
                            html += '</tbody>';
                        } else {
                            html += '<p>No records available.</p>';
                        }
                        html += "</table><br><br>";

                    } else {
                        html = '<p>No records available.</p>';
                    }
                    $("#div-table_bds").empty();
                    $("#div-table_bds").html(html);

                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_bds"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function load_form_bds(id) {

            var parametros = {
                "id": id,
                "from": "bds",
                "opcion": "4"
            };

            $.ajax({
                type: "POST",
                url: "../manager.jsp",
                data: parametros,
                dataType: 'json',
                beforeSend: function (xhr) {
                    cleanAll_bds();
                    block("Cargado datos...");
                },
                success: function (data, status, request) {
                    if (data != null)
                    {
                        var tags = Object.keys(data.row);

                        for (var i = 0; i < tags.length; i++) {
                            if (tags[i] != "date" && tags[i] != "id_proyect" && tags[i] != "id_user" && tags[i] != "id" && tags[i] != "opz_bds")
                            {
                                $("#" + tags[i]).val(data.row[tags[i]]);
                            }
                        }

                        load_wt_sel_bds();
                        $("#wt_sel_bds").val(data.row.wt_sel_bds);


                        $("#opt_bds").val("2");
                        $("#id_bds").val(data.row.id);
                        $("#proyects_sel_bds").val(data.row.id_proyect);
                    } else {
                        $("#opt_bds").val("1");
                    }

                },
                error: function (xhr, ajaxOptions, err) {
                    $("#opt_bds").val("1");
                    show_OkDialog($("#error_Dialog_bds"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }



        function load_in_sel_bds() {
            var parametros = {
                "combo": "in2",
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
                    var newHtml = "<select class='form-control' name='pipe_out_diam_sel_bds' id= 'pipe_out_diam_sel_bds' onchange='cleanOut_bds()'>" + data;
                    $("#div_pipe_out_diam_sel_bds").html(newHtml);

                    newHtml = "<select class='form-control' name='wall_thick_sel_bds' id= 'wall_thick_sel_bds' onchange='cleanOut_bds()'>" + data;
                    $("#div_wall_thick_sel_bds").html(newHtml);
                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_bds"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function calculate_bds() {
            var variables = {
                "pipe_dia_bds": $("#pipe_dia_bds").val(),
                "pipe_wt_bds": $("#pipe_wt_bds").val(),
                "pipe_lenght_bds": $("#pipe_lenght_bds").val(),
                "mod_elas_bds": $("#mod_elas_bds").val()
            };

            var unidades = {
                "ee_sel_bds": $("#pipe_out_diam_sel_bds").val().split(",")[1],
                "ee1_sel_bds": $("#wall_thick_sel_bds").val().split(",")[1],
                "pipe_lenght_sel_bds": $("#pipe_lenght_sel_bds").val(),
                "dp_sel_ppw": $("#mod_elast_sel_bds").val()
            };

            var res = bending_stress_form(variables, unidades);

            $("#max_stress_bds").val(res[0]);
            $("#max_defl_bds").val(res[1]);

            $("#max_stress2_bds").val(res[2]);
            $("#max_defl2_bds").val(res[3]);

            $("#max_stress3_bds").val(res[4]);
            $("#max_defl3_bds").val(res[5]);


            show_OkDialog($("#calculate_Dialog_wdp"), "Proceso satisfactorio");
        }

        function load_nps_sel_bds() {
            var parametros = {
                "combo": "npsn",
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
                    var newHtml = "<select class=\"form-control\" name=\"nps_sel_bds\" id= \"nps_sel_bds\" onchange=\"onchange_nps_bds()\">" + data;
                    $("#div_nps_sel_bds").html(newHtml);

                    $("#pipe_dia_bds").val($("#nps_sel_bds").val());

                    load_wt_sel_bds();

                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_bds"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function onchange_nps_bds() {
            $("#pipe_dia_bds").val($("#nps_sel_bds").val());
            load_wt_sel_bds();
            cleanOut_bds();
        }

        function load_wt_sel_bds() {
            var parametros = {
                "combo": "wtn",
                "nps": $("#nps_sel_bds").val(),
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
                    var newHtml = "<select class=\"form-control\" name=\"wt_sel_bds\" id= \"wt_sel_bds\" onchange=\"onchange_wt_bds()\">" + data;
                    $("#div_wt_sel_bds").html(newHtml);
                    $("#pipe_wt_bds").val($("#wt_sel_bds").val().split(",")[1]);

                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_bds"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function onchange_wt_bds() {
            $("#pipe_wt_bds").val($("#wt_sel_bds").val().split(",")[1]);
            cleanOut_bds();
        }

        function cleanOut_bds() {
            $("#max_stress_bds").val("");
            $("#max_defl_bds").val("");
            $("#max_stress2_bds").val("");
            $("#max_defl2_bds").val("");
            $("#max_stress3_bds").val("");
            $("#max_defl3_bds").val("");
        }

        function cleanIn_bds() {
            $("#pipe_dia_bds").val("");
            $("#pipe_wt_bds").val("");
            $("#pipe_lenght_bds").val("");
            $("#mod_elas_bds").val("");
        }

        function cleanAll_bds() {
            cleanIn_bds();
            cleanOut_bds();
            $("#description_bds").val("");
        }

        function save_bds() {

            var parametros = {
                "nps_sel_bds": $("#nps_sel_bds").val(),
                "wt_sel_bds": $("#wt_sel_bds").val(),
                "pipe_dia_bds": $("#pipe_dia_bds").val(),
                "pipe_wt_bds": $("#pipe_wt_bds").val(),
                "pipe_lenght_bds": $("#pipe_lenght_bds").val(),
                "mod_elas_bds": $("#mod_elas_bds").val(),
                "max_stress_bds": $("#max_stress_bds").val(),
                "max_defl_bds": $("#max_defl_bds").val(),
                "max_stress2_bds": $("#max_stress2_bds").val(),
                "max_defl2_bds": $("#max_defl2_bds").val(),
                "max_stress3_bds": $("#max_stress3_bds").val(),
                "max_defl3_bds": $("#max_defl3_bds").val(),
                "pipe_lenght_sel_bds": $("#pipe_lenght_sel_bds").val(),
                "idproyect": $("#proyects_sel_bds").val(),
                "iduser": <% out.print(session.getAttribute("idusu"));%>,
                "opcion": $("#opt_bds").val(),
                "id_bds": 1,
                "description_bds": $("#description_bds").val(),
                "from": "bds"

            };



            var isOk = validate(parametros);

            if (isOk === false) {
                alert("You must perform the calculation and fill out the description");
            } else {

                if ($("#opt_bds").val() == 2) {
                    parametros.id_bds = $("#id_bds").val();
                }

                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    dataType: 'json',
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        $("#id_bds").val(data.row.id);
                        $("#opt_bds").val("2");
                        show_OkDialog($("#save_Dialog_bds"), "Satisfactory process");
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_bds"), "Error");
                        alert(err);
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
        }

        function delete_bds() {

            //Confirmacion
            if ($("#opt_bds").val() == 2) {
                $("#dialog-confirm_bds").dialog({
                    resizable: false,
                    height: "auto",
                    width: 400,
                    modal: true,
                    buttons: {
                        "Delete": function () {
                            deleteReg_bds();
                            $(this).dialog("close");
                        },
                        Cancelar: function () {
                            $(this).dialog("close");
                        }
                    }
                });
            } else {
                alert("You must load a record to be able to delete it");
            }
        }

        function deleteReg_bds() {
            var parametros = {
                "id_bds": $("#id_bds").val(),
                "opcion": 3,
                "iduser": <%=session.getAttribute("idusu")%>,
                "from": "bds"
            };


            if ($("#opt_bds").val() == 2) {
                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    dataType: 'json',
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        cleanAll_bds();
                        $("#id_bds").val("");
                        $("#opt_bds").val("1");
                        show_OkDialog($("#delete_Dialog_bds"), "Satisfactory process");
                    },
                    error: function (xhr, ajaxOptions, err) {
                        alert(err);
                        show_OkDialog($("#error_Dialog_bds"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });

            } else {
                alert("You must load a record to be able to delete it");
            }
        }



        function onchange_Input_bds(inp) {

            var sw = validateDecimal(inp.value);

            if (sw !== true) {
                inp.value = "";
            }

            onchange_Input_zero(inp);
            cleanOut_bds();
        }

    </script>

</html>