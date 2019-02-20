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
                                <h2><strong>Cathodic Protection:</strong> 8.1. Estimated Weight of a Magnesium Anode</h2>
                            </div>
                            <div class="col-lg-3"> 
                                <br>
                                <!-- Button trigger modal -->
                                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_ew()">
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
                                                <div id="div-table_ew"></div>
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
                                <input  class="form-control" type="text" id="description_ew" name="description_ew"><br>
                                Projects: 
                                <select class="form-control" id="proyects_sel_ew" name="proyects_sel_ew"> </select>
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
                                                                        <label class="col-md-12">Assumed Life of a Magnesium Anode:</label>
                                                                        <div class="col-md-8">
                                                                            <input class="form-control" value="12" type="text" id="assumedl_ew" name="assumedl_ew" onchange="onchange_Input_ew(this)" required>
                                                                        </div>
                                                                        <div class="col-md-4"  id="div_al_sel_ew">
                                                                            <select class="form-control" id="al_sel_ew" name="al_sel_ew"> 
                                                                                <option value="1"> Year </option>
                                                                            </select>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label class="col-md-12">Electrical Current Flow from the Anode to the pipe:</label>
                                                                        <div class="col-md-8">
                                                                            <input class="form-control" value="24" type="text" id="electricalc_ew" name="electricalc_ew" onchange="onchange_Input_ew(this)" required>
                                                                        </div>
                                                                        <div class="col-md-4"  id="div_ele_sel_ew">
                                                                            <select class="form-control" id="ele_sel_ew" name="ele_sel_ew"> 
                                                                                <option value="1"> A </option></select>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label class="col-md-12">Polarized Potential Difference between pipe and reference electrode:</label>
                                                                        <div class="col-md-8">
                                                                            <input class="form-control" value="11" type="text" id="polarizedp_ew" name="polarizedp_ew" onchange="onchange_Input_ew(this)" required>
                                                                        </div>
                                                                        <div class="col-md-4"  id="div_polp_sel_ew">
                                                                            <select class="form-control" id="polp_sel_ew" name="polp_sel_ew"> 
                                                                                <option value="1"> V </option></select>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label class="col-md-12">Polarized Potential Difference between the anode and same reference electrode:</label>
                                                                        <div class="col-md-8">
                                                                            <input class="form-control" value="15" type="text" id="polarizedae_ew" name="polarizedae_ew" onchange="onchange_Input_ew(this)" required>
                                                                        </div>
                                                                        <div class="col-md-4"  id="div_pole_sel_ew">
                                                                            <select class="form-control" id="pole_sel_ew" name="pole_sel_ew"> <option value="1"> V </option></select>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label class="col-md-12">Average Soil of a Ressistivity:</label>
                                                                        <div class="col-md-8">
                                                                            <input class="form-control" value="60" type="text" id="averages_ew" name="averages_ew" onchange="onchange_Input_ew(this)" required>
                                                                        </div>
                                                                        <div class="col-md-4"  id="div_ave_sel_ew">
                                                                            <select class="form-control" id="ave_sel_ew" name="ave_sel_ew"> </select>
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
                                                                        <label>Estimated Weight of a Magnesium Anode [lbs]:</label>
                                                                        <input type="text" id="estimatedw_ew" name="estimatedw_ew" readonly required class="form-control">
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
                                                <input type="button" id="calculateBtn_ew" name="calculateBtn_ew" value="Calculate" onclick="calculate_ew()" class="btn btn-info btn-block">
                                                <input type="button" id="saveBtn_ew" name="saveBtn_ew" value="Save" onclick="save_ew()" class="btn btn-success btn-block">   
                                                <input type="button" id="delteBtn_ew" name="delteBtn_ew" value="Delete" onclick="delete_ew()" class="btn btn-danger btn-block">
                                                <input type="button" id="cleanAllBtn_ew" name="cleanBtn_ew" value="Clean All Data" onclick="cleanAll_ew()" class="btn btn-warning btn-block">
                                                <input type="button" id="cleanInputBtn_ew" name="cleanBtn_ew" value="Clean Input Data" onclick="cleanIn_ew()" class="btn btn-warning btn-block">
                                                <input type="button" id="cleanOutputBtn_ew" name="cleanBtn_ew" value="Clean Output Data" onclick="cleanOut_ew()" class="btn btn-warning btn-block">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <input type="hidden" id="id_ew" name="id_ew">  
                            <input type="hidden" id="opt_ew" name="opt_ew" value="1">   
                        </div>
                        <div id="load_Dialog_ew" title="Basic dialog" style='display:none;'>
                            <p>Successfully uploaded data</p>
                        </div>

                        <div id="save_Dialog_ew" title="Basic dialog" style='display:none;'>
                            <p>Data saved successfully</p>
                        </div>

                        <div id="error_Dialog_ew" title="Basic dialog" style='display:none;'>
                            <p>An error has occurred in the process</p>
                        </div>

                        <div id="calculate_Dialog_ew" title="Basic dialog" style='display:none;'>
                            <p>Calculation done successfully</p>
                        </div>

                        <div id="delete_Dialog_ew" title="Basic dialog" style='display:none;'>
                            <p>Successfully deleted record</p>
                        </div>

                        <div id="dialog-confirm_ew" title="Delete record" style='display:none;'>
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
                        $("#proyects_sel_ew"),
                        $("#error_Dialog_ew"));
                        
                        load_ohmcm_sel_ew();
            });
            function load_history_ew() {
                var parametros = {
                    "idproyect": $("#proyects_sel_ew").val(),
                    "iduser": <% out.print(session.getAttribute("idusu"));%>,
                    "opcion": "6",
                    "nombre": "historial",
                    "from": "ew"
                };

                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    dataType: 'json',
                    async: false,
                    beforeSend: function (xhr) {
                        cleanAll_ew();
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
                                    html += "<td>" + data.historial[i].description_ew + "</td>";
                                    html += "<td><a href='#' onClick='load_form_ew(" + data.historial[i].id + ")'><span class='glyphicon glyphicon-plus' aria-hidden='true'></span></a></td>";
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
                        $("#div-table_ew").empty();
                        $("#div-table_ew").html(html);

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_ew"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_form_ew(id) {
                var parametros = {
                    "id": id,
                    "from": "ew",
                    "opcion": "4"
                };

                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    dataType: 'json',
                    beforeSend: function (xhr) {
                        cleanAll_ew();
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

                            $("#opt_ew").val("2");
                            $("#id_ew").val(data.row.id);
                            $("#proyects_sel_ew").val(data.row.id_proyect);
                        } else {
                            $("#opt_ew").val("1");
                        }

                    },
                    error: function (xhr, ajaxOptions, err) {
                        $("#opt_ew").val("1");
                        show_OkDialog($("#error_Dialog_ew"), "Error");

                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function onchange_Input_ew(inp) {
                var sw = validateDecimal(inp.value);

                if (sw != true) {
                    inp.value = "";
                }
                onchange_Input_zero(inp);
                cleanOut_ew();
            }

            function cleanOut_ew() {
                $("#estimatedw_ew").val("");
            }

            function cleanIn_ew() {
                $("#electricalc_ew").val("");
                $("#assumedl_ew").val("");
                $("#polarizedp_ew").val("");
                $("#polarizedae_ew").val("");
                $("#averages_ew").val("");
            }

            function cleanAll_ew() {
                cleanIn_ew();
                cleanOut_ew();
                $("#description_ew").val("");
            }


            function save_ew() {

                var parametros = {
                    "assumedl_ew": $("#assumedl_ew").val(),
                    "electricalc_ew": $("#electricalc_ew").val(),
                    "polarizedp_ew": $("#polarizedp_ew").val(),
                    "polarizedae_ew": $("#polarizedae_ew").val(),
                    "averages_ew": $("#averages_ew").val(),
                    "estimatedw_ew": $("#estimatedw_ew").val(),
                    "al_sel_ew": $("#al_sel_ew").val(),
                    "ele_sel_ew": $("#ele_sel_ew").val(),
                    "polp_sel_ew": $("#polp_sel_ew").val(),
                    "pole_sel_ew": $("#pole_sel_ew").val(),
                    "ave_sel_ew": $("#ave_sel_ew").val(),
                    "idproyect": $("#proyects_sel_ew").val(),
                    "iduser": <% out.print(session.getAttribute("idusu"));%>,
                    "opcion": $("#opt_ew").val(),
                    "id_ew": 1,
                    "description_ew": $("#description_ew").val(),
                    "from": "ew"
                };

                var isOk = validate(parametros);

                if (isOk === false) {
                    alert("Debe realizar el càlculo");
                } else {
                    if ($("#opt_ew").val() == 2) {
                        parametros.id_ew = $("#id_ew").val();
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
                            $("#id_ew").val(data.row.id);
                            $("#opt_ew").val("2");
                            show_OkDialog($("#save_Dialog_ew"), "Satisfactory process");
                        },
                        error: function (xhr, ajaxOptions, err) {
                            alert(err);
                            show_OkDialog($("#error_Dialog_ew"), "Error");
                        },
                        complete: function () {
                            unBlock();
                        }
                    });
                }
            }
            
            function load_ohmcm_sel_ew() {
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
                        var newHtml = "<select class='form-control' name='ave_sel_ew' id= 'ave_sel_ew' onchange='cleanOut_ew()'>" + data;
                        $("#div_ave_sel_ew").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_ew"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            
            

            function calculate_ew() {
                
                var variables = {
                    "assumedl_ew": $("#assumedl_ew").val().replace(",", ""),
                    "electricalc_ew": $("#electricalc_ew").val().replace(",", ""),
                    "polarizedp_ew": $("#polarizedp_ew").val().replace(",", ""),
                    "polarizedae_ew": $("#polarizedae_ew").val().replace(",", ""),
                    "averages_ew": $("#averages_ew").val().replace(",", "")
                };
                
                var isOk = validate(variables);

                if (isOk === false) {
                    alert("You must complete all fields");
                } else {

                    var unidades = {
                        "ave_sel_ew": $("#ave_sel_ew").val().split(",")[1]
                    };

                    var res = estimatedWeight_Form(variables, unidades);

                    $("#estimatedw_ew").val(res[0]);

                    show_OkDialog($("#calculate_Dialog_ew"), "Satisfactory process");
                }
            }

            function delete_ew() {

                //Confirmacion
                if ($("#opt_ew").val() == 2) {
                    $("#dialog-confirm_ew").dialog({
                        resizable: false,
                        height: "auto",
                        width: 400,
                        modal: true,
                        buttons: {
                            "Delete": function () {
                                deleteReg_ew();
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

            function deleteReg_ew() {

                var parametros = {
                    "id_ew": $("#id_ew").val(),
                    "opcion": "3",
                    "iduser": <%=session.getAttribute("idusu")%>,
                    "from": "ew"
                };
                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        $("#id_ew").val("");
                        $("#opt_ew").val("1");
                        cleanAll_ew();
                        show_OkDialog($("#delete_Dialog_ew"), "Satisfactory process");
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_ew"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

        </script>

</html>