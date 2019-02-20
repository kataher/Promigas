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
                                <h2><strong>Surcharge Live Load on Buried PE Pipe & Pipeline Crossings: </strong> 9.2. HDD PE Pipe - ATL Allowable Tensile Load During Pull-In Installation</h2>
                            </div>
                            <div class="col-lg-3"> 
                                <br>
                                <!-- Button trigger modal -->
                                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_all()">
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
                                                <div id="div-table_all"></div>
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
                                <input  class="form-control" type="text" id="description_all" name="description_all"><br>
                                Projects:
                                <select class="form-control" id="proyects_sel_all" name="proyects_sel_all"> </select>
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
                                                            References
                                                        </div>
                                                        <div class="panel-body">
                                                            <div class="row">
                                                                <div class="col-lg-12">
                                                                    <form role="form">
                                                                        <p>Note: Reference from ASTM F 1804-08 for Gas Pipe</p>
                                                                        <p>1. Tensible Yield Design Safety Factor is usually 0.5 or less. If the value is not available form manufacter, a value of 0.4 is used</p>
                                                                        <p>2. Time Under Tension Design Safety Factor based on 5% strain, design factors: 1.00 for ties up to 1hr, 0.95 for times to 12 hr, and 0.91 for tiemes to 24 hr</p>
                                                                        <p>3. For installation temperature of 100ºF or less tensible yield is:</p>
                                                                        <p>-2600psi for PE2406, PE2606, and PE2708</p>
                                                                        <p>-300psi for PE3408, PE3608, PE3710, PE4608, and PE4710, or value from pipe manufacter. For installation temperature above 100ºF pipe manufacters` values for elevated tensible yield strength should be used</p>
                                                                    </form>
                                                                </div>
                                                            </div>
                                                        </div>  
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="panel panel-default">
                                                        <div class="panel-heading"> 
                                                            Pipe Soil Envelope Data
                                                        </div>
                                                        <div class="panel-body">
                                                            <div class="row">
                                                                <div class="col-lg-12">      
                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Pipe Outside Diameter [in]:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input class="form-control" value="4.5" type="text" id="do_all" name="do_all" onchange="onchange_Input_all(this)" required>
                                                                        </div>
                                                                        <div class="col-md-4" id="div_do_sel_all">
                                                                            <select class="form-control" id="do_sel_all" name="do_sel_all" onchange="cleanOut_all()"> </select>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Pipe Dimension Ratio:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input class="form-control" value= "11" type="text" id="pdr_all" name="pdr_all" onchange="onchange_Input_all(this)" required>
                                                                        </div>
                                                                    </div>

                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Tensible Yield Desing Safety Factor:</label>
                                                                        </div>
                                                                        <div class="col-md-12">
                                                                            <input class="form-control" value="0.1" type="text" id="tyd_all" name="tyd_all" onchange="validate_atl_all(this)" required>
                                                                        </div>
                                                                    </div>

                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Time Under Tension Desing Safety Factor:</label>
                                                                        </div>
                                                                        <div class="col-md-12">
                                                                            <input class="form-control" value="8" type="text" id="tut_all" name="tut_all" onchange="validate_atl_all(this)" required>
                                                                        </div>
                                                                    </div>                                  


                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Tensible Yield Strengh [psi]:</label>
                                                                        </div>
                                                                        <div class="col-md-12">
                                                                            <input class="form-control" value="1.2" type="text" id="tys_all" name="tys_all" onchange="validate_atl_all(this)" required>
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
                                                                        <label> ATL - Allowable Tensible Load [lbf]:</label>
                                                                        <input type="text" id="atl_all" name="atl_all" readonly required class="form-control">
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
                                                <input type="button" id="calculateBtn_all" name="calculateBtn_all" value="Calculate" onclick="calculate_all()" class="btn btn-info btn-block">
                                                <input type="button" id="saveBtn_all" name="saveBtn_all" value="Save" onclick="save_all()" class="btn btn-success btn-block">   
                                                <input type="button" id="delteBtn_all" name="delteBtn_all" value="Delete" onclick="delete_all()" class="btn btn-danger btn-block">
                                                <input type="button" id="cleanAllBtn_all" name="cleanBtn_all" value="Clean All Data" onclick="cleanAll_all()" class="btn btn-warning btn-block">
                                                <input type="button" id="cleanInputBtn_all" name="cleanBtn_all" value="Clean Input Data" onclick="cleanIn_all()" class="btn btn-warning btn-block">
                                                <input type="button" id="cleanOutputBtn_all" name="cleanBtn_all" value="Clean Output Data" onclick="cleanOut_all()" class="btn btn-warning btn-block">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <input type="hidden" id="id_all" name="id_all">  
                            <input type="hidden" id="opt_all" name="opt_all" value="1">   
                        </div>
                        <div id="load_Dialog_all" title="Basic dialog" style='display:none;'>
                            <p>Successfully uploaded data</p>
                        </div>

                        <div id="save_Dialog_all" title="Basic dialog" style='display:none;'>
                            <p>Data saved successfully</p>
                        </div>

                        <div id="error_Dialog_all" title="Basic dialog" style='display:none;'>
                            <p>An error has occurred in the process</p>
                        </div>

                        <div id="calculate_Dialog_all" title="Basic dialog" style='display:none;'>
                            <p>Calculation done successfully</p>
                        </div>

                        <div id="delete_Dialog_all" title="Basic dialog" style='display:none;'>
                            <p>Successfully deleted record</p>
                        </div>

                        <div id="dialog-confirm_all" title="Delete record" style='display:none;'>
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
                        $("#proyects_sel_all"),
                        $("#error_Dialog_all"));


                load_in_sel_all();

            });

            function load_history_all() {
                var parametros = {
                    "idproyect": $("#proyects_sel_all").val(),
                    "iduser": <% out.print(session.getAttribute("idusu"));%>,
                    "opcion": "6",
                    "nombre": "historial",
                    "from": "all"
                };

                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    dataType: 'json',
                    async: false,
                    beforeSend: function (xhr) {
                        $("#opt_all").val("1");
                        $("#id_all").val("");
                        cleanAll_all();
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
                            html += "<th>Description</th>";
                            html += "<th>Load</th>";
                            html += "</tr>";
                            html += "</thead>";
                            if (tamano > 0) {

                                html += '<tbody>';
                                for (var i = 0; i < tamano; i++) {
                                    html += "<tr>";
                                    html += "<td>" + data.historial[i].date + "</td>";
                                    html += "<td>" + data.historial[i].description_all + "</td>";
                                    html += "<td><a href='#' onClick='load_form_all(" + data.historial[i].id + ")'><span class='glyphicon glyphicon-plus' aria-hidden='true'></span></a></td>";
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
                        $("#div-table_all").empty();
                        $("#div-table_all").html(html);

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_all"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }



            function onchange_Input_all(inp) {

                var sw = validateDecimal(inp.value);

                if (sw !== true) {
                    inp.value = "";
                }
                onchange_Input_zero(inp);
                cleanOut_all();

            }

            function cleanOut_all() {
                $("#atl_all").val("");
            }

            function cleanIn_all() {
                $("#do_all").val("");
                $("#pdr_all").val("");
                $("#tyd_all").val("");
                $("#tut_all").val("");
                $("#tys_all").val("");
            }


            function load_in_sel_all() {
                var parametros = {
                    "combo": "in",
                    "opcion": "5"
                };
                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        var newHtml = "<select class='form-control' name='do_sel_all' id='do_sel_all'>" + data;
                        $("#div_do_sel_all").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_chp"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_form_all(id) {

                var parametros = {
                    "id": id,
                    "opcion": "4",
                    "from": "all"
                };

                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    dataType: 'json',
                    beforeSend: function (xhr) {
                        cleanAll_all();
                        block("Cargado datos...");
                    },
                    success: function (data, status, request) {
                        if (data != null)
                        {
                            var tags = Object.keys(data.row);

                            for (var i = 0; i < tags.length; i++) {
                                $("#" + tags[i]).val(data.row[tags[i]]);
                            }

                            $("#proyects_sel_all").val(data.row["id_proyect"]);
                            $("#opt_all").val("2");
                            $("#id_all").val(data.row.id);
                        } else {
                            $("#opt_all").val("1");
                        }

                    },
                    error: function (xhr, ajaxOptions, err) {
                        $("#opt_all").val("1");
                        show_OkDialog($("#error_Dialog_all"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }


            function cleanAll_all() {
                cleanIn_all();
                cleanOut_all();
                $("#description_all").val("");
            }

            function validate_atl_all(inp) {
                onchange_Input_all(inp);
                validatePress(inp, $("#bd_all"), $("#dischargep_all"));
            }

            function calculate_all() {

                var variables = {
                    "pdr_all": $("#pdr_all").val().replace(",", ""),
                    "do_all": $("#do_all").val().replace(",", ""),
                    "tut_all": $("#tut_all").val().replace(",", ""),
                    "tyd_all": $("#tyd_all").val().replace(",", ""),
                    "tys_all": $("#tys_all").val().replace(",", "")
                };

                var isOk = validate(variables);

                if (isOk === false) {
                    alert("You must complete all fields");
                } else {

                    var unidades = {
                        "do_sel_all": $("#do_sel_all").val().split(",")[1]
                    };


                    var res = allowable_Form(variables, unidades);

                    $("#atl_all").val(res[0]);

                    show_OkDialog($("#calculate_Dialog_all"), "Satisfactory process");


                }
            }

            function save_all() {
                var parametros = {
                    "do_sel_all": $("#do_sel_all").val(),
                    "do_all": $("#do_all").val(),
                    "pdr_all": $("#pdr_all").val(),
                    "tyd_all": $("#tyd_all").val(),
                    "tut_all": $("#tut_all").val(),
                    "tys_all": $("#tys_all").val(),
                    "atl_all": $("#atl_all").val(),
                    "idproyect": $("#proyects_sel_all").val(),
                    "iduser": <% out.print(session.getAttribute("idusu"));%>,
                    "opcion": $("#opt_all").val(),
                    "id_all": 1,
                    "description_all": $("#description_all").val(),
                    "from": "all"

                };

                var isOk = validate(parametros);

                if (isOk === false) {
                    alert("You must perform the calculation and fill out the description");
                } else {

                    if ($("#opt_all").val() == 2) {
                        parametros.id_all = $("#id_all").val();
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
                            $("#id_all").val(data.row.id);
                            $("#opt_all").val("2");
                            show_OkDialog($("#save_Dialog_all"), "Satisfactory process");
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_all"), "Error");
                        },
                        complete: function () {
                            unBlock();
                        }
                    });
                }
            }

            function delete_all() {

                //Confirmacion
                if ($("#opt_all").val() == 2) {
                    $("#dialog-confirm_all").dialog({
                        resizable: false,
                        height: "auto",
                        width: 400,
                        modal: true,
                        buttons: {
                            "Delete": function () {
                                deleteReg_all();
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

            function deleteReg_all() {
                var parametros = {
                    "id_all": $("#id_all").val(),
                    "opcion": 3,
                    "iduser": <%=session.getAttribute("idusu")%>,
                    "from": "all"
                };


                if ($("#opt_all").val() == 2) {
                    $.ajax({
                        type: "POST",
                        url: "../manager.jsp",
                        data: parametros,
                        dataType: 'json',
                        beforeSend: function (xhr) {
                            block("Cargando...");
                        },
                        success: function (data, status, request) {
                            cleanAll_all();
                            $("#id_all").val("");
                            $("#opt_all").val("1");
                            show_OkDialog($("#delete_Dialog_all"), "Satisfactory process");
                        },
                        error: function (xhr, ajaxOptions, err) {
                            alert(err);
                            show_OkDialog($("#error_Dialog_all"), "Error");
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