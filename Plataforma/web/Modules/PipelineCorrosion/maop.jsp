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
                                <h2><strong>Pipeline Corrosion:</strong> 7.1.  Evaluation of MAOP in Corroded Areas </h2>
                            </div>
                            <div class="col-lg-3"> 
                                <br>
                                <!-- Button trigger modal -->
                                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_ma()">
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
                                                <div id="div-table_ma"></div>
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
                                <input  class="form-control" type="text" id="description_ma" name="description_ma"><br>
                                Projects: 
                                <select class="form-control" id="proyects_sel_ma" name="proyects_sel_ma"> </select>
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
                                                        <div class="panel-heading"> Pipe </div>
                                                        <div class="panel-body">
                                                            <div class="row">
                                                                <div class="col-lg-12">


                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <input type="radio" id = "api5l_ma" name="linepipe_ma" value="api5l_ma" onchange="onchange_linepipe_ma()" required> Pipe - Specification API 5L <br>
                                                                            <input type="radio" id = "astm_ma" name="linepipe_ma" value="astm_ma" onchange="onchange_linepipe_ma()" required> Standart Steel Pipe - ASTM - ANSI B36.10
                                                                        </div>
                                                                    </div> 

                                                                    <div class="form-group">
                                                                        <div class="col-md-6">
                                                                            <label>Nomimal Size of Pipe:</label>
                                                                        </div>
                                                                        <div class="col-md-3">
                                                                            <label>External Diameter of Pipe [in]:</label>
                                                                        </div>

                                                                        <div class="col-md-6" id="div_nomps_sel_ma">
                                                                            <select class="form-control" id="nomps_sel_ma" name="nomps_sel_ma"> </select>
                                                                        </div>
                                                                        <div class="col-md-3">
                                                                            <input class="form-control" type="text" id="nomps_ma" name="nomps_ma" onchange="onchange_Input_ma(this)" required>
                                                                        </div>
                                                                        <div class="col-md-3" id="div_pipeo_sel_ma">
                                                                            <select class="form-control" id="pipeo_sel_ma" name="pipeo_sel_ma"> </select>
                                                                        </div>
                                                                    </div>

                                                                    <div class="form-group">
                                                                        <div class="col-md-6">
                                                                            <label>Wall Thickness:</label>
                                                                        </div>
                                                                        <div class="col-md-3">
                                                                            <label>Nominal Wall Thickness of Pipe [in]:</label>
                                                                        </div>

                                                                        <div class="col-md-6" id="div_wallt_sel_ma">
                                                                            <select class="form-control" id="wallt_sel_ma" name="wallt_sel_ma"> </select>
                                                                        </div>
                                                                        <div class="col-md-3">
                                                                            <input class="form-control" type="text" id="wallt_ma" name="wallt_ma" onchange="onchange_Input_ma(this)" required>
                                                                        </div>
                                                                        <div class="col-md-3" id="div_np_sel_ma">
                                                                            <select class="form-control" id="np_sel_ma" name="np_sel_ma"> </select>
                                                                        </div>
                                                                    </div>

                                                                    <div class="form-group">
                                                                        <div class="col-md-6">
                                                                            <label>Temperature Derating Factor:</label>
                                                                        </div>
                                                                        <div class="col-md-3">
                                                                            <label>Temperature Derating Factor:</label>
                                                                        </div>

                                                                        <div class="col-md-6" id="div_td_sel_ma">
                                                                            <select class="form-control" id="td_sel_ma" name="td_sel_ma"> </select>
                                                                        </div>
                                                                        <div class="col-md-3">
                                                                            <input class="form-control" type="text" id="tempu_ma" name="tempu_ma" onchange="onchange_Input_ma(this)" required>
                                                                        </div>
                                                                    </div>

                                                                    <div class="form-group">
                                                                        <div class="col-md-6">
                                                                            <label>Grade:</label>
                                                                        </div>
                                                                        <div class="col-md-6">
                                                                            <label>Specified Minimun Yield Strength - SYMS [psi]:</label>
                                                                        </div>
                                                                        <div class="col-md-6" id="div_grade_sel_ma">
                                                                            <select class="form-control" id="grade_sel_ma" name="grade_sel_ma"></select> 
                                                                        </div>
                                                                        <div class="col-md-6">
                                                                            <input class="form-control" type="text" id="grade_ma" name="grade_ma" onchange="onchange_Input_ma(this)" required>
                                                                        </div>
                                                                    </div>

                                                                    <div class="form-group">
                                                                        <div class="col-md-6">
                                                                            <label>Design Factor - F</label>
                                                                        </div>
                                                                        <div class="col-md-6">
                                                                            <label>Appropriate Design Factor ANSI B.31.8 Code:</label>
                                                                        </div>
                                                                        <div class="col-md-6" id="div_df_sel_ma">
                                                                            <select class="form-control" id="df_sel_ma" name="df_sel_ma"></select> 
                                                                        </div>
                                                                        <div class="col-md-6">
                                                                            <input class="form-control" type="text" id="df_ma" name="df_ma" onchange="onchange_Input_ma(this)" required>
                                                                        </div>
                                                                    </div>

                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Longitudinal Joint Factor - E:</label>
                                                                        </div>
                                                                        <div class="col-md-8" id="div_jf_sel_ma">
                                                                            <select class="form-control" id="jf_sel_ma" name="jf_sel_ma"></select> 
                                                                        </div>
                                                                        <div class="col-md-4">
                                                                            <input class="form-control" type="text" id="jf_ma" name="jf_ma" onchange="onchange_Input_ma(this)" required>
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
                                                                <div class="col-lg-12"><div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Maximun Depth of Corroded Area:</label> 
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input class="form-control" type="text" id="maximund_ma" value="0.015" name="maximund_ma" onchange="onchange_Input_ma(this)" required>
                                                                        </div>
                                                                        <div class="col-md-4" id="div_md_sel_ma">
                                                                            <select class="form-control" id="md_sel_ma" name="md_sel_ma" onchange="cleanOut_ma()"> </select>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Longitudinal Extent of Corroded Area:</label> 
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input  class="form-control" value="1" type="text" id="longitudinale_ma" name="longitudinale_ma" onchange="onchange_Input_ma(this)" required><br>
                                                                        </div>
                                                                        <div class="col-md-4" id="div_le_sel_ma">
                                                                            <select class="form-control" id="le_sel_ma" name="le_sel_ma" onchange="cleanOut_ma()"> </select>
                                                                        </div>
                                                                    </div>

                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Maximun Operating Pressure - MOP [psig]:</label>
                                                                        </div>
                                                                        <div class="col-md-12">
                                                                            <input class="form-control" type="text" id="mop_ma" name="mop_ma" onchange="onchange_Input_ma(this)" required>
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
                                                            Results                        </div>
                                                        <div class="panel-body">
                                                            <div class="row">
                                                                <div class="col-lg-12">
                                                                    <div class="form-group">
                                                                        <label>Maximun Safe Pressure - Corroded Area [psi]:</label>
                                                                        <input type="text" id="maximuns_ma" name="maximuns_ma" readonly required class="form-control">
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label>Design Pressure - ANSI B.31.8 [psi]:</label>
                                                                        <input type="text" id="designp_ma" name="designp_ma" readonly required class="form-control">
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label>Intermediate Factor A:</label>            
                                                                        <input type="text" id="intermediatef_ma" name="intermediatef_ma" readonly required class="form-control">
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
                                                <input type="button" id="calculateBtn_ma" name="calculateBtn_ma" value="Calculate" onclick="calculate_ma()" class="btn btn-info btn-block">
                                                <input type="button" id="saveBtn_ma" name="saveBtn_ma" value="Save" onclick="save_ma()" class="btn btn-success btn-block">   
                                                <input type="button" id="delteBtn_ma" name="delteBtn_ma" value="Delete" onclick="delete_ma()" class="btn btn-danger btn-block">
                                                <input type="button" id="cleanAllBtn_ma" name="cleanBtn_ma" value="Clean All Data" onclick="cleanAll_ma()" class="btn btn-warning btn-block">
                                                <input type="button" id="cleanInputBtn_ma" name="cleanBtn_ma" value="Clean Input Data" onclick="cleanIn_ma()" class="btn btn-warning btn-block">
                                                <input type="button" id="cleanOutputBtn_ma" name="cleanBtn_ma" value="Clean Output Data" onclick="cleanOut_ma()" class="btn btn-warning btn-block">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <input type="hidden" id="id_ma" name="id_ma" value="-1">  
                            <input type="hidden" id="opt_ma" name="opt_ma" value="-1">   
                        </div>
                        <div id="load_Dialog_ma" title="Basic dialog" style='display:none;'>
                            <p>Successfully uploaded data</p>
                        </div>

                        <div id="save_Dialog_ma" title="Basic dialog" style='display:none;'>
                            <p>Data saved successfully</p>
                        </div>

                        <div id="error_Dialog_ma" title="Basic dialog" style='display:none;'>
                            <p>An error has occurred in the process</p>
                        </div>

                        <div id="calculate_Dialog_ma" title="Basic dialog" style='display:none;'>
                            <p>Calculation done successfully</p>
                        </div>

                        <div id="delete_Dialog_ma" title="Basic dialog" style='display:none;'>
                            <p>Successfully deleted record</p>
                        </div>

                        <div id="dialog-confirm_ma" title="Delete record" style='display:none;'>
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

            $("#opt_ma").val("1");
            $('#api5l_ma').attr('checked', 'checked');

            load_press_sel_ma();
            load_in_sel_ma();
            load_in2_sel_ma();
            load_nps_sel_ma("5l", null);
            load_deratingf_sel_ma();
            load_grade_sel_ma("gra5l");
            load_joinf_sel_ma("jointf5l");
            load_desingf_sel_ma();

            getproyectos(<%=session.getAttribute("idusu")%>,
                    $("#proyects_sel_ma"),
                    $("#error_Dialog_ma"));
        });

        function load_history_ma() {
            var parametros = {
                "idproyect": $("#proyects_sel_ma").val(),
                "iduser": <% out.print(session.getAttribute("idusu"));%>,
                "opcion": "6",
                "nombre": "historial",
                "from": "ma"
            };

            $.ajax({
                type: "POST",
                url: "../manager.jsp",
                data: parametros,
                dataType: 'json',
                async: false,
                beforeSend: function (xhr) {
                    $("#opt_ma").val("1");
                    $("#id_ma").val("");
                    cleanAll_ma();
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
                                html += "<td>" + data.historial[i].description_ma + "</td>";
                                html += "<td><a href='#' onClick=\"load_form_ma(" + data.historial[i].id + ")\"><span class='glyphicon glyphicon-plus' aria-hidden='true'></span></a></td>";
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
                    $("#div-table_ma").empty();
                    $("#div-table_ma").html(html);

                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_ma"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function load_form_ma(id) {

            var parametros = {
                "id": id,
                "opcion": "4",
                "from": "ma"
            };

            $.ajax({
                type: "POST",
                url: "../manager.jsp",
                data: parametros,
                dataType: 'json',
                beforeSend: function (xhr) {
                    cleanAll_ma();
                    block("Cargado datos...");
                },
                success: function (data, status, request) {
                    if (data != null)
                    {
                        var tags = Object.keys(data.row);

                        for (var i = 0; i < tags.length; i++) {
                            if (tags[i] != "date" && tags[i] != "id_proyect" && tags[i] != "id_user" && tags[i] != "id" && tags[i] != "linepipe_ma")
                            {
                                $("#" + tags[i]).val(data.row[tags[i]]);
                            }
                        }

                        var selnps = data.row["nomps_sel_ma"];

                        if (data.row["linepipe_ma"] == "api5l_ma") {
                            document.getElementById("api5l_ma").checked = true;
                            load_nps_sel_ma("5l", selnps);
                            load_grade_sel_ma("gra5l");
                            load_joinf_sel_ma("jointf5l");
                        } else {//astm_ma
                            document.getElementById("astm_ma").checked = true;
                            load_nps_sel_ma("astm", selnps);
                            load_grade_sel_ma("graastm");
                            load_joinf_sel_ma("jointf");
                        }

                        $("#grade_sel_ma").val(data.row["grade_sel_ma"]);
                        $("#grade_ma").val(data.row["grade_ma"]);

                        $("#jf_sel_ma").val(data.row["jf_sel_ma"]);
                        $("#jf_ma").val(data.row["jf_ma"]);

                        $("#nomps_sel_ma").val(data.row["nomps_sel_ma"]);
                        $("#nomps_ma").val(data.row["nomps_ma"]);

                        $("#wallt_sel_ma").val(data.row["wallt_sel_ma"]);
                        $("#wallt_ma").val(data.row["wallt_ma"]);

                        $("#proyects_sel_ma").val(data.row["id_proyect"]);
                        $("#opt_ma").val("2");
                        $("#id_ma").val(data.row.id);
                    } else {
                        $("#opt_ma").val("1");
                    }

                },
                error: function (xhr, ajaxOptions, err) {
                    $("#opt_ma").val("1");
                    show_OkDialog($("#error_Dialog_ma"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function load_in2_sel_ma() {
            var parametros = {
                "combo": "in2",
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
                    var newHtml = "<select class=\"form-control\" name=\"pipeo_sel_ma\" id= \"pipeo_sel_ma\" onchange=\"cleanOut_ma()\">" + data;
                    $("#div_pipeo_sel_ma").html(newHtml);

                    newHtml = "<select class=\"form-control\" name=\"np_sel_ma\" id= \"np_sel_ma\" onchange=\"cleanOut_ma()\">" + data;
                    $("#div_np_sel_ma").html(newHtml);


                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_ma"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function load_in_sel_ma() {
            var parametros = {
                "combo": "in",
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
                    var newHtml = "<select class=\"form-control\" name=\"md_sel_ma\" id= \"md_sel_ma\" onchange=\"cleanOut_ma()\">" + data;
                    $("#div_md_sel_ma").html(newHtml);

                    newHtml = "<select class=\"form-control\" name=\"le_sel_ma\" id= \"le_sel_ma\" onchange=\"cleanOut_ma()\">" + data;
                    $("#div_le_sel_ma").html(newHtml);


                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_ma"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function load_nps_sel_ma(type, selnps) {
            var parametros = {
                "combo": "npsn",
                "opcion": "5",
                "type": type
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
                    var newHtml = "<select class=\"form-control\" name=\"nomps_sel_ma\" id= \"nomps_sel_ma\" onchange=\"onchange_nps_ma()\">" + data;
                    $("#div_nomps_sel_ma").html(newHtml);

                    if (selnps != null) {
                        $("#nomps_sel_ma").val(selnps);
                    }

                    $("#nomps_ma").val($("#nomps_sel_ma").val());
                    load_wt_sel_ma();

                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_ma"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function load_wt_sel_ma() {
            var parametros = {
                "combo": "wtn",
                "nps": $("#nomps_ma").val(),
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
                    var newHtml = "<select class=\"form-control\" name=\"wallt_sel_ma\" id= \"wallt_sel_ma\" onchange=\"onchange_wt_ma()\">" + data;
                    $("#div_wallt_sel_ma").html(newHtml);
                    $("#wallt_ma").val($("#wallt_sel_ma").val().split(",")[1]);

                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_ma"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function load_press_sel_ma() {
            var parametros = {
                "combo": "pres",
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
                    var newHtml = "<select class=\"form-control\" name=\"syms_sel_ma\" id= \"syms_sel_ma\" onchange=\"cleanOut_ma()\">" + data;
                    $("#div_syms_sel_ma").html(newHtml);
                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_ma"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function load_deratingf_sel_ma() {
            var parametros = {
                "combo": "deratingf",
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
                    var newHtml = "<select class=\"form-control\" name=\"td_sel_ma\" id=\"td_sel_ma\" onchange=\"onchange_df_ma()\">" + data;
                    $("#div_td_sel_ma").html(newHtml);

                    $("#tempu_ma").val($("#td_sel_ma").val().split(",")[1]);
                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_ma"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function load_grade_sel_ma(idcombo) {
            var parametros = {
                "combo": idcombo,
                "opcion": "5"
            };
            $.ajax({
                type: "POST",
                url: "../manager.jsp",
                async: false,
                data: parametros,
                beforeSend: function (xhr) {
                    block("Cargando...");
                },
                success: function (data, status, request) {
                    var newHtml = "<select class=\"form-control\" name=\"grade_sel_ma\" id=\"grade_sel_ma\" onchange=\"onchange_gra_ma()\">" + data;
                    $("#div_grade_sel_ma").html(newHtml);

                    var x = $("#grade_sel_ma").val();
                    $("#grade_ma").val(x.split(",")[1]);
                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_ma"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function load_joinf_sel_ma(idcombo) {
            var parametros = {
                "combo": idcombo,
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
                    var newHtml = "<select class=\"form-control\" name=\"jf_sel_ma\" id=\"jf_sel_ma\" onchange=\"onchange_jf_ma()\">" + data;
                    $("#div_jf_sel_ma").html(newHtml);

                    $("#jf_ma").val($("#jf_sel_ma").val().split(",")[1]);

                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_ma"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function load_desingf_sel_ma() {
            var parametros = {
                "combo": "desingf2",
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
                    var newHtml = "<select class=\"form-control\" name=\"df_sel_ma\" id=\"df_sel_ma\" onchange=\"onchange_defa_ma()\">" + data;
                    $("#div_df_sel_ma").html(newHtml);

                    var x = $("#df_sel_ma").val();
                    $("#df_ma").val(x.split(",")[1]);

                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_ma"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function cleanOut_ma() {
            $("#maximuns_ma").val("");
            $("#designp_ma").val("");
            $("#intermediatef_ma").val("");
        }

        function cleanIn_ma() {
            $("#pipeo_ma").val("");
            $("#wallt_ma").val("");
            $("#tempu_ma").val("");
            $("#grade_ma").val("");
            $("#df_ma").val("");
            $("#jf_ma").val("");
            $("#maximund_ma").val("");
            $("#longitudinale_ma").val("");
            $("#mop_ma").val("");
            $("#nomps_ma").val("");
        }

        function cleanAll_ma() {
            cleanIn_ma();
            cleanOut_ma();
            $("#description_ma").val("");
        }

        function onchange_linepipe_ma() {

            var sel = $("input[type='radio'][name='linepipe_ma']:checked");
            if (sel.val() == "api5l_ma") {
                load_nps_sel_ma("5l", null);
                load_grade_sel_ma("gra5l");
                load_joinf_sel_ma("jointf5l");
            } else {
                load_nps_sel_ma("astm", null);
                load_grade_sel_ma("graastm");
                load_joinf_sel_ma("jointf");
            }

            cleanOut_ma();

        }

        function onchange_Input_ma(inp) {

            var sw = validateDecimal(inp.value);

            if (sw != true) {
                inp.value = "";
            }
            onchange_Input_zero(inp);
            cleanOut_ma();

        }

        function onchange_nps_ma() {
            $("#nomps_ma").val($("#nomps_sel_ma").val());
            load_wt_sel_ma();
            cleanOut_ma();
        }

        function onchange_wt_ma() {
            $("#wallt_ma").val($("#wallt_sel_ma").val().split(",")[1]);
            cleanOut_ma();
        }

        function onchange_gra_ma() {
            $("#grade_ma").val($("#grade_sel_ma").val().split(",")[1]);
            cleanOut_ma();
        }

        function onchange_jf_ma() {
            $("#jf_ma").val($("#jf_sel_ma").val().split(",")[1]);
            cleanOut_ma();
        }

        function onchange_df_ma() {
            $("#tempu_ma").val($("#td_sel_ma").val().split(",")[1]);
            cleanOut_ma();
        }

        function onchange_defa_ma() {
            $("#df_ma").val($("#df_sel_ma").val().split(",")[1]);
            cleanOut_ma();
        }

        function calculate_ma() {

            var variables = {
                "nomps_ma": $("#nomps_ma").val().replace(",", ""),
                "wallt_ma": $("#wallt_ma").val().replace(",", ""),
                "tempu_ma": $("#tempu_ma").val().replace(",", ""),
                "maximund_ma": $("#maximund_ma").val().replace(",", ""),
                "longitudinale_ma": $("#longitudinale_ma").val().replace(",", ""),
                "grade_ma": $("#grade_ma").val().replace(",", ""),
                "mop_ma": $("#mop_ma").val().replace(",", ""),
                "df_ma": $("#df_ma").val().replace(",", ""),
                "jf_ma": $("#jf_ma").val().replace(",", "")
            };

            var isOk = validate(variables);

            if (isOk === false) {
                alert("You must complete all fields");
            } else {

                var unidades = {
                    "pipeo_sel_ma": $("#pipeo_sel_ma").val().split(",")[1],
                    "np_sel_ma": $("#np_sel_ma").val().split(",")[1],
                    "md_sel_ma": $("#md_sel_ma").val().split(",")[1],
                    "le_sel_ma": $("#le_sel_ma").val().split(",")[1]
                };

                var res = maop_Form(variables, unidades);

                $("#maximuns_ma").val(res[0]);
                $("#designp_ma").val(res[1]);
                $("#intermediatef_ma").val(res[2]);

                show_OkDialog($("#calculate_Dialog_ma"), "Satisfactory process");

            }
        }

        function save_ma() {

            var sel = $("input[type='radio'][name='linepipe_ma']:checked");
            var inputs = $("#page-wrapper input[type='text'],[type='hidden']").not("[readonly]");
            var selects = $("#page-wrapper select");
            var resultados = $("#page-wrapper input[type='text'][readonly]");

            var parametros = {
                "id_user": <% out.print(session.getAttribute("idusu"));%>,
                "from": "ma"
            };

            for (var i = 0; i < inputs.size(); i++) {
                if (!($(inputs[i]).attr("id") === "id_" + parametros["from"] && $(inputs[i]).val() === "-1"))
                {
                    parametros[$(inputs[i]).attr("id")] = $(inputs[i]).val();
                }
            }

            for (var i = 0; i < selects.size(); i++) {
                parametros[$(selects[i]).attr("id")] = $(selects[i]).val();
            }

            for (var i = 0; i < resultados.size(); i++) {
                parametros[$(resultados[i]).attr("id")] = $(resultados[i]).val();
            }

            parametros["opcion"] = parametros["opt_" + parametros["from"]];
            parametros["linepipe_ma"] = sel.val();
            

            var isOk = validate(parametros);

            if (isOk === false) {
                alert("You must perform the calculation and fill out the description");
            } else {

                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    dataType: 'json',
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        $("#id_ma").val(data.row.id);
                        $("#opt_ma").val("2");
                        show_OkDialog($("#save_Dialog_ma"), "Satisfactory process");
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_ma"), "Error");
                        alert(err);
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
        }

        function delete_ma() {

            //Confirmacion
            if ($("#opt_ma").val() == 2) {
                $("#dialog-confirm_ma").dialog({
                    resizable: false,
                    height: "auto",
                    width: 400,
                    modal: true,
                    buttons: {
                        "Delete": function () {
                            deleteReg_ma();
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


        function deleteReg_ma() {
            var parametros = {
                "id_ma": $("#id_ma").val(),
                "opcion": 3,
                "iduser": <%=session.getAttribute("idusu")%>,
                "from": "ma"
            };

            if ($("#opt_ma").val() == 2) {
                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        cleanAll_ma();
                        $("#id_ma").val("-1");
                        $("#opt_ma").val("1");
                        show_OkDialog($("#delete_Dialog_ma"), "Satisfactory process");
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_ma"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            } else {
                alert("You must load a record to be able to delete it");
            }
        }

    </script>

</html>