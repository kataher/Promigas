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
                <h2><strong>Pipe Installation:</strong> Pipeline Blowdown – Time/Volume Lost</h2>
            </div>
            <div class="col-lg-3"> 

                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_pt()">
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
                                <div id="div-table_pt"></div>
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
                <input  class="form-control" type="text" id="description_pt" name="description_pt"><br>
                Projects:
                <select class="form-control" id="proyects_sel_pt" name="proyects_sel_pt"> </select>
            </div>
        </div>
        <hr>

        <div class="col-lg-3">

            <div class="panel panel-default">
                <div class="panel-heading">
                    Referencias
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <form role="form">
                                <div class="form-group">

                                    <div class="form-group">
                                        <div class="col-md-12">
                                            <label>IDeal Nozzle: 1.0</label> 
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-md-12">
                                            <label>Through port gate valve: 1.6</label> 
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-md-12">
                                            <label>Regular gate valve: 1.8</label> 
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-md-12">
                                            <label>Regular Lubricated plug valve: 2.0</label> 
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-md-12">
                                            <label>Venturi lubricated plug valve: 3.2</label> 
                                        </div>
                                    </div>

                                </div>
                            </form>
                        </div>
                    </div>
                </div>  
            </div>   
        </div>
        <div class="col-lg-6">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Input Data
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">


                            <div class="form-group">
                                <div class="col-md-12">
                                    <label>Average initial pipeline pressure: </label>
                                </div>
                                <div class="col-md-8">
                                    <input class="form-control" type="text" id="averagei_pt" name="averagei_pt" onchange="onchange_Input_pt(this)" required>
                                </div>
                                <div class="col-md-4" id = "div_ai_sel_pt">
                                    <select class="form-control" id="ai_sel_pt" name="ai_sel_pt" onchange="cleanOut_pt()"> </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12">
                                    <label>Gas Specific Gravity:</label>

                                    <input class="form-control" type="text" id="gst_pt" name="gst_pt"  onchange="onchange_Input_pt(this)" required>
                                </div>

                            </div>
                            <div class="form-group">
                                <div class="col-md-12">
                                    <label>Pipe inside diameter:</label>
                                </div>
                                <div class="col-md-8">
                                    <input class="form-control" type="text" id="pipei_pt" name="pipei_pt" onchange="onchange_Input_pt(this)" required>
                                </div>
                                <div class="col-md-4"  id="div_pi_sel_pt">
                                    <select class="form-control" id="pi_sel_pt" name="pi_sel_pt"> </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12">
                                    <label>Inside diameter of blowdown stacks:</label>
                                </div>
                                <div class="col-md-8">
                                    <input class="form-control" type="text" id="insided_pt" name="insided_pt" onchange="onchange_Input_pt(this)" required>
                                </div>
                                <div class="col-md-4"  id="div_id_sel_pt">
                                    <select class="form-control" id="id_sel_pt" name="id_sel_pt"> </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12">
                                    <label>Length of pipeline:</label>
                                </div>
                                <div class="col-md-8">
                                    <input class="form-control" type="text" id="lenghtp_pt" name="lenghtp_pt" onchange="onchange_Input_pt(this)" required>
                                </div>
                                <div class="col-md-4" id="div_lp_sel_pt">
                                    <select class="form-control" id="lp_sel_pt" name="lp_sel_pt" onchange="cleanOut_pt()"> </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12">
                                    <label>Numbers of blowndown stacks:</label>
                                    <input class="form-control" type="text" id="numbersb_pt" name="numbersb_pt" onchange="onchange_Input_pt(this)" required>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12">
                                    <label>Choke factor:</label>
                                </div>
                                <div class="col-md-8" id="div_cf_sel_pt">
                                    <select class="form-control" id="cf_sel_pt" name="cf_sel_pt" onchange="onchange_choke_pt()"> </select>
                                </div>

                                <div class="col-md-4">
                                    <input class="form-control" type="text" id="chokef_pt" name="chokef_pt" onchange="onchange_Input_pt(this)" required>
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
                                <label>Blowndown Time [min]:</label>
                                <input type="text" id="blowndownt_pt" name="blowndownt_pt" readonly required class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Volumen Lost [MSCF]:</label>
                                <input type="text" id="volumel_pt" name="volumel_pt" readonly required class="form-control">
                            </div>

                            <input type="button" id="calculateBtn_pt" name="calculateBtn_pt" value="Calculate" onclick="calculate_pt()" class="btn btn-info btn-block">
                            <input type="button" id="saveBtn_pt" name="saveBtn_pt" value="Save" onclick="save_pt()" class="btn btn-success btn-block">   
                            <input type="button" id="delteBtn_pt" name="delteBtn_pt" value="Delete" onclick="delete_pt()" class="btn btn-danger btn-block">

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-12">
            <div class="col-md-3">
                <input type="button" id="cleanAllBtn_pt" name="cleanBtn_pt" value="Clean All Data" onclick="cleanAll_pt()" class="btn btn-warning btn-block">
            </div>
            <div class="col-md-3">
                <input type="button" id="cleanInputBtn_pt" name="cleanBtn_pt" value="Clean Input Data" onclick="cleanIn_pt()" class="btn btn-warning btn-block">
            </div>
            <div class="col-md-3">
                <input type="button" id="cleanOutputBtn_pt" name="cleanBtn_pt" value="Clean Output Data" onclick="cleanOut_pt()" class="btn btn-warning btn-block">
            </div>
        </div>
        <input type="hidden" id="id_pt" name="id_pt">  
        <input type="hidden" id="opt_pt" name="opt_pt">

        <script>



            $(document).ready(function () {
                $("#opt_pt").val("1");
                load_in_sel_pt();
                load_press_sel_pt();
                load_lenght_sel_pt();
                load_chokef_sel_pt();

                getproyectos(<%=session.getAttribute("idusu")%>,
                        $("#proyects_sel_pt"),
                        $("#error_Dialog_pt"));
            });

            function load_history_pt() {
                var parametros = {
                    "idproyect": $("#proyects_sel_pt").val(),
                    "iduser": <% out.print(session.getAttribute("idusu"));%>,
                    "opcion": "6",
                    "nombre": "historial",
                    "from": "pt"
                };

                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    dataType: 'json',
                    async: false,
                    beforeSend: function (xhr) {
                        $("#opt_pt").val("1");
                        $("#id_pt").val(""); //CAMBIAR EN TODAS LAS VISTAS
                        cleanAll_pt();
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
                                    html += "<td>" + data.historial[i].description_pt + "</td>";
                                    html += "<td><a href='#' onClick=\"load_form_pt(" + data.historial[i].id + ")\"><span class='glyphicon glyphicon-plus' aria-hidden='true'></span></a></td>";
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
                        $("#div-table_pt").empty();
                        $("#div-table_pt").html(html);

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_pt"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function onchange_choke_pt() {
                $("#chokef_pt").val($("#cf_sel_pt").val().split(",")[1]);
            }

            function load_chokef_sel_pt() {
                var parametros = {
                    "combo": "chokef",
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
                        var newHtml = "<select class=\"form-control\" name=\"cf_sel_pt\" id= \"cf_sel_pt\" onchange=\"onchange_choke_pt()\" >" + data;
                        $("#div_cf_sel_pt").html(newHtml);

                        onchange_choke_pt();
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_pt"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_in_sel_pt() {
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
                        var newHtml = "<select class=\"form-control\" name=\"pi_sel_pt\" id= \"pi_sel_pt\" >" + data;
                        $("#div_pi_sel_pt").html(newHtml);

                        newHtml = "<select class=\"form-control\" name=\"id_sel_pt\" id= \"id_sel_pt\" >" + data;
                        $("#div_id_sel_pt").html(newHtml);

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_pt"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_lenght_sel_pt() {
                var parametros = {
                    "combo": "len",
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
                        var newHtml = "<select class=\"form-control\" name=\"lp_sel_pt\" id= \"lp_sel_pt\" onchange=\"cleanOut_pt()\">" + data;
                        $("#div_lp_sel_pt").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_pt"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_press_sel_pt() {
                var parametros = {
                    "combo": "pres",
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
                        var newHtml = "<select class=\"form-control\" name=\"ai_sel_pt\" id= \"ai_sel_pt\" onchange=\"cleanOut_pt()\">" + data;
                        $("#div_ai_sel_pt").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_pt"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_form_pt(id) {

                var parametros = {
                    "id": id,
                    "opcion": "4",
                    "from": "pt"
                };

                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    dataType: 'json',
                    beforeSend: function (xhr) {
                        cleanAll_pt();
                        block("Cargado datos...");
                    },
                    success: function (data, status, request) {
                        if (data != null)
                        {
                            var tags = Object.keys(data.row);

                            for (var i = 0; i < tags.length; i++) {
                                if (tags[i] != "date" && tags[i] != "id_proyect" && tags[i] != "id_user" && tags[i] != "id")
                                {
                                    $("#" + tags[i]).val(data.row[tags[i]]);
                                }
                            }

                            $("#proyects_sel_pt").val(data.row.id_proyect);

                            $("#opt_pt").val("2");
                            $("#id_pt").val(data.row.id);
                        } else {
                            $("#opt_pt").val("1");
                        }

                    },
                    error: function (xhr, ajaxOptions, err) {
                        $("#opt_pt").val("1");
                        show_OkDialog($("#error_Dialog_pt"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function cleanOut_pt() {
                $("#blowndownt_pt").val("");
                $("#volumel_pt").val("");
            }

            function cleanIn_pt() {
                $("#averagei_pt").val("");
                $("#gst_pt").val("");
                $("#insided_pt").val("");
                $("#pipei_pt").val("");
                $("#lenghtp_pt").val("");
                $("#numbersb_pt").val("");
                $("#chokef_pt").val("");
            }

            function cleanAll_pt() {
                cleanIn_pt();
                cleanOut_pt();
                $("#description_pt").val("");
            }

            function onchange_Input_pt(inp) {

                var sw = validateDecimal(inp.value);

                if (sw != true) {
                    inp.value = "";
                }
                onchange_Input_zero(inp);
                cleanOut_pt();

            }

            function calculate_pt() {

                var variables = {
                    "averagei_pt": $("#averagei_pt").val().replace(",", ""),
                    "gst_pt": $("#gst_pt").val().replace(",", ""),
                    "pipei_pt": $("#pipei_pt").val().replace(",", ""),
                    "insided_pt": $("#insided_pt").val().replace(",", ""),
                    "lenghtp_pt": $("#lenghtp_pt").val().replace(",", ""),
                    "numbersb_pt": $("#numbersb_pt").val().replace(",", ""),
                    "chokef_pt": $("#chokef_pt").val().replace(",", "")
                };

                var isOk = validate(variables);

                if (isOk === false) {
                    alert("You must complete all fields");
                } else {

                    var unidades = {
                        "averagei_pt": $("#ai_sel_pt").val(),
                        "pipei_pt": $("#pi_sel_pt").val(),
                        "lenghtp_pt": $("#lp_sel_pt").val(),
                        "numbersb_pt": $("#gsh_sel_pt").val(),
                        "chokef_pt": $("#ae_sel_pt").val(),
                        "gst_pt": "N/A"
                    };

                    var res = pipelineTime_Form(variables, unidades);

                    $("#blowndownt_pt").val(res[0]);
                    $("#volumel_pt").val(res[1]);

                    show_OkDialog($("#calculate_Dialog_pt"), "Satisfactory process");

                }
            }

            function save_pt() {

                var parametros = {
                    "averagei_pt": $("#averagei_pt").val(),
                    "pipei_pt": $("#pipei_pt").val(),
                    "insided_pt": $("#insided_pt").val(),
                    "lenghtp_pt": $("#lenghtp_pt").val(),
                    "numbersb_pt": $("#numbersb_pt").val(),
                    "chokef_pt": $("#chokef_pt").val(),
                    "gst_pt": $("#gst_pt").val(),
                    "blowndownt_pt": $("#blowndownt_pt").val(),
                    "volumel_pt": $("#volumel_pt").val(),
                    "ai_sel_pt": $("#ai_sel_pt").val(),
                    "pi_sel_pt": $("#pi_sel_pt").val(),
                    "lp_sel_pt": $("#lp_sel_pt").val(),
                    "id_sel_pt": $("#id_sel_pt").val(),
                    "cf_sel_pt": $("#cf_sel_pt").val(),
                    "idproyect": $("#proyects_sel_pt").val(),
                    "opcion": $("#opt_pt").val(),
                    "iduser": <% out.print(session.getAttribute("idusu"));%>,
                    "id_pt": 1,
                    "description_pt": $("#description_pt").val(),
                    "from": "pt"
                };

                var isOk = validate(parametros);

                if (isOk === false) {
                    alert("You must perform the calculation and fill out the description");
                } else {

                    if ($("#opt_pt").val() == 2) {
                        parametros.id_pt = $("#id_pt").val();
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
                            $("#id_pt").val(data.row.id);
                            $("#opt_pt").val("2");
                            show_OkDialog($("#save_Dialog_pt"), "Satisfactory process");
                        },
                        error: function (xhr, ajaxOptions, err) {
                            alert(err);
                            show_OkDialog($("#error_Dialog_pt"), "Error");
                        },
                        complete: function () {
                            unBlock();
                        }
                    });
                }
            }

            function delete_pt() {

                //Confirmacion
                if ($("#opt_pt").val() == 2) {
                    $("#dialog-confirm_pt").dialog({
                        resizable: false,
                        height: "auto",
                        width: 400,
                        modal: true,
                        buttons: {
                            "Delete": function () {
                                deleteReg_pt();
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

            function deleteReg_pt() {
                var parametros = {
                    "id_pt": $("#id_pt").val(),
                    "opcion": 3,
                    "from": "pt",
                    "iduser": <% out.print(session.getAttribute("idusu"));%>
                };


                if ($("#opt_pt").val() == 2) {
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        dataType: 'json',
                        beforeSend: function (xhr) {
                            block("Cargando...");
                        },
                        success: function (data, status, request) {
                            cleanAll_pt();
                            $("#id_pt").val("");
                            $("#opt_pt").val("1");
                            show_OkDialog($("#save_Dialog_pt"), "Satisfactory process");
                        },
                        error: function (xhr, ajaxOptions, err) {
                            alert(err);
                            show_OkDialog($("#error_Dialog_pt"), "Error");
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

        <div id="load_Dialog_pt" title="Basic dialog" style='display:none;'>
            <p>Successfully uploaded data</p>
        </div>

        <div id="save_Dialog_pt" title="Basic dialog" style='display:none;'>
            <p>Data saved successfully</p>
        </div>

        <div id="error_Dialog_pt" title="Basic dialog" style='display:none;'>
            <p>An error has occurred in the process</p>
        </div>

        <div id="calculate_Dialog_pt" title="Basic dialog" style='display:none;'>
            <p>Calculation done successfully</p>
        </div>

        <div id="delete_Dialog_pt" title="Basic dialog" style='display:none;'>
            <p>Successfully deleted record</p>
        </div>

        <div id="dialog-confirm_pt" title="Delete record" style='display:none;'>
            <p><span class="ui-icon ui-icon-alert" style="float:left; margin:12px 12px 20px 0;"></span>
                Are you sure you want to permanently delete this record?
            </p>
        </div>
    </body>
</html>