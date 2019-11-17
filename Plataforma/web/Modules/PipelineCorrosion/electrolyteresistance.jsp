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
                                <h2><strong>Pipeline Corrosion:</strong> 7.5. Electrolyte Resistance From The Surface of an Electrode to any Distance</h2>
                            </div>
                            <div class="col-lg-3"> 
                                <br>
                                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_ere()">
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
                                                <div id="div-table_ere"></div>
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
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            Description:  
                            <input  class="form-control" type="text" id="description_ere" name="description_ere"><br>
                            Projects: 
                            <select class="form-control" id="proyects_sel_ere" name="proyects_sel_ere"> </select>
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
                                                                        <label>Electrolyte Resistivity:</label>
                                                                    </div>
                                                                    <div class="col-md-8">
                                                                        <input class="form-control" value="100" type="text" id="electrolyter_ere" name="electrolyter_ere" onchange="onchange_Input_ere(this)" required>
                                                                    </div>
                                                                    <div class="col-md-4" id = "div_er_sel_ere">
                                                                        <select class="form-control" id="er_sel_ere" name="er_sel_ere" onchange="cleanOut_ere()"> </select>
                                                                    </div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <div class="col-md-12">
                                                                        <label>Distance from the Central Electrode:</label>
                                                                    </div>
                                                                    <div class="col-md-8">
                                                                        <input class="form-control" value="1" type="text" id="distancec_ere" name="distancec_ere" onchange="onchange_Input_ere(this)" required>            
                                                                    </div>
                                                                    <div class="col-md-4" id = "div_dc_sel_ere">
                                                                        <select class="form-control" id="dc_sel_ere" name="dc_sel_ere" onchange="cleanOut_ere()"> </select>
                                                                    </div>
                                                                </div>

                                                                <div class="form-group">
                                                                    <div class="col-md-12">
                                                                        <label>Geometry Factor for the Central Electrode:</label>
                                                                    </div>
                                                                    <div class="col-md-8">
                                                                        <input class="form-control" type="text" value="10" id="geof_ere" name="geof_ere" onchange="onchange_Input_ere(this)" required>     
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
                                                                    <label>Resistance of Electrode [ohm]:</label>
                                                                    <input type="text" id="resise_ere" name="resise_ere" readonly required class="form-control">
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
                                            <input type="button" id="calculateBtn_ere" name="calculateBtn_ere" value="Calculate" onclick="calculate_ere()" class="btn btn-info btn-block">
                                            <input type="button" id="saveBtn_ere" name="saveBtn_ere" value="Save" onclick="save_ere()" class="btn btn-success btn-block">   
                                            <input type="button" id="delteBtn_ere" name="delteBtn_ere" value="Delete" onclick="delete_ere()" class="btn btn-danger btn-block">
                                            <input type="button" id="cleanAllBtn_ere" name="cleanAllBtn_ere" value="Clean All Data" onclick="cleanAll_ere()" class="btn btn-warning btn-block">
                                            <input type="button" id="cleanInputBtn_ere" name="cleanInputBtn_ere" value="Clean Input Data" onclick="cleanIn_ere()" class="btn btn-warning btn-block">
                                            <input type="button" id="cleanOutputBtn_ere" name="cleanOutputBtn_ere" value="Clean Output Data" onclick="cleanOut_ere()" class="btn btn-warning btn-block">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <input type="hidden" id="id_ere" name="id_ere" value="-1">  
                        <input type="hidden" id="opt_ere" name="opt_ere" value="1"> 
                    </div>
                    <div id="load_Dialog_ere" title="Basic dialog" style='display:none;'>
                        <p>Successfully uploaded data</p>
                    </div>

                    <div id="save_Dialog_ere" title="Basic dialog" style='display:none;'>
                        <p>Data saved successfully</p>
                    </div>

                    <div id="error_Dialog_ere" title="Basic dialog" style='display:none;'>
                        <p>An error has occurred in the process</p>
                    </div>

                    <div id="calculate_Dialog_ere" title="Basic dialog" style='display:none;'>
                        <p>Calculation done successfully</p>
                    </div>

                    <div id="delete_Dialog_ere" title="Basic dialog" style='display:none;'>
                        <p>Successfully deleted record</p>
                    </div>

                    <div id="dialog-confirm_ere" title="Delete record" style='display:none;'>
                        <p><span class="ui-icon ui-icon-alert" style="float:left; margin:12px 12px 20px 0;"></span>
                            Are you sure you want to permanently delete this record?
                        </p>
                    </div>
                </div>
                <!-- /#page-wrapper -->
            </div>
        </div>        
        <!-- /#wrapper -->
    </body>

    <script>

        $(document).ready(function () {
            load_ohm_sel_ere();
            load_in_sel_ere();

            getproyectos(<%=session.getAttribute("idusu")%>,
                    $("#proyects_sel_ere"),
                    $("#error_Dialog_ere"));
        });

        function load_ohm_sel_ere() {
            var parametros = {
                "combo": "ohm2",
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
                    var newHtml = "<select class='form-control' name='er_sel_ere' id= 'er_sel_ere' onchange='cleanOut_ere()'>" + data;
                    $("#div_er_sel_ere").html(newHtml);
                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_ere"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function load_in_sel_ere() {
            var parametros = {
                "combo": "in3",
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
                    var newHtml = "<select class='form-control' name='dc_sel_ere' id= 'dc_sel_ere' onchange='cleanOut_ere()'>" + data;
                    $("#div_dc_sel_ere").html(newHtml);

                    //newHtml = "<select class='form-control' name='dr_sel_ere' id= 'dr_sel_ere' onchange='cleanOut_ere()'>" + data;
                    //$("#div_dr_sel_ere").html(newHtml);

                    $("#dc_sel_ere").val("2576,mt");
                    //$("#dr_sel_ere").val("2576,mt");

                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_ere"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }


        function load_history_ere() {
            var parametros = {
                "idproyect": $("#proyects_sel_ere").val(),
                "iduser": <% out.print(session.getAttribute("idusu"));%>,
                "opcion": "6",
                "nombre": "historial",
                "from": "ere"
            };

            $.ajax({
                type: "POST",
                url: "../manager.jsp",
                data: parametros,
                dataType: 'json',
                async: false,
                beforeSend: function (xhr) {
                    cleanAll_ere();
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
                                html += "<td>" + data.historial[i].description_ere + "</td>";
                                html += "<td><a href='#' onClick='load_form_ere(" + data.historial[i].id + ")'><span class='glyphicon glyphicon-plus' aria-hidden='true'></span></a></td>";
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
                    $("#div-table_ere").empty();
                    $("#div-table_ere").html(html);

                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_ere"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function load_form_ere(id) {
            var parametros = {
                "id": id,
                "opcion": "4",
                "from": "ere"
            };

            $.ajax({
                type: "POST",
                url: "../manager.jsp",
                data: parametros,
                dataType: 'json',
                beforeSend: function (xhr) {
                    cleanAll_ere();
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

                        $("#opt_ere").val("2");
                        $("#id_ere").val(data.row.id);
                    } else {
                        $("#opt_ere").val("1");
                    }

                },
                error: function (xhr, ajaxOptions, err) {
                    $("#opt_ere").val("1");
                    show_OkDialog($("#error_Dialog_ere"), "Error");

                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function onchange_Input_ere(inp) {
            var sw = validateDecimal(inp.value);

            if (sw != true) {
                inp.value = "";
            }
            onchange_Input_zero(inp);
            cleanOut_ere();
        }

        function cleanOut_ere() {
            $("#resise_ere").val("");
        }

        function cleanIn_ere() {
            $("#distancec_ere").val("");
            $("#electrolyter_ere").val("");
            $("#geof_ere").val("");
        }

        function cleanAll_ere() {
            cleanIn_ere();
            cleanOut_ere();

            $("#description_ere").val("");
        }

        function save_ere() {

            var inputs = $("#page-wrapper input[type='text'],[type='hidden']").not("[readonly]");
            var selects = $("#page-wrapper select");
            var resultados = $("#page-wrapper input[type='text'][readonly]");

            var parametros = {
                "id_user": <% out.print(session.getAttribute("idusu"));%>,
                "from": "ere"
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
                        $("#id_ere").val(data.row.id);
                        $("#opt_ere").val("2");
                        show_OkDialog($("#save_Dialog_ere"), "Satisfactory process");
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_ere"), "Error");
                        alert(err);
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
        }

        function calculate_ere() {
            var variables = {
                "electrolyter_ere": $("#electrolyter_ere").val().replace(",", ""),
                "distancec_ere": $("#distancec_ere").val().replace(",", ""),
                "geof_ere": $("#geof_ere").val().replace(",", "")
            };

            var isOk = validate(variables);

            if (isOk === false) {
                alert("You must complete all fields");
            } else {

                var unidades = {
                    "dc_sel_ere": $("#dc_sel_ere").val().split(",")[1],
                    //"dr_sel_ere" : $("#dr_sel_ere").val().split(",")[1],
                    "er_sel_ere": $("#er_sel_ere").val().split(",")[1]

                };

                var res = electroyleResistance_Form(variables, unidades);
                $("#resise_ere").val(res[0]);

                show_OkDialog($("#calculate_Dialog_ere"), "Satisfactory process");
            }

        }

        function delete_ere() {

            //Confirmacion
            if ($("#opt_ere").val() == 2) {
                $("#dialog-confirm_ere").dialog({
                    resizable: false,
                    height: "auto",
                    width: 400,
                    modal: true,
                    buttons: {
                        "Delete": function () {
                            deleteReg_ere();
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

        function deleteReg_ere() {

            var parametros = {
                "id_ere": $("#id_ere").val(),
                "opcion": "3",
                "from": "ere",
                "iduser": <% out.print(session.getAttribute("idusu"));%>
            };
            $.ajax({
                type: "POST",
                url: "../manager.jsp",
                data: parametros,
                beforeSend: function (xhr) {
                    block("Cargando...");
                },
                success: function (data, status, request) {
                    cleanAll_ere();
                    $("#id_ere").val("-1");
                    $("#opt_ere").val("1");
                    show_OkDialog($("#delete_Dialog_ere"), "Satisfactory process");
                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_ere"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

    </script>

</html>