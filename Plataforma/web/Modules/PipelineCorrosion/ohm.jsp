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
                <h2><strong>Pipe Installation:</strong> 7.6. Ohm´s Law For Corrosion Current</h2>
            </div>
            <div class="col-lg-3"> 

                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_ohm()">
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
                                <div id="div-table_ohm"></div>
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
                <input  class="form-control" type="text" id="description_ohm" name="description_ohm"><br>
                Projects: 
                <select class="form-control" id="proyects_sel_ohm" name="proyects_sel_ohm"> </select>
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
                                    <label>Potential difference between the polarized cathode and reference electrode:</label>
                                </div>
                                <div class="col-md-8">
                                    <input class="form-control" type="text" id="potentiald_ohm" name="potentiald_ohm" onchange="onchange_Input_ohm(this)" required>
                                </div>
                                <div class="col-md-4" id = "div_pd_sel_ohm">
                                    <select class="form-control" id="pd_sel_ohm" name="pd_sel_ohm" onchange="cleanOut_ohm()"> </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12">
                                    <label>Potential difference between the polarized anode and the same reference electrode:</label>
                                </div>
                                <div class="col-md-8">
                                    <input class="form-control" type="text" id="potentiale_ohm" name="potentiale_ohm" onchange="onchange_Input_ohm(this)" required>

                                </div>
                                <div class="col-md-4" id = "div_pe_sel_ohm">
                                    <select class="form-control" id="pe_sel_ohm" name="pe_sel_ohm" onchange="cleanOut_ohm()"> </select>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-md-12">
                                    <label>Geometry factor for a cathode:</label>

                                    <input class="form-control" type="text" id="geometryc_ohm" name="geometryc_ohm" onchange="onchange_Input_ohm(this)" required>

                                </div>

                            </div>

                            <div class="form-group">
                                <div class="col-md-12">
                                    <label>Geometry factor for an anode:</label>

                                    <input class="form-control" type="text" id="geometrya_ohm" name="geometrya_ohm" onchange="onchange_Input_ohm(this)" required>
                                </div>

                            </div>


                            <div class="form-group">
                                <div class="col-md-12">
                                    <label> Average soil resistivity:</label>
                                </div>
                                <div class="col-md-8">
                                    <input class="form-control" type="text" id="averages_ohm" name="averages_ohm" onchange="onchange_Input_ohm(this)" required ></div>
                            </div>
                            <div class="col-md-4" id = "div_as_sel_ohm">
                                <select class="form-control" id="as_sel_ohm" name="as_sel_ohm" onchange="cleanOut_ohm()"> </select>
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
                                <label>Corrosion current [A]:</label>
                                <input type="text" id="corrosionc_ohm" name="corrosionc_ohm" readonly required class="form-control">
                            </div>

                            <input type="button" id="calculateBtn_ohm" name="calculateBtn_ohm" value="Calculate" onclick="calculate_ohm()" class="btn btn-info btn-block">
                            <input type="button" id="saveBtn_ohm" name="saveBtn_ohm" value="Save" onclick="save_ohm()" class="btn btn-success btn-block">   
                            <input type="button" id="delteBtn_ohm" name="delteBtn_ohm" value="Delete" onclick="delete_ohm()" class="btn btn-danger btn-block">

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-12">
            <div class="col-md-3">
                <input type="button" id="cleanAllBtn_ohm" name="cleanAllBtn_ohm" value="Clean All Data" onclick="cleanAll_ohm()" class="btn btn-warning btn-block"></div>
            <div class="col-md-3">
                <input type="button" id="cleanInputBtn_ohm" name="cleanInputBtn_ohm" value="Clean Input Data" onclick="cleanIn_ohm()" class="btn btn-warning btn-block"></div>
            <div class="col-md-3">
                <input type="button" id="cleanOutputBtn_ohm" name="cleanOutputBtn_ohm" value="Clean Output Data" onclick="cleanOut_ohm()" class="btn btn-warning btn-block"></div>
        </div>
        <input type="hidden" id="id_ohm" name="id_ohm">  
        <input type="hidden" id="opt_ohm" name="opt_ohm" value="1"> 

        <script>

            $(document).ready(function () {
                load_pote_sel_ohm();
                load_aves_sel_ohm();

                getproyectos(<%=session.getAttribute("idusu")%>,
                        $("#proyects_sel_ohm"),
                        $("#error_Dialog_ohm"));
            });

            function load_pote_sel_ohm() {
                var parametros = {
                    "combo": "pote",
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
                        var newHtml = "<select class=\"form-control\" name=\"pd_sel_ohm\" id= \"pd_sel_ohm\" onchange=\"cleanOut_ohm()\">" + data;
                        $("#div_pd_sel_ohm").html(newHtml);

                        newHtml = "<select class=\"form-control\" name=\"pe_sel_ohm\" id= \"pe_sel_ohm\" onchange=\"cleanOut_ohm()\">" + data;
                        $("#div_pe_sel_ohm").html(newHtml);

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_ohm"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_aves_sel_ohm() {
                var parametros = {
                    "combo": "ohm2",
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
                        var newHtml = "<select class=\"form-control\" name=\"as_sel_ohm\" id= \"as_sel_ohm\" onchange=\"cleanOut_ohm()\">" + data;
                        $("#div_as_sel_ohm").html(newHtml);

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_ohm"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_history_ohm() {
                var parametros = {
                    "idproyect": $("#proyects_sel_ohm").val(),
                    "iduser": <% out.print(session.getAttribute("idusu"));%>,
                    "opcion": "6",
                    "nombre": "historial",
                    "from": "ohm"
                };

                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    dataType: 'json',
                    async: false,
                    beforeSend: function (xhr) {
                        cleanAll_ohm();
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
                                    html += "<td>" + data.historial[i].description_ohm + "</td>";
                                    html += "<td><a href='#' onClick=\"load_form_ohm(" + data.historial[i].id + ")\"><span class='glyphicon glyphicon-plus' aria-hidden='true'></span></a></td>";
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
                        $("#div-table_ohm").empty();
                        $("#div-table_ohm").html(html);

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_ohm"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_form_ohm(id) {
                var parametros = {
                    "id_ohm": id,
                    "opcion": "4"
                };

                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    dataType: 'json',
                    beforeSend: function (xhr) {
                        cleanAll_ohm();
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

                            $("#opt_ohm").val("2");
                            $("#id_ohm").val(data.row.id);
                        } else {
                            $("#opt_ohm").val("1");
                        }

                        //unBlock();
                        //$('#myModal').hide("hide");
                        //$('#myModal').removeClass('fade in');
                        //$('#myModal').addClass('fade out');
                    },
                    error: function (xhr, ajaxOptions, err) {
                        $("#opt_ohm").val("1");
                        show_OkDialog($("#error_Dialog_ohm"), "Error");

                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function onchange_Input_ohm(inp) {
                var sw = validateDecimal(inp.value);

                if (sw != true) {
                    inp.value = "";
                }
                onchange_Input_zero(inp);
                cleanOut_ohm();
            }

            function cleanOut_ohm() {
                $("#corrosionc_ohm").val("");
            }

            function cleanIn_ohm() {
                $("#potentiale_ohm").val("");
                $("#potentiald_ohm").val("");
                $("#geometryc_ohm").val("");
                $("#geometrya_ohm").val("");
                $("#averages_ohm").val("");
            }

            function cleanAll_ohm() {
                cleanIn_ohm();
                cleanOut_ohm();

                $("#description_ohm").val("");
            }

            function save_ohm() {

                var parametros = {
                    "potentiald_ohm": $("#potentiald_ohm").val(),
                    "potentiale_ohm": $("#potentiale_ohm").val(),
                    "geometryc_ohm": $("#geometryc_ohm").val(),
                    "geometrya_ohm": $("#geometrya_ohm").val(),
                    "averages_ohm": $("#averages_ohm").val(),
                    "pd_sel_ohm": $("#pd_sel_ohm").val(),
                    "pe_sel_ohm": $("#pe_sel_ohm").val(),
                    "as_sel_ohm": $("#as_sel_ohm").val(),
                    "corrosionc_ohm": $("#corrosionc_ohm").val(),
                    "idproyect": $("#proyects_sel_ohm").val(),
                    "opcion": $("#opt_ohm").val(),
                    "iduser": <% out.print(session.getAttribute("idusu"));%>,
                    "id_ohm": 1,
                    "description_ohm": $("#description_ohm").val(),
                    "from": "ohm"
                };

                var isOk = validate(parametros);
                if (isOk === false) {
                    alert("You must perform the calculation and fill out the description");
                } else {

                    if ($("#opt_ohm").val() == 2) {
                        parametros.id_ohm = $("#id_ohm").val();
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
                            $("#id_ohm").val(data.row.id);
                            $("#opt_ohm").val("2");
                            show_OkDialog($("#save_Dialog_ohm"), "Satisfactory process");
                        },
                        error: function (xhr, ajaxOptions, err) {
                            alert(err);
                            show_OkDialog($("#error_Dialog_ohm"), "Error");
                        },
                        complete: function () {
                            unBlock();
                        }
                    });
                }

            }

            function calculate_ohm() {
                var variables = {
                    "potentiald_ohm": $("#potentiald_ohm").val().replace(",", ""),
                    "potentiale_ohm": $("#potentiale_ohm").val().replace(",", ""),
                    "geometryc_ohm": $("#geometryc_ohm").val().replace(",", ""),
                    "geometrya_ohm": $("#geometrya_ohm").val().replace(",", ""),
                    "averages_ohm": $("#averages_ohm").val().replace(",", "")
                };

                var isOk = validate(variables);

                if (isOk === false) {
                    alert("You must complete all fields");
                } else {
 
                    var unidades = {
                        "as_sel_ohm": $("#as_sel_ohm").val().split(",")[1]
                    }; 

                    var res = ohm_Form(variables, unidades);

                    $("#corrosionc_ohm").val(res[0]);

                    show_OkDialog($("#calculate_Dialog_ohm"), "Satisfactory process");
                }

            }

            function delete_ohm() {

                //Confirmacion
                if ($("#opt_ohm").val() == 2) {
                    $("#dialog-confirm_ohm").dialog({
                        resizable: false,
                        height: "auto",
                        width: 400,
                        modal: true,
                        buttons: {
                            "Delete": function () {
                                deleteReg_ohm();
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

            function deleteReg_ohm() {

                var parametros = {
                    "id_ohm": $("#id_ohm").val(),
                    "opcion": "3",
                    "from": "ohm",
                    "iduser": <% out.print(session.getAttribute("idusu"));%>
                };
                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        cleanAll_ohm();
                        $("#id_ohm").val("");
                        $("#opt_ohm").val("1");
                        show_OkDialog($("#delete_Dialog_ohm"), "Satisfactory process");
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_ohm"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

        </script>

        <div id="load_Dialog_ohm" title="Basic dialog" style='display:none;'>
            <p>Successfully uploaded data</p>
        </div>

        <div id="save_Dialog_ohm" title="Basic dialog" style='display:none;'>
            <p>Data saved successfully</p>
        </div>

        <div id="error_Dialog_ohm" title="Basic dialog" style='display:none;'>
            <p>An error has occurred in the process</p>
        </div>

        <div id="calculate_Dialog_ohm" title="Basic dialog" style='display:none;'>
            <p>Calculation done successfully</p>
        </div>

        <div id="delete_Dialog_ohm" title="Basic dialog" style='display:none;'>
            <p>Successfully deleted record</p>
        </div>
    </body>
</html>