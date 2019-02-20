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
                                <h2><strong>Cathodic Protection: </strong> 8.6. Resistance to Earth of a Single Horizontal Anode</h2>
                            </div>
                            <div class="col-lg-3"> 
                                <br>
                                <!-- Button trigger modal -->
                                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_rsha()">
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
                                                <div id="div-table_rsha"></div>
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
                                <input  class="form-control" type="text" id="description_rsha" name="description_rsha"><br>
                                Projects: 
                                <select class="form-control" id="proyects_sel_rsha" name="proyects_sel_rsha"> </select>
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
                                                                        <label class="col-md-12">Soil Resistivity:</label>
                                                                        <div class="col-md-8">
                                                                            <input class="form-control" type="text" id="soilr_rsha" name="soilr_rsha" onchange="onchange_Input_rsha(this)" required>
                                                                        </div>
                                                                        <div class="col-md-4"  id="div_so_sel_rsha">
                                                                            <select class="form-control" id="so_sel_rsha" name="so_sel_rsha">  </select>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label class="col-md-12">Anode Length:</label>
                                                                        <div class="col-md-8">
                                                                            <input class="form-control" type="text" id="anodel_rsha" name="anodel_rsha" onchange="onchange_Input_rsha(this)" required>
                                                                        </div>
                                                                        <div class="col-md-4"  id="div_al_sel_rsha">
                                                                            <select class="form-control" id="al_sel_rsha" name="al_sel_rsha"> </select>
                                                                        </div>
                                                                    </div>

                                                                    <div class="form-group">
                                                                        <label class="col-md-12">Anode Diameter:</label>
                                                                        <div class="col-md-8">
                                                                            <input class="form-control" type="text" id="anoded_rsha" name="anoded_rsha" onchange="onchange_Input_rsha(this)" required>
                                                                        </div>
                                                                        <div class="col-md-4"  id="div_ad_sel_rsha">
                                                                            <select class="form-control" id="ad_sel_rsha" name="ad_sel_rsha">  </select>
                                                                        </div>
                                                                    </div>

                                                                    <div class="form-group">
                                                                        <label class="col-md-12">Distance Earth of a Single Horizontal Anode:</label>
                                                                        <div class="col-md-8">
                                                                            <input class="form-control" type="text" id="distancee_rsha" name="distancee_rsha" onchange="onchange_Input_rsha(this)" required>
                                                                        </div>
                                                                        <div class="col-md-4"  id="div_di_sel_rsha">
                                                                            <select class="form-control" id="di_sel_rsha" name="di_sel_rsha"> </select>
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
                                                                        <label>Resistance to Earth of a Single Horizontal Anode [Ohm]:</label>
                                                                        <input type="text" id="resistancee_rsha" name="resistancee_rsha" readonly required class="form-control">
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
                                                <input type="button" id="calculateBtn_rsha" name="calculateBtn_rsha" value="Calculate" onclick="calculate_rsha()" class="btn btn-info btn-block">
                                                <input type="button" id="saveBtn_rsha" name="saveBtn_rsha" value="Save" onclick="save_rsha()" class="btn btn-success btn-block">   
                                                <input type="button" id="delteBtn_rsha" name="delteBtn_rsha" value="Delete" onclick="delete_rsha()" class="btn btn-danger btn-block">
                                                <input type="button" id="cleanAllBtn_rsha" name="cleanBtn_rsha" value="Clean All Data" onclick="cleanAll_rsha()" class="btn btn-warning btn-block">
                                                <input type="button" id="cleanInputBtn_rsha" name="cleanBtn_rsha" value="Clean Input Data" onclick="cleanIn_rsha()" class="btn btn-warning btn-block">
                                                <input type="button" id="cleanOutputBtn_rsha" name="cleanBtn_rsha" value="Clean Output Data" onclick="cleanOut_rsha()" class="btn btn-warning btn-block">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <input type="hidden" id="id_rsha" name="id_rsha">  
                            <input type="hidden" id="opt_rsha" name="opt_rsha" value="1">   
                        </div>
                        <div id="load_Dialog_rsha" title="Basic dialog" style='display:none;'>
                            <p>Successfully uploaded data</p>
                        </div>

                        <div id="save_Dialog_rsha" title="Basic dialog" style='display:none;'>
                            <p>Data saved successfully</p>
                        </div>

                        <div id="error_Dialog_rsha" title="Basic dialog" style='display:none;'>
                            <p>An error has occurred in the process</p>
                        </div>

                        <div id="calculate_Dialog_rsha" title="Basic dialog" style='display:none;'>
                            <p>Calculation done successfully</p>
                        </div>

                        <div id="delete_Dialog_rsha" title="Basic dialog" style='display:none;'>
                            <p>Successfully deleted record</p>
                        </div>

                        <div id="dialog-confirm_rsha" title="Delete record" style='display:none;'>
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
                    $("#proyects_sel_rsha"),
                    $("#error_Dialog_rsha"));

            load_in_sel_rsha();
            load_ohmcm_sel_rsha();
        });

        function load_in_sel_rsha() {
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
                    var newHtml = "<select class='form-control' name='al_sel_rsha' id= 'al_sel_rsha' onchange='cleanOut_rsha()'>" + data;
                    $("#div_al_sel_rsha").html(newHtml);

                    newHtml = "<select class='form-control' name='ad_sel_rsha' id= 'ad_sel_rsha' onchange='cleanOut_rsha()'>" + data;
                    $("#div_ad_sel_rsha").html(newHtml);

                    newHtml = "<select class='form-control' name='di_sel_rsha' id= 'di_sel_rsha' onchange='cleanOut_rsha()'>" + data;
                    $("#div_di_sel_rsha").html(newHtml);
                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_rsha"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function load_ohmcm_sel_rsha() {
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
                    var newHtml = "<select class='form-control' name='so_sel_rsha' id= 'so_sel_rsha' onchange='cleanOut_rsha()'>" + data;
                    $("#div_so_sel_rsha").html(newHtml);
                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_rsha"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function load_history_rsha() {
            var parametros = {
                "idproyect": $("#proyects_sel_rsha").val(),
                "iduser": <% out.print(session.getAttribute("idusu"));%>,
                "opcion": "6",
                "nombre": "historial",
                "from": "rsha"
            };

            $.ajax({
                type: "POST",
                url: "../manager.jsp",
                data: parametros,
                dataType: 'json',
                async: false,
                beforeSend: function (xhr) {
                    cleanAll_rsha();
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
                                html += "<td>" + data.historial[i].description_rsha + "</td>";
                                html += "<td><a href='#' onClick='load_form_rsha(" + data.historial[i].id + ")'><span class='glyphicon glyphicon-plus' aria-hidden='true'></span></a></td>";
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
                    $("#div-table_rsha").empty();
                    $("#div-table_rsha").html(html);

                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_rsha"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function load_form_rsha(id) {
            var parametros = {
                "id": id,
                "from": "rsha",
                "opcion": "4"
            };

            $.ajax({
                type: "POST",
                url: "../manager.jsp",
                data: parametros,
                dataType: 'json',
                beforeSend: function (xhr) {
                    cleanAll_rsha();
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

                        $("#opt_rsha").val("2");
                        $("#id_rsha").val(data.row.id);
                        $("#proyects_sel_rsha").val(data.row.id_proyect);
                    } else {
                        $("#opt_rsha").val("1");
                    }

                },
                error: function (xhr, ajaxOptions, err) {
                    $("#opt_rsha").val("1");
                    show_OkDialog($("#error_Dialog_rsha"), "Error");

                },
                complete: function () {
                    unBlock();
                }
            });
        }



        function onchange_Input_rsha(inp) {
            var sw = validateDecimal(inp.value);

            if (sw != true) {
                inp.value = "";
            }
            onchange_Input_zero(inp);
            cleanOut_rsha();
        }

        function cleanOut_rsha() {
            $("#resistancee_rsha").val("");
        }

        function cleanIn_rsha() {
            $("#anodel_rsha").val("");
            $("#soilr_rsha").val("");
            $("#anoded_rsha").val("");
            $("#distancee_rsha").val("");
        }

        function cleanAll_rsha() {
            cleanIn_rsha();
            cleanOut_rsha();
            $("#description_rsha").val("");
        }

        function save_rsha() {



            var parametros = {
                "soilr_rsha": $("#soilr_rsha").val(),
                "anodel_rsha": $("#anodel_rsha").val(),
                "anoded_rsha": $("#anoded_rsha").val(),
                "distancee_rsha": $("#distancee_rsha").val(),
                "so_sel_rsha": $("#so_sel_rsha").val(),
                "al_sel_rsha": $("#al_sel_rsha").val(),
                "ad_sel_rsha": $("#ad_sel_rsha").val(),
                "di_sel_rsha": $("#di_sel_rsha").val(),
                "resistancee_rsha": $("#resistancee_rsha").val(),
                "idproyect": $("#proyects_sel_rsha").val(),
                "iduser": <% out.print(session.getAttribute("idusu"));%>,
                "opcion": $("#opt_rsha").val(),
                "id_rsha": 1,
                "description_rsha": $("#description_rsha").val(),
                "from": "rsha"
            };

            var isOk = validate(parametros);

            if (isOk === false) {
                alert("Debe realizar el càlculo");
            } else {
                if ($("#opt_rsha").val() == 2) {
                    parametros.id_rsha = $("#id_rsha").val();
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
                        $("#id_rsha").val(data.row.id);
                        $("#opt_rsha").val("2");
                        show_OkDialog($("#save_Dialog_rsha"), "Satisfactory process");
                    },
                    error: function (xhr, ajaxOptions, err) {
                        alert(err);
                        show_OkDialog($("#error_Dialog_rsha"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
        }

        function calculate_rsha() {

            var variables = {
                "soilr_rsha": $("#soilr_rsha").val().replace(",", ""),
                "anodel_rsha": $("#anodel_rsha").val().replace(",", ""),
                "anoded_rsha": $("#anoded_rsha").val().replace(",", ""),
                "distancee_rsha": $("#distancee_rsha").val().replace(",", "")
            };



            var isOk = validate(variables);

            if (isOk === false) {
                alert("You must complete all fields");
            } else {

                var unidades = {
                    "so_sel_rsha": $("#so_sel_rsha").val().split(",")[1],
                    "al_sel_rsha": $("#al_sel_rsha").val().split(",")[1],
                    "ad_sel_rsha": $("#ad_sel_rsha").val().split(",")[1],
                    "di_sel_rsha": $("#di_sel_rsha").val().split(",")[1]
                };

                var res = resistanceEarthSHA_Form(variables, unidades);

                $("#resistancee_rsha").val(res[0]);

                show_OkDialog($("#calculate_Dialog_rsha"), "Satisfactory process");
            }
        }

        function delete_rsha() {

            //Confirmacion
            if ($("#opt_rsha").val() == 2) {
                $("#dialog-confirm_rsha").dialog({
                    resizable: false,
                    height: "auto",
                    width: 400,
                    modal: true,
                    buttons: {
                        "Delete": function () {
                            deleteReg_rsha();
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

        function deleteReg_rsha() {

            var parametros = {
                "id_rsha": $("#id_rsha").val(),
                "opcion": "3",
                "iduser": <%=session.getAttribute("idusu")%>,
                "from": "rsha"
            };
            $.ajax({
                type: "POST",
                url: "../manager.jsp",
                data: parametros,
                beforeSend: function (xhr) {
                    block("Cargando...");
                },
                success: function (data, status, request) {
                    $("#id_rsha").val("");
                    $("#opt_rsha").val("1");
                    cleanAll_rsha();
                    show_OkDialog($("#delete_Dialog_rsha"), "Satisfactory process");
                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_rsha"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

    </script>
</html>