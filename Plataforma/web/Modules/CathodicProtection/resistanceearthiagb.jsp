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
                                <h2><strong>Cathodic Protection: </strong> 8.2. Resistance to Earth of an Impressed Anode Ground Bed</h2>
                            </div>
                            <div class="col-lg-3"> 
                                <br>
                                <!-- Button trigger modal -->
                                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_riagb()">
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
                                                <div id="div-table_riagb"></div>
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
                                <input  class="form-control" type="text" id="description_riagb" name="description_riagb"><br>
                                Projects: 
                                <select class="form-control" id="proyects_sel_riagb" name="proyects_sel_riagb"> </select>
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
                                                                        <label class="col-md-12">Resistance to earth for one installed anode:</label>
                                                                        <div class="col-md-8">
                                                                            <input class="form-control" type="text" id="resistancee_riagb" name="resistancee_riagb" onchange="onchange_Input_riagb(this)" required>
                                                                        </div>
                                                                        <div class="col-md-4"  id="div_res_sel_riagb">
                                                                            <select class="form-control" id="res_sel_riagb" name="res_sel_riagb"> </select>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label class="col-md-12">Actual Soil Resistivity:</label>
                                                                        <div class="col-md-8">
                                                                            <input class="form-control" type="text" id="actuals_riagb" name="actuals_riagb" onchange="onchange_Input_riagb(this)" required>
                                                                        </div>
                                                                        <div class="col-md-4"  id="div_act_sel_riagb">
                                                                            <select class="form-control" id="act_sel_riagb" name="act_sel_riagb">  </select>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group col-md-12">
                                                                        <label>Correction Factor for anode grouping:</label>
                                                                        <input class="form-control" type="text" id="correctionf_riagb" name="correctionf_riagb" onchange="onchange_Input_riagb(this)" required>
                                                                    </div>
                                                                    <div class="form-group col-md-12">
                                                                        <label>Number of Anodes:</label>
                                                                        <input class="form-control" type="text" id="numbera_riagb" name="numbera_riagb" onchange="onchange_Input_riagb(this)" required>
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
                                                                        <label>Total Group Bed to the Earth Resistance [ohm]:</label>
                                                                        <input type="text" id="totalg_riagb" name="totalg_riagb" readonly required class="form-control">
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
                                                <input type="button" id="calculateBtn_riagb" name="calculateBtn_riagb" value="Calculate" onclick="calculate_riagb()" class="btn btn-info btn-block">
                                                <input type="button" id="saveBtn_riagb" name="saveBtn_riagb" value="Save" onclick="save_riagb()" class="btn btn-success btn-block">   
                                                <input type="button" id="delteBtn_riagb" name="delteBtn_riagb" value="Delete" onclick="delete_riagb()" class="btn btn-danger btn-block">
                                                <input type="button" id="cleanAllBtn_riagb" name="cleanBtn_riagb" value="Clean All Data" onclick="cleanAll_riagb()" class="btn btn-warning btn-block">
                                                <input type="button" id="cleanInputBtn_riagb" name="cleanBtn_riagb" value="Clean Input Data" onclick="cleanIn_riagb()" class="btn btn-warning btn-block">
                                                <input type="button" id="cleanOutputBtn_riagb" name="cleanBtn_riagb" value="Clean Output Data" onclick="cleanOut_riagb()" class="btn btn-warning btn-block">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <input type="hidden" id="id_riagb" name="id_riagb" value="-1">  
                            <input type="hidden" id="opt_riagb" name="opt_riagb" value="1">   
                        </div>
                        <div id="load_Dialog_riagb" title="Basic dialog" style='display:none;'>
                            <p>Successfully uploaded data</p>
                        </div>

                        <div id="save_Dialog_riagb" title="Basic dialog" style='display:none;'>
                            <p>Data saved successfully</p>
                        </div>

                        <div id="error_Dialog_riagb" title="Basic dialog" style='display:none;'>
                            <p>An error has occurred in the process</p>
                        </div>

                        <div id="calculate_Dialog_riagb" title="Basic dialog" style='display:none;'>
                            <p>Calculation done successfully</p>
                        </div>

                        <div id="delete_Dialog_riagb" title="Basic dialog" style='display:none;'>
                            <p>Successfully deleted record</p>
                        </div>

                        <div id="dialog-confirm_riagb" title="Delete record" style='display:none;'>
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
                    $("#proyects_sel_riagb"),
                    $("#error_Dialog_riagb"));

            load_ohmcm_sel_riagb();
        });

        function load_ohmcm_sel_riagb() {
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
                    var newHtml = "<select class='form-control' name='res_sel_riagb' id= 'res_sel_riagb' onchange='cleanOut_riagb()'>" + data;
                    $("#div_res_sel_riagb").html(newHtml);

                    newHtml = "<select class='form-control' name='act_sel_riagb' id= 'act_sel_riagb' onchange='cleanOut_riagb()'>" + data;
                    $("#div_act_sel_riagb").html(newHtml);
                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_riagb"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }


        function load_history_riagb() {
            var parametros = {
                "idproyect": $("#proyects_sel_riagb").val(),
                "iduser": <% out.print(session.getAttribute("idusu"));%>,
                "opcion": "6",
                "nombre": "historial",
                "from": "riagb"
            };

            $.ajax({
                type: "POST",
                url: "../manager.jsp",
                data: parametros,
                dataType: 'json',
                async: false,
                beforeSend: function (xhr) {
                    cleanAll_riagb();
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
                                html += "<td>" + data.historial[i].description_riagb + "</td>";
                                html += "<td><a href='#' onClick='load_form_riagb(" + data.historial[i].id + ")'><span class='glyphicon glyphicon-plus' aria-hidden='true'></span></a></td>";
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
                    $("#div-table_riagb").empty();
                    $("#div-table_riagb").html(html);

                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_riagb"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function load_form_riagb(id) {
            var parametros = {
                "id": id,
                "from": "riagb",
                "opcion": "4"
            };

            $.ajax({
                type: "POST",
                url: "../manager.jsp",
                data: parametros,
                dataType: 'json',
                beforeSend: function (xhr) {
                    cleanAll_riagb();
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

                        $("#opt_riagb").val("2");
                        $("#id_riagb").val(data.row.id);
                        $("#proyects_sel_riagb").val(data.row.id_proyect);
                    } else {
                        $("#opt_riagb").val("1");
                    }

                },
                error: function (xhr, ajaxOptions, err) {
                    $("#opt_riagb").val("1");
                    show_OkDialog($("#error_Dialog_riagb"), "Error");

                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function onchange_Input_riagb(inp) {
            var sw = validateDecimal(inp.value);

            if (sw != true) {
                inp.value = "";
            }
            onchange_Input_zero(inp);
            cleanOut_riagb();
        }

        function cleanOut_riagb() {
            $("#totalg_riagb").val("");
        }

        function cleanIn_riagb() {
            $("#actuals_riagb").val("");
            $("#resistancee_riagb").val("");
            $("#correctionf_riagb").val("");
            $("#numbera_riagb").val("");
        }

        function cleanAll_riagb() {
            cleanIn_riagb();
            cleanOut_riagb();

            $("#description_riagb").val("");
        }

        function save_riagb() {

            var inputs = $("#page-wrapper input[type='text'],[type='hidden']").not("[readonly]");
            var selects = $("#page-wrapper select");
            var resultados = $("#page-wrapper input[type='text'][readonly]");

            var parametros = {
                "id_user": <% out.print(session.getAttribute("idusu"));%>,
                "from": "riagb"
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
                        $("#id_riagb").val(data.row.id);
                        $("#opt_riagb").val("2");
                        show_OkDialog($("#save_Dialog_riagb"), "Satisfactory process");
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_riagb"), "Error");
                        alert(err);
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
        }

        function calculate_riagb() {
            var variables = {
                "resistancee_riagb": $("#resistancee_riagb").val().replace(",", ""),
                "actuals_riagb": $("#actuals_riagb").val().replace(",", ""),
                "correctionf_riagb": $("#correctionf_riagb").val().replace(",", ""),
                "numbera_riagb": $("#numbera_riagb").val().replace(",", "")
            };

            var isOk = validate(variables);

            if (isOk === false) {
                alert("You must complete all fields");
            } else {

                var unidades = {
                    "res_sel_riagb": $("#res_sel_riagb").val().split(",")[1],
                    "act_sel_riagb": $("#act_sel_riagb").val().split(",")[1]
                };

                var res = resistanceEarthIAGB_Form(variables, unidades);

                $("#totalg_riagb").val(res[0]);

                show_OkDialog($("#calculate_Dialog_riagb"), "Satisfactory process");
            }
        }

        function delete_riagb() {

            //Confirmacion
            if ($("#opt_riagb").val() == 2) {
                $("#dialog-confirm_riagb").dialog({
                    resizable: false,
                    height: "auto",
                    width: 400,
                    modal: true,
                    buttons: {
                        "Delete": function () {
                            deleteReg_riagb();
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

        function deleteReg_riagb() {

            var parametros = {
                "id_riagb": $("#id_riagb").val(),
                "opcion": "3",
                "iduser": <%=session.getAttribute("idusu")%>,
                "from": "riagb"
            };
            $.ajax({
                type: "POST",
                url: "../manager.jsp",
                data: parametros,
                beforeSend: function (xhr) {
                    block("Cargando...");
                },
                success: function (data, status, request) {
                    $("#id_riagb").val("-1");
                    $("#opt_riagb").val("1");
                    cleanAll_riagb();
                    show_OkDialog($("#delete_Dialog_riagb"), "Satisfactory process");
                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_riagb"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

    </script>

</html>