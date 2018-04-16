<%-- 
    Document   : index
    Created on : 03-mar-2016, 17:02:38
    Author     : kata__000
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <jsp:include page="../../head.jsp" />
    <head>
        <%@include file="../../includehead2.html" %>
    </head>

    <body>
        <div class="row">
            <div class="col-lg-9">
                <h2><strong>Pipeline Corrosion:</strong> 7.2. Maximun Allowable Longitudinal Extent of Corrosion </h2>
            </div>
            <div class="col-lg-3"> 

                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_mal()">
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
                                <div id="div-table_mal"></div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

                            </div>
                        </div>
                    </div>
                </div>
                <!-- FIN MODAL -->
            </div>

            <div class="col-lg-9">
                Description:  
                <input  class="form-control" type="text" id="description_mal" name="description_mal"><br>
                Projects: 
                <select class="form-control" id="proyects_sel_mal" name="proyects_sel_mal"> </select>
            </div>
        </div>
        <hr>        
        <div class="col-lg-9">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Input Data
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="form-group">
                                <div class="col-md-12">
                                    <label>Maximun Depth of corroded area:</label>
                                </div>
                                <div class="col-md-8">
                                    <input class="form-control" type="text" value = "0.06" id="maximund_mal" name="maximund_mal" onchange="onchange_Input_mal(this)" required>
                                </div>
                                <div class="col-md-4" id = "div_md_sel_mal">
                                    <select class="form-control" id="md_sel_mal" name="md_sel_mal" onchange="cleanOut_mal()"> </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12">
                                    <label>External Diameter of Pipe:</label>
                                </div>
                                <div class="col-md-8">
                                    <input class="form-control" type="text" value = "14" id="pipeo_mal" name="pipeo_mal" onchange="onchange_Input_mal(this)" required>

                                </div>
                                <div class="col-md-4" id = "div_po_sel_mal">
                                    <select class="form-control" id="po_sel_mal" name="po_sel_mal" onchange="cleanOut_mal()"> </select>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-md-12">
                                    <label>Nominal Wall Thickness of Pipe:</label>
                                </div>
                                <div class="col-md-8">
                                    <input class="form-control" type="text" value = "0.5" id="nomip_mal" name="nomip_mal" onchange="onchange_Input_mal(this)" required>            
                                </div>
                                <div class="col-md-4" id = "div_np_sel_mal">
                                    <select class="form-control" id="np_sel_mal" name="np_sel_mal" onchange="cleanOut_mal()"> </select>
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
                    Results
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="form-group">
                                <label>Maximun allowable longitudinal extent of corrosion [in]:</label>
                                <input type="text" id="maximuna_mal" name="maximuna_mal" readonly required class="form-control">
                            </div>

                            <input type="button" id="calculateBtn_mal" name="calculateBtn_mal" value="Calculate" onclick="calculate_mal()" class="btn btn-info btn-block">
                            <input type="button" id="saveBtn_mal" name="saveBtn_mal" value="Save" onclick="save_mal()" class="btn btn-success btn-block">   
                            <input type="button" id="delteBtn_mal" name="delteBtn_mal" value="Delete" onclick="delete_mal()" class="btn btn-danger btn-block">

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-12">
            <div class="col-md-3">
                <input type="button" id="cleanAllBtn_mal" name="cleanAllBtn_mal" value="Clean All Data" onclick="cleanAll_mal()" class="btn btn-warning btn-block"></div>
            <div class="col-md-3">
                <input type="button" id="cleanInputBtn_mal" name="cleanInputBtn_mal" value="Clean Input Data" onclick="cleanIn_mal()" class="btn btn-warning btn-block"></div>
            <div class="col-md-3">
                <input type="button" id="cleanOutputBtn_mal" name="cleanOutputBtn_mal" value="Clean Output Data" onclick="cleanOut_mal()" class="btn btn-warning btn-block"></div>
        </div>
        <input type="hidden" id="id_mal" name="id_mal">  
        <input type="hidden" id="opt_mal" name="opt_mal" value="1"> 

        <script>

            $(document).ready(function () {
                $("#opt_mal").val("1");
                load_in_sel_mal();
                load_in2_sel_mal();

                getproyectos(<%=session.getAttribute("idusu")%>,
                        $("#proyects_sel_mal"),
                        $("#error_Dialog_mal"));
            });

            function load_in_sel_mal() {
                var parametros = {
                    "combo": "in",
                    "opcion": "5"
                };
                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    async: false,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        var newHtml = "<select class=\"form-control\" name=\"md_sel_mal\" id= \"md_sel_mal\" onchange=\"cleanOut_mal()\">" + data;
                        $("#div_md_sel_mal").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_mal"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            
            function load_in2_sel_mal() {
                var parametros = {
                    "combo": "in2",
                    "opcion": "5"
                };
                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    async: false,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        var newHtml = "<select class=\"form-control\" name=\"po_sel_mal\" id= \"po_sel_mal\" onchange=\"cleanOut_mal()\">" + data;
                        $("#div_po_sel_mal").html(newHtml);

                        newHtml = "<select class=\"form-control\" name=\"np_sel_mal\" id= \"np_sel_mal\" onchange=\"cleanOut_mal()\">" + data;
                        $("#div_np_sel_mal").html(newHtml);


                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_mal"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_history_mal() {
                var parametros = {
                    "idproyect": $("#proyects_sel_mal").val(),
                    "iduser": <% out.print(session.getAttribute("idusu"));%>,
                    "opcion": "6",
                    "nombre": "historial",
                    "from": "mal"
                };

                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    dataType: 'json',
                    async: false,
                    beforeSend: function (xhr) {
                        $("#opt_mal").val("1");
                        $("#id_mal").val("");

                        cleanAll_mal();
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
                                    html += "<td>" + data.historial[i].description_mal + "</td>";
                                    html += "<td><a href='#' onClick=\"load_form_mal(" + data.historial[i].id + ")\"><span class='glyphicon glyphicon-plus' aria-hidden='true'></span></a></td>";
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
                        $("#div-table_mal").empty();
                        $("#div-table_mal").html(html);

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_mal"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_form_mal(id) {
                var parametros = {
                    "id": id,
                    "opcion": "4",
                    "from": "mal"
                };

                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    dataType: 'json',
                    beforeSend: function (xhr) {
                        cleanAll_mal();
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

                            $("#proyects_sel_mal").val(data.row["id_proyect"]);
                            $("#opt_mal").val("2");
                            $("#id_mal").val(data.row.id);
                        } else {
                            $("#opt_mal").val("1");
                        }

                    },
                    error: function (xhr, ajaxOptions, err) {
                        $("#opt_mal").val("1");
                        show_OkDialog($("#error_Dialog_mal"), "Error");

                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function onchange_Input_mal(inp) {
                var sw = validateDecimal(inp.value);

                if (sw != true) {
                    inp.value = "";
                }
                onchange_Input_zero(inp);
                cleanOut_mal();
            }

            function cleanOut_mal() {
                $("#maximuna_mal").val("");
            }

            function cleanIn_mal() {
                $("#pipeo_mal").val("");
                $("#maximund_mal").val("");
                $("#nomip_mal").val("");
            }

            function cleanAll_mal() {
                cleanIn_mal();
                cleanOut_mal();

                $("#description_mal").val("");
            }

            function save_mal() {

                var parametros = {
                    "maximund_mal": $("#maximund_mal").val(),
                    "pipeo_mal": $("#pipeo_mal").val(),
                    "nomip_mal": $("#nomip_mal").val(),
                    "md_sel_mal": $("#md_sel_mal").val(),
                    "po_sel_mal": $("#po_sel_mal").val(),
                    "np_sel_mal": $("#np_sel_mal").val(),
                    "maximuna_mal": $("#maximuna_mal").val(),
                    "idproyect": $("#proyects_sel_mal").val(),
                    "opcion": $("#opt_mal").val(),
                    "iduser": <% out.print(session.getAttribute("idusu"));%>,
                    "id_mal": 1,
                    "description_mal": $("#description_mal").val(),
                    "from": "mal"
                };

                var isOk = validate(parametros);
                if (isOk === false) {
                    alert("You must perform the calculation and fill out the description");
                } else {

                    if ($("#opt_mal").val() == 2) {
                        parametros.id_mal = $("#id_mal").val();
                    }

                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        dataType: 'json',
                        beforeSend: function (xhr) {
                            block("Cargando...");
                        },
                        success: function (data, status, request) {
                            $("#id_mal").val(data.row.id);
                            $("#opt_mal").val("2");
                            show_OkDialog($("#save_Dialog_mal"), "Satisfactory process");
                        },
                        error: function (xhr, ajaxOptions, err) {
                            alert(err);
                            show_OkDialog($("#error_Dialog_mal"), "Error");
                        },
                        complete: function () {
                            unBlock();
                        }
                    });
                }

            }

            function calculate_mal() {
                var variables = {
                    "maximund_mal": $("#maximund_mal").val().replace(",", ""),
                    "pipeo_mal": $("#pipeo_mal").val().replace(",", ""),
                    "nomip_mal": $("#nomip_mal").val().replace(",", "")
                };

                var isOk = validate(variables);

                if (isOk === false) {
                    alert("You must complete all fields");
                } else {

                    var unidades = {
                        "md_sel_mal": $("#md_sel_mal").val().split(",")[1],
                        "po_sel_mal": $("#po_sel_mal").val().split(",")[1],
                        "np_sel_mal": $("#np_sel_mal").val().split(",")[1]
                    };


                    var res = maximunAllowable_Form(variables, unidades);

                    $("#maximuna_mal").val(res[0]);

                    show_OkDialog($("#calculate_Dialog_mal"), "Satisfactory process");
                }

            }

            function delete_mal() {

                //Confirmacion
                if ($("#opt_mal").val() == 2) {
                    $("#dialog-confirm_mal").dialog({
                        resizable: false,
                        height: "auto",
                        width: 400,
                        modal: true,
                        buttons: {
                            "Delete": function () {
                                deleteReg_mal();
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

            function deleteReg_mal() {

                var parametros = {
                    "id_mal": $("#id_mal").val(),
                    "opcion": "3",
                    "iduser": <% out.print(session.getAttribute("idusu"));%>,
                    "from": "mal"
                };

                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        cleanAll_mal();
                        $("#id_mal").val("");
                        $("#opt_mal").val("1");
                        show_OkDialog($("#delete_Dialog_mal"), "Satisfactory process");
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_mal"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

        </script>

        <div id="load_Dialog_mal" title="Basic dialog" style='display:none;'>
            <p>Successfully uploaded data</p>
        </div>

        <div id="save_Dialog_mal" title="Basic dialog" style='display:none;'>
            <p>Data saved successfully</p>
        </div>

        <div id="error_Dialog_mal" title="Basic dialog" style='display:none;'>
            <p>An error has occurred in the process</p>
        </div>

        <div id="calculate_Dialog_mal" title="Basic dialog" style='display:none;'>
            <p>Calculation done successfully</p>
        </div>

        <div id="delete_Dialog_mal" title="Basic dialog" style='display:none;'>
            <p>Successfully deleted record</p>
        </div>
        <div id="dialog-confirm_mal" title="Delete Record" style='display:none;'>
            <p><span class="ui-icon ui-icon-alert" style="float:left; margin:12px 12px 20px 0;"></span>
                Are you sure you want to permanently delete this record?
            </p>
        </div>
    </body>
</html>