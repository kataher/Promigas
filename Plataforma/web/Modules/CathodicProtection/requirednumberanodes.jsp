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
                                <h2><strong>Cathodic Protection: </strong> 8.7. Required Number of Anodes & the Total Current Requirement</h2>
                            </div>
                            <div class="col-lg-3"> 
                                <br>
                                <!-- Button trigger modal -->
                                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_rn()">
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
                                                <div id="div-table_rn"></div>
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
                                <input  class="form-control" type="text" id="description_rn" name="description_rn"><br>
                                Projects: 
                                <select class="form-control" id="proyects_sel_rn" name="proyects_sel_rn"> </select>
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
                                                            Input Parameters 
                                                        </div>
                                                        <div class="panel-body">
                                                            <div class="row">
                                                                <div class="col-lg-12">
                                                                    <div class="form-group">
                                                                        <label class="col-md-12">Driving Voltage</label>
                                                                        <div class="col-md-8">
                                                                            <input class="form-control" type="text" id="drivingv_rn" name="drivingv_rn" onchange="onchange_Input_rn(this)" required>
                                                                        </div>
                                                                        <div class="col-md-4"  id="div_dr_sel_rn">
                                                                            <select class="form-control" id="dr_sel_rn" name="dr_sel_rn">  <option value="1">V </option></select>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label class="col-md-12">Anode Resistance:</label>
                                                                        <div class="col-md-8">
                                                                            <input class="form-control" type="text" id="anoder_rn" name="anoder_rn" onchange="onchange_Input_rn(this)" required>
                                                                        </div>
                                                                        <div class="col-md-4"  id="div_an_sel_rn">
                                                                            <select class="form-control" id="an_sel_rn" name="an_sel_rn">  <option value="1"> Ohm </option></select>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label class="col-md-12">Total Current:</label>
                                                                        <div class="col-md-8">
                                                                            <input class="form-control" type="text" id="totalc_rn" name="totalc_rn" onchange="onchange_Input_rn(this)" required>
                                                                        </div>
                                                                        <div class="col-md-4"  id="div_to_sel_rn">
                                                                            <select class="form-control" id="to_sel_rn" name="to_sel_rn">  <option value="1"> A </option></select>
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
                                                                        <label>Required Number of Anodes:</label>
                                                                        <input type="text" id="requiredn_rn" name="requiredn_rn" readonly required class="form-control">
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
                                                <input type="button" id="calculateBtn_rn" name="calculateBtn_rn" value="Calculate" onclick="calculate_rn()" class="btn btn-info btn-block">
                                                <input type="button" id="saveBtn_rn" name="saveBtn_rn" value="Save" onclick="save_rn()" class="btn btn-success btn-block">   
                                                <input type="button" id="delteBtn_rn" name="delteBtn_rn" value="Delete" onclick="delete_rn()" class="btn btn-danger btn-block">
                                                <input type="button" id="cleanAllBtn_rn" name="cleanBtn_rn" value="Clean All Data" onclick="cleanAll_rn()" class="btn btn-warning btn-block">
                                                <input type="button" id="cleanInputBtn_rn" name="cleanBtn_rn" value="Clean Input Data" onclick="cleanIn_rn()" class="btn btn-warning btn-block">
                                                <input type="button" id="cleanOutputBtn_rn" name="cleanBtn_rn" value="Clean Output Data" onclick="cleanOut_rn()" class="btn btn-warning btn-block">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <input type="hidden" id="id_rn" name="id_rn" value="-1">  
                            <input type="hidden" id="opt_rn" name="opt_rn" value="1">   
                        </div>
                        <div id="load_Dialog_rn" title="Basic dialog" style='display:none;'>
                            <p>Successfully uploaded data</p>
                        </div>

                        <div id="save_Dialog_rn" title="Basic dialog" style='display:none;'>
                            <p>Data saved successfully</p>
                        </div>

                        <div id="error_Dialog_rn" title="Basic dialog" style='display:none;'>
                            <p>An error has occurred in the process</p>
                        </div>

                        <div id="calculate_Dialog_rn" title="Basic dialog" style='display:none;'>
                            <p>Calculation done successfully</p>
                        </div>

                        <div id="delete_Dialog_rn" title="Basic dialog" style='display:none;'>
                            <p>Successfully deleted record</p>
                        </div>

                        <div id="dialog-confirm_rn" title="Delete record" style='display:none;'>
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
            getproyectos(<%=session.getAttribute("idusu")%>,
                    $("#proyects_sel_rn"),
                    $("#error_Dialog_rn"));
        });

        function load_history_rn() {
            var parametros = {
                "idproyect": $("#proyects_sel_rn").val(),
                "iduser": <% out.print(session.getAttribute("idusu"));%>,
                "opcion": "6",
                "nombre": "historial",
                "from": "rn"
            };

            $.ajax({
                type: "POST",
                url: "../manager.jsp",
                data: parametros,
                dataType: 'json',
                async: false,
                beforeSend: function (xhr) {
                    cleanAll_rn();
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
                                html += "<td>" + data.historial[i].description_rn + "</td>";
                                html += "<td><a href='#' onClick='load_form_rn(" + data.historial[i].id + ")'><span class='glyphicon glyphicon-plus' aria-hidden='true'></span></a></td>";
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
                    $("#div-table_rn").empty();
                    $("#div-table_rn").html(html);

                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_rn"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function load_form_rn(id) {
            var parametros = {
                "id": id,
                "from": "rn",
                "opcion": "4"
            };

            $.ajax({
                type: "POST",
                url: "../manager.jsp",
                data: parametros,
                dataType: 'json',
                beforeSend: function (xhr) {
                    cleanAll_rn();
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

                        $("#opt_rn").val("2");
                        $("#id_rn").val(data.row.id);
                        $("#proyects_sel_rn").val(data.row.id_proyect);
                    } else {
                        $("#opt_rn").val("1");
                    }

                },
                error: function (xhr, ajaxOptions, err) {
                    $("#opt_rn").val("1");
                    show_OkDialog($("#error_Dialog_rn"), "Error");

                },
                complete: function () {
                    unBlock();
                }
            });
        }



        function onchange_Input_rn(inp) {
            var sw = validateDecimal(inp.value);

            if (sw != true) {
                inp.value = "";
            }
            onchange_Input_zero(inp);
            cleanOut_rn();
        }

        function cleanOut_rn() {
            $("#requiredn_rn").val("");
        }

        function cleanIn_rn() {
            $("#anoder_rn").val("");
            $("#drivingv_rn").val("");
            $("#totalc_rn").val("");
        }

        function cleanAll_rn() {
            cleanIn_rn();
            cleanOut_rn();
            $("#description_rn").val("");
        }

        function save_rn() {
            var inputs = $("#page-wrapper input[type='text'],[type='hidden']").not("[readonly]");
            var selects = $("#page-wrapper select");
            var resultados = $("#page-wrapper input[type='text'][readonly]");

            var parametros = {
                "id_user": <% out.print(session.getAttribute("idusu"));%>,
                "from": "rn"
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
                        $("#id_rn").val(data.row.id);
                        $("#opt_rn").val("2");
                        show_OkDialog($("#save_Dialog_rn"), "Satisfactory process");
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_rn"), "Error");
                        alert(err);
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
        }

        function calculate_rn() {
            var variables = {
                "drivingv_rn": $("#drivingv_rn").val(),
                "anoder_rn": $("#anoder_rn").val(),
                "totalc_rn": $("#totalc_rn").val()
            };

            var res = requiredNumberAnodes_Form(variables);

            $("#requiredn_rn").val(res[0]);

            show_OkDialog($("#calculate_Dialog_rn"), "Satisfactory process");
        }

        function delete_rn() {

            //Confirmacion
            if ($("#opt_rn").val() == 2) {
                $("#dialog-confirm_rn").dialog({
                    resizable: false,
                    height: "auto",
                    width: 400,
                    modal: true,
                    buttons: {
                        "Delete": function () {
                            deleteReg_rn();
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

        function deleteReg_rn() {

            var parametros = {
                "id_rn": $("#id_rn").val(),
                "opcion": "3",
                "iduser": <%=session.getAttribute("idusu")%>,
                "from": "rn"
            };
            $.ajax({
                type: "POST",
                url: "../manager.jsp",
                data: parametros,
                beforeSend: function (xhr) {
                    block("Cargando...");
                },
                success: function (data, status, request) {
                    $("#id_rn").val("-1");
                    $("#opt_rn").val("1");
                    cleanAll_rn();
                    show_OkDialog($("#delete_Dialog_rn"), "Satisfactory process");
                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_rn"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

    </script>
</html>