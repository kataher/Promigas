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
                <h2><strong>Pipe Installation:</strong> Purging Calculations</h2>
            </div>
            <div class="col-lg-3"> 

                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_pca()">
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
                                <div id="div-table_pca"></div>
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
                <input  class="form-control" type="text" id="description_pca" name="description_pca"><br>
                Projects:
                <select class="form-control" id="proyects_sel_pca" name="proyects_sel_pca"> </select>
            </div>
        </div>
        <hr>

        <div class="col-lg-7">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Input Data
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="form-group">
                                <div class="col-md-12">
                                    <label>Heigth: </label>
                                </div>
                                <div class="col-md-8">
                                    <input class="form-control" type="text" value="0" id="h_pca" name="h_pca" onchange="onchange_Input_pca(this)" required>
                                </div>
                                <div class="col-md-4" id = "div_h_sel_pca">
                                    <select class="form-control" id="h_sel_pca" name="h_sel_pca"> </select>
                                </div>
                            </div> 
                            <div class="form-group">
                                <div class="col-md-12">
                                    <label>Blow-off pressure, just upstream of the valve (Recommended: 18-20): </label>
                                </div>
                                <div class="col-md-8">
                                    <input class="form-control" type="text" id="blowoffp_pca" value="18" name="blowoffp_pca" onchange="onchange_Input_pca(this)" required>
                                </div>
                                <div class="col-md-4" id = "div_bop_sel_pca">
                                    <select class="form-control" id="bop_sel_pca" name="bop_sel_pca"> </select>
                                </div>
                            </div> 
                            <div class="form-group">
                                <div class="col-md-12">
                                    <label>For standard blow-off size:</label>
                                </div>
                                <div class="col-md-8" id="div_blowoffs_sel_pca">
                                    <select class="form-control" id="blowoffs_sel_pca" name="blowoffs_sel_pca" onchange="onchange_blowoff_pca()"> </select>
                                </div>
                                <div class="col-md-4"  id="div_sb_sel_pca">
                                    <select class="form-control" id="sb_sel_pca" name="sb_sel_pca"> </select>
                                </div>
                            </div>                      
                            <div class="form-group">
                                <div class="col-md-12">
                                    <label>Blow-off coefficient [MSCF/(h x psi absolute)]:</label>
                                    <input class="form-control" type="text" id="blowoffc_pca" value="3" name="blowoffc_pca" onchange="onchange_Input_pca(this)" required>
                                </div>

                            </div>  


                            <div class="form-group">
                                <div class="col-md-12">
                                    <label>Internal diameter of the pipe section: </label>
                                </div>
                                <div class="col-md-8">
                                    <input class="form-control" type="text" value="10" id="internald_pca" name="internald_pca" onchange="onchange_Input_pca(this)" required>
                                </div>
                                <div class="col-md-4"  id="div_idp_sel_pca">
                                    <select class="form-control" id="idp_sel_pca" name="idp_sel_pca"> </select>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-md-12">
                                    <label>Length of the pipe section:</label>
                                </div>
                                <div class="col-md-8">
                                    <input class="form-control" type="text" value="10" id="lenghtp_pca" name="lenghtp_pca" onchange="onchange_Input_pca(this)" required>
                                </div>
                                <div class="col-md-4" id="div_lp_sel_pca">
                                    <select class="form-control" id="lp_sel_pca" name="lp_sel_pca" onchange="cleanOut_pca()"> </select>
                                </div>
                            </div>    

                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-lg-5">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Results
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="form-group">
                                <label>Flow rate at critical velocity [MSCFH]:</label>
                                <input type="text" id="flowr_pca" name="flowr_pca" readonly required class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Purge gas injection pressure [psig]:</label>
                                <input type="text" id="purgeg_pca" name="purgeg_pca" readonly required class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Actual volume of pipe section - Assumed filed with air before purging [MCF]:</label>
                                <input type="text" id="actualv_pca" name="actualv_pca" readonly required class="form-control">
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    Method A
                                </div>
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <form role="form">
                                                <div class="form-group">
                                                    <div class="form-group">
                                                        <label>Minumin purge time [min]:</label>
                                                        <input type="text" id="minpurgea_pca" name="minpurgea_pca" readonly required class="form-control">
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Recommended purge time [min]: </label>
                                                        <input type="text" id="recopurgea_pca" name="recopurgea_pca" readonly required class="form-control">
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Volume of gas lost - minumun time [MSCF]:</label>
                                                        <input type="text" id="volumegasma_pca" name="volumegasma_pca" readonly required class="form-control">
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Volume of gas lost - recommended time [MSCF]: </label>
                                                        <input type="text" id="volumegasra_pca" name="volumegasra_pca" readonly required class="form-control">
                                                    </div>                   
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>  
                            </div>   
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    Method B
                                </div>
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <form role="form">
                                                <div class="form-group">
                                                    <div class="form-group">
                                                        <label>Minumin purge time [min]:</label>
                                                        <input type="text" id="minpurgeb_pca" name="minpurgeb_pca" readonly required class="form-control">
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Recommended purge time [min]: </label>
                                                        <input type="text" id="recopurgeb_pca" name="recopurgeb_pca" readonly required class="form-control">
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Volume of gas lost - minumun time [MSCF]:</label>
                                                        <input type="text" id="volumegasmb_pca" name="volumegasmb_pca" readonly required class="form-control">
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Volume of gas lost - recommended time [MSCF]:</label>
                                                        <input type="text" id="volumegasrb_pca" name="volumegasrb_pca" readonly required class="form-control">
                                                    </div>                   
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>  
                            </div>                         


                            <input type="button" id="calculateBtn_pca" name="calculateBtn_pca" value="Calculate" onclick="calculate_pca()" class="btn btn-info btn-block">
                            <input type="button" id="saveBtn_pca" name="saveBtn_pca" value="Save" onclick="save_pca()" class="btn btn-success btn-block">   
                            <input type="button" id="delteBtn_pca" name="delteBtn_pca" value="Delete" onclick="delete_pca()" class="btn btn-danger btn-block">

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-12">
            <div class="col-md-3">
                <input type="button" id="cleanAllBtn_pca" name="cleanBtn_pca" value="Clean All Data" onclick="cleanAll_pca()" class="btn btn-warning btn-block">
            </div>
            <div class="col-md-3">
                <input type="button" id="cleanInputBtn_pca" name="cleanBtn_pca" value="Clean Input Data" onclick="cleanIn_pca()" class="btn btn-warning btn-block">
            </div>
            <div class="col-md-3">
                <input type="button" id="cleanOutputBtn_pca" name="cleanBtn_pca" value="Clean Output Data" onclick="cleanOut_pca()" class="btn btn-warning btn-block">
            </div>
        </div>
        <input type="hidden" id="id_pca" name="id_pca">  
        <input type="hidden" id="opt_pca" name="opt_pca">

        <script>

            $(document).ready(function () {
                $("#opt_pca").val("1");

                load_in_sel_pca();
                load_in2_sel_pca();
                load_he_sel_pca();
                load_press_sel_pca();
                load_lenght_sel_pca();
                load_blowoffs_sel_pca();

                getproyectos(<%=session.getAttribute("idusu")%>,
                        $("#proyects_sel_pca"),
                        $("#error_Dialog_pca"));
            });

            function load_history_pca() {
                var parametros = {
                    "idproyect": $("#proyects_sel_pca").val(),
                    "iduser": <% out.print(session.getAttribute("idusu"));%>,
                    "opcion": "6",
                    "nombre": "historial",
                    "from": "pca"
                };

                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    dataType: 'json',
                    async: false,
                    beforeSend: function (xhr) {
                        $("#opt_pca").val("1");
                        $("#id_pca").val("");
                        cleanAll_pca();
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
                                    html += "<td>" + data.historial[i].description_pca + "</td>";
                                    html += "<td><a href='#' onClick='load_form_pca(" + data.historial[i].id + ")'><span class='glyphicon glyphicon-plus' aria-hidden='true'></span></a></td>";
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
                        $("#div-table_pca").empty();
                        $("#div-table_pca").html(html);

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_pca"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function onchange_blowoff_pca() {
                $("#blowoffc_pca").val($("#blowoffs_sel_pca").val().split(",")[1]);
            }

            function load_blowoffs_sel_pca() {
                var parametros = {
                    "combo": "blowo",
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
                        var newHtml = "<select class='form-control' name='blowoffs_sel_pca' id= 'blowoffs_sel_pca' onchange='onchange_blowoff_pca()' >" + data;
                        $("#div_blowoffs_sel_pca").html(newHtml);

                        onchange_blowoff_pca();
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_pca"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_in_sel_pca() {
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
                        var newHtml = "<select class='form-control' name='sb_sel_pca' id= 'sb_sel_pca' >" + data;
                        $("#div_sb_sel_pca").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_pca"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            
            function load_in2_sel_pca() {
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
                        var newHtml = "<select class='form-control' name='idp_sel_pca' id= 'idp_sel_pca' >" + data;
                        $("#div_idp_sel_pca").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_pca"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            

            function load_he_sel_pca() {
                var parametros = {
                    "combo": "he",
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
                        var newHtml = "<select class='form-control' name='h_sel_pca' id= 'h_sel_pca' >" + data;
                        $("#div_h_sel_pca").html(newHtml);



                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_pca"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_lenght_sel_pca() {
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
                        var newHtml = "<select class='form-control' name='lp_sel_pca' id= 'lp_sel_pca' onchange='cleanOut_pca()'>" + data;
                        $("#div_lp_sel_pca").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_pca"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_press_sel_pca() {
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
                        var newHtml = "<select class='form-control' name='bop_sel_pca' id= 'bop_sel_pca' onchange='cleanOut_pca()'>" + data;
                        $("#div_bop_sel_pca").html(newHtml);

                        $("#bop_sel_pca").val("5,psia");
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_pca"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_form_pca(id) {

                var parametros = {
                    "id": id,
                    "opcion": "4",
                    "from": "pca"
                };

                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    dataType: 'json',
                    beforeSend: function (xhr) {
                        cleanAll_pca();
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

                            $("#proyects_sel_pca").val(data.row.id_proyect);
                            $("#opt_pca").val("2");
                            $("#id_pca").val(data.row.id);
                        } else {
                            $("#opt_pca").val("1");
                        }

                    },
                    error: function (xhr, ajaxOptions, err) {
                        $("#opt_pca").val("1");
                        show_OkDialog($("#error_Dialog_pca"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function cleanOut_pca() {
                $("#flowr_pca").val("");
                $("#purgeg_pca").val("");
                $("#actualv_pca").val("");

                $("#minpurgea_pca").val("");
                $("#recopurgea_pca").val("");
                $("#volumegasma_pca").val("");
                $("#volumegasra_pca").val("");

                $("#minpurgeb_pca").val("");
                $("#recopurgeb_pca").val("");
                $("#volumegasmb_pca").val("");
                $("#volumegasrb_pca").val("");
            }

            function cleanIn_pca() {
                $("#blowoffc_pca").val("");
                $("#internald_pca").val("");
                $("#lenghtp_pca").val("");
                $("#blowoffp_pca").val("");
                $("#h_pca").val("");
            }

            function cleanAll_pca() {
                cleanIn_pca();
                cleanOut_pca();
                $("#description_pca").val("");
            }

            function onchange_Input_pca(inp) {

                var sw = validateDecimal(inp.value);

                if (sw != true) {
                    inp.value = "";
                }
                onchange_Input_zero(inp);
                cleanOut_pca();

            }

            function calculate_pca() {

                var variables = {
                    "blowoffp_pca": $("#blowoffp_pca").val().replace(",", ""),
                    "blowoffc_pca": $("#blowoffc_pca").val().replace(",", ""),
                    "internald_pca": $("#internald_pca").val().replace(",", ""),
                    "lenghtp_pca": $("#lenghtp_pca").val().replace(",", "")
                };

                var isOk = validate(variables);

                if (isOk === false) {
                    alert("You must complete all fields");
                } else {

                    var unidades = {
                        "sb_sel_pca": $("#sb_sel_pca").val().split(",")[1],
                        "bop_sel_pca": $("#bop_sel_pca").val().split(",")[1],
                        "idp_sel_pca": $("#idp_sel_pca").val().split(",")[1],
                        "lp_sel_pca": $("#lp_sel_pca").val().split(",")[1]
                    };

                    var res = purginCalculations_Form(variables, unidades);

                    $("#flowr_pca").val(res[0]);
                    $("#purgeg_pca").val(res[1]);
                    $("#actualv_pca").val(res[2]);

                    $("#minpurgea_pca").val(res[3]);
                    $("#recopurgea_pca").val(res[4]);
                    $("#volumegasma_pca").val(res[5]);
                    $("#volumegasra_pca").val(res[6]);

                    $("#minpurgeb_pca").val(res[7]);
                    $("#recopurgeb_pca").val(res[8]);
                    $("#volumegasmb_pca").val(res[9]);
                    $("#volumegasrb_pca").val(res[10]);

                    show_OkDialog($("#calculate_Dialog_pca"), "Satisfactory process");

                }
            }

            function save_pca() {

                var parametros = {
                    "blowoffp_pca": $("#blowoffp_pca").val(),
                    "blowoffc_pca": $("#blowoffc_pca").val(),
                    "internald_pca": $("#internald_pca").val(),
                    "lenghtp_pca": $("#lenghtp_pca").val(),
                    "blowoffs_sel_pca": $("#blowoffs_sel_pca").val(),
                    "sb_sel_pca": $("#sb_sel_pca").val(),
                    "lp_sel_pca": $("#lp_sel_pca").val(),
                    "bop_sel_pca": $("#bop_sel_pca").val(),
                    "idp_sel_pca": $("#idp_sel_pca").val(),
                    "flowr_pca": $("#flowr_pca").val(),
                    "purgeg_pca": $("#purgeg_pca").val(),
                    "actualv_pca": $("#actualv_pca").val(),
                    "minpurgea_pca": $("#minpurgea_pca").val(),
                    "recopurgea_pca": $("#recopurgea_pca").val(),
                    "volumegasma_pca": $("#volumegasma_pca").val(),
                    "volumegasra_pca": $("#volumegasra_pca").val(),
                    "minpurgeb_pca": $("#minpurgeb_pca").val(),
                    "recopurgeb_pca": $("#recopurgeb_pca").val(),
                    "volumegasmb_pca": $("#volumegasmb_pca").val(),
                    "volumegasrb_pca": $("#volumegasrb_pca").val(),
                    "h_pca": $("#h_pca").val(),
                    "h_sel_pca": $("#h_sel_pca").val(),
                    "idproyect": $("#proyects_sel_pca").val(),
                    "opcion": $("#opt_pca").val(),
                    "iduser": <% out.print(session.getAttribute("idusu"));%>,
                    "id_pca": 1,
                    "description_pca": $("#description_pca").val(),
                    "from": "pca"
                };

                var isOk = validate(parametros);

                if (isOk === false) {
                    alert("You must perform the calculation and fill out the description");
                } else {

                    if ($("#opt_pca").val() === 2) {
                        parametros.id_pca = $("#id_pca").val();
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
                            $("#id_pca").val(data.id);
                            $("#opt_pca").val("2");
                            show_OkDialog($("#save_Dialog_pca"), "Satisfactory process");
                        },
                        error: function (xhr, ajaxOptions, err) {
                            alert(err);
                            show_OkDialog($("#error_Dialog_pca"), "Error");
                        },
                        complete: function () {
                            unBlock();
                        }
                    });
                }
            }

            function delete_pca() {

                //Confirmacion
                if ($("#opt_pca").val() == 2) {
                    $("#dialog-confirm_pca").dialog({
                        resizable: false,
                        height: "auto",
                        width: 400,
                        modal: true,
                        buttons: {
                            "Delete": function () {
                                deleteReg_pca();
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

            function deleteReg_pca() {
                var parametros = {
                    "id_pca": $("#id_pca").val(),
                    "opcion": 3,
                    "from": "pca",
                    "iduser": <% out.print(session.getAttribute("idusu"));%>
                };


                if ($("#opt_pca").val() == 2) {
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        dataType: 'json',
                        beforeSend: function (xhr) {
                            block("Cargando...");
                        },
                        success: function (data, status, request) {
                            cleanAll_pca();
                            $("#id_pca").val("");
                            $("#opt_pca").val("1");
                            show_OkDialog($("#save_Dialog_pca"), "Satisfactory process");
                        },
                        error: function (xhr, ajaxOptions, err) {
                            alert(err);
                            show_OkDialog($("#error_Dialog_pca"), "Error");
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

        <div id="load_Dialog_pca" title="Basic dialog" style='display:none;'>
            <p>Successfully uploaded data</p>
        </div>

        <div id="save_Dialog_pca" title="Basic dialog" style='display:none;'>
            <p>Data saved successfully</p>
        </div>

        <div id="error_Dialog_pca" title="Basic dialog" style='display:none;'>
            <p>An error has occurred in the process</p>
        </div>

        <div id="calculate_Dialog_pca" title="Basic dialog" style='display:none;'>
            <p>Calculation done successfully</p>
        </div>

        <div id="delete_Dialog_pca" title="Basic dialog" style='display:none;'>
            <p>Calculation done successfully</p>
        </div>

        <div id="dialog-confirm_pca" title="Delete record" style='display:none;'>
            <p><span class="ui-icon ui-icon-alert" style="float:left; margin:12px 12px 20px 0;"></span>
            <p>Calculation done successfully</p>                
        </div>
    </body>
</html>