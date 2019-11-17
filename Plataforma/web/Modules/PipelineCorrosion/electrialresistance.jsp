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
                                <h2><strong>Pipeline Corrosion:</strong> 7.7. Electrical Resistance of a Conductor</h2>
                            </div>
                            <div class="col-lg-3"> 
                                <br>
                                <!-- Button trigger modal -->
                                <!-- Button trigger modal -->
                                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_elr()">
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
                                                <div id="div-table_elr"></div>
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
                                <input  class="form-control" type="text" id="description_elr" name="description_elr"><br>
                                Projects: 
                                <select class="form-control" id="proyects_sel_elr" name="proyects_sel_elr"> </select>
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
                                                                            <label>Length of the Conductor:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input class="form-control" type="text" id="length_elr" name="length_elr" onchange="onchange_Input_elr(this)" required>
                                                                        </div>
                                                                        <div class="col-md-4" id = "div_le_sel_elr">
                                                                            <select class="form-control" id="le_sel_elr" name="le_sel_elr" onchange="cleanOut_elr()"> </select>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Cross Sectional Area of the Conductor [<sup>2</sup>]:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input class="form-control" type="text" id="cross_elr" name="cross_elr" onchange="onchange_Input_elr(this)" required>            
                                                                        </div>
                                                                        <div class="col-md-4" id = "div_cs_sel_elr">
                                                                            <select class="form-control" id="cs_sel_elr" name="cs_sel_elr" onchange="cleanOut_elr()"> </select>
                                                                        </div>
                                                                    </div>

                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Conductor Resistivity:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input class="form-control" type="text" id="conductorr_elr" name="conductorr_elr" onchange="onchange_Input_elr(this)" required>            
                                                                        </div>
                                                                        <div class="col-md-4" id = "div_cr_sel_elr">
                                                                            <select class="form-control" id="cr_sel_elr" name="cr_sel_elr" onchange="cleanOut_elr()"> </select>
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
                                                                        <label>Electrical Resistanace of a Conductor [ohm]</label>
                                                                        <input type="text" id="elecr_elr" name="elecr_elr" readonly required class="form-control">
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
                                                <input type="button" id="calculateBtn_elr" name="calculateBtn_elr" value="Calculate" onclick="calculate_elr()" class="btn btn-info btn-block">
                                                <input type="button" id="saveBtn_elr" name="saveBtn_elr" value="Save" onclick="save_elr()" class="btn btn-success btn-block">   
                                                <input type="button" id="delteBtn_elr" name="delteBtn_elr" value="Delete" onclick="delete_elr()" class="btn btn-danger btn-block">
                                                <input type="button" id="cleanAllBtn_elr" name="cleanBtn_elr" value="Clean All Data" onclick="cleanAll_elr()" class="btn btn-warning btn-block">
                                                <input type="button" id="cleanInputBtn_elr" name="cleanBtn_elr" value="Clean Input Data" onclick="cleanIn_elr()" class="btn btn-warning btn-block">
                                                <input type="button" id="cleanOutputBtn_elr" name="cleanBtn_elr" value="Clean Output Data" onclick="cleanOut_elr()" class="btn btn-warning btn-block">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <input type="hidden" id="id_elr" name="id_elr" value="-1">  
                            <input type="hidden" id="opt_elr" name="opt_elr" value="-1">   
                        </div>
                        <div id="load_Dialog_elr" title="Basic dialog" style='display:none;'>
                            <p>Successfully uploaded data</p>
                        </div>

                        <div id="save_Dialog_elr" title="Basic dialog" style='display:none;'>
                            <p>Data saved successfully</p>
                        </div>

                        <div id="error_Dialog_elr" title="Basic dialog" style='display:none;'>
                            <p>An error has occurred in the process</p>
                        </div>

                        <div id="calculate_Dialog_elr" title="Basic dialog" style='display:none;'>
                            <p>Calculation done successfully</p>
                        </div>

                        <div id="delete_Dialog_elr" title="Basic dialog" style='display:none;'>
                            <p>Successfully deleted record</p>
                        </div>

                        <div id="dialog-confirm_elr" title="Delete record" style='display:none;'>
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
            $("#opt_elr").val("1");

            load_in_sel_elr();
            load_ohmcm_sel_elr();

            getproyectos(<%=session.getAttribute("idusu")%>,
                    $("#proyects_sel_elr"),
                    $("#error_Dialog_elr"));
        });

        function load_in_sel_elr() {
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
                    var newHtml = "<select class='form-control' name='le_sel_elr' id= 'le_sel_elr' onchange='cleanOut_elr()'>" + data;
                    $("#div_le_sel_elr").html(newHtml);

                    newHtml = "<select class='form-control' name='cs_sel_elr' id= 'cs_sel_elr' onchange='cleanOut_elr()'>" + data;
                    $("#div_cs_sel_elr").html(newHtml);
                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_elr"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function load_ohmcm_sel_elr() {
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
                    var newHtml = "<select class='form-control' name='cr_sel_elr' id= 'cr_sel_elr' onchange='cleanOut_elr()'>" + data;
                    $("#div_cr_sel_elr").html(newHtml);
                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_elr"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function load_history_elr() {
            var parametros = {
                "idproyect": $("#proyects_sel_elr").val(),
                "iduser": <% out.print(session.getAttribute("idusu"));%>,
                "opcion": "6",
                "nombre": "historial",
                "from": "elr"
            };

            $.ajax({
                type: "POST",
                url: "../manager.jsp",
                data: parametros,
                dataType: 'json',
                async: false,
                beforeSend: function (xhr) {
                    $("#opt_elr").val("1");
                    $("#id_elr").val("");
                    cleanAll_elr();
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
                                html += "<td>" + data.historial[i].description_elr + "</td>";
                                html += "<td><a href='#' onClick='load_form_elr(" + data.historial[i].id + ")'><span class='glyphicon glyphicon-plus' aria-hidden='true'></span></a></td>";
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
                    $("#div-table_elr").empty();
                    $("#div-table_elr").html(html);

                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_elr"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function load_form_elr(id) {
            var parametros = {
                "id": id,
                "opcion": "4",
                "from": "elr"
            };

            $.ajax({
                type: "POST",
                url: "../manager.jsp",
                data: parametros,
                dataType: 'json',
                beforeSend: function (xhr) {
                    cleanAll_elr();
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

                        $("#proyects_sel_elr").val(data.row.id_proyect);
                        $("#opt_elr").val("2");
                        $("#id_elr").val(data.row.id);
                    } else {
                        $("#opt_elr").val("1");
                    }

                },
                error: function (xhr, ajaxOptions, err) {
                    $("#opt_elr").val("1");
                    show_OkDialog($("#error_Dialog_elr"), "Error");

                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function onchange_Input_elr(inp) {
            var sw = validateDecimal(inp.value);

            if (sw != true) {
                inp.value = "";
            }
            onchange_Input_zero(inp);
            cleanOut_elr();
        }

        function cleanOut_elr() {
            $("#elecr_elr").val("");
        }

        function cleanIn_elr() {
            $("#cross_elr").val("");
            $("#length_elr").val("");
            $("#conductorr_elr").val("");
        }

        function cleanAll_elr() {
            cleanIn_elr();
            cleanOut_elr();

            $("#description_elr").val("");
        }

        function save_elr() {
            
            var inputs = $("#page-wrapper input[type='text'],[type='hidden']").not("[readonly]");
            var selects = $("#page-wrapper select");
            var resultados = $("#page-wrapper input[type='text'][readonly]");

            var parametros = {
                "id_user": <% out.print(session.getAttribute("idusu"));%>,
                "from": "elr"
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
                        $("#id_elr").val(data.row.id);
                        $("#opt_elr").val("2");
                        show_OkDialog($("#save_Dialog_elr"), "Satisfactory process");
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_elr"), "Error");
                        alert(err);
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

        }

        function calculate_elr() {
            var variables = {
                "length_elr": $("#length_elr").val().replace(",", ""),
                "cross_elr": $("#cross_elr").val().replace(",", ""),
                "conductorr_elr": $("#conductorr_elr").val().replace(",", "")
            };

            var isOk = validate(variables);

            if (isOk === false) {
                alert("You must complete all fields");
            } else {

                var unidades = {
                    "le_sel_elr": $("#le_sel_elr").val().split(",")[1],
                    "cs_sel_elr": $("#cs_sel_elr").val().split(",")[1],
                    "cr_sel_elr": $("#cr_sel_elr").val().split(",")[1]
                };

                var res = electricalResistance_Form(variables, unidades);

                $("#elecr_elr").val(res[0]);

                show_OkDialog($("#calculate_Dialog_elr"), "Satisfactory process");
            }

        }

        function delete_elr() {

            //Confirmacion
            if ($("#opt_elr").val() == 2) {
                $("#dialog-confirm_elr").dialog({
                    resizable: false,
                    height: "auto",
                    width: 400,
                    modal: true,
                    buttons: {
                        "Delete": function () {
                            deleteReg_elr();
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


        function deleteReg_elr() {

            var parametros = {
                "id_elr": $("#id_elr").val(),
                "opcion": "3",
                "from": "elr",
                "iduser": <%=session.getAttribute("idusu")%>
            };

            if ($("#opt_elr").val() == 2) {
                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        cleanAll_elr();
                        $("#id_elr").val("-1");
                        $("#opt_elr").val("1");
                        show_OkDialog($("#delete_Dialog_elr"), "Satisfactory process");
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_elr"), "Error");
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