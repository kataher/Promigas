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
                                <h2><strong>Pipeline Testing:</strong> 6.2. Pipeline Pressure Testing – Maximum Pressure Drop</h2>
                            </div>
                            <div class="col-lg-3"> 
                                <br>
                                <!-- Button trigger modal -->
                                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_gp()">
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
                                                <div id="div-table_gp"></div>
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
                                <input  class="form-control" type="text" id="description_gp" name="description_gp"><br>
                                Projects:
                                <select class="form-control" id="proyects_sel_gp" name="proyects_sel_gp"> </select>
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
                                                        <div class="panel-heading"> Input Parameters </div>
                                                        <div class="panel-body">
                                                            <div class="row">
                                                                <div class="col-lg-12">

                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Heigth: </label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input value = "0" class="form-control" type="text" id="enteree_gp" name="enteree_gp" onchange="onchange_Input_gp(this)" required>
                                                                        </div>
                                                                        <div class="col-md-4" id="div_h_sel_gp">
                                                                            <select class="form-control" id="h_sel_gp" name="h_sel_gp"> </select>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Initial Test Pressure:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input class="form-control" value="1200" type="text" id="initialt_gp" name="initialt_gp" onchange="onchange_Input_gp(this)" required>
                                                                        </div>
                                                                        <div class="col-md-4" id = "div_it_sel_gp">
                                                                            <select class="form-control" id="it_sel_gp" name="it_sel_gp"> </select>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Shut-in Time:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input class="form-control" value="8" type="text" id="shut_gp" name="shut_gp" onchange="onchange_Input_gp(this)" required>
                                                                        </div>
                                                                        <div class="col-md-4" id = "div_shut_sel_gp">
                                                                            <select class="form-control" id="shut_sel_gp" name="shut_sel_gp"> </select>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Internal Pipe Diameter:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input class="form-control" value="12.25" type="text" id="internalpd_gp" name="internalpd_gp" onchange="onchange_Input_gp(this)" required>
                                                                        </div>
                                                                        <div class="col-md-4" id = "div_ipd_sel_gp">
                                                                            <select class="form-control" id="ipd_sel_gp" name="ipd_sel_gp"> </select>
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
                                                                        <label>Acceptable Pressure Loss [psi]</label>
                                                                        <input type="text" id="acceptablep_gp" name="acceptablep_gp" readonly required class="form-control">
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
                                                <input type="button" id="calculateBtn_gp" name="calculateBtn_gp" value="Calculate" onclick="calculate_gp()" class="btn btn-info btn-block">
                                                <input type="button" id="saveBtn_gp" name="saveBtn_gp" value="Save" onclick="save_gp()" class="btn btn-success btn-block">   
                                                <input type="button" id="delteBtn_gp" name="delteBtn_gp" value="Delete" onclick="delete_gp()" class="btn btn-danger btn-block">
                                                <input type="button" id="cleanAllBtn_gp" name="cleanBtn_gp" value="Clean All Data" onclick="cleanAll_gp()" class="btn btn-warning btn-block">
                                                <input type="button" id="cleanInputBtn_gp" name="cleanBtn_gp" value="Clean Input Data" onclick="cleanIn_gp()" class="btn btn-warning btn-block">
                                                <input type="button" id="cleanOutputBtn_gp" name="cleanBtn_gp" value="Clean Output Data" onclick="cleanOut_gp()" class="btn btn-warning btn-block">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <input type="hidden" id="id_gp" name="id_gp">  
                            <input type="hidden" id="opt_gp" name="opt_gp">   
                        </div>
                        <div id="load_Dialog_gp" title="Basic dialog" style='display:none;'>
                            <p>Successfully uploaded data</p>
                        </div>

                        <div id="save_Dialog_gp" title="Basic dialog" style='display:none;'>
                            <p>Data saved successfully</p>
                        </div>

                        <div id="error_Dialog_gp" title="Basic dialog" style='display:none;'>
                            <p>An error has occurred in the process</p>
                        </div>

                        <div id="calculate_Dialog_gp" title="Basic dialog" style='display:none;'>
                            <p>Calculation done successfully</p>
                        </div>

                        <div id="delete_Dialog_gp" title="Basic dialog" style='display:none;'>
                            <p>Successfully deleted record</p>
                        </div>

                        <div id="dialog-confirm_gp" title="Delete record" style='display:none;'>
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
            $("#opt_gp").val("1");
            load_press_sel_gp();
            load_time_sel_gp();
            load_in_sel_gp();
            load_le_sel_gp();

            getproyectos(<%=session.getAttribute("idusu")%>,
                    $("#proyects_sel_gp"),
                    $("#error_Dialog_gp"));
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
                async: false,
                beforeSend: function (xhr) {
                    block("Cargando...");
                },
                success: function (data, status, request) {
                    var newHtml = "<select class='form-control' name='ipd_sel_gp' id= 'ipd_sel_gp'>" + data;
                    $("#div_ipd_sel_gp").html(newHtml);
                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_gp"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function load_le_sel_gp() {
            var parametros = {
                "combo": "he",
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
                    var newHtml = "<select class='form-control' name='h_sel_gp' id= 'h_sel_gp'>" + data;
                    $("#div_h_sel_gp").html(newHtml);


                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_gp"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function load_press_sel_gp() {
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
                    var newHtml = "<select class='form-control' name='it_sel_gp' id= 'it_sel_gp'>" + data;
                    $("#div_it_sel_gp").html(newHtml);
                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_gp"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function load_time_sel_gp() {
            var parametros = {
                "combo": "time",
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
                    var newHtml = "<select class='form-control' name='shut_sel_gp' id= 'shut_sel_gp'>" + data;
                    $("#div_shut_sel_gp").html(newHtml);
                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_gp"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function load_form_gp(id) {

            var parametros = {
                "id": id,
                "opcion": "4",
                "from": "gp"
            };

            $.ajax({
                type: "POST",
                url: "../manager.jsp",
                data: parametros,
                dataType: 'json',
                beforeSend: function (xhr) {
                    cleanAll_gp();
                    block("Cargado datos...");
                },
                success: function (data, status, request) {
                    if (data != null)
                    {
                        var tags = Object.keys(data.row);

                        for (var i = 0; i < tags.length; i++) {
                            if (tags[i] != "date" && tags[i] != "id_proyect" && tags[i] != "id_user")
                            {
                                $("#" + tags[i]).val(data.row[tags[i]]);
                            }
                        }

                        $("#proyects_sel_gp").val(data.row.id_proyect);
                        $("#opt_gp").val("2");
                        $("#id_gp").val(data.row.id);
                    } else {
                        $("#opt_gp").val("1");
                    }

                },
                error: function (xhr, ajaxOptions, err) {
                    $("#opt_gp").val("1");
                    show_OkDialog($("#error_Dialog_gp"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function load_history_gp() {
            var parametros = {
                "idproyect": $("#proyects_sel_gp").val(),
                "iduser": <% out.print(session.getAttribute("idusu"));%>,
                "opcion": "6",
                "nombre": "historial",
                "from": "gp"
            };

            $.ajax({
                type: "POST",
                url: "../manager.jsp",
                data: parametros,
                dataType: 'json',
                async: false,
                beforeSend: function (xhr) {
                    $("#opt_gp").val("1");
                    $("#id_gp").val("");
                    cleanAll_gp();
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
                                html += "<td>" + data.historial[i].description_gp + "</td>";
                                html += "<td><a href='#' onClick='load_form_gp(" + data.historial[i].id + ")'><span class='glyphicon glyphicon-plus' aria-hidden='true'></span></a></td>";
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
                    $("#div-table_gp").empty();
                    $("#div-table_gp").html(html);

                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_gp"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function cleanOut_gp() {
            $("#acceptablep_gp").val("");
        }

        function cleanIn_gp() {
            $("#initialt_gp").val("");
            $("#shut_gp").val("");
            $("#internalpd_gp").val("");
            $("#enteree_gp").val("");

        }

        function cleanAll_gp() {
            cleanIn_gp();
            cleanOut_gp();
            $("#description_gp").val("");
        }

        function onchange_Input_gp(inp) {
            var sw = validateDecimal(inp.value);

            if (sw != true) {
                inp.value = "";
            }
            onchange_Input_zero(inp);
            cleanOut_gp();
        }

        function calculate_gp() {

            var variables = {
                "initialt_gp": $("#initialt_gp").val().replace(",", ""),
                "shut_gp": $("#shut_gp").val().replace(",", ""),
                "internalpd_gp": $("#internalpd_gp").val().replace(",", ""),
                "enteree_gp": $("#enteree_gp").val().replace(",", "")
            };

            var isOk = validate(variables);

            if (isOk === false) {
                alert("You must complete all fields");
            } else {

                var unidades = {
                    "it_sel_gp": $("#it_sel_gp").val().split(",")[1],
                    "shut_sel_gp": $("#shut_sel_gp").val().split(",")[1],
                    "ipd_sel_gp": $("#ipd_sel_gp").val().split(",")[1],
                    "h_sel_gp": $("#h_sel_gp").val().split(",")[1]
                };

                var res = gaspipelineMod6_Form(variables, unidades);

                $("#acceptablep_gp").val(res[0]);

                show_OkDialog($("#calculate_Dialog_gp"), "Satisfactory process");
            }
        }

        function save_gp() {

            var parametros = {
                "initialt_gp": $("#initialt_gp").val(),
                "shut_gp": $("#shut_gp").val(),
                "internalpd_gp": $("#internalpd_gp").val(),
                "it_sel_gp": $("#it_sel_gp").val(),
                "shut_sel_gp": $("#shut_sel_gp").val(),
                "ipd_sel_gp": $("#ipd_sel_gp").val(),
                "enteree_gp": $("#enteree_gp").val(),
                "h_sel_gp": $("#h_sel_gp").val(),
                "acceptablep_gp": $("#acceptablep_gp").val(),
                "idproyect": $("#proyects_sel_gp").val(),
                "opcion": $("#opt_gp").val(),
                "iduser": <% out.print(session.getAttribute("idusu"));%>,
                "id_gp": 1,
                "description_gp": $("#description_gp").val(),
                "from": "gp"
            };

            var isOk = validate(parametros);

            if (isOk === false) {
                alert("You must perform the calculation and fill out the description");
            } else {

                if ($("#opt_gp").val() == 2) {
                    parametros.id_gp = $("#id_gp").val();
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
                        $("#id_gp").val(data.row.id);
                        $("#opt_gp").val("2");
                        show_OkDialog($("#save_Dialog_gp"), "Satisfactory process");
                    },
                    error: function (xhr, ajaxOptions, err) {
                        alert(err);
                        show_OkDialog($("#error_Dialog_gp"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });

            }
        }

        function delete_gp() {

            //Confirmacion
            if ($("#opt_gp").val() == 2) {
                $("#dialog-confirm_gp").dialog({
                    resizable: false,
                    height: "auto",
                    width: 400,
                    modal: true,
                    buttons: {
                        "Delete": function () {
                            deleteReg_gp();
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

        function deleteReg_gp() {
            var parametros = {
                "id_gp": $("#id_gp").val(),
                "opcion": 3,
                "from": "gp",
                "iduser": <% out.print(session.getAttribute("idusu"));%>
            };


            if ($("#opt_gp").val() == 2) {
                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    dataType: 'json',
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        cleanAll_gp();
                        $("#id_gp").val("");
                        $("#opt_gp").val("1");
                        show_OkDialog($("#delete_Dialog_gp"), "Satisfactory process");
                    },
                    error: function (xhr, ajaxOptions, err) {
                        alert(err);
                        show_OkDialog($("#error_Dialog_gp"), "Error");
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