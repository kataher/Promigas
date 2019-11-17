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
                                <h2><strong>Cathodic Protection: </strong> 8.4. Resistance to Earth of a Single Vertical Anode</h2>
                            </div>
                            <div class="col-lg-3"> 
                                <br>
                                <!-- Button trigger modal -->
                                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_rsva()">
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
                                                <div id="div-table_rsva"></div>
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
                                <input  class="form-control" type="text" id="description_rsva" name="description_rsva"><br>
                                Projects: 
                                <select class="form-control" id="proyects_sel_rsva" name="proyects_sel_rsva"> </select>
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
                                                                            <input class="form-control" type="text" id="soilr_rsva" name="soilr_rsva" onchange="onchange_Input_rsva(this)" required>
                                                                        </div>
                                                                        <div class="col-md-4"  id="div_so_sel_rsva">
                                                                            <select class="form-control" id="so_sel_rsva" name="so_sel_rsva">  </select>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label class="col-md-12">Anode Length:</label>
                                                                        <div class="col-md-8">
                                                                            <input class="form-control" type="text" id="anodel_rsva" name="anodel_rsva" onchange="onchange_Input_rsva(this)" required>
                                                                        </div>
                                                                        <div class="col-md-4"  id="div_al_sel_rsva">
                                                                            <select class="form-control" id="al_sel_rsva" name="al_sel_rsva">  </select>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label class="col-md-12">Anode Diameter:</label>
                                                                        <div class="col-md-8">
                                                                            <input class="form-control" type="text" id="anoded_rsva" name="anoded_rsva" onchange="onchange_Input_rsva(this)" required>
                                                                        </div>
                                                                        <div class="col-md-4"  id="div_ad_sel_rsva">
                                                                            <select class="form-control" id="ad_sel_rsva" name="ad_sel_rsva">  </select>
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
                                                                        <label>Vertical Anode Resistance to Earth [Ohm]:</label>
                                                                        <input type="text" id="verticala_rsva" name="verticala_rsva" readonly required class="form-control">
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
                                                <input type="button" id="calculateBtn_rsva" name="calculateBtn_rsva" value="Calculate" onclick="calculate_rsva()" class="btn btn-info btn-block">
                                                <input type="button" id="saveBtn_rsva" name="saveBtn_rsva" value="Save" onclick="save_rsva()" class="btn btn-success btn-block">   
                                                <input type="button" id="delteBtn_rsva" name="delteBtn_rsva" value="Delete" onclick="delete_rsva()" class="btn btn-danger btn-block">
                                                <input type="button" id="cleanAllBtn_rsva" name="cleanBtn_rsva" value="Clean All Data" onclick="cleanAll_rsva()" class="btn btn-warning btn-block">
                                                <input type="button" id="cleanInputBtn_rsva" name="cleanBtn_rsva" value="Clean Input Data" onclick="cleanIn_rsva()" class="btn btn-warning btn-block">
                                                <input type="button" id="cleanOutputBtn_rsva" name="cleanBtn_rsva" value="Clean Output Data" onclick="cleanOut_rsva()" class="btn btn-warning btn-block">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <input type="hidden" id="id_rsva" name="id_rsva" value="-1">  
                            <input type="hidden" id="opt_rsva" name="opt_rsva" value="1">   
                        </div>
                        <div id="load_Dialog_rsva" title="Basic dialog" style='display:none;'>
                            <p>Successfully uploaded data</p>
                        </div>

                        <div id="save_Dialog_rsva" title="Basic dialog" style='display:none;'>
                            <p>Data saved successfully</p>
                        </div>

                        <div id="error_Dialog_rsva" title="Basic dialog" style='display:none;'>
                            <p>An error has occurred in the process</p>
                        </div>

                        <div id="calculate_Dialog_rsva" title="Basic dialog" style='display:none;'>
                            <p>Calculation done successfully</p>
                        </div>

                        <div id="delete_Dialog_rsva" title="Basic dialog" style='display:none;'>
                            <p>Successfully deleted record</p>
                        </div>

                        <div id="dialog-confirm_rsva" title="Delete record" style='display:none;'>
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
                    $("#proyects_sel_rsva"),
                    $("#error_Dialog_rsva"));
            load_ohmcm_sel_rsva();
            load_in_sel_rsva();
        });

        function load_in_sel_rsva() {
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
                    var newHtml = "<select class='form-control' name='al_sel_rsva' id= 'al_sel_rsva' onchange='cleanOut_rsva()'>" + data;
                    $("#div_al_sel_rsva").html(newHtml);

                    newHtml = "<select class='form-control' name='ad_sel_rsva' id= 'ad_sel_rsva' onchange='cleanOut_rsva()'>" + data;
                    $("#div_ad_sel_rsva").html(newHtml);
                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_rsva"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function load_ohmcm_sel_rsva() {
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
                    var newHtml = "<select class='form-control' name='so_sel_rsva' id= 'so_sel_rsva' onchange='cleanOut_rsva()'>" + data;
                    $("#div_so_sel_rsva").html(newHtml);
                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_rsva"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function load_history_rsva() {
            var parametros = {
                "idproyect": $("#proyects_sel_rsva").val(),
                "iduser": <% out.print(session.getAttribute("idusu"));%>,
                "opcion": "6",
                "nombre": "historial",
                "from": "rsva"
            };

            $.ajax({
                type: "POST",
                url: "../manager.jsp",
                data: parametros,
                dataType: 'json',
                async: false,
                beforeSend: function (xhr) {
                    cleanAll_rsva();
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
                                html += "<td>" + data.historial[i].description_rsva + "</td>";
                                html += "<td><a href='#' onClick='load_form_rsva(" + data.historial[i].id + ")'><span class='glyphicon glyphicon-plus' aria-hidden='true'></span></a></td>";
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
                    $("#div-table_rsva").empty();
                    $("#div-table_rsva").html(html);

                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_rsva"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function load_form_rsva(id) {
            var parametros = {
                "id": id,
                "from": "rsva",
                "opcion": "4"
            };

            $.ajax({
                type: "POST",
                url: "../manager.jsp",
                data: parametros,
                dataType: 'json',
                beforeSend: function (xhr) {
                    cleanAll_rsva();
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

                        $("#opt_rsva").val("2");
                        $("#id_rsva").val(data.row.id);
                        $("#proyects_sel_rsva").val(data.row.id_proyect);
                    } else {
                        $("#opt_rsva").val("1");
                    }

                },
                error: function (xhr, ajaxOptions, err) {
                    $("#opt_rsva").val("1");
                    show_OkDialog($("#error_Dialog_rsva"), "Error");

                },
                complete: function () {
                    unBlock();
                }
            });
        }



        function onchange_Input_rsva(inp) {
            var sw = validateDecimal(inp.value);

            if (sw != true) {
                inp.value = "";
            }
            onchange_Input_zero(inp);
            cleanOut_rsva();
        }

        function cleanOut_rsva() {
            $("#verticala_rsva").val("");
        }

        function cleanIn_rsva() {
            $("#anodel_rsva").val("");
            $("#soilr_rsva").val("");
            $("#anoded_rsva").val("");
        }

        function cleanAll_rsva() {
            cleanIn_rsva();
            cleanOut_rsva();

            $("#description_rsva").val("");
        }

        function save_rsva() {
            var inputs = $("#page-wrapper input[type='text'],[type='hidden']").not("[readonly]");
            var selects = $("#page-wrapper select");
            var resultados = $("#page-wrapper input[type='text'][readonly]");

            var parametros = {
                "id_user": <% out.print(session.getAttribute("idusu"));%>,
                "from": "rsva"
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
                        $("#id_rsva").val(data.row.id);
                        $("#opt_rsva").val("2");
                        show_OkDialog($("#save_Dialog_rsva"), "Satisfactory process");
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_rsva"), "Error");
                        alert(err);
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

        }

        function calculate_rsva() {


            var variables = {
                "soilr_rsva": $("#soilr_rsva").val().replace(",", ""),
                "anodel_rsva": $("#anodel_rsva").val().replace(",", ""),
                "anoded_rsva": $("#anoded_rsva").val().replace(",", "")
            };



            var isOk = validate(variables);

            if (isOk === false) {
                alert("You must complete all fields");
            } else {

                var unidades = {
                    "so_sel_rsva": $("#so_sel_rsva").val().split(",")[1],
                    "al_sel_rsva": $("#al_sel_rsva").val().split(",")[1],
                    "ad_sel_rsva": $("#ad_sel_rsva").val().split(",")[1]
                };

                var res = resistanceEarthSVA_Form(variables, unidades);

                $("#verticala_rsva").val(res[0]);

                show_OkDialog($("#calculate_Dialog_rsva"), "Satisfactory process");
            }
        }

        function delete_rsva() {

            //Confirmacion
            if ($("#opt_rsva").val() == 2) {
                $("#dialog-confirm_rsva").dialog({
                    resizable: false,
                    height: "auto",
                    width: 400,
                    modal: true,
                    buttons: {
                        "Delete": function () {
                            deleteReg_rsva();
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

        function deleteReg_rsva() {

            var parametros = {
                "id_rsva": $("#id_rsva").val(),
                "opcion": "3",
                "iduser": <%=session.getAttribute("idusu")%>,
                "from": "rsva"
            };
            $.ajax({
                type: "POST",
                url: "../manager.jsp",
                data: parametros,
                beforeSend: function (xhr) {
                    block("Cargando...");
                },
                success: function (data, status, request) {
                    $("#id_rsva").val("-1");
                    $("#opt_rsva").val("1");
                    cleanAll_rsva();
                    show_OkDialog($("#delete_Dialog_rsva"), "Satisfactory process");
                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_rsva"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

    </script>

</html>