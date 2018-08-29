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
                <h2><strong>Stell Pipe Design:</strong>  Bending Stress Caused by Fluid Flowing Around Pipeline </h2>
            </div>
            <div class="col-lg-3"> 
                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_bdsf()">
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
                                <div id="div-table_bdsf"></div>
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
                <input class="form-control" type="text" id="description_bdsf" name="description_bdsf"><br>
                Projects: 
                <select class="form-control" id="proyects_sel_bdsf" name="proyects_sel_bdsf"> </select>
            </div>
        </div>
        <hr>

        <div class="col-lg-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Pipe Properties
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="form-group">


                            </div>                                    
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    Line Pipe API 5L
                                </div>
                                <div class="panel-body">
                                    <div class="form-group">
                                        <div class="col-lg-12">
                                            <label>Nominal pipe size:</label>
                                        </div> 
                                        <div class="col-lg-12" id="div_nps_sel_bdsf">
                                            <select class="form-control" id="nps_sel_bdsf" name="nps_sel_bdsf"> </select>
                                        </div> 
                                    </div>   
                                    <div class="form-group">
                                        <div class="col-lg-12">                      
                                            <label>Wall Thickness [.in]:</label>
                                        </div> 
                                        <div class="col-lg-12" id="div_wt_sel_bdsf">
                                            <select class="form-control" id="wt_sel_bdsf" name="wt_sel_bdsf"> </select>
                                        </div>   
                                    </div>                    
                                </div> 
                            </div> 
                        </div>
                    </div>                          
                </div>
            </div>
        </div>

        <div class="col-lg-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Input Data:
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">                                    
                            <div class="form-group">      
                                <div class="form-group">
                                    <div class="col-md-12">
                                        <label>Unit Weight of Fluid (Default Water) [lb/ft<sup>3</sup>]:</label>
                                    </div>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" id="unit_weight_bdsf" name="unit_weight_bdsf" onchange='onchange_Input_bdsf(this)' required> 
                                    </div>
                                    <div class="col-md-4" id = "div_unit_weight_sel_bdsf">
                                        <select class="form-control" id="unit_weight_sel_bdsf" name="unit_weight_sel_bdsf" onchange='cleanOut_bdsf()'>
                                            <option>lb/ft<sup>3</sup></option>
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-md-12">
                                        <label>Pipe outside diameter [in.]:</label>
                                    </div>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" id="pipe_dia_bdsf" name="pipe_dia_bdsf" onchange='onchange_Input_bdsf(this)' required> 
                                    </div>
                                    <div class="col-md-4" id = "div_pipe_diam_sel_bdsf">
                                        <select class="form-control" id="pipe_diam_sel_bdsf" name="pipe_diam_sel_bdsf" onchange='cleanOut_bdsf()'> </select>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-md-12">
                                        <label>Pipe Inside Diameter [in.]:</label>
                                    </div>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" id="pipe_in_dia_bdsf" name="pipe_in_dia_bdsf" onchange='onchange_Input_bdsf(this)' required> 
                                    </div>
                                    <div class="col-md-4" id = "div_pipe_in_diam_sel_bdsf">
                                        <select class="form-control" id="pipe_in_diam_sel_bdsf" name="pipe_in_diam_sel_bdsf"> </select>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-md-12">
                                        <label>Velocity of Fluid [ft./sec]:</label>
                                    </div>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" id="vel_fluid_bdsf" name="vel_fluid_bdsf" onchange='onchange_Input_bdsf(this)' required> 
                                    </div>
                                    <div class="col-md-4" id = "div_vel_fluid_sel_bdsf">
                                        <select class="form-control" id="vel_fluid_sel_bdsf" name="vel_fluid_sel_bdsf" onchange='cleanOut_bdsf()'> 
                                            <option>ft./sec</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-md-12">
                                        <label>Length of Pipe [ft.]:</label>
                                    </div>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" id="lenght_pipe_bdsf" name="lenght_pipe_bdsf" onchange='onchange_Input_bdsf(this)' required> 
                                    </div>
                                    <div class="col-md-4" id = "div_lenght_pipe_sel_bdsf">
                                        <select class="form-control" id="lenght_pipe_sel_bdsf" name="lenght_pipe_sel_bdsf"> </select>
                                    </div>
                                </div>


                            </div> 
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Results
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">                                    
                            <div class="form-group">        
                                <label>Bending Stress [psi]:</label>
                                <input type="text" name="bend_stress_bdsf" id="bend_stress_bdsf" class="form-control" readonly>
                                <BR>                                      
                                <div>    
                                    <input type="button" id="calculateBtn_bdsf" name="calculateBtn_bdsf" value="Calculate" onclick="calculate_bdsf()" class="btn btn-info btn-block">
                                    <input type="button" id="saveBtn_bdsf" name="saveBtn_bdsf" value="Save" onclick="save_bdsf()" class="btn btn-success btn-block">   
                                    <input type="button" id="reportBtn_bdsf" name="reportBtn_bdsf" value="Delete" onclick="delete_bdsf()" class="btn btn-danger btn-block">          
                                </div>                              
                            </div>  
                        </div> 
                    </div>               
                </div>
            </div>
        </div> 

        <div class="col-lg-12">
            <div class="col-md-3">
                <input type="button" id="cleanAllBtn_bdsf" name="cleanBtn_bdsf" value="Clean All" onclick="cleanAll_bdsf()" class="btn btn-warning btn-block">
            </div>
            <div class="col-md-3">
                <input type="button" id="cleanInputBtn_bdsf" name="cleanBtn_bdsf" value="Clean Input Data" onclick="cleanIn_bdsf()" class="btn btn-warning btn-block">
            </div>
            <div class="col-md-3">
                <input type="button" id="cleanOutputBtn_bdsf" name="cleanBtn_bdsf" value="Clean Output Data" onclick="cleanOut_bdsf()" class="btn btn-warning btn-block">
            </div>    
        </div>

        <input type="hidden" id="opt_bdsf" name="opt_bdsf"> 
        <input type="hidden" id="id_bdsf" name="id_bdsf">   
        <script>
            $(document).ready(function () {
                $("#opt_bdsf").val("1");
                load_nps_sel_bdsf();
                load_in_sel_bdsf();
                load_meters_sel_bdsf();

                getproyectos(<%=session.getAttribute("idusu")%>,
                        $("#proyects_sel_bdsf"),
                        $("#error_Dialog_bdsf"));

            });

            function cleanOut_bdsf() {
                $("#bend_stress_bdsf").val("");

            }

            function cleanIn_bdsf() {
                $("#unit_weight_bdsf").val("");
                $("#pipe_dia_bdsf").val("");
                $("#pipe_in_dia_bdsf").val("");
                $("#vel_fluid_bdsf").val("");
                $("#lenght_pipe_bdsf").val("");
            }

            function cleanAll_bdsf() {
                cleanIn_bdsf();
                cleanOut_bdsf();
                $("#description_bdsf").val("");
            }

            function load_in_sel_bdsf() {
                var parametros = {
                    "combo": "in2",
                    "opcion": "5"
                };
                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    async: true,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        var newHtml = "<select class='form-control' name='pipe_in_diam_sel_bdsf' id= 'pipe_in_diam_sel_bdsf' onchange='cleanOut_bdsf()'>" + data;
                        $("#div_pipe_in_diam_sel_bdsf").html(newHtml);

                        newHtml = "<select class='form-control' name='pipe_diam_sel_bdsf' id= 'pipe_diam_sel_bdsf' onchange='cleanOut_bdsf()'>" + data;
                        $("#div_pipe_diam_sel_bdsf").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_bdsf"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            
            function load_meters_sel_bdsf() {
                var parametros = {
                    "combo": "len",
                    "opcion": "5"
                };
                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    async: true,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        var newHtml = "<select class='form-control' name='lenght_pipe_sel_bdsf' id= 'lenght_pipe_sel_bdsf' onchange='cleanOut_bdsf()'>" + data;
                        $("#div_lenght_pipe_sel_bdsf").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_bdsf"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }


            function load_history_bdsf() {
                var parametros = {
                    "idproyect": $("#proyects_sel_bdsf").val( ),
                    "iduser": <% out.print(session.getAttribute("idusu"));%>,
                    "from": "bdsf",
                    "opcion": "6",
                    "nombre": "historial"
                };

                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    dataType: 'json',
                    async: false,
                    beforeSend: function (xhr) {
                        $("#opt_bdsf").val("1");
                        $("#id_bdsf").val("");
                        cleanAll_bdsf();
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
                                    html += "<td>" + data.historial[i].description_bds + "</td>";
                                    html += "<td><a href='#' onClick='load_form_bdsf(" + data.historial[i].id + ")'><span class='glyphicon glyphicon-plus' aria-hidden='true'></span></a></td>";
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
                        $("#div-table_bdsf").empty();
                        $("#div-table_bdsf").html(html);

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_bdsf"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_form_bdsf(id) {

                var parametros = {
                    "id": id,
                    "from": "bdsf",
                    "opcion": "4"
                };

                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    dataType: 'json',
                    beforeSend: function (xhr) {
                        cleanAll_bdsf();
                        block("Cargado datos...");
                    },
                    success: function (data, status, request) {
                        if (data != null)
                        {
                            var tags = Object.keys(data.row);

                            for (var i = 0; i < tags.length; i++) {
                                if (tags[i] != "date" && tags[i] != "id_proyect" && tags[i] != "id_user" && tags[i] != "id" && tags[i] != "opz_bdsf")
                                {
                                    $("#" + tags[i]).val(data.row[tags[i]]);
                                }
                            }

                            load_wt_sel_bdsf();
                            $("#wt_sel_bdsf").val(data.row.wt_sel_bds);


                            $("#opt_bdsf").val("2");
                            $("#id_bdsf").val(data.row.id);
                            $("#proyects_sel_bdsf").val(data.row.id_proyect);
                        } else {
                            $("#opt_bdsf").val("1");
                        }

                    },
                    error: function (xhr, ajaxOptions, err) {
                        $("#opt_bdsf").val("1");
                        show_OkDialog($("#error_Dialog_bdsf"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }


            function load_nps_sel_bdsf() {
                var parametros = {
                    "combo": "npsn",
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
                        //alert(data);
                        var newHtml = "<select class=\"form-control\" name=\"nps_sel_bdsf\" id= \"nps_sel_bdsf\" onchange=\"onchange_nps_bdsf()\">" + data;
                        $("#div_nps_sel_bdsf").html(newHtml);

                        $("#pipe_dia_bdsf").val($("#nps_sel_bdsf").val());

                        load_wt_sel_bdsf();

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_bdsf"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function onchange_nps_bdsf() {
                $("#pipe_dia_bdsf").val($("#nps_sel_bdsf").val());
                load_wt_sel_bdsf();
                cleanOut_bdsf();
            }

            function load_wt_sel_bdsf() {
                var parametros = {
                    "combo": "wtn",
                    "nps": $("#nps_sel_bdsf").val(),
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
                        var newHtml = "<select class=\"form-control\" name=\"wt_sel_bdsf\" id= \"wt_sel_bdsf\" onchange=\"onchange_wt_bdsf()\">" + data;
                        $("#div_wt_sel_bdsf").html(newHtml);
                        $("#pipe_in_dia_bdsf").val($("#wt_sel_bdsf").val().split(",")[1]);

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_bdsf"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function onchange_wt_bdsf() {
                $("#pipe_in_dia_bdsf").val($("#wt_sel_bdsf").val().split(",")[1]);
                cleanOut_bdsf();
            }

            function calculate_bdsf() {
                var variables = {
                    "unit_weight_bdsf": $("#unit_weight_bdsf").val(),
                    "pipe_dia_bdsf": $("#pipe_dia_bdsf").val(),
                    "pipe_in_dia_bdsf": $("#pipe_in_dia_bdsf").val(),
                    "vel_fluid_bdsf": $("#vel_fluid_bdsf").val(),
                    "lenght_pipe_bdsf": $("#lenght_pipe_bdsf").val()
                };

                var unidades = {
                    "pipe_diam_sel_bdsf": $("#pipe_diam_sel_bdsf").val().split(",")[1],
                    "pipe_in_diam_sel_bdsf": $("#pipe_in_diam_sel_bdsf").val().split(",")[1],
                    "lenght_pipe_sel_bdsf": $("#lenght_pipe_sel_bdsf").val().split(",")[1]
                };

                var res = bending_stress_fluid_form(variables, unidades);

                $("#bend_stress_bdsf").val(res[0]);



                show_OkDialog($("#calculate_Dialog_wdp"), "Proceso satisfactorio");
            }

            function save_bdsf() {

                var parametros = {
                    "nps_sel_bdsf": $("#nps_sel_bdsf").val(),
                    "wt_sel_bdsf": $("#wt_sel_bdsf").val(),
                    "unit_weight_bdsf": $("#unit_weight_bdsf").val(),
                    "pipe_dia_bdsf": $("#pipe_dia_bdsf").val(),
                    "vel_fluid_bdsf": $("#vel_fluid_bdsf").val(),
                    "lenght_pipe_bdsf": $("#lenght_pipe_bdsf").val(),
                    "bend_stress_bdsf": $("#bend_stress_bdsf").val(),
                    "lenght_pipe_sel_bdsf": $("#lenght_pipe_sel_bdsf").val(),
                    "pipe_in_dia_bdsf": $("#pipe_in_dia_bdsf").val(),

                    "idproyect": $("#proyects_sel_bdsf").val(),
                    "iduser": <% out.print(session.getAttribute("idusu"));%>,
                    "opcion": $("#opt_bdsf").val(),
                    "id_bdsf": 1,
                    "description_bdsf": $("#description_bdsf").val(),
                    "from": "bdsf"

                };



                var isOk = validate(parametros);

                if (isOk === false) {
                    alert("You must perform the calculation and fill out the description");
                } else {

                    if ($("#opt_bdsf").val() == 2) {
                        parametros.id_bds = $("#id_bdsf").val();
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
                            $("#id_bdsf").val(data.row.id);
                            $("#opt_bdsf").val("2");
                            show_OkDialog($("#save_Dialog_bdsf"), "Satisfactory process");
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_bdsf"), "Error");
                            alert(err);
                        },
                        complete: function () {
                            unBlock();
                        }
                    });
                }
            }

            function delete_bdsf() {

                //Confirmacion
                if ($("#opt_bdsf").val() == 2) {
                    $("#dialog-confirm_bdsf").dialog({
                        resizable: false,
                        height: "auto",
                        width: 400,
                        modal: true,
                        buttons: {
                            "Delete": function () {
                                deleteReg_bdsf();
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

            function deleteReg_bdsf() {
                var parametros = {
                    "id_bdsf": $("#id_bdsf").val(),
                    "opcion": 3,
                    "iduser": <%=session.getAttribute("idusu")%>,
                    "from": "bdsf"
                };


                if ($("#opt_bdsf").val() == 2) {
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        dataType: 'json',
                        beforeSend: function (xhr) {
                            block("Cargando...");
                        },
                        success: function (data, status, request) {
                            cleanAll_bdsf();
                            $("#id_bdsf").val("");
                            $("#opt_bdsf").val("1");
                            show_OkDialog($("#delete_Dialog_bdsf"), "Satisfactory process");
                        },
                        error: function (xhr, ajaxOptions, err) {
                            alert(err);
                            show_OkDialog($("#error_Dialog_bdsf"), "Error");
                        },
                        complete: function () {
                            unBlock();
                        }
                    });

                } else {
                    alert("You must load a record to be able to delete it");
                }
            }

            function onchange_Input_bdsf(inp) {

                var sw = validateDecimal(inp.value);

                if (sw !== true) {
                    inp.value = "";
                }

                onchange_Input_zero(inp);
                cleanOut_bdsf();
            }

        </script> 

        <div id="load_Dialog_bdsf" title="Basic dialog" style='display:none;'>
            <p>Successfully uploaded data</p>
        </div>

        <div id="save_Dialog_bdsf" title="Basic dialog" style='display:none;'>
            <p>Data saved successfully</p>
        </div>

        <div id="error_Dialog_bdsf" title="Basic dialog" style='display:none;'>
            <p>An error has occurred in the process</p>
        </div>

        <div id="calculate_Dialog_bdsf" title="Basic dialog" style='display:none;'>
            <p>Calculation done successfully</p>
        </div>

        <div id="delete_Dialog_bdsf" title="Basic dialog" style='display:none;'>
            <p>Successfully deleted record</p>
        </div>

        <div id="dialog-confirm_bdsf" title="Delete record" style='display:none;'>
            <p><span class="ui-icon ui-icon-alert" style="float:left; margin:12px 12px 20px 0;"></span>
                Are you sure you want to permanently delete this record?
            </p>
        </div>
    </body>
</html>