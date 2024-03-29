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
                                <h2><strong>Hydraulics:</strong> Spitzglass</h2>
                            </div>
                            <div class="col-lg-3"> 
                                <br>
                                <!-- Button trigger modal -->
                                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_spi()">
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
                                                <div id="div-table_spi"></div>
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
                                <input  class="form-control" type="text" id="description_spi" name="description_spi"><br>
                                Projects: 
                                <select class="form-control" id="proyects_sel_spi" name="proyects_sel_spi"> </select>
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
                                                            Suggested Data
                                                        </div>
                                                        <div class="panel-body">
                                                            <div class="row">
                                                                <div class="col-lg-12">
                                                                    <form role="form">
                                                                        <div class="form-group">


                                                                            <div class="form-group">
                                                                                <div class="col-sm-12"> <label>Base Temperature:</label> </div>
                                                                                <div class="col-sm-5">
                                                                                    <input class="form-control" type="text" id="basetemperature_spi" name="basetemperature_spi" onchange="onchange_Input_spi(this)" required value="60">
                                                                                </div>
                                                                                <div class="col-sm-6" id="div_bt_sel_spi">
                                                                                    <select class="form-control" id="bt_sel_spi" name="bt_sel_spi" onchange="cleanOut_spi()"> </select>
                                                                                </div>

                                                                            </div>
                                                                            <div class="form-group">
                                                                                <div class="col-sm-12">
                                                                                    <label>Base Pressure:</label>
                                                                                </div>
                                                                                <div class="col-sm-6">
                                                                                    <input  class="form-control" type="text" id="basepressure_spi" name="basepressure_spi" onchange="onchange_Input_spi(this)" required value="14.65"><br>
                                                                                </div>

                                                                                <div class="col-sm-6" id="div_bte_sel_spi">
                                                                                    <select class="form-control" id="bte_sel_spi" name="bte_sel_spi"> </select>
                                                                                </div>
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <div class="col-md-12"><label>Unknown</label>        </div>
                                                                                <select class="form-control" onchange="hide(this)" id="unknown_spi" name="unknown_spi">
                                                                                    <option value="-" >--Choose One--</option>
                                                                                    <option value="flowrate" >Flow rate</option>
                                                                                    <option value="internal" >Internal Pipe Diameter</option>
                                                                                    <option value="upstream" >Upstream Pressure</option>
                                                                                    <option value="downstream" >Downstream Pressure</option>
                                                                                </select>
                                                                            </div>

                                                                        </div>                                                                         
                                                                    </form>
                                                                </div>
                                                            </div>
                                                        </div> 
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="panel panel-default">
                                                        <div class="panel-heading"> 
                                                            Input Parameters 
                                                        </div>
                                                        <div class="panel-body">
                                                            <div class="row">
                                                                <div class="col-lg-12">
                                                                    <form role="form">
                                                                        <div class="form-group">
                                                                            <div class="col-md-12">
                                                                                <div class="col-md-12"> <label>Gas flow temperature</label></div>
                                                                                <div class="col-md-8">                                              
                                                                                    <input class="form-control" type="text" id="gasflowingtemp_spi" name="gasflowingtemp_spi" onchange="onchange_Input_spi(this)" required>
                                                                                </div>   
                                                                                <div class="col-md-4" id = "div_gft_sel_spi">
                                                                                    <select class="form-control" id="gft_sel_spi" name="gft_sel_spi"> </select>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-12">
                                                                                <div class="col-md-12 form-group">
                                                                                    <label>Gas Specific Gravity:</label>
                                                                                    <input class="form-control" type="text" id="gasspecificgra_spi" name="gasspecificgra_spi" onchange="onchange_Input_spi(this)" required>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-12">

                                                                                <div class="col-md-12 form-group">
                                                                                    <label>Pipeline Efficiency Factor</label>
                                                                                    <input class="form-control" type="text" id="pipelineefficiency_spi" name="pipelineefficiency_spi" onchange="onchange_Input_spi(this)" required>
                                                                                </div>
                                                                            </div>
                                                                            <!-- Desaparece opción 1-->
                                                                            <!-- Desaparece opción 1-->
                                                                            <div class="col-md-12" id="flowrate">
                                                                                <div class="col-md-12"><label>Flow Rate</label></div>
                                                                                <div class="col-md-8">
                                                                                    <input class="form-control" type="text" id="flowrate_spi" name="flowrate_spi" onchange="onchange_Input_spi(this)" required >
                                                                                </div>
                                                                                <div class="col-md-4" id = "div_if_sel_spi">
                                                                                    <select class="form-control" id="if_sel_spi" name="if_sel_spi" onchange="cleanOut_spi()"> </select>
                                                                                </div>

                                                                            </div>
                                                                            <!-- fin -->
                                                                            <div class="col-md-12"  id="upstream">
                                                                                <div class="col-md-12"> <label> Upstream Pressure</label></div>
                                                                                <div class="col-md-8">                                            
                                                                                    <input class="form-control" type="text" id="upstreampressure_spi" name="upstreampressure_spi" onchange="onchange_Input_spi(this)" required>
                                                                                </div>
                                                                                <div class="col-md-4" id="div_up_sel_spi">
                                                                                    <select class="form-control" id="up_sel_spi" name="up_sel_spi"> </select>
                                                                                </div>

                                                                            </div>
                                                                            <div class="col-md-12 success"  id="downstream">
                                                                                <div class="col-md-12"> <label>Downstream Pressure</label></div>
                                                                                <div class="col-md-8">                                            
                                                                                    <input class="form-control" type="text" id="downstreampressure_spi" name="downstreampressure_spi" onchange="onchange_Input_spi(this)" required>
                                                                                </div>
                                                                                <div class="col-md-4" id="div_bp_sel_spi">
                                                                                    <select class="form-control" id="bp_sel_spi" name="bp_sel_spi"> </select>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-12" id="internal">
                                                                                <div class="col-md-12"><label>Internal Pipe Diameter</label></div>
                                                                                <div class="col-md-8">
                                                                                    <input class="form-control" value="954.4" type="text" id="internalpipe_spi" name="internalpipe_spi"  required onchange="onchange_Input_spi(this)">
                                                                                </div>
                                                                                <div class="col-md-4" id = "div_diam_sel_spi">
                                                                                    <select class="form-control" id="diam_sel_spi" name="diam_sel_spi" onchange='cleanOut_spi()'> </select>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-12">
                                                                                <div class="col-md-12"><label>Length of Pipeline</label></div>
                                                                                <div class="col-md-8">
                                                                                    <input class="form-control" type="text" id="lengthof_spi" name="lengthof_spi"  required onchange="onchange_Input_spi(this)">
                                                                                </div>
                                                                                <div class="col-md-4" id = "div_le_sel_spi">
                                                                                    <select class="form-control" id="le_sel_spi" name="le_sel_spi" onchange='cleanOut_spi()'> </select>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-12">
                                                                                <div class="col-md-12">  <label>Upstream Elevation</label></div>
                                                                                <div class="col-md-8">
                                                                                    <input class="form-control" type="text" id="upstreamelevation_spi" name="upstreamelevation_spi" required onchange="onchange_Input_spi(this)">
                                                                                </div>
                                                                                <div class="col-md-4" id = "div_ue_sel_spi">
                                                                                    <select class="form-control" id="ue_sel_spi" name="ue_sel_spi" onchange='cleanOut_spi()'> </select>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-12">
                                                                                <div class="col-md-12"><label>Downstream Elevation</label></div>
                                                                                <div class="col-md-8">
                                                                                    <input class="form-control" type="text" id="downstreamelevation_spi" name="downstreamelevation_spi"  required onchange="onchange_Input_spi(this)">
                                                                                </div>
                                                                                <div class="col-md-4" id = "div_de_sel_spi">
                                                                                    <select class="form-control" id="de_sel_spi" name="de_sel_spi" onchange='cleanOut_spi()'> </select>
                                                                                </div>
                                                                            </div>

                                                                        </div>
                                                                    </form>
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
                                                                    <form role="form">
                                                                        <div class="form-group">
                                                                            <label id="lbltipAddedComment">-</label>
                                                                            <input type="text" id="resultado" name="resultado" readonly required class="form-control">
                                                                        </div>
                                                                    </form>
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
                                                <input type="button" id="calculateBtn" name="calculateBtn" value="Calculate" onclick="calculate_spi()" class="btn btn-info btn-block">
                                                <input type="submit" id="saveBtn" name="saveBtn" value="Save" onclick="save_spi()" class="btn btn-success btn-block">   
                                                <input type="button" id="delteBtn" name="delteBtn" value="Delete" onclick="deleteReg_spi()" class="btn btn-danger btn-block">
                                                <input type="button" id="cleanAllBtn" name="cleanBtn" value="Clean All" onclick="cleanAll_spi()" class="btn btn-warning btn-block">
                                                <input type="button" id="cleanInputBtn" name="cleanBtn" value="Clean Input Data" onclick="cleanIn_spi()" class="btn btn-warning btn-block">
                                                <input type="button" id="cleanOutputBtn" name="cleanBtn" value="Clean Output Data" onclick="cleanOut_spi()" class="btn btn-warning btn-block">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <input type="hidden" id="opt_spi" name="opt_spi" value="1"> 
                            <input type="hidden" id="id_spi" name="id_spi" value="-1"></div>

                        <div id="load_Dialog_spi" title="Basic dialog" style='display:none;'>
                            <p>Datos cargados exitosamente</p>
                        </div>

                        <div id="save_Dialog_spi" title="Basic dialog" style='display:none;'>
                            <p>Datos guardados exitosamente</p>
                        </div>

                        <div id="error_Dialog_spi" title="Basic dialog" style='display:none;'>
                            <p>Ha ocurrido un error en el proceso</p>
                        </div>

                        <div id="calculate_Dialog_spi" title="Basic dialog" style='display:none;'>
                            <p>Calculo realizado exitosamente</p>
                        </div>

                        <div id="delete_Dialog_spi" title="Basic dialog" style='display:none;'>
                            <p>Registro eliminado exitosamente</p>
                        </div>
                    </div>
                </div>

            </div>
            <!-- /#page-wrapper -->

        </div>
        <!-- /#wrapper -->
    </body>

    <script>
        function hide(form) {
            var opcion = (form.value);
            document.getElementById("flowrate").style.display = "block";
            document.getElementById("upstream").style.display = "block";
            document.getElementById("downstream").style.display = "block";
            document.getElementById("internal").style.display = "block";
            document.getElementById(opcion).style.display = "none";
            var x = document.getElementById("unknown_spi").selectedIndex;
            var y = document.getElementById("unknown_spi").options;
            document.getElementById('lbltipAddedComment').innerHTML = y[x].text;

            if (y[x].text == "Flow rate") {
                document.getElementById('lbltipAddedComment').innerHTML = y[x].text + " [SCFD]";
            }
            if (y[x].text == "Internal Pipe Diameter") {
                document.getElementById('lbltipAddedComment').innerHTML = y[x].text + " [in]";
            }
            if (y[x].text == "Upstream Pressure") {
                document.getElementById('lbltipAddedComment').innerHTML = y[x].text + " [psia]";
            }
            if (y[x].text == "Downstream Pressure") {
                document.getElementById('lbltipAddedComment').innerHTML = y[x].text + " [psia]";
            }
        }
        $(document).ready(function () {
            getproyectos(<%=session.getAttribute("idusu")%>,
                    $("#proyects_sel_spi"),
                    $("#error_Dialog_spi"));

            load_spiuE_sel_spi();
            load_spiuE_sel_spi();
            load_press_sel_spi();
            load_in_sel_spi();
            load_temp_sel_spi();
            load_len_sel_spi();
            load_he_sel_spi();
            load_diam_sel_spi();
        });

        function load_diam_sel_spi() {
            var parametros = {
                "combo": "in4",
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
                    var newHtml = "<select class='form-control' name='diam_sel_spi' id= 'diam_sel_spi' onchange='cleanOut_spi()'>" + data;
                    $("#div_diam_sel_spi").html(newHtml);
                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_spi"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function load_he_sel_spi() {
            var parametros = {
                "combo": "he",
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
                    var newHtml = "<select class='form-control' name='ee_sel_spi' id= 'ee_sel_spi'>" + data;
                    $("#div_ee_sel_spi").html(newHtml);
                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_spi"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }



        function cleanOut_spi() {
            $("#resultado").val("");
        }

        function cleanSugg_spi() {
            $("#basepressure_spi").val("");
            $("#basetemperature_spi").val("");
        }

        function cleanIn_spi() {
            $("#gasflowingtemp_spi").val("");
            $("#gasspecificgra_spi").val("");
            $("#pipelineefficiency_spi").val("");
            $("#upstreampressure_spi").val("");
            $("#downstreampressure_spi").val("");
            $("#flowrate_spi").val("");
            $("#internalpipe_spi").val("");
            $("#lengthof_spi").val("");
            $("#upstreamelevation_spi").val("");
            $("#downstreamelevation_spi").val("");
        }

        function cleanAll_spi() {
            cleanIn_spi();
            cleanSugg_spi();
            cleanOut_spi();
        }

        function save_spi() {

            var inputs = $("#page-wrapper input[type='text'],[type='hidden']").not("[readonly]");
            var selects = $("#page-wrapper select");
            var resultados = $("#page-wrapper input[type='text'][readonly]");

            var parametros = {
                "iduser": <% out.print(session.getAttribute("idusu"));%>,
                "from": "spi"
            };

            for (var i = 0; i < inputs.size(); i++) {
                if (!($(inputs[i]).attr("id") === "id_" + parametros["from"] && $(inputs[i]).val() === "-1"))
                {
                    parametros[$(inputs[i]).attr("id")] = $(inputs[i]).val();
                }
            }

            for (var i = 0; i < selects.size(); i++) {
                parametros[$(selects[i]).attr("id")] = $(selects[i]).val();
            }

            for (var i = 0; i < resultados.size(); i++) {
                parametros[$(resultados[i]).attr("id")] = $(resultados[i]).val();
            }

            parametros["opcion"] = parametros["opt_" + parametros["from"]];

            console.log(parametros);
            var isOk = validate(parametros);

            if (isOk === false) {
                alert("You must perform the calculation and fill out the description");
            } else {

                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    dataType: 'json',
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        $("#id_spi").val(data.row.id);
                        $("#opt_spi").val("2"); //opcion editar
                        show_OkDialog($("#save_Dialog_spi"), "Satisfactory process");
                    },
                    error: function (xhr, ajaxOptions, err) {
                        alert(err);
                        show_OkDialog($("#error_Dialog_spi"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
        }

        function calculate_spi() {
            var variables = {
                "basetemperature": $("#basetemperature_spi").val(),
                "basepressure": $("#basepressure_spi").val(),
                "gasflowingtemp": $("#gasflowingtemp_spi").val(),
                "gasspecificgra": $("#gasspecificgra_spi").val(),
                "pipelineroughness": $("#pipelineroughness_spi").val(),
                "pipelineefficiency": $("#pipelineefficiency_spi").val(),
                "flowrate": $("#flowrate_spi").val(),
                "downstreampressure": $("#downstreampressure_spi").val(),
                "internalpipe": $("#internalpipe_spi").val(),
                "upstreampressure": $("#upstreampressure_spi").val(),
                "upstreamelevation": $("#upstreamelevation_spi").val(),
                "lengthof": $("#lengthof_spi").val(),
                "downstreamelevation": $("#downstreamelevation_spi").val()

            };
            var unidades = {
                "bt_sel_spi": $("#bt_sel_spi").val().split(",")[1],
                "bte_sel_spi": $("#bte_sel_spi").val().split(",")[1],
                "gft_sel_spi": $("#gft_sel_spi").val().split(",")[1],
                "if_sel_spi": $("#if_sel_spi").val().split(",")[1],
                "up_sel_spi": $("#up_sel_spi").val().split(",")[1],
                "bp_sel_spi": $("#bp_sel_spi").val().split(",")[1],
                "le_sel_spi": $("#le_sel_spi").val().split(",")[1],
                "ue_sel_spi": $("#ue_sel_spi").val().split(",")[1],
                "de_sel_spi": $("#de_sel_spi").val().split(",")[1],
                "diam_sel_spi": $("#diam_sel_spi").val().split(",")[1]
            };
            var opcion = $("#unknown_spi").val();
            if (opcion === 'flowrate') {
                //alert("1");
                var res = flowrate_spi_form(variables, unidades);
            }
            if (opcion === 'upstream') {
                // alert("2"); 
                var res = upstream_spi_form(variables, unidades);
            }
            if (opcion === 'downstream') {
                // alert("3");
                var res = downstream_spi_form(variables, unidades);
            }
            if (opcion === 'internal') {
                // alert("4");
                var res = internal_spi_form(variables, unidades);
            }
            $("#resultado").val(res[0]);


            show_OkDialog($("#calculate_Dialog_spi"), "Proceso satisfactorio");
        }

        function loadSuggested_spi() {

            var parametros = {
                "idproyect": <% out.print(session.getAttribute("id_proyect"));%>,
                "opcion": "4"
            };
            $.ajax({
                type: "POST",
                url: "../manager.jsp",
                data: parametros,
                beforeSend: function (xhr) {
                    cleanSugg_spi();
                    block("Cargando...");
                },
                success: function (data, status, request) {
                    show_OkDialog($("#load_Dialog_spi"), "Proceso satisfactorio");
                    var res = data.split("-");

                    $("#basetemperature_spi").val(res[1]);
                    $("#basepressure_spi").val(res[0]);
                    cleanOut_spi();
                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_spi"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function deleteReg_spi() {

            var parametros = {
                "id_spi": $("#id_spi").val(),
                "form": "1",
                "opcion": "3"
            };
            $.ajax({
                type: "POST",
                url: "../manager.jsp",
                data: parametros,
                beforeSend: function (xhr) {
                    cleanSugg_spi();
                    block("Cargando...");
                },
                success: function (data, status, request) {
                    cleanAll_spi();
                    show_OkDialog($("#delete_Dialog_spi"), "Proceso satisfactorio");
                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_spi"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }
        function load_spiuE_sel_spi() {
            var parametros = {
                "combo": "fluE",
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
                    var newHtml = "<select class=\"form-control\" name=\"if_sel_spi\" id= \"if_sel_spi\" onchange=\"cleanOut_spi()\">" + data;
                    $("#div_if_sel_spi").html(newHtml);

                    $("#if_sel_spi").val("71,MMSCFD");
                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_spi"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }
        function load_press_sel_spi() {
            var parametros = {
                "combo": "pres",
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
                    var newHtml = "<select class=\"form-control\" name=\"up_sel_spi\" id= \"up_sel_spi\" onchange=\"onchange_pres_spi(this)\">" + data;
                    $("#div_up_sel_spi").html(newHtml);

                    newHtml = "<select class=\"form-control\" name=\"dp_sel_spi\" id= \"dp_sel_spi\" onchange=\"onchange_pres_spi(this)\">" + data;
                    $("#div_dp_sel_spi").html(newHtml);

                    newHtml = "<select class=\"form-control\" name=\"bp_sel_spi\" id= \"bp_sel_spi\" onchange=\"cleanOut_spi()\">" + data;
                    $("#div_bp_sel_spi").html(newHtml);

                    var newHtml = "<select class=\"form-control\" name=\"bte_sel_spi\" id= \"bte_sel_spi\" onchange=\"onchange_pres_spi(this)\">" + data;
                    $("#div_bte_sel_spi").html(newHtml);

                    /*  var newHtml = "<select class=\"form-control\" name=\"gft_sel_spi\" id= \"gft_sel_spi\" onchange=\"onchange_pres_spi(this)\">" + data;
                     $("#div_gft_sel_spi").html(newHtml);*/

                    var obj = [$("#up_sel_spi"), $("#dp_sel_spi"), $("#bp_sel_spi"), $("#bte_sel_spi")];
                    onchageGeneral(obj, "5,psia");

                    //$("#bp_sel_spi").val("5,psia");

                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_spi"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }
        function onchange_pres_spi(imp) {
            cleanOut_spi();
        }
        function load_in_sel_spi() {
            var parametros = {
                "combo": "in",
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
                    var newHtml = "<select class=\"form-control\" name=\"bc_sel_spi\" id= \"bc_sel_spi\" onchange=\"onchange_long_spi(this)\">" + data;
                    $("#div_bc_sel_spi").html(newHtml);

                    /* newHtml = "<select class=\"form-control\" name=\"gft_sel_spi\" id= \"gft_sel_spi\" onchange=\"onchange_long_spi(this)\">" + data;
                     $("#div_gft_sel_spi").html(newHtml);*/



                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_spi"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }
        function load_temp_sel_spi() {
            var parametros = {
                "combo": "temp",
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
                    var newHtml = "<select class='form-control' name='st_sel_spi' id= 'st_sel_spi' onchange='cleanOut_spi()'>" + data;
                    $("#div_st_sel_spi").html(newHtml);

                    newHtml = "<select class='form-control' name='bt_sel_spi' id= 'bt_sel_spi' onchange='cleanOut_spi()'>" + data;
                    $("#div_bt_sel_spi").html(newHtml);

                    var newHtml = "<select class=\"form-control\" name=\"gft_sel_spi\" id= \"gft_sel_spi\" onchange=\"onchange_pres_spi(this)\">" + data;
                    $("#div_gft_sel_spi").html(newHtml)

                    var vecObj = [$("#bt_sel_spi"), $("#gft_sel_spi")];
                    onchageGeneral(vecObj, "3,F");


                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_spi"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }
        function load_len_sel_spi() {
            var parametros = {
                "combo": "len",
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
                    var newHtml = "<select class='form-control' name='ue_sel_spi' id= 'ue_sel_spi' onchange='cleanOut_spi()'>" + data;
                    $("#div_ue_sel_spi").html(newHtml);

                    var newHtml = "<select class='form-control' name='de_sel_spi' id= 'de_sel_spi' onchange='cleanOut_spi()'>" + data;
                    $("#div_de_sel_spi").html(newHtml);

                    var newHtml = "<select class='form-control' name='le_sel_spi' id= 'le_sel_spi' onchange='cleanOut_spi()'>" + data;
                    $("#div_le_sel_spi").html(newHtml);

                    var vecObj = [$("#de_sel_spi"), $("#ue_sel_spi"), , $("#le_sel_spi")];
                    onchageGeneral(vecObj, "2463,mt");

                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_spi"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }
        function onchange_Input_spi(inp) {

            var sw = validateDecimal(inp.value);

            if (sw !== true) {
                inp.value = "";
            }

            onchange_Input_zero(inp);
            cleanOut_spi();
        }
    </script>
</html>