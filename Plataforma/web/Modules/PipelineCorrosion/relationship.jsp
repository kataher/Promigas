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
                                <h2><strong>Pipeline Corrosion:</strong> 7.4. Relationship Between Resistance and Resistivity</h2>
                            </div>
                            <div class="col-lg-3"> 
                                <br>
                                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_rel()">
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
                                                <div id="div-table_rel"></div>
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
                            <input  class="form-control" type="text" id="description_rel" name="description_rel"><br>
                            Projects: 
                            <select class="form-control" id="proyects_sel_rel" name="proyects_sel_rel"> </select>
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
                                                                        <label>Electrolyte resistivity:</label>
                                                                    </div>
                                                                    <div class="col-md-8">
                                                                        <input class="form-control" type="text" id="electrolyter_rel" name="electrolyter_rel" onchange="onchange_Input_rel(this)" required>
                                                                    </div>
                                                                    <div class="col-md-4" id = "div_er_sel_rel">
                                                                        <select class="form-control" id="er_sel_rel" name="er_sel_rel" onchange="cleanOut_rel()"> </select>
                                                                    </div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <div class="col-md-12">
                                                                        <label>Distance through the electrolyte traveled by the current:</label>
                                                                    </div>
                                                                    <div class="col-md-8">
                                                                        <input class="form-control" type="text" id="distancee_rel" name="distancee_rel" onchange="onchange_Input_rel(this)" required>

                                                                    </div>
                                                                    <div class="col-md-4" id = "div_de_sel_rel">
                                                                        <select class="form-control" id="de_sel_rel" name="de_sel_rel" onchange="cleanOut_rel()"> </select>
                                                                    </div>
                                                                </div>

                                                                <div class="form-group">
                                                                    <div class="col-md-12">
                                                                        <label>Cross sectional area through which the current flows:</label>
                                                                    </div>
                                                                    <div class="col-md-8">
                                                                        <input class="form-control" type="text" id="crosss_rel" name="crosss_rel" onchange="onchange_Input_rel(this)" required>            
                                                                    </div>
                                                                    <div class="col-md-4" id = "div_cs_sel_rel">
                                                                        <select class="form-control" id="cs_sel_rel" name="cs_sel_rel" onchange="cleanOut_rel()"> </select>
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
                                                                    <label>Electrical resistance [ohm]:</label>
                                                                    <input type="text" id="electr_rel" name="electr_rel" readonly required class="form-control">
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
                                            <input type="button" id="calculateBtn_rel" name="calculateBtn_rel" value="Calculate" onclick="calculate_rel()" class="btn btn-info btn-block">
                                            <input type="button" id="saveBtn_rel" name="saveBtn_rel" value="Save" onclick="save_rel()" class="btn btn-success btn-block">   
                                            <input type="button" id="delteBtn_rel" name="delteBtn_rel" value="Delete" onclick="delete_rel()" class="btn btn-danger btn-block">
                                            <input type="button" id="cleanAllBtn_rel" name="cleanAllBtn_rel" value="Clean All Data" onclick="cleanAll_rel()" class="btn btn-warning btn-block">
                                            <input type="button" id="cleanInputBtn_rel" name="cleanInputBtn_rel" value="Clean Input Data" onclick="cleanIn_rel()" class="btn btn-warning btn-block">
                                            <input type="button" id="cleanOutputBtn_rel" name="cleanOutputBtn_rel" value="Clean Output Data" onclick="cleanOut_rel()" class="btn btn-warning btn-block">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <input type="hidden" id="id_rel" name="id_rel">  
                        <input type="hidden" id="opt_rel" name="opt_rel" value="1"> 
                    </div>
                    <div id="load_Dialog_rel" title="Basic dialog" style='display:none;'>
                        <p>Successfully uploaded data</p>
                    </div>

                    <div id="save_Dialog_rel" title="Basic dialog" style='display:none;'>
                        <p>Data saved successfully</p>
                    </div>

                    <div id="error_Dialog_rel" title="Basic dialog" style='display:none;'>
                        <p>An error has occurred in the process</p>
                    </div>

                    <div id="calculate_Dialog_rel" title="Basic dialog" style='display:none;'>
                        <p>Calculation done successfully</p>
                    </div>

                    <div id="delete_Dialog_rel" title="Basic dialog" style='display:none;'>
                        <p>Successfully deleted record</p>
                    </div>

                    <div id="dialog-confirm_rel" title="Delete record" style='display:none;'>
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
        load_ohm_sel_rel();
        load_in_sel_rel();
        load_sqcm_sel_rel();

        getproyectos(<%=session.getAttribute("idusu")%>,
                $("#proyects_sel_rel"),
                $("#error_Dialog_rel"));
    });

    function load_ohm_sel_rel() {
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
                var newHtml = "<select class=\"form-control\" name=\"er_sel_rel\" id= \"er_sel_rel\" onchange=\"cleanOut_rel()\">" + data;
                $("#div_er_sel_rel").html(newHtml);

            },
            error: function (xhr, ajaxOptions, err) {
                show_OkDialog($("#error_Dialog_rel"), "Error");
            },
            complete: function () {
                unBlock();
            }
        });
    }

    function load_in_sel_rel() {
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
                var newHtml = "<select class=\"form-control\" name=\"de_sel_rel\" id= \"de_sel_rel\" onchange=\"cleanOut_rel()\">" + data;
                $("#div_de_sel_rel").html(newHtml);

            },
            error: function (xhr, ajaxOptions, err) {
                show_OkDialog($("#error_Dialog_rel"), "Error");
            },
            complete: function () {
                unBlock();
            }
        });
    }

    function load_sqcm_sel_rel() {
        var parametros = {
            "combo": "sq.cm",
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
                var newHtml = "<select class=\"form-control\" name=\"cs_sel_rel\" id= \"cs_sel_rel\" onchange=\"cleanOut_rel()\">" + data;
                $("#div_cs_sel_rel").html(newHtml);

            },
            error: function (xhr, ajaxOptions, err) {
                show_OkDialog($("#error_Dialog_rel"), "Error");
            },
            complete: function () {
                unBlock();
            }
        });
    }

    function load_history_rel() {
        var parametros = {
            "idproyect": $("#proyects_sel_rel").val(),
            "iduser": <% out.print(session.getAttribute("idusu"));%>,
            "opcion": "6",
            "nombre": "historial",
            "from": "rel"
        };

        $.ajax({
            type: "POST",
            url: "../manager.jsp",
            data: parametros,
            dataType: 'json',
            async: false,
            beforeSend: function (xhr) {
                cleanAll_rel();
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
                            html += "<td>" + data.historial[i].description_rel + "</td>";
                            html += "<td><a href='#' onClick=\"load_form_rel(" + data.historial[i].id + ")\"><span class='glyphicon glyphicon-plus' aria-hidden='true'></span></a></td>";
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
                $("#div-table_rel").empty();
                $("#div-table_rel").html(html);

            },
            error: function (xhr, ajaxOptions, err) {
                show_OkDialog($("#error_Dialog_rel"), "Error");
            },
            complete: function () {
                unBlock();
            }
        });
    }

    function load_form_rel(id) {
        var parametros = {
            "id": id,
            "opcion": "4",
            "from": "rel"
        };

        $.ajax({
            type: "POST",
            url: "../manager.jsp",
            data: parametros,
            dataType: 'json',
            beforeSend: function (xhr) {
                cleanAll_rel();
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

                    $("#proyects_sel_rel").val(data.row.id_proyect);
                    $("#opt_rel").val("2");
                    $("#id_rel").val(data.row.id);
                } else {
                    $("#opt_rel").val("1");
                }

            },
            error: function (xhr, ajaxOptions, err) {
                $("#opt_rel").val("1");
                show_OkDialog($("#error_Dialog_rel"), "Error");

            },
            complete: function () {
                unBlock();
            }
        });
    }

    function onchange_Input_rel(inp) {
        var sw = validateDecimal(inp.value);

        if (sw != true) {
            inp.value = "";
        }
        onchange_Input_zero(inp);
        cleanOut_rel();
    }

    function cleanOut_rel() {
        $("#electr_rel").val("");
    }

    function cleanIn_rel() {
        $("#distancee_rel").val("");
        $("#electrolyter_rel").val("");
        $("#crosss_rel").val("");
    }

    function cleanAll_rel() {
        cleanIn_rel();
        cleanOut_rel();

        $("#description_rel").val("");
    }

    function save_rel() {

        var parametros = {
            "electrolyter_rel": $("#electrolyter_rel").val(),
            "distancee_rel": $("#distancee_rel").val(),
            "crosss_rel": $("#crosss_rel").val(),
            "er_sel_rel": $("#er_sel_rel").val(),
            "de_sel_rel": $("#de_sel_rel").val(),
            "cs_sel_rel": $("#cs_sel_rel").val(),
            "electr_rel": $("#electr_rel").val(),
            "idproyect": $("#proyects_sel_rel").val(),
            "opcion": $("#opt_rel").val(),
            "iduser": <% out.print(session.getAttribute("idusu"));%>,
            "id_rel": 1,
            "description_rel": $("#description_rel").val(),
            "from": "rel"
        };

        var isOk = validate(parametros);
        if (isOk === false) {
            alert("You must perform the calculation and fill out the description");
        } else {

            if ($("#opt_rel").val() == 2) {
                parametros.id_rel = $("#id_rel").val();
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
                    $("#id_rel").val(data.row.id);
                    $("#opt_rel").val("2");
                    show_OkDialog($("#save_Dialog_rel"), "Satisfactory process");
                },
                error: function (xhr, ajaxOptions, err) {
                    alert(err);
                    show_OkDialog($("#error_Dialog_rel"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

    }

    function calculate_rel() {
        var variables = {
            "electrolyter_rel": $("#electrolyter_rel").val().replace(",", ""),
            "distancee_rel": $("#distancee_rel").val().replace(",", ""),
            "crosss_rel": $("#crosss_rel").val().replace(",", "")
        };

        var isOk = validate(variables);

        if (isOk === false) {
            alert("You must complete all fields");
        } else {

            var unidades = {
                "er_sel_rel": $("#er_sel_rel").val().split(",")[1],
                "de_sel_rel": $("#de_sel_rel").val().split(",")[1]
            };


            var res = relationship_Form(variables, unidades);

            $("#electr_rel").val(res[0]);

            show_OkDialog($("#calculate_Dialog_rel"), "Satisfactory process");
        }

    }

    function delete_rel() {

        //Confirmacion
        if ($("#opt_rel").val() == 2) {
            $("#dialog-confirm_rel").dialog({
                resizable: false,
                height: "auto",
                width: 400,
                modal: true,
                buttons: {
                    "Delete": function () {
                        deleteReg_rel();
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

    function deleteReg_rel() {

        var parametros = {
            "id_rel": $("#id_rel").val(),
            "opcion": "3",
            "from": "rel",
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
                cleanAll_rel();
                $("#id_rel").val("");
                $("#opt_rel").val("1");
                show_OkDialog($("#delete_Dialog_rel"), "Satisfactory process");
            },
            error: function (xhr, ajaxOptions, err) {
                show_OkDialog($("#error_Dialog_rel"), "Error");
            },
            complete: function () {
                unBlock();
            }
        });
    }

</script>

</html>