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

        <!-- Plot -->
        <script src="https://cdn.plot.ly/plotly-latest.min.js"></script>
        <!-- Jquery JS -->
        <script type="text/JavaScript" src="js/jquery.js"></script>
        <!-- Jquery UI -->
        <script src="js/jquery-ui/jquery-ui.js"></script>
        <!-- Jquery Blockui Plugin -->
        <script src="js/jquery-ui/external/blockui/jquery-blockui.js"></script>
        <!-- Formula File JS -->
        <script src="js/functions/formulasK.js"></script>
        <!-- Formula File JS -->
        <script src="js/functions/formulasM.js"></script>
        <!-- General Functions File JS -->
        <script src="js/functions/functions.js"></script>
        <!-- Jspdf Plugin JS -->
        <script type="text/JavaScript" src="js/jspdf/jspdf.min.js" > </script>
        <!-- Jspdf Plugin JS -->
        <script type="text/JavaScript" src="js/jspdf/autotable.min.js" > </script>
        <!-- Morris Plugin JS -->
        <script src="bower_components/morrisjs/morris.js"></script>
        <!-- Custom Theme JavaScript -->
        <!--<script src="dist/js/sb-admin-2.js"></script> -->
        <script src="bower_components/metisMenu/dist/metisMenu.min.js"></script>
        <script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
        <script src="bower_components/raphael/raphael-min.js"></script>
        <script src="js/dataTables/jquery.dataTables.js" type="text/javascript"></script>



        <!--<script src="bower_components/jquery/dist/jquery.min.js"></script>-->
        <!--<script type="text/javascript" src="js/highchart/highcharts.js"></script>-->
        <!--<script type="text/javascript" src="js/highchart/exporting.js"></script>-->

        <link rel="stylesheet" href="js/jquery-ui/jquery-ui.css">
        <link rel="stylesheet" href="bower_components/morrisjs/morris.css">
        <link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css" />
        <link rel="stylesheet" href="bower_components/metisMenu/dist/metisMenu.min.css" />
        <link href="dist/css/timeline.css" rel="stylesheet">
        <link href="dist/css/sb-admin-2.css" rel="stylesheet">
        <link href="bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="css/dataTables/jquery.dataTables.min.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="css/user-profiles-list-basic.css">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.13/css/jquery.dataTables.min.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/select/1.2.1/css/select.dataTables.min.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.2.4/css/buttons.dataTables.min.css">

    </head>


    <body>
        <div id="formula_mem">
            <div class="row">
                <div class="col-lg-9">
                    <h2>This module validates the capacity of the meters to be installed in natural gas transport or distribution applications: Mass Meters</h2>
                </div>
                <div class="col-lg-3"> 

                    <!-- Button trigger modal -->
                    <p>
                        <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_mem()">
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
                                    <div id="div-table_mem"></div>
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
                    <input  class="form-control" type="text" id="description_mem" name="description_mem"><br>
                    Projects:
                    <select class="form-control" id="proyects_sel_mem" name="proyects_sel_mem"> </select>

                </div>
            </div>
            <hr>


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
                                    <div id = "div_ma_sel_mem">
                                        <input class="form-control" type="text" id="ma_sel_mem" name="ma_sel_mem" onchange="onchange_Input_mem(this)" required value="Segun vendor list.">
                                    </div>
                                </div>
                                <div class="form-group col-lg-12" id="div_serie_mem" style="display:none">
                                    <div>
                                        <label>Serie:</label>
                                    </div>
                                    <div id = "div_se_sel_mem">
                                        <select class="form-control" id="se_sel_mem" name="se_sel_mem"> </select>
                                    </div>
                                </div>
                                <div class="form-group col-lg-12">
                                    <div>
                                        <label>Model:</label>
                                    </div>
                                    <div id = "div_mo_sel_mem">
                                        <select class="form-control" id="mo_sel_mem" name="mo_sel_mem"> </select>
                                    </div>
                                </div>

                                <div class="form-group col-lg-12">
                                    <div>
                                        <label>Capacity:</label>
                                    </div>
                                    <input class="form-control" type="text" id="capa_mem" name="capa_mem" onchange="onchange_Input_mem(this)" disabled>
                                </div>


                                <div class="form-group">
                                    <div class="col-md-12">
                                        <label>Operating Pressure:</label>
                                    </div>
                                    <div class="col-md-8">
                                        <input value="100"  class="form-control" type="text" id="presionop_mem" name="presionop_mem" onchange="onchange_Input_mem(this)" required>
                                    </div>
                                    <div class="col-md-4" id = "div_po_sel_mem">
                                        <select class="form-control" id="po_sel_mem" name="po_sel_mem" onchange="cleanOut_mem()"> </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-12">
                                        <label>Base Pressure:</label> 
                                    </div>
                                    <div class="col-md-8">
                                        <input  class="form-control" type="text" id="preisonba_mem" name="preisonba_mem" value="14.65" onchange="onchange_Input_mem(this)" required><br>
                                    </div>
                                    <div class="col-md-4" id="div_pb_sel_mem">
                                        <select class="form-control" id="pb_sel_mem" name="pb_sel_mem" onchange="cleanOut_mem()"> </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-12">
                                        <label>Minimum Flow of Operation:</label>
                                    </div>

                                    <div class="col-md-8">
                                        <input value="100000" class="form-control" type="text" id="flujomin_mem" name="flujomin_mem" onchange="onchange_Input_mem(this)" required>
                                    </div>
                                    <div class="col-md-4" id="div_fmin_sel_mem">
                                        <select class="form-control" id="fmin_sel_mem" name="fmin_sel_mem" disabled></select> 
                                    </div>

                                </div>
                                <div class="form-group">
                                    <div class="col-md-12">
                                        <label>Maximum Flow of Operation:</label>
                                    </div>
                                    <div class="col-md-8">
                                        <input value="500000" class="form-control" type="text" id="flujomax_mem" name="flujomax_mem" onchange="onchange_Input_mem(this)" required>
                                    </div>
                                    <div class="col-md-4" id="div_fmax_sel_mem">
                                        <select class="form-control" id="fmax_sel_mem" name="fmax_sel_mem"></select> 
                                    </div>

                                </div>

                                <div class="form-group">
                                    <div class="col-md-12">
                                        <label>Temperature of Operation</label>
                                    </div>
                                    <div class="col-md-8">
                                        <input value="85" class="form-control" type="text" id="temp_mem" name="temp_mem" onchange="onchange_Input_mem(this)" required>
                                    </div>
                                    <div class="col-md-4" id="div_temp_sel_mem">
                                        <select class="form-control" id="temp_sel_mem" name="temp_sel_mem"></select> 
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
                                    <input type="text" id="modeloop_mem" name="modeloop_mem" readonly required class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>% Work with maximum capacity (Optimum):</label>
                                    <input type="text" id="trabajoop_mem" name="trabajoop_mem" readonly required class="form-control">
                                </div> 
                                <div class="form-group">
                                    <label>Maximum Capacity of Measurement (Optimum) [SCFH]:</label>            
                                    <input type="text" id="maxcapaop_mem" name="maxcapaop_mem" readonly required class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Evaluated Model</label>
                                    <input type="text" id="modeloev_mem" name="modeloev_mem" readonly required class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>% Work with maximum capacity (Evaluated):</label>
                                    <input type="text" id="trabajoev_mem" name="trabajoev_mem" readonly required class="form-control">
                                </div> 
                                <div class="form-group">
                                    <label>Maximum Capacity of Measurement(Evaluated) [SCFH]:</label>            
                                    <input type="text" id="maxcapaev_mem" name="maxcapaev_mem" readonly required class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>% Work with minimum conditions of operation (Evaluated):</label>
                                    <input type="text" id="trabajocam_mem" name="trabajocam_mem" readonly required class="form-control">
                                </div>                      

                                <input type="button" id="calculateBtn_mem" name="calculateBtn_mem" value="Calculate" onclick="calculate_mem()" class="btn btn-info btn-block">
                                <input type="button" id="saveBtn_mem" name="saveBtn_mem" value="Save" onclick="save_mem()" class="btn btn-success btn-block">   
                                <input type="button" id="delteBtn_mem" name="delteBtn_mem" value="Delete" onclick="delete_mem()" class="btn btn-danger btn-block">
                                <input type="button" id="datasheetgen_mem" name="datasheetgen_mem" value="Generate DataSheet" onclick="load_datasheet_mem()" class="btn btn-success btn-block">   


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
                                <div id="graficaLineal_mem"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="col-md-3">
                    <input type="button" id="cleanAllBtn_mem" name="cleanBtn_mem" value="Clean All" onclick="cleanAll_mem()" class="btn btn-warning btn-block">
                </div>
                <div class="col-md-3">
                    <input type="button" id="cleanInputBtn_mem" name="cleanBtn_mem" value="Clean Input Data" onclick="cleanIn_mem()" class="btn btn-warning btn-block">
                </div>
                <div class="col-md-3">
                    <input type="button" id="cleanOutputBtn_mem" name="cleanBtn_mem" value="Clean Output Data" onclick="cleanOut_mem()" class="btn btn-warning btn-block">
                </div>

            </div>
            <input type="hidden" id="id_mem" name="id_mem">  
            <input type="hidden" id="opt_mem" name="opt_mem">  
            <input type="hidden" id="capaopt_mem" name="capaopt_mem">
        </div>

        <script>

            $(document).ready(function () {
                $("#opt_mem").val("1");
                load_serie_mem();
                load_fluE_sel_mem();
                load_press_sel_mem();
                load_temp_sel_mem();

                document.getElementById("fmin_sel_mem").disabled = true;
                document.getElementById("fmax_sel_mem").disabled = true;
                //document.getElementById("div_serie_mem").style.display = "none";



                getproyectos(<%=session.getAttribute("idusu")%>,
                        $("#proyects_sel_mem"),
                        $("#error_Dialog_mem"));
            });



            function load_datasheet_mem() {

                var flujmin = $("#flujomin_mem").val() + " " + $("#fmin_sel_mem option:selected").text();
                var flujmax = $("#flujomax_mem").val() + " " + $("#fmax_sel_mem option:selected").text();
                var model = $("#ma_sel_mem").val() + ": " + $("#se_sel_mem option:selected").text() + ", Model " + $("#mo_sel_mem option:selected").text();
                var outer = "";
                var ansi = "";

                var pres = 0;

                if ($("#po_sel_mem").val().split(",")[1] === "psig") {
                    pres = Number($("#presionop_mem").val());
                } else {
                    pres = Number($("#presionop_mem").val()) * 14.504;
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
                    "linep": $("#presionop_mem").val() + " " + $("#po_sel_mem option:selected").text(),
                    "type": "Masico",
                    "flowr": flujmin + " to " + flujmax,
                    "size": $("#mo_sel_mem").val().split(",")[2] + " Inch", //=+CONCATENAR(ROMET!X25;"  ";ROMET!Y25)
                    "outere": outer,
                    "ansic": ansi,
                    "model": model,
                    "temp": $("#temp_mem").val() + " " + $("#temp_sel_mem option:selected").text(),
                    "iduser": <%=session.getAttribute("idusu")%>,
                    "proyecto": $("#proyects_sel_mem option:selected").text(),
                    "from": "med"

                };
                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
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
                        window.location = "bajar.jsp?filename=" + file + "&path=" + path;

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_mem"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });

            }



            function setGrafica_mem() {
            
                var valX = [];
                var valY = [];
                var inicio = 0;
                var tope = 1200;
                var paso = 50;
                while(inicio <= tope){
                    valX[valX.length] = inicio;
                    valY[valY.length] =+(2580000)/35.01350544*(((inicio)+14.7)/14.7);
                    inicio += paso;
                }
            
                var pOp = parseFloat($("#presionop_mem").val());


                var pOpe = {
                    x: [pOp],
                    y: [500000],
                    mode: 'markers',
                    name: 'Operating Point'
                };

                var capMedi = {
                    x: valX,
                    y: valY,
                    mode: 'lines',
                    name: 'Capacity'
                };

                /*var trace3 = {
                    x: [1, 2, 3, 4],
                    y: [12, 9, 15, 12],
                    mode: 'lines+markers',
                    name: 'Scatter + Lines'
                };*/

                var lOpera = {
                    x: [pOp, pOp],
                    y: [0, (2580000)/35.01350544*(((pOp)+14.7)/14.7)],
                    mode: 'lines',
                    name: 'Operation Line'
                };

                var data = [ capMedi, lOpera, pOpe];

                var layout = {
                    title: 'Adding Names to Line and Scatter Plot',
                    xaxis: {
                        title: 'Capacity [SCFH]'
                    },
                    yaxis: {
                        title: 'Operating Pressure [PSIG]'
                    }
                };



                Plotly.newPlot('graficaLineal_mem', data, layout);

            }


            function getproyectos_mem() {

                var parametros = {
                    "opcion": 207,
                    "from": "newp",
                    "id_user":<%=session.getAttribute("idusu")%>,
                    "type": <%=session.getAttribute("tipo")%>

                };

                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    dataType: 'json',
                    async: false,
                    beforeSend: function () {


                    },
                    success: function (data, status, request) {

                        var pro = [];
                        if (data.liderproyecto !== undefined) {

                            for (var i = 0; i < data.liderproyecto.length; i++) {
                                pro[pro.length] = data.liderproyecto[i].id_proyecto;
                                $('#proyects_sel_mem').append('<option value="' + pro[pro.length - 1] + '" >' + data.liderproyecto[i].name + '</option>');

                            }
                        }

                        var ind;
                        if (data.liderfase !== undefined) {

                            for (var i = 0; i < data.liderfase.length; i++) {
                                ind = pro.indexOf(data.liderfase.id_proyecto);
                                if (ind === -1) {
                                    pro[pro.length] = data.liderfase[i].id_proyecto;
                                    $('#proyects_sel_mem').append('<option value="' + pro[pro.length - 1] + '" >' + data.liderfase[i].name + '</option>');
                                }
                            }
                        }

                        if (data.liderespecialidad !== undefined) {
                            for (var i = 0; i < data.liderespecialidad.length; i++) {
                                ind = pro.indexOf(data.liderespecialidad[i].id_proyecto);
                                if (ind === -1) {
                                    pro[pro.length] = data.liderespecialidad.id_proyecto;
                                    $('#proyects_sel_mem').append('<option value="' + pro[pro.length - 1] + '" >' + data.liderespecialidad[i].name + '</option>');
                                }
                            }
                        }



                    },
                    error: function (xhr, ajaxOptions, err) {
                        alert(err);
                        // show_OkDialog($("#error_Dialog_usu"), "Error");
                    },
                    complete: function (data, status, request) {

                    }
                });

            }

            function load_temp_sel_mem() {
                var parametros = {
                    "combo": "temp",
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
                        var newHtml = '<select class="form-control" name="temp_sel_mem" id="temp_sel_mem" onchange="cleanOut_mem()">' + data;
                        $("#div_temp_sel_mem").html(newHtml);

                        var vecObj = [$("#temp_sel_mem")];
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

            function load_serie_mem() {
                var parametros = {
                    "combo": 'serie',
                    "opcion": "5",
                    "from": "med",
                    "type": "mer"
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
                        var newHtml = "<select class=\"form-control\" name=\"se_sel_mem\" id= \"se_sel_mem\" onchange=\"onchange_serie_mem(true)\">" + data;
                        $("#div_se_sel_mem").html(newHtml);

                        if ($("#se_sel_mem").val().split(",")[1] == "imperial") {
                            $("#fmin_sel_mem").val("1284,SCFH");
                            $("#fmax_sel_mem").val("1284,SCFH");
                        } else {
                            $("#fmin_sel_mem").val("1285,SCMH");
                            $("#fmax_sel_mem").val("1285,SCMH");
                        }

                        onchange_serie_mem(false);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_mem"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function onchange_serie_mem(swclear) {

                if (swclear) {
                    cleanOut_mem();
                }

                var parametros = {
                    "combo": "modelo",
                    "serie": $("#se_sel_mem").val().split(",")[1],
                    "type": "masico2", //antes masico
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
                        var newHtml = "<select class=\"form-control\" name=\"mo_sel_mem\" id=\"mo_sel_mem\" onchange=\"onchange_mod_mem()\">" + data;
                        $("#div_mo_sel_mem").html(newHtml);

                        var opc = $("#mo_sel_mem").val().split(",")[1];
                        $("#capa_mem").val(opc);


                        if ($("#se_sel_mem").val().split(",")[1] == "imperial") {
                            $("#fmin_sel_mem").val("1284,SCFH");
                            $("#fmax_sel_mem").val("1284,SCFH");
                        } else {
                            $("#fmin_sel_mem").val("1285,SCMH");
                            $("#fmax_sel_mem").val("1285,SCMH");
                        }

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_mem"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function onchange_mod_mem()
            {
                cleanOut_mem();
                var opc = $("#mo_sel_mem").val().split(",")[1];
                $("#capa_mem").val(opc);
            }

            function load_history_mem() {
                var parametros = {
                    "idproyect": $("#proyects_sel_mem").val(),
                    "iduser": <% out.print(session.getAttribute("idusu"));%>,
                    "type": "masico",
                    "opcion": "6",
                    "nombre": "historial",
                    "from": "med"
                };

                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    dataType: 'json',
                    async: false,
                    beforeSend: function (xhr) {
                        $("#opt_mem").val("1");
                        $("#id_mem").val("");
                        cleanAll_mem();
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
                                    html += "<td><a href='#' onClick=\"load_form_mem(" + data.historial[i].id + ")\"><span class='glyphicon glyphicon-plus' aria-hidden='true'></span></a></td>";
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
                        $("#div-table_mem").empty();
                        $("#div-table_mem").html(html);

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_mem"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_fluE_sel_mem() {
                var parametros = {
                    "combo": "flusel",
                    "opcion": "5",
                    "from": "med"
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
                        var newHtml = "<select class=\"form-control\" name=\"fmin_sel_mem\" id= \"fmin_sel_mem\" onchange=\"cleanOut_mem()\">" + data;
                        $("#div_fmin_sel_mem").html(newHtml);

                        newHtml = "<select class=\"form-control\" name=\"fmax_sel_mem\" id= \"fmax_sel_mem\" onchange=\"cleanOut_mem()\">" + data;
                        $("#div_fmax_sel_mem").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_mem"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_press_sel_mem() {
                var parametros = {
                    "combo": "presel",
                    "opcion": "5",
                    "from": "med"
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
                        var newHtml = "<select class=\"form-control\" name=\"po_sel_mem\" id= \"po_sel_mem\" onchange=\"cleanOut_mem()\">" + data;
                        $("#div_po_sel_mem").html(newHtml);

                        newHtml = "<select class=\"form-control\" name=\"pb_sel_mem\" id= \"pb_sel_mem\" onchange=\"cleanOut_mem()\">" + data;
                        $("#div_pb_sel_mem").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_mem"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_form_mem(id) {

                var parametros = {
                    "id": id,
                    "opcion": "4",
                    "from": "med"
                };

                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    dataType: 'json',
                    beforeSend: function (xhr) {
                        cleanAll_mem();
                        block("Cargado datos...");
                    },
                    success: function (data, status, request) {

                        if (data != null)
                        {

                            var tags = Object.keys(data.row);
                            for (var i = 0; i < tags.length; i++) {

                                if (tags[i].substring(tags[i].length - 4, tags[i].length) === "_med") {
                                    var newt = tags[i].substring(0, tags[i].length - 3) + "mem";
                                    $("#" + newt).val(data.row[tags[i]]);
                                } else {
                                    $("#" + tags[i]).val(data.row[tags[i]]);
                                }

                            }

                            onchange_serie_mem(false);
                            $("#mo_sel_mem").val(data.row["mo_sel_med"]);
                            $("#proyects_sel_mem").val(data.row["id_proyect"]);

                            $("#opt_mem").val("2");
                            $("#id_mem").val(data.row.id);
                        } else {
                            $("#opt_mem").val("1");
                        }

                        setGrafica_mem();

                    },
                    error: function (xhr, ajaxOptions, err) {
                        $("#opt_mem").val("1");
                        show_OkDialog($("#error_Dialog_mem"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function cleanOut_mem() {
                $("#modeloop_mem").val("");
                $("#maxcapaop_mem").val("");
                $("#trabajoop_mem").val("");
                $("#modeloev_mem").val("");
                $("#maxcapaev_mem").val("");
                $("#trabajoev_mem").val("");
                $("#trabajocam_mem").val("");
                $("#graficaLineal_mem").html("");
            }

            function cleanIn_mem() {
                $("#ma_sel_mem").val("");
                $("#presionop_mem").val("");
                $("#preisonba_mem").val("");
                $("#flujomin_mem").val("");
                $("#flujomax_mem").val("");
            }

            function cleanAll_mem() {
                cleanIn_mem();
                cleanOut_mem();
                $("#description_mem").val("");
            }

            function onchange_Input_mem(inp) {

                var sw = validateDecimal(inp.value);

                if (sw != true) {
                    inp.value = "";
                }
                onchange_Input_zero(inp);
                cleanOut_mem();

            }

            function calculate_mem() {

                var medidores = '';
                $("#mo_sel_mem option").each(function () {
                    if ($(this).val() != "") {
                        medidores += $(this).val() + '@';
                    }
                });

                var variables = {
                    "ma_sel": $("#ma_sel_mem").val(),
                    "se_sel": $("#se_sel_mem").val(),
                    "mo_sel": $("#mo_sel_mem").val(),
                    "presionop": $("#presionop_mem").val(),
                    "preisonba": $("#preisonba_mem").val(),
                    "flujomin": $("#flujomin_mem").val(),
                    "flujomax": $("#flujomax_mem").val(),
                    "medidores": medidores
                };

                var uni = {
                    "po_sel": $("#po_sel_mem").val(),
                    "pb_sel": $("#pb_sel_mem").val()
                };

                var isOk = validate(variables);

                if (isOk === false) {
                    alert("You must complete all fields");
                } else {

                    var res = capacidadMedidoresMas_Form(variables, uni);
                    $("#modeloop_mem").val(res[0]);
                    $("#trabajoop_mem").val(res[1]);
                    $("#maxcapaop_mem").val(res[2]);
                    $("#modeloev_mem").val(res[3]);
                    $("#trabajoev_mem").val(res[4]);
                    $("#maxcapaev_mem").val(res[5]);
                    $("#trabajocam_mem").val(res[6]);
                    $("#capaopt_mem").val(res[7]);
                    setGrafica_mem();

                    show_OkDialog($("#calculate_Dialog_mem"), "Satisfactory process");

                }
            }

            function save_mem() {

                var parametros = {
                    "ma_sel_mem": $("#ma_sel_mem").val(),
                    "se_sel_mem": $("#se_sel_mem").val(),
                    "mo_sel_mem": $("#mo_sel_mem").val(),
                    "presionop_mem": $("#presionop_mem").val(),
                    "preisonba_mem": $("#preisonba_mem").val(),
                    "flujomin_mem": $("#flujomin_mem").val(),
                    "flujomax_mem": $("#flujomax_mem").val(),
                    "po_sel_mem": $("#po_sel_mem").val(),
                    "pb_sel_mem": $("#pb_sel_mem").val(),
                    "fmin_sel_mem": $("#fmin_sel_mem").val(),
                    "fmax_sel_mem": $("#fmax_sel_mem").val(),
                    "modeloop_mem": $("#modeloop_mem").val(),
                    "trabajoop_mem": $("#trabajoop_mem").val(),
                    "maxcapaop_mem": $("#maxcapaop_mem").val(),
                    "modeloev_mem": $("#modeloev_mem").val(),
                    "trabajoev_mem": $("#trabajoev_mem").val(),
                    "maxcapaev_mem": $("#maxcapaev_mem").val(),
                    "trabajocam_mem": $("#trabajocam_mem").val(),
                    "capaopt_mem": $("#capaopt_mem").val(),
                    "idproyect": $("#proyects_sel_mem").val(),
                    "opcion": $("#opt_mem").val(),
                    "iduser": <%=session.getAttribute("idusu")%>,
                    "id_med": 1,
                    "description_mem": $("#description_mem").val(),
                    "type": "masico",
                    "from": "med"
                };

                var isOk = validate(parametros);

                if (isOk === false) {
                    alert("You must perform the calculation and fill out the description");
                } else {

                    if ($("#opt_mem").val() == 2) {
                        parametros.id_med = $("#id_mem").val();
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
                            $("#id_mem").val(data.row.id);
                            $("#opt_mem").val("2");
                            show_OkDialog($("#save_Dialog_mem"), "Satisfactory process");
                        },
                        error: function (xhr, ajaxOptions, err) {
                            alert(err);
                            show_OkDialog($("#error_Dialog_mem"), "Error");
                        },
                        complete: function () {
                            unBlock();
                        }
                    });
                }
            }

            function delete_mem() {

                //Confirmacion
                if ($("#opt_mem").val() == 2) {
                    $("#dialog-confirm_mem").dialog({
                        resizable: false,
                        height: "auto",
                        width: 400,
                        modal: true,
                        buttons: {
                            "Delete": function () {
                                deleteReg_mem();
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

            function deleteReg_mem() {
                var parametros = {
                    "id_med": $("#id_mem").val(),
                    "opcion": 3,
                    "iduser": <%=session.getAttribute("idusu")%>,
                    "from": "med"
                };


                if ($("#opt_mem").val() == 2) {
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        dataType: 'json',
                        beforeSend: function (xhr) {
                            block("Cargando...");
                        },
                        success: function (data, status, request) {
                            cleanAll_mem();
                            $("#id_mem").val("");
                            $("#opt_mem").val("1");
                            show_OkDialog($("#delete_Dialog_mem"), "Satisfactory process");
                        },
                        error: function (xhr, ajaxOptions, err) {
                            alert(err);
                            show_OkDialog($("#error_Dialog_mem"), "Error");
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

        <div id="load_Dialog_mem" title="Basic dialog" style='display:none;'>
            <p>Successfully uploaded data</p>
        </div>

        <div id="save_Dialog_mem" title="Basic dialog" style='display:none;'>
            <p>Data saved successfully</p>
        </div>

        <div id="error_Dialog_mem" title="Basic dialog" style='display:none;'>
            <p>An error has occurred in the process</p>
        </div>

        <div id="calculate_Dialog_mem" title="Basic dialog" style='display:none;'>
            <p>Calculation done successfully</p>
        </div>

        <div id="delete_Dialog_mem" title="Basic dialog" style='display:none;'>
            <p>Successfully deleted record</p>
        </div>

        <div id="dialog-confirm_mem" title="Delete record" style='display:none;'>
            <p><span class="ui-icon ui-icon-alert" style="float:left; margin:12px 12px 20px 0;"></span>
                Are you sure you want to permanently delete this record?
            </p>
        </div>
    </body>
</html>