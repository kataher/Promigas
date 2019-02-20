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
                                <h2><strong>Pipe Installation:</strong> 1.1.4. Centrifugal Compressor-Fan Laws</h2>
                            </div>
                            <div class="col-lg-3"> 
                                <br>
                                <!-- Button trigger modal -->
                                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_fl()">
                                    Records
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
                                                <div id="div-table_fl"></div>
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
                                <input  class="form-control" type="text" id="description_fl" name="description_fl"><br>
                                Projects:
                                <select class="form-control" id="proyects_sel_fl" name="proyects_sel_fl"> </select>
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
                                                                            <label>Initial Flow Rate:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input class="form-control" type="text" id="initialflowrate_fl" name="initialflowrate_fl" onchange="onchange_Input_fl(this)" required>
                                                                        </div>
                                                                        <div class="col-md-4" id = "div_if_sel_fl">
                                                                            <select class="form-control" id="if_sel_fl" name="if_sel_fl" onchange="onchange_fr_fl(this)"> </select>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Initial Compressor Head [ft * lbf/lbm]:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input class="form-control" type="text" id="initialcompressorhead_fl" name="initialcompressorhead_fl" onchange="onchange_Input_fl(this)" required>

                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Initial Shaft Horsepower [HP]:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input class="form-control" type="text" id="initialshafthorsepower_fl" name="initialshafthorsepower_fl" onchange="onchange_Input_fl(this)" required>

                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Initial Impeller Rotational Speed [rpm]:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input class="form-control" type="text" id="initialimpellerrotational_fl" name="initialimpellerrotational_fl" onchange="onchange_Input_fl(this)" required>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Final Impeller Rotational Speed [rpm]:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input class="form-control" type="text" id="finalimpellerrotational_fl" name="finalimpellerrotational_fl" onchange="onchange_Input_fl(this)" required ></div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>  
                                                    </div></div>
                                                <div class="form-group">
                                                    <div class="panel panel-default">
                                                        <div class="panel-heading">
                                                            Results                        </div>
                                                        <div class="panel-body">
                                                            <div class="row">
                                                                <div class="col-lg-12">
                                                                    <div class="col-lg-12">
                                                                        <div class="form-group">
                                                                            <label id="lb_fr_fl">Final Flow Rate [MMSCFD]:</label>
                                                                            <input type="text" id="finalflowrate_fl" name="finalflowrate_fl" readonly required class="form-control">
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <label>Final Compressor Head [ft * lbf/lbm]:</label>
                                                                            <input type="text" id="finalcompressorhead_fl" name="finalcompressorhead_fl" readonly required class="form-control">
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <label>Final Shaft Horsepower [HP]:</label>            
                                                                            <input type="text" id="finalshafthorsepower_fl" name="finalshafthorsepower_fl" readonly required class="form-control">
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
                                                <input type="button" id="calculateBtn_fl" name="calculateBtn_fl" value="Calculate" onclick="calculate_fl()" class="btn btn-info btn-block">
                                                <input type="button" id="saveBtn_fl" name="saveBtn_fl" value="Save" onclick="save_fl()" class="btn btn-success btn-block">   
                                                <input type="button" id="delteBtn_fl" name="delteBtn_fl" value="Delete" onclick="delete_fl()" class="btn btn-danger btn-block">
                                                <input type="button" id="cleanAllBtn_fl" name="cleanAllBtn_fl" value="Clean All Data" onclick="cleanAll_fl()" class="btn btn-warning btn-block">
                                                <input type="button" id="cleanInputBtn_fl" name="cleanInputBtn_fl" value="Clean Input Data" onclick="cleanIn_fl()" class="btn btn-warning btn-block">
                                                <input type="button" id="cleanOutputBtn_fl" name="cleanOutputBtn_fl" value="Clean Output Data" onclick="cleanOut_fl()" class="btn btn-warning btn-block">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <input type="hidden" id="id_fl" name="id_fl" value="-1">  
                            <input type="hidden" id="opt_fl" name="opt_fl" value="1">  
                        </div>
                        <div id="save_Dialog_fl" title="Basic dialog" style='display:none;'>
                            <p>Data saved successfully</p>
                        </div>

                        <div id="error_Dialog_fl" title="Basic dialog" style='display:none;'>
                            <p>An error has occurred in the process</p>
                        </div>

                        <div id="calculate_Dialog_fl" title="Basic dialog" style='display:none;'>
                            <p>Calculation done successfully</p>
                        </div>

                        <div id="delete_Dialog_fl" title="Basic dialog" style='display:none;'>
                            <p>Successfully deleted record</p>
                        </div>

                        <div id="dialog-confirm_fl" title="Delete record" style='display:none;'>
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
            load_fluE_sel_fl();

            getproyectos(<%=session.getAttribute("idusu")%>,
                    $("#proyects_sel_fl"),
                    $("#error_Dialog_fl"));


        });

        function load_fluE_sel_fl() {
            var parametros = {
                "combo": "fluE",
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
                    var newHtml = "<select class=\"form-control\" name=\"if_sel_fl\" id= \"if_sel_fl\" onchange=\"onchange_fr_fl(this)\">" + data;
                    $("#div_if_sel_fl").html(newHtml);

                    $("#if_sel_fl").val("71,MMSCFD");
                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_fl"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function onchange_fr_fl(imp) {
            cleanOut_fl();
            var newHtml = "Final Flow Rate [" + imp.value.split(",")[1] + "]:";
            $("#lb_fr_fl").html(newHtml);
        }

        function load_history_fl() {
            var parametros = {
                "iduser": <% out.print(session.getAttribute("idusu"));%>,
                "opcion": "6",
                "nombre": "historial",
                "from": "fl"
            };

            $.ajax({
                type: "POST",
                url: "../manager.jsp",
                data: parametros,
                dataType: 'json',
                async: false,
                beforeSend: function (xhr) {
                    cleanAll_fl();
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
                                html += "<td>" + data.historial[i].description_fl + "</td>";
                                html += "<td><a href='#' onClick=\"load_form_fl(" + data.historial[i].id + ")\"><span class='glyphicon glyphicon-plus' aria-hidden='true'></span></a></td>";
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
                    $("#div-table_fl").empty();
                    $("#div-table_fl").html(html);

                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_fl"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function load_form_fl(id) {
            var parametros = {
                "id": id,
                "opcion": "4",
                "from": "fl"
            };

            $.ajax({
                type: "POST",
                url: "../manager.jsp",
                data: parametros,
                dataType: 'json',
                beforeSend: function (xhr) {
                    cleanAll_fl();
                    block("Cargado datos...");
                },
                success: function (data, status, request) {
                    if (data !== null)
                    {
                        var tags = Object.keys(data.row);

                        for (var i = 0; i < tags.length; i++) {

                            if (tags[i] != "date" && tags[i] != "id_proyect" && tags[i] != "id_user")
                            {
                                $("#" + tags[i]).val(data.row[tags[i]]);
                            }
                        }

                        $("#opt_fl").val("2");
                        $("#id_fl").val(data.row.id);
                        $("#proyects_sel_fl").val(data.row.proyects_sel_fl);

                        alert("Successfully uploaded data");
                    } else {
                        $("#opt_fl").val("1");
                    }
                },
                error: function (xhr, ajaxOptions, err) {
                    $("#opt_fl").val("1");
                    show_OkDialog($("#error_Dialog_fl"), "Error");

                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function onchange_Input_fl(inp) {
            var sw = validateDecimal(inp.value);

            if (sw != true) {
                inp.value = "";
            }
            onchange_Input_zero(inp);
            cleanOut_fl();
        }

        function cleanOut_fl() {
            $("#finalflowrate_fl").val("");
            $("#finalcompressorhead_fl").val("");
            $("#finalshafthorsepower_fl").val("");
        }

        function cleanIn_fl() {
            $("#initialcompressorhead_fl").val("");
            $("#initialflowrate_fl").val("");
            $("#initialshafthorsepower_fl").val("");
            $("#initialimpellerrotational_fl").val("");
            $("#finalimpellerrotational_fl").val("");
        }

        function cleanAll_fl() {
            cleanIn_fl();
            cleanOut_fl();

            $("#description_fl").val("");
        }

        function save_fl() {

            //Todos inputs y select que no tengan readonly
            var inputs = $("#page-wrapper input[type='text'],[type='hidden']").not("[readonly]");
            var selects = $("#page-wrapper select");
            var resultados = $("#page-wrapper input[type='text'][readonly]");

            var parametros = {
                "iduser": <% out.print(session.getAttribute("idusu"));%>,
                "from": "fl"
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
                        $("#id_fl").val(data.row.id);
                        $("#opt_fl").val("2"); //opcion editar
                        show_OkDialog($("#save_Dialog_fl"), "Satisfactory process");
                    },
                    error: function (xhr, ajaxOptions, err) {
                        alert(err);
                        show_OkDialog($("#error_Dialog_fl"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

        }

        function calculate_fl() {
            var variables = {
                "initialflowrate_fl": $("#initialflowrate_fl").val(),
                "initialcompressorhead_fl": $("#initialcompressorhead_fl").val(),
                "initialshafthorsepower_fl": $("#initialshafthorsepower_fl").val(),
                "initialimpellerrotational_fl": $("#initialimpellerrotational_fl").val(),
                "finalimpellerrotational_fl": $("#finalimpellerrotational_fl").val()
            };

            var isOk = validate(variables);

            if (isOk === false) {
                alert("You must complete all fields");
            } else {

                var unidades = {
                    "if_sel_fl": $("#if_sel_fl").val().split(",")[1]
                };

                var res = fanLaws_Form(variables, unidades);

                $("#finalflowrate_fl").val(res[0]);
                $("#finalcompressorhead_fl").val(res[1]);
                $("#finalshafthorsepower_fl").val(res[2]);

                show_OkDialog($("#calculate_Dialog_fl"), "Satisfactory process");
            }

        }

        function delete_fl() {

            //Confirmacion
            if ($("#opt_fl").val() == 2) {
                $("#dialog-confirm_fl").dialog({
                    resizable: false,
                    height: "auto",
                    width: 400,
                    modal: true,
                    buttons: {
                        "Delete": function () {
                            deleteconfirm_fl();
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

        function deleteconfirm_fl() {

            var parametros = {
                "id_fl": $("#id_fl").val(),
                "opcion": "3",
                "iduser": <%=session.getAttribute("idusu")%>,
                "from": "fl"
            };
            $.ajax({
                type: "POST",
                url: "../manager.jsp",
                data: parametros,
                beforeSend: function (xhr) {
                    block("Cargando...");
                },
                success: function (data, status, request) {
                    cleanAll_fl();
                    $("#id_fl").val("-1");
                    $("#opt_fl").val("1");
                    show_OkDialog($("#delete_Dialog_fl"), "Satisfactory process");
                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_fl"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }




    </script>


</html>