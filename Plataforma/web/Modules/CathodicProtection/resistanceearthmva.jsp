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
                                <h2><strong>Cathodic Protection: </strong> 8.5. Resistance to Earth Multiple Vertical Anode</h2>
                            </div>
                            <div class="col-lg-3"> 
                                <br>
                                <!-- Button trigger modal -->
                                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_rmva()">
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
                                                <div id="div-table_rmva"></div>
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
                                <input  class="form-control" type="text" id="description_rmva" name="description_rmva"><br>
                                Projects: 
                                <select class="form-control" id="proyects_sel_rmva" name="proyects_sel_rmva"> </select>
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
                                                                            <input class="form-control" type="text" id="soilr_rmva" name="soilr_rmva" onchange="onchange_Input_rmva(this)" required>
                                                                        </div>
                                                                        <div class="col-md-4"  id="div_so_sel_rmva">
                                                                            <select class="form-control" id="so_sel_rmva" name="so_sel_rmva">  </select>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label class="col-md-12">Anode Length:</label>
                                                                        <div class="col-md-8">
                                                                            <input class="form-control" type="text" id="anodel_rmva" name="anodel_rmva" onchange="onchange_Input_rmva(this)" required>
                                                                        </div>
                                                                        <div class="col-md-4"  id="div_al_sel_rmva">
                                                                            <select class="form-control" id="al_sel_rmva" name="al_sel_rmva">  </select>
                                                                        </div>
                                                                    </div>

                                                                    <div class="form-group">
                                                                        <label class="col-md-12">Anode Diameter:</label>
                                                                        <div class="col-md-8">
                                                                            <input class="form-control" type="text" id="anoded_rmva" name="anoded_rmva" onchange="onchange_Input_rmva(this)" required>
                                                                        </div>
                                                                        <div class="col-md-4"  id="div_ad_sel_rmva">
                                                                            <select class="form-control" id="ad_sel_rmva" name="ad_sel_rmva"> </select>
                                                                        </div>
                                                                    </div>                     


                                                                    <div class="form-group col-md-12">
                                                                        <label>Number of Anodes in Parallel:</label>
                                                                        <input class="form-control" type="text" id="numbera_rmva" name="numbera_rmva" onchange="onchange_Input_rmva(this)" required>
                                                                    </div>

                                                                    <div class="form-group">
                                                                        <label class="col-md-12">Anode Spacing:</label>
                                                                        <div class="col-md-8">
                                                                            <input class="form-control" type="text" id="anodes_rmva" name="anodes_rmva" onchange="onchange_Input_rmva(this)" required>
                                                                        </div>
                                                                        <div class="col-md-4"  id="div_as_sel_rmva">
                                                                            <select class="form-control" id="as_sel_rmva" name="as_sel_rmva"> </select>
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
                                                                        <label>Anode Resistance to Earth [Ohm]:</label>
                                                                        <input type="text" id="anoder_rmva" name="anoder_rmva" readonly required class="form-control">
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
                                                <input type="button" id="calculateBtn_rmva" name="calculateBtn_rmva" value="Calculate" onclick="calculate_rmva()" class="btn btn-info btn-block">
                                                <input type="button" id="saveBtn_rmva" name="saveBtn_rmva" value="Save" onclick="save_rmva()" class="btn btn-success btn-block">   
                                                <input type="button" id="delteBtn_rmva" name="delteBtn_rmva" value="Delete" onclick="delete_rmva()" class="btn btn-danger btn-block">
                                                <input type="button" id="cleanAllBtn_rmva" name="cleanBtn_rmva" value="Clean All Data" onclick="cleanAll_rmva()" class="btn btn-warning btn-block">
                                                <input type="button" id="cleanInputBtn_rmva" name="cleanBtn_rmva" value="Clean Input Data" onclick="cleanIn_rmva()" class="btn btn-warning btn-block">
                                                <input type="button" id="cleanOutputBtn_rmva" name="cleanBtn_rmva" value="Clean Output Data" onclick="cleanOut_rmva()" class="btn btn-warning btn-block">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <input type="hidden" id="id_rmva" name="id_rmva">  
                            <input type="hidden" id="opt_rmva" name="opt_rmva" value="1">   
                        </div>
                        <div id="load_Dialog_rmva" title="Basic dialog" style='display:none;'>
                            <p>Successfully uploaded data</p>
                        </div>

                        <div id="save_Dialog_rmva" title="Basic dialog" style='display:none;'>
                            <p>Data saved successfully</p>
                        </div>

                        <div id="error_Dialog_rmva" title="Basic dialog" style='display:none;'>
                            <p>An error has occurred in the process</p>
                        </div>

                        <div id="calculate_Dialog_rmva" title="Basic dialog" style='display:none;'>
                            <p>Calculation done successfully</p>
                        </div>

                        <div id="delete_Dialog_rmva" title="Basic dialog" style='display:none;'>
                            <p>Successfully deleted record</p>
                        </div>

                        <div id="dialog-confirm_rmva" title="Delete record" style='display:none;'>
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
                    $("#proyects_sel_rmva"),
                    $("#error_Dialog_rmva"));
            load_in_sel_rmva();

            load_ohmcm_sel_rmva();
        });

        function load_in_sel_rmva() {
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
                    var newHtml = "<select class='form-control' name='al_sel_rmva' id= 'al_sel_rmva' onchange='cleanOut_rmva()'>" + data;
                    $("#div_al_sel_rmva").html(newHtml);

                    newHtml = "<select class='form-control' name='ad_sel_rmva' id= 'ad_sel_rmva' onchange='cleanOut_rmva()'>" + data;
                    $("#div_ad_sel_rmva").html(newHtml);

                    newHtml = "<select class='form-control' name='as_sel_rmva' id= 'as_sel_rmva' onchange='cleanOut_rmva()'>" + data;
                    $("#div_as_sel_rmva").html(newHtml);
                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_rmva"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function load_ohmcm_sel_rmva() {
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
                    var newHtml = "<select class='form-control' name='so_sel_rmva' id= 'so_sel_rmva' onchange='cleanOut_rmva()'>" + data;
                    $("#div_so_sel_rmva").html(newHtml);
                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_rmva"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function load_history_rmva() {
            var parametros = {
                "idproyect": $("#proyects_sel_rmva").val(),
                "iduser": <% out.print(session.getAttribute("idusu"));%>,
                "opcion": "6",
                "nombre": "historial",
                "from": "rmva"
            };

            $.ajax({
                type: "POST",
                url: "../manager.jsp",
                data: parametros,
                dataType: 'json',
                async: false,
                beforeSend: function (xhr) {
                    cleanAll_rmva();
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
                                html += "<td>" + data.historial[i].description_rmva + "</td>";
                                html += "<td><a href='#' onClick='load_form_rmva(" + data.historial[i].id + ")'><span class='glyphicon glyphicon-plus' aria-hidden='true'></span></a></td>";
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
                    $("#div-table_rmva").empty();
                    $("#div-table_rmva").html(html);

                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_rmva"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function load_form_rmva(id) {
            var parametros = {
                "id": id,
                "from": "rmva",
                "opcion": "4"
            };

            $.ajax({
                type: "POST",
                url: "../manager.jsp",
                data: parametros,
                dataType: 'json',
                beforeSend: function (xhr) {
                    cleanAll_rmva();
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

                        $("#opt_rmva").val("2");
                        $("#id_rmva").val(data.row.id);
                        $("#proyects_sel_rmva").val(data.row.id_proyect);
                    } else {
                        $("#opt_rmva").val("1");
                    }

                },
                error: function (xhr, ajaxOptions, err) {
                    $("#opt_rmva").val("1");
                    show_OkDialog($("#error_Dialog_rmva"), "Error");

                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function onchange_Input_rmva(inp) {
            var sw = validateDecimal(inp.value);

            if (sw != true) {
                inp.value = "";
            }
            onchange_Input_zero(inp);
            cleanOut_rmva();
        }

        function cleanOut_rmva() {
            $("#anoder_rmva").val("");
        }

        function cleanIn_rmva() {
            $("#anodel_rmva").val("");
            $("#soilr_rmva").val("");
            $("#anoded_rmva").val("");
            $("#numbera_rmva").val("");
            $("#anodes_rmva").val("");


        }

        function cleanAll_rmva() {
            cleanIn_rmva();
            cleanOut_rmva();
            $("#description_rmva").val("");
        }

        function save_rmva() {

            var parametros = {
                "soilr_rmva": $("#soilr_rmva").val(),
                "anodel_rmva": $("#anodel_rmva").val(),
                "anoded_rmva": $("#anoded_rmva").val(),
                "numbera_rmva": $("#numbera_rmva").val(),
                "anodes_rmva": $("#anodes_rmva").val(),
                "so_sel_rmva": $("#so_sel_rmva").val(),
                "al_sel_rmva": $("#al_sel_rmva").val(),
                "ad_sel_rmva": $("#ad_sel_rmva").val(),
                "as_sel_rmva": $("#as_sel_rmva").val(),
                "anoder_rmva": $("#anoder_rmva").val(),
                "idproyect": $("#proyects_sel_rmva").val(),
                "iduser": <% out.print(session.getAttribute("idusu"));%>,
                "opcion": $("#opt_rmva").val(),
                "id_rmva": 1,
                "description_rmva": $("#description_rmva").val(),
                "from": "rmva"
            };

            var isOk = validate(parametros);

            if (isOk === false) {
                alert("Debe realizar el càlculo");
            } else {

                if ($("#opt_rmva").val() == 2) {
                    parametros.id_rmva = $("#id_rmva").val();
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
                        $("#id_rmva").val(data.row.id);
                        $("#opt_rmva").val("2");
                        show_OkDialog($("#save_Dialog_rmva"), "Satisfactory process");
                    },
                    error: function (xhr, ajaxOptions, err) {
                        alert(err);
                        show_OkDialog($("#error_Dialog_rmva"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });

            }

        }

        function calculate_rmva() {

            var variables = {
                "soilr_rmva": $("#soilr_rmva").val().replace(",", ""),
                "anodel_rmva": $("#anodel_rmva").val().replace(",", ""),
                "anoded_rmva": $("#anoded_rmva").val().replace(",", ""),
                "numbera_rmva": $("#numbera_rmva").val().replace(",", ""),
                "anodes_rmva": $("#anodes_rmva").val().replace(",", "")
            };



            var isOk = validate(variables);

            if (isOk === false) {
                alert("You must complete all fields");
            } else {

                var unidades = {
                    "so_sel_rmva": $("#so_sel_rmva").val().split(",")[1],
                    "al_sel_rmva": $("#al_sel_rmva").val().split(",")[1],
                    "ad_sel_rmva": $("#ad_sel_rmva").val().split(",")[1],
                    "as_sel_rmva": $("#as_sel_rmva").val().split(",")[1]
                };

                var res = resistanceEarthMVA_Form(variables, unidades);

                $("#anoder_rmva").val(res[0]);

                show_OkDialog($("#calculate_Dialog_rmva"), "Satisfactory process");
            }
        }

        function delete_rmva() {

            //Confirmacion
            if ($("#opt_rmva").val() == 2) {
                $("#dialog-confirm_rmva").dialog({
                    resizable: false,
                    height: "auto",
                    width: 400,
                    modal: true,
                    buttons: {
                        "Delete": function () {
                            deleteReg_rmva();
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

        function deleteReg_rmva() {

            var parametros = {
                "id_rmva": $("#id_rmva").val(),
                "opcion": "3",
                "iduser": <%=session.getAttribute("idusu")%>,
                "from": "rmva"
            };
            $.ajax({
                type: "POST",
                url: "../manager.jsp",
                data: parametros,
                beforeSend: function (xhr) {
                    block("Cargando...");
                },
                success: function (data, status, request) {
                    $("#id_rmva").val("");
                    $("#opt_rmva").val("1");
                    cleanAll_rmva();
                    show_OkDialog($("#delete_Dialog_rmva"), "Satisfactory process");
                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_rmva"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

    </script>
</html>