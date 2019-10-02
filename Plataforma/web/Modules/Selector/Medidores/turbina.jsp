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
                            <h2>This module validates the capacity of the meters to be installed in natural gas transport or distribution applications: Turbine Type Meters</h2>
                        </div>
                        <div class="col-lg-3"> 

                            <!-- Button trigger modal -->
                            <p>
                                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_met()">
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
                                            <div id="div-table_met"></div>
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
                            <input  class="form-control" type="text" id="description_met" name="description_met"><br>
                            Projects:
                            <select class="form-control" id="proyects_sel_met" name="proyects_sel_met"> </select>

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
                                            <div id = "div_ma_sel_met">
                                                <input class="form-control" type="text" id="ma_sel_met" name="ma_sel_met" onchange="onchange_Input_met(this)" required value="Segun vendor list.">
                                            </div>
                                        </div>
                                        <div class="form-group col-lg-12">
                                            <div>
                                                <label>Serie:</label>
                                            </div>
                                            <div id = "div_se_sel_met">
                                                <select class="form-control" id="se_sel_met" name="se_sel_met"> </select>
                                            </div>
                                        </div>
                                        <div class="form-group col-lg-12">
                                            <div>
                                                <label>Model:</label>
                                            </div>
                                            <div id = "div_mo_sel_met">
                                                <select class="form-control" id="mo_sel_met" name="mo_sel_met"> </select>
                                            </div>
                                        </div>
                                        <div class="form-group col-lg-12">
                                            <div>
                                                <label id="lbl_capacity_met">Capacity:</label>
                                            </div>
                                            <input class="form-control" type="text" id="capa_met" name="capa_met" onchange="onchange_Input_met(this)" disabled>
                                        </div>


                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <label>Operating Pressure:</label>
                                            </div>
                                            <div class="col-md-8">
                                                <input value="80"  class="form-control" type="text" id="presionop_met" name="presionop_met" onchange="onchange_Input_met(this)" required>
                                            </div>
                                            <div class="col-md-4" id = "div_po_sel_met">
                                                <select class="form-control" id="po_sel_met" name="po_sel_met" onchange="cleanOut_met()"> </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <label>Base Pressure:</label> 
                                            </div>
                                            <div class="col-md-8">
                                                <input  class="form-control" type="text" id="preisonba_met" name="preisonba_met" value="14.65" onchange="onchange_Input_met(this)" required><br>
                                            </div>
                                            <div class="col-md-4" id="div_pb_sel_met">
                                                <select class="form-control" id="pb_sel_met" name="pb_sel_met" onchange="cleanOut_met()"> </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <label>Minimum Flow of Operation:</label>
                                            </div>

                                            <div class="col-md-8">
                                                <input value="37.5" class="form-control" type="text" id="flujomin_met" name="flujomin_met" onchange="onchange_Input_met(this)" required>
                                            </div>
                                            <div class="col-md-4" id="div_fmin_sel_met">
                                                <select class="form-control" id="fmin_sel_met" name="fmin_sel_met" disabled></select> 
                                            </div>

                                        </div>
                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <label>Maximum Flow of Operation:</label>
                                            </div>
                                            <div class="col-md-8">
                                                <input value="188.8" class="form-control" type="text" id="flujomax_met" name="flujomax_met" onchange="onchange_Input_met(this)" required>
                                            </div>
                                            <div class="col-md-4" id="div_fmax_sel_met">
                                                <select class="form-control" id="fmax_sel_met" name="fmax_sel_met"></select> 
                                            </div>

                                        </div>

                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <label>Temperature of Operation</label>
                                            </div>
                                            <div class="col-md-8">
                                                <input value="85" class="form-control" type="text" id="temp_met" name="temp_met" onchange="onchange_Input_met(this)" required>
                                            </div>
                                            <div class="col-md-4" id="div_temp_sel_met">
                                                <select class="form-control" id="temp_sel_met" name="temp_sel_met"></select> 
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
                                            <input type="text" id="modeloop_met" name="modeloop_met" readonly required class="form-control">
                                        </div>
                                        <div class="form-group">
                                            <label>% Work with maximum capacity (Optimum):</label>
                                            <input type="text" id="trabajoop_met" name="trabajoop_met" readonly required class="form-control">
                                        </div> 
                                        <div class="form-group">
                                            <label id="lbl_capa_met" >Maximum Capacity of Measurement (Optimum)</label>            
                                            <input type="text" id="maxcapaop_met" name="maxcapaop_met" readonly required class="form-control">
                                        </div>
                                        <div class="form-group">
                                            <label>Evaluated Model</label>
                                            <input type="text" id="modeloev_met" name="modeloev_met" readonly required class="form-control">
                                        </div>
                                        <div class="form-group">
                                            <label>% Work with maximum capacity (Evaluated):</label>
                                            <input type="text" id="trabajoev_met" name="trabajoev_met" readonly required class="form-control">
                                        </div> 
                                        <div class="form-group">
                                            <label id="lbl_mcapae_met">Maximum Capacity of Measurement(Evaluated):</label>            
                                            <input type="text" id="maxcapaev_met" name="maxcapaev_met" readonly required class="form-control">
                                        </div>
                                        <div class="form-group">
                                            <label>% Work with minimum conditions of operation (Evaluated):</label>
                                            <input type="text" id="trabajocam_met" name="trabajocam_met" readonly required class="form-control">
                                        </div>                      

                                        <input type="button" id="calculateBtn_met" name="calculateBtn_met" value="Calculate" onclick="calculate_met()" class="btn btn-info btn-block">
                                        <input type="button" id="saveBtn_met" name="saveBtn_met" value="Save" onclick="save_met()" class="btn btn-success btn-block">   
                                        <input type="button" id="delteBtn_met" name="delteBtn_met" value="Delete" onclick="delete_met()" class="btn btn-danger btn-block">
                                        <input type="button" id="datasheetgen_met" name="datasheetgen_met" value="Generate DataSheet" onclick="load_datasheet_met()" class="btn btn-success btn-block">   


                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Plot
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div id="graficaLineal_met"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-lg-12">
                        <div class="col-md-3">
                            <input type="button" id="cleanAllBtn_met" name="cleanBtn_met" value="Clean All" onclick="cleanAll_met()" class="btn btn-warning btn-block">
                        </div>
                        <div class="col-md-3">
                            <input type="button" id="cleanInputBtn_met" name="cleanBtn_met" value="Clean Input Data" onclick="cleanIn_met()" class="btn btn-warning btn-block">
                        </div>
                        <div class="col-md-3">
                            <input type="button" id="cleanOutputBtn_met" name="cleanBtn_met" value="Clean Output Data" onclick="cleanOut_met()" class="btn btn-warning btn-block">
                        </div>

                    </div>
                    </div>
                    <div id="load_Dialog_met" title="Basic dialog" style='display:none;'>
                        <p>Successfully uploaded data</p>
                    </div>

                    <div id="save_Dialog_met" title="Basic dialog" style='display:none;'>
                        <p>Data saved successfully</p>
                    </div>

                    <div id="error_Dialog_met" title="Basic dialog" style='display:none;'>
                        <p>An error has occurred in the process</p>
                    </div>

                    <div id="calculate_Dialog_met" title="Basic dialog" style='display:none;'>
                        <p>Calculation done successfully</p>
                    </div>

                    <div id="delete_Dialog_met" title="Basic dialog" style='display:none;'>
                        <p>Successfully deleted record</p>
                    </div>

                    <div id="dialog-confirm_met" title="Delete record" style='display:none;'>
                        <p><span class="ui-icon ui-icon-alert" style="float:left; margin:12px 12px 20px 0;"></span>
                            Are you sure you want to permanently delete this record?
                        </p>
                    </div>
                    <input type="hidden" id="id_met" name="id_met">  
                    <input type="hidden" id="opt_met" name="opt_met">
                    <input type="hidden" id="capaopt_met" name="capaopt_met">
                </div>
            </div>
        </div>

        <script>

            $(document).ready(function () {
                $("#opt_met").val("1");
                load_serie_met();
                load_fluE_sel_met();
                load_press_sel_met();
                load_temp_sel_met();

                document.getElementById("fmin_sel_met").disabled = true;
                document.getElementById("fmax_sel_met").disabled = true;

                getproyectos(<%=session.getAttribute("idusu")%>,
                        $("#proyects_sel_met"),
                        $("#error_Dialog_met"));
            });



            function load_datasheet_met() {

                var flujmin = $("#flujomin_met").val() + " " + $("#fmin_sel_met option:selected").text();
                var flujmax = $("#flujomax_met").val() + " " + $("#fmax_sel_met option:selected").text();
                var model = $("#ma_sel_met").val() + ": " + $("#se_sel_met option:selected").text() + ", Model " + $("#mo_sel_met option:selected").text();
                var outer = "";
                var ansi = "";

                var pres = 0;

                if ($("#po_sel_met").val().split(",")[1] === "psig") {
                    pres = Number($("#presionop_met").val().replace(",",""));
                } else {
                    pres = Number($("#presionop_met").val().replace(",","")) * 14.504;
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
                    "linep": $("#presionop_met").val() + " " + $("#po_sel_met option:selected").text(),
                    "type": "Turbina",
                    "flowr": flujmin + " to " + flujmax,
                    "size": $("#mo_sel_met").val().split(",")[2] + " Inch", //=+CONCATENAR(ROMET!X25;"  ";ROMET!Y25)
                    "outere": outer,
                    "ansic": ansi,
                    "model": model,
                    "temp": $("#temp_met").val() + " " + $("#temp_sel_met option:selected").text(),
                    "iduser": <%=session.getAttribute("idusu")%>,
                    "proyecto": $("#proyects_sel_met option:selected").text(),
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
                        show_OkDialog($("#error_Dialog_met"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });

            }



            function setGrafica_met() {
                var caprefop = parseFloat($("#capaopt_met").val());

                var caprefev = parseFloat($("#mo_sel_met").val().split(",")[1]);

                var presb = parseFloat($("#preisonba_met").val());
                var aux = ($("#pb_sel_met").val().split(",")[1] == "psig" ? 1 : 14.504); //1 si es psi, 14.504 si es bar 
                var evaluado = [];
                var enope = [];
                var optimo = [];
                var data = [];
                var j = 0;
                var fin = 470;
                var inicio = 0;
                var paso = 10;
                var valX = [];

                while(inicio <= fin){
                    valX[j] = inicio;
                    evaluado[j] = (inicio + presb * aux) / (presb * aux) * caprefev;
                    optimo[j] = (inicio + presb * aux) / (presb * aux) * caprefop;
                    enope[j] = parseFloat($("#presionop_met").val());

                    j += 1;
                    inicio += paso;
                }
                
                var max = Math.max(evaluado[evaluado.length - 1], optimo[optimo.length - 1]);
                
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
                 
                var pOpe = {
                    x: [parseFloat($("#presionop_met").val().replace(",", "")), parseFloat($("#presionop_met").val().replace(",", ""))],
                    y: [0, max],
                    mode: 'lines',
                    name: 'Evaluated Point'
                };

                $("#graficaLineal_met").html("");

                var data = [eval, opt, pOpe];
                var layout = {
                    title: 'Capacity Turbine Meters',
                    xaxis: {
                        title: 'Capacity [SCFH]'
                    },
                    yaxis: {
                        title: 'Operating Pressure [PSIG]'
                    }
                };
                Plotly.newPlot('graficaLineal_met', data, layout);

            }


            function load_temp_sel_met() {
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
                        var newHtml = '<select class="form-control" name="temp_sel_met" id="temp_sel_met" onchange="cleanOut_met()">' + data;
                        $("#div_temp_sel_met").html(newHtml);

                        var vecObj = [$("#temp_sel_met")];
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

            function load_serie_met() {
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
                        var newHtml = "<select class=\"form-control\" name=\"se_sel_met\" id= \"se_sel_met\" onchange=\"onchange_serie_met(true)\">" + data;
                        $("#div_se_sel_met").html(newHtml);

                        if ($("#se_sel_met").val().split(",")[1] == "imperial") {
                            $("#fmin_sel_met").val("1284,SCFH");
                            $("#fmax_sel_met").val("1284,SCFH");

                            $("#lbl_capa_met").text("Maximum Capacity of Measurement (Optimum) [SCFH]: ");
                            $("#lbl_mcapae_met").text("Maximum Capacity of Measurement(Evaluated) [SCFH]: ");
                            $("#lbl_capacity_met").text("Capacity [SCFH]: ");
                            
                        } else {
                            $("#fmin_sel_met").val("1285,SCMH");
                            $("#fmax_sel_met").val("1285,SCMH");

                            $("#lbl_capa_met").text("Maximum Capacity of Measurement (Optimum) [SCMH]: ");
                            $("#lbl_mcapae_met").text("Maximum Capacity of Measurement(Evaluated) [SCMH]: ");
                            $("#lbl_capacity_met").text("Capacity [SCMH]: ");
                        }

                        onchange_serie_met(false);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_met"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function onchange_serie_met(swclear) {

                if (swclear) {
                    cleanOut_met();
                }

                if ($("#se_sel_met").val().split(",")[1] == "imperial") {
                    $("#fmin_sel_met").val("1284,SCFH");
                    $("#fmax_sel_met").val("1284,SCFH");

                    $("#lbl_capa_met").text("Maximum Capacity of Measurement (Optimum) [SCFH]: ");
                    $("#lbl_mcapae_met").text("Maximum Capacity of Measurement(Evaluated) [SCFH]: ");
                } else {
                    $("#fmin_sel_met").val("1285,SCMH");
                    $("#fmax_sel_met").val("1285,SCMH");

                    $("#lbl_capa_met").text("Maximum Capacity of Measurement (Optimum) [SCMH]: ");
                    $("#lbl_mcapae_met").text("Maximum Capacity of Measurement(Evaluated) [SCMH]: ");
                }

                var parametros = {
                    "combo": "modelo",
                    "serie": $("#se_sel_met").val().split(",")[1],
                    "type": "turbina",
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
                        var newHtml = "<select class=\"form-control\" name=\"mo_sel_met\" id=\"mo_sel_met\" onchange=\"onchange_mod_met()\">" + data;
                        $("#div_mo_sel_met").html(newHtml);

                        var opc = $("#mo_sel_met").val().split(",")[1];
                        $("#capa_met").val(opc);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_met"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function onchange_mod_met()
            {
                cleanOut_mem();
                var opc = $("#mo_sel_met").val().split(",")[1];
                $("#capa_met").val(opc);
            }

            function load_history_met() {
                var parametros = {
                    "idproyect": $("#proyects_sel_met").val(),
                    "iduser": <% out.print(session.getAttribute("idusu"));%>,
                    "type": "turbina",
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
                        $("#opt_met").val("1");
                        $("#id_met").val("");
                        cleanAll_met();
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
                                    html += "<td><a href='#' onClick=\"load_form_met(" + data.historial[i].id + ")\"><span class='glyphicon glyphicon-plus' aria-hidden='true'></span></a></td>";
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
                        $("#div-table_met").empty();
                        $("#div-table_met").html(html);

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_met"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_fluE_sel_met() {
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
                        var newHtml = "<select class=\"form-control\" name=\"fmin_sel_met\" id= \"fmin_sel_met\" onchange=\"cleanOut_met()\">" + data;
                        $("#div_fmin_sel_met").html(newHtml);

                        newHtml = "<select class=\"form-control\" name=\"fmax_sel_met\" id= \"fmax_sel_met\" onchange=\"cleanOut_met()\">" + data;
                        $("#div_fmax_sel_met").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_met"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_press_sel_met() {
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
                        var newHtml = "<select class=\"form-control\" name=\"po_sel_met\" id= \"po_sel_met\" onchange=\"cleanOut_met()\">" + data;
                        $("#div_po_sel_met").html(newHtml);

                        newHtml = "<select class=\"form-control\" name=\"pb_sel_met\" id= \"pb_sel_met\" onchange=\"cleanOut_met()\">" + data;
                        $("#div_pb_sel_met").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_met"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_form_met(id) {

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
                        cleanAll_met();
                        block("Cargado datos...");
                    },
                    success: function (data, status, request) {

                        if (data != null)
                        {

                            var tags = Object.keys(data.row);
                            for (var i = 0; i < tags.length; i++) {



                                if (tags[i].substring(tags[i].length - 4, tags[i].length) === "_med") {
                                    var newt = tags[i].substring(0, tags[i].length - 3) + "met";
                                    $("#" + newt).val(data.row[tags[i]]);
                                } else {
                                    $("#" + tags[i]).val(data.row[tags[i]]);
                                }


                            }

                            onchange_serie_met(false);
                            $("#mo_sel_met").val(data.row["mo_sel_med"]);
                            $("#proyects_sel_met").val(data.row["id_proyect"]);

                            $("#opt_met").val("2");
                            $("#id_met").val(data.row.id);
                        } else {
                            $("#opt_met").val("1");
                        }

                        setGrafica_met();

                    },
                    error: function (xhr, ajaxOptions, err) {
                        $("#opt_met").val("1");
                        show_OkDialog($("#error_Dialog_met"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function cleanOut_met() {
                $("#modeloop_met").val("");
                $("#maxcapaop_met").val("");
                $("#trabajoop_met").val("");
                $("#modeloev_met").val("");
                $("#maxcapaev_met").val("");
                $("#trabajoev_met").val("");
                $("#trabajocam_met").val("");
                $("#graficaLineal_met").html("");
            }

            function cleanIn_met() {
                $("#ma_sel_met").val("");
                $("#presionop_met").val("");
                $("#preisonba_met").val("");
                $("#flujomin_met").val("");
                $("#flujomax_met").val("");
            }

            function cleanAll_met() {
                cleanIn_met();
                cleanOut_met();
                $("#description_met").val("");
            }

            function onchange_Input_met(inp) {

                var sw = validateDecimal(inp.value);

                if (sw != true) {
                    inp.value = "";
                }
                onchange_Input_zero(inp);
                cleanOut_met();

            }

            function calculate_met() {

                var medidores = '';
                $("#mo_sel_met option").each(function () {
                    if ($(this).val() != "") {
                        medidores += $(this).val() + '@';
                    }
                });

                var variables = {
                    "ma_sel": $("#ma_sel_met").val(),
                    "se_sel": $("#se_sel_met").val(),
                    "mo_sel": $("#mo_sel_met").val(),
                    "presionop": $("#presionop_met").val(),
                    "preisonba": $("#preisonba_met").val(),
                    "flujomin": $("#flujomin_met").val(),
                    "flujomax": $("#flujomax_met").val(),
                    "medidores": medidores
                };

                var uni = {
                    "po_sel": $("#po_sel_met").val(),
                    "pb_sel": $("#pb_sel_met").val()
                };

                var isOk = validate(variables);

                if (isOk === false) {
                    alert("You must complete all fields");
                } else {

                    var res = capacidadMedidores_Form(variables, uni);
                    $("#modeloop_met").val(res[0]);
                    $("#trabajoop_met").val(res[1]);
                    $("#maxcapaop_met").val(res[2]);
                    $("#modeloev_met").val(res[3]);
                    $("#trabajoev_met").val(res[4]);
                    $("#maxcapaev_met").val(res[5]);
                    $("#trabajocam_met").val(res[6]);
                    $("#capaopt_met").val(res[7]);

                    setGrafica_met();
                    show_OkDialog($("#calculate_Dialog_met"), "Satisfactory process");

                }
            }

            function save_met() {

                var parametros = {
                    "ma_sel_met": $("#ma_sel_met").val(),
                    "se_sel_met": $("#se_sel_met").val(),
                    "mo_sel_met": $("#mo_sel_met").val(),
                    "presionop_met": $("#presionop_met").val(),
                    "preisonba_met": $("#preisonba_met").val(),
                    "flujomin_met": $("#flujomin_met").val(),
                    "flujomax_met": $("#flujomax_met").val(),
                    "po_sel_met": $("#po_sel_met").val(),
                    "pb_sel_met": $("#pb_sel_met").val(),
                    "fmin_sel_met": $("#fmin_sel_met").val(),
                    "fmax_sel_met": $("#fmax_sel_met").val(),
                    "modeloop_met": $("#modeloop_met").val(),
                    "trabajoop_met": $("#trabajoop_met").val(),
                    "maxcapaop_met": $("#maxcapaop_met").val(),
                    "modeloev_met": $("#modeloev_met").val(),
                    "trabajoev_met": $("#trabajoev_met").val(),
                    "maxcapaev_met": $("#maxcapaev_met").val(),
                    "trabajocam_met": $("#trabajocam_met").val(),
                    "capaopt_met": $("#capaopt_met").val(),
                    "idproyect": $("#proyects_sel_met").val(),
                    "opcion": $("#opt_met").val(),
                    "iduser": <%=session.getAttribute("idusu")%>,
                    "id_med": 1,
                    "description_met": $("#description_met").val(),
                    "type": "turbina",
                    "from": "med"
                };

                var isOk = validate(parametros);

                if (isOk === false) {
                    alert("You must perform the calculation and fill out the description");
                } else {

                    if ($("#opt_met").val() == 2) {
                        parametros.id_med = $("#id_met").val();
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
                            $("#id_met").val(data.row.id);
                            $("#opt_met").val("2");
                            show_OkDialog($("#save_Dialog_met"), "Satisfactory process");
                        },
                        error: function (xhr, ajaxOptions, err) {
                            alert(err);
                            show_OkDialog($("#error_Dialog_met"), "Error");
                        },
                        complete: function () {
                            unBlock();
                        }
                    });
                }
            }

            function delete_met() {

                //Confirmacion
                if ($("#opt_met").val() == 2) {
                    $("#dialog-confirm_met").dialog({
                        resizable: false,
                        height: "auto",
                        width: 400,
                        modal: true,
                        buttons: {
                            "Delete": function () {
                                deleteReg_met();
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

            function deleteReg_met() {
                var parametros = {
                    "id_med": $("#id_met").val(),
                    "opcion": 3,
                    "iduser": <%=session.getAttribute("idusu")%>,
                    "from": "med"
                };


                if ($("#opt_met").val() == 2) {
                    $.ajax({
                        type: "POST",
                        url: "../../manager.jsp",
                        data: parametros,
                        dataType: 'json',
                        beforeSend: function (xhr) {
                            block("Cargando...");
                        },
                        success: function (data, status, request) {
                            cleanAll_met();
                            $("#id_met").val("");
                            $("#opt_met").val("1");
                            show_OkDialog($("#delete_Dialog_met"), "Satisfactory process");
                        },
                        error: function (xhr, ajaxOptions, err) {
                            alert(err);
                            show_OkDialog($("#error_Dialog_met"), "Error");
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