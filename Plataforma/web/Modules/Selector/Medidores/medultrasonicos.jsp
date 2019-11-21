<%-- 
    Document   : index
    Created on : 03-mar-2016, 17:02:38
    Author     : kata__000
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>  
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>::PROMIGAS::</title>  
        <script src="https://cdn.plot.ly/plotly-latest.min.js"></script>
        <script src="../../../js/jquery.js" type="text/JavaScript" ></script>
        <script src="../../../js/jquery-ui/jquery-ui.js"></script>
        <script src="../../../js/jquery-ui/external/blockui/jquery-blockui.js"></script>
        <script src="../../../js/functions/formulasK.js"></script>
        <script src="../../../js/functions/formulasM.js"></script>
        <script src="../../../js/functions/functions.js"></script>
        <script src="../../../js/jspdf/jspdf.min.js" type="text/JavaScript" > </script>
        <script src="../../../js/jspdf/autotable.min.js" type="text/JavaScript" > </script>
        <script src="../../../bower_components/morrisjs/morris.js"></script>
        <script src="../../../dist/js/sb-admin-2.js"></script>
        <script src="../../../bower_components/metisMenu/dist/metisMenu.min.js"></script>
        <script src="../../../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
        <script src="../../../bower_components/raphael/raphael-min.js"></script>
        <script src="../../../js/dataTables/jquery.dataTables.js" type="text/javascript"></script>
        <link rel="stylesheet" href="../../../js/jquery-ui/jquery-ui.css">
        <link rel="stylesheet" href="../../../bower_components/morrisjs/morris.css">
        <link rel="stylesheet" href="../../../bower_components/bootstrap/dist/css/bootstrap.min.css" />
        <link rel="stylesheet" href="../../../bower_components/metisMenu/dist/metisMenu.min.css" />
        <link rel="stylesheet" href="../../../dist/css/timeline.css" >
        <link rel="stylesheet" href="../../../dist/css/sb-admin-2.css" >
        <link rel="stylesheet" href="../../../bower_components/font-awesome/css/font-awesome.min.css" type="text/css">
        <link rel="stylesheet" href="../../../css/dataTables/jquery.dataTables.min.css" type="text/css">
        <link rel="stylesheet" href="../../../css/user-profiles-list-basic.css">
        <link rel="stylesheet" href="../../../css/menu.css">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.13/css/jquery.dataTables.min.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/select/1.2.1/css/select.dataTables.min.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.2.4/css/buttons.dataTables.min.css">
    </head>

    <body>
        <div id="wrapper">
            <jsp:include page="../../../allmenu.jsp"/>
            <div id="page-wrapper">
                <div id="content">
                    <div class="row">
                        <div class="col-lg-9">
                            <h2>This module validates the capacity of the meters to be installed in natural gas transport or distribution applications: Ultrasonic Meters</h2>
                        </div>
                        <div class="col-lg-3"> 

                            <!-- Button trigger modal -->
                            <p>
                                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_meu()">
                                    Record
                                </button>
                            </p>

                            <!-- MODAL -->
                            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                            <h4 class="modal-title" id="myModalLabel">Record</h4>
                                        </div>
                                        <div class="modal-body">
                                            <div id="div-table_meu"></div>
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
                            <input  class="form-control" type="text" id="description_meu" name="description_meu"><br>
                            Projects:
                            <select class="form-control" id="proyects_sel_meu" name="proyects_sel_meu"> </select>

                        </div>
                    </div>
                    <hr>

                    <div class="row">
                        <div class="col-lg-6">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    Input
                                </div>
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-lg-12">

                                            <div class="form-group col-lg-12">
                                                <div>
                                                    <label>Trademark:</label>
                                                </div>
                                                <div id = "div_ma_sel_meu">
                                                    <input class="form-control" type="text" id="ma_sel_meu" name="ma_sel_meu" onchange="onchange_Input_meu(this)" required value="Segun vendor list.">
                                                </div>
                                            </div>
                                            <div class="form-group col-lg-12">
                                                <div>
                                                    <label>Serie:</label>
                                                </div>
                                                <div id = "div_se_sel_meu">
                                                    <select class="form-control" id="se_sel_meu" name="se_sel_meu"> </select>
                                                </div>
                                            </div>
                                            <div class="form-group col-lg-12">
                                                <div>
                                                    <label>Model:</label>
                                                </div>
                                                <div id = "div_mo_sel_meu">
                                                    <select class="form-control" id="mo_sel_meu" name="mo_sel_meu"> </select>
                                                </div>
                                            </div>

                                            <div class="form-group col-lg-12">
                                                <div>
                                                    <label id="lbl_capacity_meu">Capacity:</label>
                                                </div>
                                                <input class="form-control" type="text" id="capa_meu" name="capa_meu" onchange="onchange_Input_meu(this)" disabled>
                                            </div>


                                            <div class="form-group">
                                                <div class="col-md-12">
                                                    <label>Operating Pressure:</label>
                                                </div>
                                                <div class="col-md-8">
                                                    <input value="80"  class="form-control" type="text" id="presionop_meu" name="presionop_meu" onchange="onchange_Input_meu(this)" required>
                                                </div>
                                                <div class="col-md-4" id = "div_po_sel_meu">
                                                    <select class="form-control" id="po_sel_meu" name="po_sel_meu" onchange="cleanOut_meu()"> </select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-md-12">
                                                    <label>Base Pressure:</label> 
                                                </div>
                                                <div class="col-md-8">
                                                    <input  class="form-control" type="text" id="preisonba_meu" name="preisonba_meu" value="14.65" onchange="onchange_Input_meu(this)" required><br>
                                                </div>
                                                <div class="col-md-4" id="div_pb_sel_meu">
                                                    <select class="form-control" id="pb_sel_meu" name="pb_sel_meu" onchange="cleanOut_meu()"> </select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-md-12">
                                                    <label>Minimum Flow of Operation:</label>
                                                </div>

                                                <div class="col-md-8">
                                                    <input value="37.5" class="form-control" type="text" id="flujomin_meu" name="flujomin_meu" onchange="onchange_Input_meu(this)" required>
                                                </div>
                                                <div class="col-md-4" id="div_fmin_sel_meu">
                                                    <select class="form-control" id="fmin_sel_meu" name="fmin_sel_meu" disabled></select> 
                                                </div>

                                            </div>
                                            <div class="form-group">
                                                <div class="col-md-12">
                                                    <label>Maximum Flow of Operation:</label>
                                                </div>
                                                <div class="col-md-8">
                                                    <input value="188.8" class="form-control" type="text" id="flujomax_meu" name="flujomax_meu" onchange="onchange_Input_meu(this)" required>
                                                </div>
                                                <div class="col-md-4" id="div_fmax_sel_meu">
                                                    <select class="form-control" id="fmax_sel_meu" name="fmax_sel_meu"></select> 
                                                </div>

                                            </div>

                                            <div class="form-group">
                                                <div class="col-md-12">
                                                    <label>Temperature of Operation</label>
                                                </div>
                                                <div class="col-md-8">
                                                    <input value="85" class="form-control" type="text" id="temp_meu" name="temp_meu" onchange="onchange_Input_meu(this)" required>
                                                </div>
                                                <div class="col-md-4" id="div_temp_sel_meu">
                                                    <select class="form-control" id="temp_sel_meu" name="temp_sel_meu"></select> 
                                                </div>

                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-6">

                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    Results
                                </div>
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="form-group">
                                                <label>Optimum Model:</label>
                                                <input type="text" id="modeloop_meu" name="modeloop_meu" readonly required class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label>% Work with maximum capacity (Optimum):</label>
                                                <input type="text" id="trabajoop_meu" name="trabajoop_meu" readonly required class="form-control">
                                            </div> 
                                            <div class="form-group">
                                                <label id="lbl_capa_meu">Maximum Capacity of Measurement (Optimum):</label>            
                                                <input type="text" id="maxcapaop_meu" name="maxcapaop_meu" readonly required class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label>Evaluated Model</label>
                                                <input type="text" id="modeloev_meu" name="modeloev_meu" readonly required class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label>% Work with maximum capacity (Evaluated):</label>
                                                <input type="text" id="trabajoev_meu" name="trabajoev_meu" readonly required class="form-control">
                                            </div> 
                                            <div class="form-group">
                                                <label id="lbl_mcapae_meu">Maximum Capacity of Measurement(Evaluated):</label>            
                                                <input type="text" id="maxcapaev_meu" name="maxcapaev_meu" readonly required class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label>% Work with minimum conditions of operation (Evaluated):</label>
                                                <input type="text" id="trabajocam_meu" name="trabajocam_meu" readonly required class="form-control">
                                            </div>                      

                                            <input type="button" id="calculateBtn_meu" name="calculateBtn_meu" value="Calculate" onclick="calculate_meu()" class="btn btn-info btn-block">
                                            <input type="button" id="saveBtn_meu" name="saveBtn_meu" value="Save" onclick="save_meu()" class="btn btn-success btn-block">   
                                            <input type="button" id="delteBtn_meu" name="delteBtn_meu" value="Delete" onclick="delete_meu()" class="btn btn-danger btn-block">
                                            <input type="button" id="datasheetgen_meu" name="datasheetgen_meu" value="Generate DataSheet" onclick="load_datasheet_meu()" class="btn btn-success btn-block">   


                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                    <div class="row">
                        <div class="col-lg-12">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    Plot
                                </div>
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div id="graficaLineal_meu"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="col-md-3">
                                <input type="button" id="cleanAllBtn_meu" name="cleanBtn_meu" value="Clean All" onclick="cleanAll_meu()" class="btn btn-warning btn-block">
                            </div>
                            <div class="col-md-3">
                                <input type="button" id="cleanInputBtn_meu" name="cleanBtn_meu" value="Clean Input Data" onclick="cleanIn_meu()" class="btn btn-warning btn-block">
                            </div>
                            <div class="col-md-3">
                                <input type="button" id="cleanOutputBtn_meu" name="cleanBtn_meu" value="Clean Output Data" onclick="cleanOut_meu()" class="btn btn-warning btn-block">
                            </div>

                        </div>
                        <input type="hidden" id="id_meu" name="id_meu">  
                        <input type="hidden" id="opt_meu" name="opt_meu">
                        <input type="hidden" id="capaopt_meu" name="capaopt_meu">
                    </div>
                    <div id="load_Dialog_meu" title="Basic dialog" style='display:none;'>
                        <p>Successfully uploaded data</p>
                    </div>

                    <div id="save_Dialog_meu" title="Basic dialog" style='display:none;'>
                        <p>Data saved successfully</p>
                    </div>

                    <div id="error_Dialog_meu" title="Basic dialog" style='display:none;'>
                        <p>An error has occurred in the process</p>
                    </div>

                    <div id="calculate_Dialog_meu" title="Basic dialog" style='display:none;'>
                        <p>Calculation done successfully</p>
                    </div>

                    <div id="delete_Dialog_meu" title="Basic dialog" style='display:none;'>
                        <p>Successfully deleted record</p>
                    </div>

                    <div id="dialog-confirm_meu" title="Delete record" style='display:none;'>
                        <p><span class="ui-icon ui-icon-alert" style="float:left; margin:12px 12px 20px 0;"></span>
                            Are you sure you want to permanently delete this record?
                        </p>
                    </div>
                </div>
            </div>
        </div>

        <script>

            $(document).ready(function () {
                $("#opt_meu").val("1");
                load_serie_meu();
                load_fluE_sel_meu();
                load_press_sel_meu();
                load_temp_sel_meu();

                document.getElementById("fmin_sel_meu").disabled = true;
                document.getElementById("fmax_sel_meu").disabled = true;

                getproyectos(<%=session.getAttribute("idusu")%>,
                        $("#proyects_sel_meu"),
                        $("#error_Dialog_meu"));
            });



            function load_datasheet_meu() {

                var flujmin = $("#flujomin_meu").val() + " " + $("#fmin_sel_meu option:selected").text();
                var flujmax = $("#flujomax_meu").val() + " " + $("#fmax_sel_meu option:selected").text();
                var model = $("#ma_sel_meu").val() + ": " + $("#se_sel_meu option:selected").text() + ", Model " + $("#mo_sel_meu option:selected").text();
                var outer = "";
                var ansi = "";

                var pres = 0;

                if ($("#po_sel_meu").val().split(",")[1] === "psig") {
                    pres = Number($("#presionop_meu").val().replace(",",""));
                } else {
                    pres = Number($("#presionop_meu").val().replace(",","")) * 14.504;
                }


                if (pres < 275) {
                    outer = "Flanged ANSI 150 RF";
                    ansi = "ANSI 150";
                } else if (pres < 740) {
                    outer = "Flanged ANSI 300 RF";
                    ansi = "ANSI 300";
                } else {
                    outer = "Flanged ANSI 600 RF";
                    ansi = "ANSI 600";
                }

                var parametros = {
                    "opcion": "102",
                    "linep": $("#presionop_meu").val() + " " + $("#po_sel_meu option:selected").text(),
                    "type": "Ultrasonico",
                    "flowr": flujmin + " to " + flujmax,
                    "size": $("#mo_sel_meu").val().split(",")[2] + " Inch", //=+CONCATENAR(ROMET!X25;"  ";ROMET!Y25)
                    "outere": outer,
                    "ansic": ansi,
                    "model": model,
                    "temp": $("#temp_meu").val() + " " + $("#temp_sel_meu option:selected").text(),
                    "iduser": <%=session.getAttribute("idusu")%>,
                    "proyecto": $("#proyects_sel_meu option:selected").text(),
                    "from": "med"

                };
                $.ajax({
                    type: "POST",
                    url: "../../manager.jsp",
                    data: parametros,
                    async: false,
                    dataType: "json",
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {

                        alert("Successfully generated file");
                        var file = data.row.file;
                        var path = data.row.path;
                        //window.open(data, "nuevo", "");
                        window.location = "/Plataforma/bajar.jsp?filename=" + file + "&path=" + path;

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_meu"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });

            }



            function setGrafica_meu() {
                var caprefop = parseFloat($("#capaopt_meu").val().replace(",", ""));
                var caprefev = parseFloat($("#mo_sel_meu").val().split(",")[1]);

                var presb = parseFloat($("#preisonba_meu").val().replace(",", ""));
                var aux = ($("#pb_sel_meu").val().split(",")[1] == "psig" ? 1 : 14.504); //1 si es psi, 14.504 si es bar 
                var evaluado = [];
                var enope = [];
                var optimo = [];
                var data = [];
                var eve = Number($("#presionop_meu").val().replace(",", ""));

                var j = 0;

                var fin = eve + 100;
                var paso = 10;
                var inicio = 0;
                var valX = [];

                while (inicio <= fin) {
                    valX[j] = inicio;
                    evaluado[j] = (inicio + presb * aux) / (presb * aux) * caprefev;
                    optimo[j] = (inicio + presb * aux) / (presb * aux) * caprefop;
                    enope[j] = parseFloat($("#flujomax_meu").val().replace(",", ""));

                    j += 1;
                    inicio += paso;
                }

                $("#graficaLineal_meu").html("");
                
                var max = Math.max(evaluado[evaluado.length - 1], optimo[optimo.length - 1]);
                
                var pOpe = {
                    x: [parseFloat($("#presionop_meu").val().replace(",", "")), parseFloat($("#presionop_meu").val().replace(",", ""))],
                    y: [0, max],
                    mode: 'lines',
                    name: 'Evaluated Point'
                };

                var eval = {
                    x: valX,
                    y: evaluado,
                    mode: 'lines',
                    name: 'Evaluated'
                };
                
                var opt = {
                    x: valX,
                    y: optimo,
                    mode: 'lines',
                    name: 'Optimun'
                };

                var data = [eval, opt, pOpe];
                var layout = {
                    title: 'Capacity Ultrasonic Meters',
                    xaxis: {
                        title: 'Capacity [SCFH]'
                    },
                    yaxis: {
                        title: 'Operating Pressure [PSIG]'
                    }
                };
                Plotly.newPlot('graficaLineal_meu', data, layout);

            }


            function load_temp_sel_meu() {
                var parametros = {
                    "combo": "temp",
                    "opcion": "5"
                };
                $.ajax({
                    type: "POST",
                    url: "../../manager.jsp",
                    data: parametros,
                    async: false,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        var newHtml = '<select class="form-control" name="temp_sel_meu" id="temp_sel_meu" onchange="cleanOut_meu()">' + data;
                        $("#div_temp_sel_meu").html(newHtml);

                        var vecObj = [$("#temp_sel_meu")];
                        onchageGeneral(vecObj, "3,F");


                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_ah"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_serie_meu() {
                var parametros = {
                    "combo": 'serie',
                    "opcion": "5",
                    "from": "med",
                    "type": "mer"
                };
                $.ajax({
                    type: "POST",
                    url: "../../manager.jsp",
                    data: parametros,
                    async: false,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        var newHtml = "<select class=\"form-control\" name=\"se_sel_meu\" id= \"se_sel_meu\" onchange=\"onchange_serie_meu(true)\">" + data;
                        $("#div_se_sel_meu").html(newHtml);

                        if ($("#se_sel_meu").val().split(",")[1] == "imperial") {
                            $("#fmin_sel_meu").val("1284,SCFH");
                            $("#fmax_sel_meu").val("1284,SCFH");
                        } else {
                            $("#fmin_sel_meu").val("1285,SCMH");
                            $("#fmax_sel_meu").val("1285,SCMH");
                        }

                        onchange_serie_meu(false);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_meu"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function onchange_serie_meu(swclear) {

                if (swclear) {
                    cleanOut_meu();
                }

                var op = $("#se_sel_meu").val().split(",")[1];

                if (op === "imperial") {
                    $("#fmin_sel_meu").val("1284,SCFH");
                    $("#fmax_sel_meu").val("1284,SCFH");

                    $("#lbl_capa_meu").text("Maximum Capacity of Measurement (Optimum) [SCFH]: ");
                    $("#lbl_mcapae_meu").text("Maximum Capacity of Measurement(Evaluated) [SCFH]: ");
                    $("#lbl_capacity_meu").text("Capacity [SCFH]: ");
                   
                } else {
                    $("#fmin_sel_meu").val("1285,SCMH");
                    $("#fmax_sel_meu").val("1285,SCMH");

                    $("#lbl_capa_meu").text("Maximum Capacity of Measurement (Optimum) [SCMH]: ");
                    $("#lbl_mcapae_meu").text("Maximum Capacity of Measurement(Evaluated) [SCMH]: ");
                    
                    $("#lbl_capacity_meu").text("Capacity [SCMH]: ");
                }

                var parametros = {
                    "combo": "modelo",
                    "serie": $("#se_sel_meu").val().split(",")[1],
                    "type": "ultrasonico",
                    "opcion": "5"
                };
                $.ajax({
                    type: "POST",
                    url: "../../manager.jsp",
                    data: parametros,
                    async: false,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        var newHtml = "<select class=\"form-control\" name=\"mo_sel_meu\" id=\"mo_sel_meu\" onchange=\"onchange_mod_meu()\">" + data;
                        $("#div_mo_sel_meu").html(newHtml);

                        var opc = $("#mo_sel_meu").val().split(",")[1];
                        $("#capa_meu").val(opc);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_meu"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function onchange_mod_meu()
            {
                cleanOut_meu();
                var opc = $("#mo_sel_meu").val().split(",")[1];
                $("#capa_meu").val(opc);
            }

            function load_history_meu() {
                var parametros = {
                    "idproyect": $("#proyects_sel_meu").val(),
                    "iduser": <% out.print(session.getAttribute("idusu"));%>,
                    "type": "ultrasonico",
                    "opcion": "6",
                    "nombre": "historial",
                    "from": "med"
                };

                $.ajax({
                    type: "POST",
                    url: "../../manager.jsp",
                    data: parametros,
                    dataType: 'json',
                    async: false,
                    beforeSend: function (xhr) {
                        $("#opt_meu").val("1");
                        $("#id_meu").val("");
                        cleanAll_meu();
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
                                    html += "<td>" + data.historial[i].description_med + "</td>";
                                    html += "<td><a href='#' onClick=\"load_form_meu(" + data.historial[i].id + ")\"><span class='glyphicon glyphicon-plus' aria-hidden='true'></span></a></td>";
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
                        $("#div-table_meu").empty();
                        $("#div-table_meu").html(html);

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_meu"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_fluE_sel_meu() {
                var parametros = {
                    "combo": "flusel",
                    "opcion": "5",
                    "from": "med"
                };
                $.ajax({
                    type: "POST",
                    url: "../../manager.jsp",
                    data: parametros,
                    async: false,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        var newHtml = "<select class=\"form-control\" name=\"fmin_sel_meu\" id= \"fmin_sel_meu\" onchange=\"cleanOut_meu()\">" + data;
                        $("#div_fmin_sel_meu").html(newHtml);

                        newHtml = "<select class=\"form-control\" name=\"fmax_sel_meu\" id= \"fmax_sel_meu\" onchange=\"cleanOut_meu()\">" + data;
                        $("#div_fmax_sel_meu").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_meu"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_press_sel_meu() {
                var parametros = {
                    "combo": "presel",
                    "opcion": "5",
                    "from": "med"
                };
                $.ajax({
                    type: "POST",
                    url: "../../manager.jsp",
                    data: parametros,
                    async: false,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        var newHtml = "<select class=\"form-control\" name=\"po_sel_meu\" id= \"po_sel_meu\" onchange=\"cleanOut_meu()\">" + data;
                        $("#div_po_sel_meu").html(newHtml);

                        newHtml = "<select class=\"form-control\" name=\"pb_sel_meu\" id= \"pb_sel_meu\" onchange=\"cleanOut_meu()\">" + data;
                        $("#div_pb_sel_meu").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_meu"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_form_meu(id) {

                var parametros = {
                    "id": id,
                    "opcion": "4",
                    "from": "med"
                };

                $.ajax({
                    type: "POST",
                    url: "../../manager.jsp",
                    data: parametros,
                    dataType: 'json',
                    beforeSend: function (xhr) {
                        cleanAll_meu();
                        block("Cargado datos...");
                    },
                    success: function (data, status, request) {
                        if (data != null)
                        {

                            var tags = Object.keys(data.row);
                            for (var i = 0; i < tags.length; i++) {

                                if (tags[i].substring(tags[i].length - 4, tags[i].length) === "_med") {
                                    var newt = tags[i].substring(0, tags[i].length - 3) + "meu";
                                    $("#" + newt).val(data.row[tags[i]]);
                                } else {
                                    $("#" + tags[i]).val(data.row[tags[i]]);
                                }


                            }

                            onchange_serie_meu(false);
                            $("#mo_sel_meu").val(data.row["mo_sel_med"]);
                            $("#proyects_sel_meu").val(data.row["id_proyect"]);

                            $("#opt_meu").val("2");
                            $("#id_meu").val(data.row.id);
                        } else {
                            $("#opt_meu").val("1");
                        }

                        setGrafica_meu();
                    },
                    error: function (xhr, ajaxOptions, err) {
                        $("#opt_meu").val("1");
                        show_OkDialog($("#error_Dialog_meu"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function cleanOut_meu() {
                $("#modeloop_meu").val("");
                $("#maxcapaop_meu").val("");
                $("#trabajoop_meu").val("");
                $("#modeloev_meu").val("");
                $("#maxcapaev_meu").val("");
                $("#trabajoev_meu").val("");
                $("#trabajocam_meu").val("");
                $("#graficaLineal_meu").html("");
            }

            function cleanIn_meu() {
                $("#ma_sel_meu").val("");
                $("#presionop_meu").val("");
                $("#preisonba_meu").val("");
                $("#flujomin_meu").val("");
                $("#flujomax_meu").val("");
            }

            function cleanAll_meu() {
                cleanIn_meu();
                cleanOut_meu();
                $("#description_meu").val("");
            }

            function onchange_Input_meu(inp) {

                var sw = validateDecimal(inp.value);

                if (sw != true) {
                    inp.value = "";
                }
                onchange_Input_zero(inp);
                cleanOut_meu();

            }

            function calculate_meu() {

                var medidores = '';
                $("#mo_sel_meu option").each(function () {
                    if ($(this).val() != "") {
                        medidores += $(this).val() + '@';
                    }
                });

                var variables = {
                    "ma_sel": $("#ma_sel_meu").val(),
                    "se_sel": $("#se_sel_meu").val(),
                    "mo_sel": $("#mo_sel_meu").val(),
                    "presionop": $("#presionop_meu").val(),
                    "preisonba": $("#preisonba_meu").val(),
                    "flujomin": $("#flujomin_meu").val(),
                    "flujomax": $("#flujomax_meu").val(),
                    "medidores": medidores
                };

                var uni = {
                    "po_sel": $("#po_sel_meu").val(),
                    "pb_sel": $("#pb_sel_meu").val()
                };

                var isOk = validate(variables);

                if (isOk === false) {
                    alert("You must complete all fields");
                } else {

                    var res = capacidadMedidores_Form(variables, uni);
                    $("#modeloop_meu").val(res[0]);
                    $("#trabajoop_meu").val(res[1]);
                    $("#maxcapaop_meu").val(res[2]);
                    $("#modeloev_meu").val(res[3]);
                    $("#trabajoev_meu").val(res[4]);
                    $("#maxcapaev_meu").val(res[5]);
                    $("#trabajocam_meu").val(res[6]);
                    $("#capaopt_meu").val(res[7]);

                    setGrafica_meu();
                    show_OkDialog($("#calculate_Dialog_meu"), "Satisfactory process");

                }
            }

            function save_meu() {

                var parametros = {
                    "ma_sel_meu": $("#ma_sel_meu").val(),
                    "se_sel_meu": $("#se_sel_meu").val(),
                    "mo_sel_meu": $("#mo_sel_meu").val(),
                    "presionop_meu": $("#presionop_meu").val(),
                    "preisonba_meu": $("#preisonba_meu").val(),
                    "flujomin_meu": $("#flujomin_meu").val(),
                    "flujomax_meu": $("#flujomax_meu").val(),
                    "po_sel_meu": $("#po_sel_meu").val(),
                    "pb_sel_meu": $("#pb_sel_meu").val(),
                    "fmin_sel_meu": $("#fmin_sel_meu").val(),
                    "fmax_sel_meu": $("#fmax_sel_meu").val(),
                    "modeloop_meu": $("#modeloop_meu").val(),
                    "trabajoop_meu": $("#trabajoop_meu").val(),
                    "maxcapaop_meu": $("#maxcapaop_meu").val(),
                    "modeloev_meu": $("#modeloev_meu").val(),
                    "trabajoev_meu": $("#trabajoev_meu").val(),
                    "maxcapaev_meu": $("#maxcapaev_meu").val(),
                    "trabajocam_meu": $("#trabajocam_meu").val(),
                    "capaopt_meu": $("#capaopt_meu").val(),
                    "idproyect": $("#proyects_sel_meu").val(),
                    "opcion": $("#opt_meu").val(),
                    "iduser": <%=session.getAttribute("idusu")%>,
                    "id_med": 1,
                    "description_meu": $("#description_meu").val(),
                    "type": "ultrasonico",
                    "from": "med"
                };

                var isOk = validate(parametros);

                if (isOk === false) {
                    alert("You must perform the calculation and fill out the description");
                } else {

                    if ($("#opt_meu").val() == 2) {
                        parametros.id_med = $("#id_meu").val();
                    }

                    $.ajax({
                        type: "POST",
                        url: "../../manager.jsp",
                        data: parametros,
                        dataType: 'json',
                        beforeSend: function (xhr) {
                            block("Cargando...");
                        },
                        success: function (data, status, request) {
                            $("#id_meu").val(data.row.id);
                            $("#opt_meu").val("2");
                            show_OkDialog($("#save_Dialog_meu"), "Satisfactory process");
                        },
                        error: function (xhr, ajaxOptions, err) {
                            alert(err);
                            show_OkDialog($("#error_Dialog_meu"), "Error");
                        },
                        complete: function () {
                            unBlock();
                        }
                    });
                }
            }

            function delete_meu() {
            alert("here");
               

                //Confirmacion
                if ($("#opt_meu").val() == 2) {
                    alert("here");
                    $("#dialog-confirm_meu").dialog({
                        resizable: false,
                        height: "auto",
                        width: 400,
                        modal: true,
                        buttons: {
                            "Delete": function () {
                                deleteReg_meu();
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

            function deleteReg_meu() {
                 var parametros = {
                    "id_med": $("#id_meu").val(),
                    "iduser": <%=session.getAttribute("idusu")%>,
                    "opcion": 3,
                    "from": "med"
                };


                if ($("#opt_meu").val() == 2) {
                    $.ajax({
                        type: "POST",
                        url: "../../manager.jsp",
                        data: parametros,
                        dataType: 'json',
                        beforeSend: function (xhr) {
                            block("Cargando...");
                        },
                        success: function (data, status, request) {
                            cleanAll_meu();
                            $("#id_meu").val("");
                            $("#opt_meu").val("1");
                            show_OkDialog($("#delete_Dialog_meu"), "Satisfactory process");
                        },
                        error: function (xhr, ajaxOptions, err) {
                            alert(err);
                            show_OkDialog($("#error_Dialog_meu"), "Error");
                        },
                        complete: function () {
                            unBlock();
                        }
                    });

                } else {
                    alert("You must load a log to be able to delete it");
                }
            }


        </script>

    </body>
</html>