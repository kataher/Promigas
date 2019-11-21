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
                                <h2><strong>Surcharge Live Load on Buried PE Pipe & Pipeline Crossings:</strong> 9.3. PE Pipe - Post-Installation Stress Analysis</h2>
                            </div>
                            <div class="col-lg-3"> 
                                <br>
                                <!-- Button trigger modal -->
                                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_poi()">
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
                                                <div id="div-table_poi"></div>
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
                                <input  class="form-control" type="text" id="description_poi" name="description_poi"><br>
                                Projects:
                                <select class="form-control" id="proyects_sel_poi" name="proyects_sel_poi"> </select>
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
                                                            References
                                                        </div>
                                                        <div class="panel-body">
                                                            <div class="row">
                                                                <div class="col-lg-12">
                                                                    <form role="form">
                                                                        <div class="form-group">
                                                                            <label>Safe Long-Term Deflection Desing values for Buried Pressurized Polyethylene Pipe</label>
                                                                            <table border=1>
                                                                                <tr>
                                                                                    <th> DR or SDR </th>
                                                                                    <th>Safe Deflection as % of Diameter</th>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td>21</td>
                                                                                    <td>7.5</td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td>17</td>
                                                                                    <td>6.0</td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td>13.5</td>
                                                                                    <td>6.0</td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td>11</td>
                                                                                    <td>5.0</td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td>9</td>
                                                                                    <td>4.0</td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td>7.3</td>
                                                                                    <td>3.0</td>
                                                                                </tr>
                                                                            </table> 
                                                                        </div>
                                                                    </form>
                                                                </div>
                                                            </div>
                                                        </div>  
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="panel panel-default">
                                                        <div class="panel-heading"> 
                                                            Input Parameters
                                                        </div>
                                                        <div class="panel-body">
                                                            <div class="row">
                                                                <div class="col-lg-12">                                   
                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Internal Borehole Diameter:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input class="form-control" value= "10" type="text" id="intb_poi" name="intb_poi" onchange="onchange_Input_poi(this)" required>
                                                                        </div>
                                                                        <div class="col-md-4" id="div_intb_sel_poi">
                                                                            <select class="form-control" id="intb_sel_poi" name="intb_sel_poi" onchange="cleanOut_poi()"> </select>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Depth of the Borehole below Ground Surface: </label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input  class="form-control" value="20" type="text" id="dbo_poi" name="dbo_poi" onchange="onchange_Input_poi(this)" required><br>
                                                                        </div>
                                                                        <div class="col-md-4" id="div_dbo_sel_poi">
                                                                            <select class="form-control" id="dbo_sel_poi" name="dbo_sel_poi" onchange="cleanOut_poi()"> </select>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Unit Weight of Fluid in Borehole [lb/ft3]:</label>
                                                                        </div>
                                                                        <div class="col-md-12">
                                                                            <input class="form-control" type="text" value="93.5" id="uwf_poi" name="uwf_poi" onchange="validate_pres_poi(this)" required>
                                                                        </div>
                                                                    </div>

                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Unir Weight of Soil [lb/ft3]:</label>
                                                                        </div>
                                                                        <div class="col-md-12">
                                                                            <input class="form-control" value="120" type="text" id="uws_poi" name="uws_poi" onchange="validate_pres_poi(this)" required>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Internal Friction Angle of Soil [º]:</label>
                                                                        </div>
                                                                        <div class="col-md-12">
                                                                            <input class="form-control" value="30" type="text" id="ifa_poi" name="ifa_poi" onchange="validate_pres_poi(this)" required>
                                                                        </div>
                                                                    </div>

                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Pipe Outside Diameter:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input class="form-control" value="8" type="text" id="pod_poi" name="pod_poi" onchange="onchange_Input_poi(this)" required>
                                                                        </div>
                                                                        <div class="col-md-4" id="div_pod_sel_poi">
                                                                            <select class="form-control" id="pod_sel_poi" name="pod_sel_poi" onchange="cleanOut_poi()"> </select>
                                                                        </div>
                                                                    </div>


                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Standard Dimension Ratio:</label>
                                                                        </div>
                                                                        <div class="col-md-12">
                                                                            <input class="form-control" value="11" type="text" id="sdr_poi" name="sdr_poi" onchange="validate_pres_poi(this)" required>
                                                                        </div>
                                                                    </div>

                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Percent of Ovality:</label>
                                                                        </div>
                                                                        <div class="col-md-12">
                                                                            <input class="form-control" value="5" type="text" id="po_poi" name="po_poi" onchange="validate_pres_poi(this)" required>
                                                                        </div>
                                                                    </div>

                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Aparent Modulus of Elasticity [psi]:</label>
                                                                        </div>
                                                                        <div class="col-md-12">
                                                                            <input class="form-control" value="110000" type="text" id="ame_poi" name="ame_poi" onchange="validate_pres_poi(this)" required>
                                                                        </div>            
                                                                    </div>

                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Poisson's Ratio:</label>
                                                                        </div>
                                                                        <div class="col-md-12">
                                                                            <input class="form-control" value="0.45" type="text" id="pr_poi" name="pr_poi" onchange="validate_pres_poi(this)" required>
                                                                        </div>            
                                                                    </div>

                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label> Radius of Curvature :</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input  class="form-control" value="2051" type="text" id="rac_poi" name="rac_poi" onchange="onchange_Input_poi(this)" required>
                                                                        </div>
                                                                        <div class="col-md-4" id="div_rac_sel_poi">
                                                                            <select class="form-control" id="rac_sel_poi" name="rac_sel_poi" onchange="cleanOut_poi()"> </select>
                                                                        </div>
                                                                    </div>

                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Live Load [lb/ft2]:</label>
                                                                        </div>
                                                                        <div class="col-md-12">
                                                                            <input class="form-control" value="800" type="text" id="ll_poi" name="ll_poi" onchange="validate_pres_poi(this)" required>
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
                                                                        <label> Earth Pressure Coeficient:</label>
                                                                        <input type="text" id="ep_poi" name="ep_poi" readonly required class="form-control">
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label> Arching Factor:</label>
                                                                        <input type="text" id="af_poi" name="af_poi" readonly required class="form-control">
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label> External Earth Pressure [psi]:</label>
                                                                        <input type="text" id="ef_poi" name="ef_poi" readonly required class="form-control">
                                                                    </div>

                                                                    <div class="form-group">
                                                                        <label>Buoyant Deflection [%]:</label>
                                                                        <input type="text" id="bd_poi" name="bd_poi" readonly required class="form-control">
                                                                    </div>

                                                                    <div class="form-group">
                                                                        <label> Ovality Compensation Factor [%]:</label>
                                                                        <input type="text" id="ocf_poi" name="ocf_poi" readonly required class="form-control">
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
                                                <input type="button" id="calculateBtn_poi" name="calculateBtn_poi" value="Calculate" onclick="calculate_poi()" class="btn btn-info btn-block">
                                                <input type="button" id="saveBtn_poi" name="saveBtn_poi" value="Save" onclick="save_poi()" class="btn btn-success btn-block">   
                                                <input type="button" id="delteBtn_poi" name="delteBtn_poi" value="Delete" onclick="delete_poi()" class="btn btn-danger btn-block">
                                                <input type="button" id="cleanAllBtn_poi" name="cleanBtn_poi" value="Clean All Data" onclick="cleanAll_poi()" class="btn btn-warning btn-block">
                                                <input type="button" id="cleanInputBtn_poi" name="cleanBtn_poi" value="Clean Input Data" onclick="cleanIn_poi()" class="btn btn-warning btn-block">
                                                <input type="button" id="cleanOutputBtn_poi" name="cleanBtn_poi" value="Clean Output Data" onclick="cleanOut_poi()" class="btn btn-warning btn-block">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <input type="hidden" id="id_poi" name="id_poi" value="-1">  
                            <input type="hidden" id="opt_poi" name="opt_poi" value="1">   
                        </div>
                        <div id="load_Dialog_poi" title="Basic dialog" style='display:none;'>
                            <p>Successfully uploaded data</p>
                        </div>

                        <div id="save_Dialog_poi" title="Basic dialog" style='display:none;'>
                            <p>Data saved successfully</p>
                        </div>

                        <div id="error_Dialog_poi" title="Basic dialog" style='display:none;'>
                            <p>An error has occurred in the process</p>
                        </div>

                        <div id="calculate_Dialog_poi" title="Basic dialog" style='display:none;'>
                            <p>Calculation done successfully</p>
                        </div>

                        <div id="delete_Dialog_poi" title="Basic dialog" style='display:none;'>
                            <p>Successfully deleted record</p>
                        </div>

                        <div id="dialog-confirm_poi" title="Delete record" style='display:none;'>
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
            $("#opt_poi").val("1");

            getproyectos(<%=session.getAttribute("idusu")%>,
                    $("#proyects_sel_poi"),
                    $("#error_Dialog_poi"));

            load_in_sel_poi();
            load_in2_sel_poi();


        });


        function onchange_apel_poi() {
            $("#apr_poi").val($("#ae_sel_poi").val().split(",")[1]);
            cleanOut_poi();

        }

        function onchange_ts_poi() {
            $("#ts_poi").val($("#ts_sel_poi").val().split(",")[1]);
            cleanOut_poi();

        }

        function onchange_forsoil_poi() {
            $("#pr_poi").val($("#pr_sel_poi").val().split(",")[1]);
            cleanOut_poi();
        }

        function onchange_Input_poi(inp) {

            var sw = validateDecimal(inp.value);

            if (sw !== true) {
                inp.value = "";
            }
            onchange_Input_zero(inp);
            cleanOut_poi();

        }

        function cleanOut_poi() {
            $("#ep_poi").val("");
            $("#af_poi").val("");
            $("#ef_poi").val("");
            $("#bd_poi").val("");
            $("#ocf_poi").val("");
        }

        function cleanIn_poi() {
            $("#intb_poi").val("");
            $("#dbo_poi").val("");
            $("#uwf_poi").val("");
            $("#uws_poi").val("");
            $("#ifa_poi").val("");
            $("#pod_poi").val("");
            $("#sdr_poi").val("");
            $("#po_poi").val("");
            $("#ame_poi").val("");
            $("#pr_poi").val("");
            $("#rac_poi").val("");
            $("#ll_poi").val("");
        }


        function load_modelas_sel_poi() {
            var parametros = {
                "combo": "hdpedst",
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
                    var newHtml = "<select class='form-control' name='ae_sel_poi' id='ae_sel_poi' onchange='onchange_apel_poi()'>" + data;
                    $("#div_ae_sel_poi").html(newHtml);
                    $("#apr_poi").val($("#ae_sel_poi").val().split(",")[1]);
                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_chp"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function load_typicall_sel_poi() {
            var parametros = {
                "combo": "tsdst",
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
                    var newHtml = "<select class='form-control' name='ts_sel_poi' id='ts_sel_poi' onchange='onchange_ts_poi()'>" + data;
                    $("#div_ts_sel_poi").html(newHtml);
                    $("#ts_poi").val($("#ts_sel_poi").val().split(",")[1]);
                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_chp"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function load_in_sel_poi() {
            var parametros = {
                "combo": "in5",
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
                    var newHtml = "<select class='form-control' name='dbo_sel_poi' id='dbo_sel_poi'>" + data;
                    $("#div_dbo_sel_poi").html(newHtml);

                    newHtml = "<select class='form-control' name='rac_sel_poi' id='rac_sel_poi'>" + data;
                    $("#div_rac_sel_poi").html(newHtml);
                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_chp"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function load_in2_sel_poi() {
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
                    var newHtml = "<select class='form-control' name='intb_sel_poi' id='intb_sel_poi'>" + data;
                    $("#div_intb_sel_poi").html(newHtml);

                    newHtml = "<select class='form-control' name='pod_sel_poi' id='pod_sel_poi'>" + data;
                    $("#div_pod_sel_poi").html(newHtml);


                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_chp"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }



        function load_history_poi() {
            var parametros = {
                "iduser": <% out.print(session.getAttribute("idusu"));%>,
                "from": "poi",
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
                    $("#opt_poi").val("1");
                    $("#id_poi").val("");
                    cleanAll_poi();
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
                                html += "<td>" + data.historial[i].description_poi + "</td>";
                                html += "<td><a href='#' onClick=\"load_form_poi(" + data.historial[i].id + ")\"><span class='glyphicon glyphicon-plus' aria-hidden='true'></span></a></td>";
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
                    $("#div-table_poi").empty();
                    $("#div-table_poi").html(html);

                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_poi"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function load_form_poi(id) {


            var parametros = {
                "id": id,
                "from": "poi",
                "opcion": "4"
            };

            $.ajax({
                type: "POST",
                url: "../manager.jsp",
                data: parametros,
                dataType: 'json',
                beforeSend: function (xhr) {
                    cleanAll_poi();
                    block("Cargado datos...");
                },
                success: function (data, status, request) {
                    if (data != null)
                    {
                        var tags = Object.keys(data.row);

                        for (var i = 0; i < tags.length; i++) {
                            if (tags[i] != "date" && tags[i] != "id_proyect" && tags[i] != "id_user" && tags[i] != "id" && tags[i] != "opz_poi")
                            {
                                $("#" + tags[i]).val(data.row[tags[i]]);
                            }
                        }


                        $("#proyects_sel_poi").val(data.row.id_proyect);
                        $("#opt_poi").val("2");
                        $("#id_poi").val(data.row.id);
                    } else {
                        $("#opt_poi").val("1");
                    }

                },
                error: function (xhr, ajaxOptions, err) {
                    $("#opt_poi").val("1");
                    show_OkDialog($("#error_Dialog_poi"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }



        function load_pr_sel_poi() {
            var parametros = {
                "combo": "psins",
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
                    var newHtml = "<select class=\"form-control\" name=\"pr_sel_poi\" id=\"pr_sel_poi\" onchange=\"onchange_forsoil_poi()\">" + data;
                    $("#div_pr_sel_poi").html(newHtml);
                    $("#pr_poi").val($("#pr_sel_poi").val().split(",")[1]);
                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_poi"), "Error");
                    show_OkDialog(err, "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function load_forl1_poi(id) {

            var parametros = {
                "id": id,
                "from": "poi",
                "opcion": "4"
            };

            $.ajax({
                type: "POST",
                url: "../manager.jsp",
                data: parametros,
                dataType: 'json',
                beforeSend: function (xhr) {
                    cleanAll_poi();
                    block("Cargado datos...");
                },
                success: function (data, status, request) {
                    if (data != null)
                    {
                        var tags = Object.keys(data.row);

                        for (var i = 0; i < tags.length; i++) {
                            if (tags[i] != "date" && tags[i] != "id_proyect" && tags[i] != "id_user" && tags[i] != "id" && tags[i] != "opz_poi")
                            {
                                $("#" + tags[i]).val(data.row[tags[i]]);
                            }
                        }

                        if (data.row["opz_poi"] == "compfactors1_poi") {
                            document.getElementById("compfactors1_poi").checked = true;
                            $("#z1s_poi").addClass("readonly");
                            $("#z1s_poi").attr("readonly", true);

                        } else {
                            document.getElementById("compfactors2_poi").checked = true;
                            $("#z1s_poi").removeAttr("readonly");
                            $("#z1s_poi").removeClass("readOnly");
                        }
                        $("#opt_poi").val("2");
                        $("#id_poi").val(data.row.id);
                    } else {
                        $("#opt_poi").val("1");
                    }

                },
                error: function (xhr, ajaxOptions, err) {
                    $("#opt_poi").val("1");
                    show_OkDialog($("#error_Dialog_poi"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function cleanAll_poi() {
            cleanIn_poi();
            cleanOut_poi();
            $("#description_poi").val("");
        }

        function validate_pres_poi(inp) {
            onchange_Input_poi(inp);
            validatePress(inp, $("#uwf_poi"), $("#dischargep_poi"));
        }

        function calculate_poi() {

            var variables = {
                "ifa_poi": $("#ifa_poi").val().replace(",", ""),
                "uws_poi": $("#uws_poi").val().replace(",", ""),
                "dbo_poi": $("#dbo_poi").val().replace(",", ""),
                "pod_poi": $("#pod_poi").val().replace(",", ""),
                "uwf_poi": $("#uwf_poi").val().replace(",", ""),
                "ame_poi": $("#ame_poi").val().replace(",", ""),
                "pr_poi": $("#pr_poi").val().replace(",", ""),
                "rac_poi": $("#rac_poi").val().replace(",", ""),
                "po_poi": $("#po_poi").val().replace(",", ""),
                "intb_poi": $("#intb_poi").val().replace(",", "")
            };

            var isOk = validate(variables);

            if (isOk === false) {
                alert("You must complete all fields");
            } else {

                var unidades = {
                    "dbo_sel_poi": $("#dbo_sel_poi").val().split(",")[1],
                    "pod_sel_poi": $("#pod_sel_poi").val().split(",")[1],
                    "rac_sel_poi": $("#rac_sel_poi").val().split(",")[1],
                    "intb_sel_poi": $("#intb_sel_poi").val().split(",")[1]
                };


                var res = postInstallation_Form(variables, unidades);


                $("#ep_poi").val(res[0]);
                $("#af_poi").val(res[1]);
                $("#ef_poi").val(res[2]);
                $("#bd_poi").val(res[3]);
                $("#ocf_poi").val(res[4]);

                show_OkDialog($("#calculate_Dialog_poi"), "Satisfactory process");


            }
        }

        function save_poi() {
            var inputs = $("#page-wrapper input[type='text'],[type='hidden']").not("[readonly]");
            var selects = $("#page-wrapper select");
            var resultados = $("#page-wrapper input[type='text'][readonly]");

            var parametros = {
                "id_user": <% out.print(session.getAttribute("idusu"));%>,
                "from": "poi"
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
                        $("#id_poi").val(data.row.id);
                        $("#opt_poi").val("2");
                        show_OkDialog($("#save_Dialog_poi"), "Satisfactory process");
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_poi"), "Error");
                        alert(err);
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
        }

        function delete_poi() {

            //Confirmacion
            if ($("#opt_poi").val() == 2) {
                $("#dialog-confirm_poi").dialog({
                    resizable: false,
                    height: "auto",
                    width: 400,
                    modal: true,
                    buttons: {
                        "Delete": function () {
                            deleteReg_poi();
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

        function deleteReg_poi() {
            var parametros = {
                "id_poi": $("#id_poi").val(),
                "opcion": 3,
                "iduser": <%=session.getAttribute("idusu")%>,
                "from": "poi"
            };


            if ($("#opt_poi").val() == 2) {
                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    dataType: 'json',
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        cleanAll_poi();
                        $("#id_poi").val("-1");
                        $("#opt_poi").val("1");
                        show_OkDialog($("#delete_Dialog_poi"), "Satisfactory process");
                    },
                    error: function (xhr, ajaxOptions, err) {
                        alert(err);
                        show_OkDialog($("#error_Dialog_poi"), "Error");
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