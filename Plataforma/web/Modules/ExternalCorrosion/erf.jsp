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
                                <h2><strong>External Corrosion direct assessment toolset:</strong> Safe Operating Pressure and metal losses under ASME B31G and the modified ASME B31G (0,85dl) criteria</h2>
                            </div>
                            <div class="col-lg-3"> 
                                <br>
                                <!-- Button trigger modal -->
                                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_erf()">
                                    Records
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
                                                <div id="div-table_erf"></div>
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
                                <input  class="form-control" type="text" id="description_erf" name="description_erf"><br>
                                Projects:
                                <select class="form-control" id="proyects_sel_erf" name="proyects_sel_erf"> </select>
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
                                                            Input Data
                                                        </div>
                                                        <div class="panel-body" id="input_erf">
                                                            <div class="row">
                                                                <div class="col-lg-12">
                                                                    <div class="col-md-12">
                                                                        <div class="col-md-12"><label>Corroded area length:</label></div>
                                                                        <div class="col-md-8">

                                                                            <input class="form-control" value="200" type="text" id="longacor_erf" name="longacor_erf" onchange="onchange_Input_erf(this)" required>
                                                                        </div>
                                                                        <div class="col-md-4" id = "div_de_sel_erf">
                                                                            <select class="form-control" id="de_sel_erf" name="de_sel_erf"> </select>
                                                                        </div>
                                                                    </div>       
                                                                    <div class="col-md-12">
                                                                        <div class="col-md-12">
                                                                            <div><label>Maximum percentage of metal loss of the corroded area:</label></div>
                                                                            <input class="form-control" value="49.7" type="text" id="pmpmac_erf" name="pmpmac_erf" onchange="onchange_Input_erf(this)" required>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-12">
                                                                        <div class="col-md-12"><label>Nominal external diameter:</label></div>
                                                                        <div class="col-md-8">

                                                                            <input class="form-control" value="20" type="text" id="dianoex_erf" name="dianoex_erf" onchange="onchange_Input_erf(this)" required>
                                                                        </div>
                                                                        <div class="col-md-4" id = "div_dn_sel_erf">
                                                                            <select class="form-control" id="dn_sel_erf" name="dn_sel_erf"> </select>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-12">
                                                                        <div class="col-md-12"> <label>Nominal thickness of the pipe:</label></div>
                                                                        <div class="col-md-8">

                                                                            <input class="form-control" value="0.312" type="text" id="esnotu_erf" name="esnotu_erf" onchange="onchange_Input_erf(this)" required>
                                                                        </div>
                                                                        <div class="col-md-4" id = "div_en_sel_erf">
                                                                            <select class="form-control" id="en_sel_erf" name="en_sel_erf"> </select>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-12">
                                                                        <div class="col-md-12"><label>SMYS [psi]:</label></div>
                                                                        <div class="col-md-12">

                                                                            <input class="form-control" value="60,000" type="text" id="smys_erf" name="smys_erf" onchange="onchange_Input_erf(this)" required >
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-12">
                                                                        <div class="col-md-12"> <label>MAOP [psi]:</label></div> 
                                                                        <div class="col-md-12">
                                                                            <input class="form-control" value="1,200" type="text" id="maop_erf" name="maop_erf" onchange="onchange_Input_erf(this)" required>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-12">
                                                                        <div class="col-md-12"> <label>Location class:</label></div> 
                                                                        <div class="col-md-8" id = "div_lc_sel_erf">
                                                                            <select class="form-control" id="lc_sel_erf" name="lc_sel_erf"> </select>
                                                                        </div>
                                                                        <div class="col-md-4">
                                                                            <input class="form-control" value="1" type="text" id="cllocalidad_erf" name="cllocalidad_erf" onchange="onchange_Input_erf(this)" required>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="form-group" id="results_erf">
                                                    <div class="col-lg-6">            
                                                        <div class="panel panel-default">
                                                            <div class="panel-heading">
                                                                Results (B31G)
                                                            </div>
                                                            <div class="panel-body">

                                                                <div class="row">
                                                                    <div class="col-lg-12">
                                                                        <div class="form-group">
                                                                            <label>Failure pressure of metal loss [psig]:</label>
                                                                            <input type="text" id="prefalperme_erf" name="prefalperme_erf" readonly required class="form-control">
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <label>Safe operating pressure [psig]:</label>
                                                                            <input type="text" id="preseop_erf" name="preseop_erf" readonly required class="form-control">
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <label>ERF:</label>            
                                                                            <input type="text" id="erf_erf" name="erf_erf" readonly required class="form-control">
                                                                        </div>  

                                                                    </div>
                                                                </div>
                                                            </div>

                                                        </div>
                                                    </div>
                                                    <div class="col-lg-6">
                                                        <div class="panel panel-default">
                                                            <div class="panel-heading">
                                                                Results (B31G Modificado)
                                                            </div>
                                                            <div class="panel-body">

                                                                <div class="row">
                                                                    <div class="col-lg-12">


                                                                        <div class="form-group">
                                                                            <label>Failure pressure of metal loss [psi]:</label>
                                                                            <input type="text" id="prefalpermeM_erf" name="prefalpermeM_erf" readonly required class="form-control">
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <label>Safe operating pressure [psi]:</label>
                                                                            <input type="text" id="preseopM_erf" name="preseopM_erf" readonly required class="form-control">
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <label>ERF:</label>
                                                                            <input type="text" id="erfM_erf" name="erfM_erf" readonly required class="form-control">
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <label>FOS:</label>
                                                                            <input type="text" id="fos_erf" name="fos_erf" readonly required class="form-control">
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
                            </div>  

                            <div class="col-lg-3">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        Actions
                                    </div>
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <input type="button" id="calculateBtn" name="calculateBtn" value="Calculate" onclick="calculate_erf()" class="btn btn-info btn-block">
                                                <input type="submit" id="saveBtn" name="saveBtn" value="Save" onclick="save_erf()" class="btn btn-success btn-block">   
                                                <input type="button" id="delteBtn" name="delteBtn" value="Eliminar" onclick="deleteReg_erf()" class="btn btn-danger btn-block">
                                                <input type="button" id="cleanAllBtn" name="cleanBtn" value="Clean All" onclick="cleanAll_erf()" class="btn btn-warning btn-block">
                                                <input type="button" id="cleanInputBtn" name="cleanBtn" value="Clean Input Data" onclick="cleanIn_erf()" class="btn btn-warning btn-block">
                                                <input type="button" id="cleanOutputBtn" name="cleanBtn" value="Clean Output Data" onclick="cleanOut_erf()" class="btn btn-warning btn-block">
                                                  </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <input type="hidden" id="id_erf" name="id_erf" value="-1">  
                            <input type="hidden" id="opt_erf" name="opt_erf" value="1">  
                        </div>
                        <div id="save_Dialog_erf" title="Basic dialog" style='display:none;'>
                            <p>Data saved successfully</p>
                        </div>

                        <div id="error_Dialog_erf" title="Basic dialog" style='display:none;'>
                            <p>An error has occurred in the process</p>
                        </div>

                        <div id="calculate_Dialog_erf" title="Basic dialog" style='display:none;'>
                            <p>Calculation done successfully</p>
                        </div>

                        <div id="delete_Dialog_erf" title="Basic dialog" style='display:none;'>
                            <p>Successfully deleted record</p>
                        </div>

                        <div id="dialog-confirm_erf" title="Delete record" style='display:none;'>
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
            load_len_sel_erf();
            load_desingf_sel_erf();
            getproyectos(<%=session.getAttribute("idusu")%>,
                    $("#proyects_sel_erf"),
                    $("#error_Dialog_erf"));

        });
        
        function load_history_erf() {
            var parametros = {
                "idproyect": $("#proyects_sel_erf").val(),
                "iduser": <% out.print(session.getAttribute("idusu"));%>,
                "from": "erf",
                "opcion": "6",
                "nombre": "historial"
            };

            $.ajax({
                type: "POST",
                url: "../manager.jsp",
                data: parametros,
                dataType: 'json',
                beforeSend: function (xhr) {
                    $("#opt_erf").val("1");
                    $("#id_erf").val("-1");
                    cleanAll_erf();
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
                                html += "<td>" + data.historial[i].description_erf + "</td>";
                                html += "<td><a href='#' onClick='load_form_erf(" + data.historial[i].id + ")'><span class='glyphicon glyphicon-plus' aria-hidden='true'></span></a></td>";
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
                    $("#div-table_erf").empty();
                    $("#div-table_erf").html(html);

                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_erf"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        

        function onchange_Input_erf(inp) {
            var sw = validateDecimal(inp.value);

            if (sw !== true) {
                inp.value = "";
            }
            onchange_Input_zero(inp);
            cleanOut_erf();
        }

        function cleanOut_erf() {
             $("#results_erf input[type='text'][readonly]").val("");
        }

        function cleanIn_erf() {
            $("#input_erf input[type='text']").val("");
        }

        function cleanAll_erf() {
            cleanIn_erf();
            cleanOut_erf();
            $("#description_erf").val("");
        }

        function calculate_erf() {
            var variables = {
                "longacor_erf": $("#longacor_erf").val().replace(",", ""),
                "pmpmac_erf": $("#pmpmac_erf").val().replace(",", ""),
                "dianoex_erf": $("#dianoex_erf").val().replace(",", ""),
                "esnotu_erf": $("#esnotu_erf").val().replace(",", ""),
                "smys_erf": $("#smys_erf").val().replace(",", ""),
                "maop_erf": $("#maop_erf").val().replace(",", ""),
                "cllocalidad_erf": $("#cllocalidad_erf").val().replace(",", ""),
                "height_erf": $("#cllocalidad_erf").val().replace(",", "")
            };
            var unidades = {
                "de_sel_erf": $("#de_sel_erf").val().split(",")[1],
                "dn_sel_erf": $("#dn_sel_erf").val().split(",")[1],
                "en_sel_erf": $("#en_sel_erf").val().split(",")[1]
            };

            var res = erf_Form(variables, unidades);
            if (res[3]) {
                show_OkDialog($("#calculate_Dialog_erf"), "Con estos datos se obtuvo un valor negativo");
            } else {
                show_OkDialog($("#calculate_Dialog_erf"), "Proceso satisfactorio");

            }
            $("#prefalperme_erf").val(res[0]);
            $("#preseop_erf").val(res[1]);
            $("#erf_erf").val(res[2]);
            $("#prefalpermeM_erf").val(res[3]);
            $("#preseopM_erf").val(res[4]);
            $("#erfM_erf").val(res[5]);
            $("#fos_erf").val(res[6]);



        }
        
        function load_form_erf(id) {

            var parametros = {
                "id": id,
                "from": "erf",
                "opcion": "4"
            };

            $.ajax({
                type: "POST",
                url: "../manager.jsp",
                data: parametros,
                dataType: 'json',
                beforeSend: function (xhr) {
                    cleanAll_erf();
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

                        $("#opt_erf").val("2");
                        $("#id_erf").val(data.row.id);

                        alert("Successfully uploaded data");
                    } else {
                        $("#opt_erf").val("1");
                    }

                },
                error: function (xhr, ajaxOptions, err) {
                    $("#opt_erf").val("1");
                    show_OkDialog($("#error_Dialog_erf"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        

        function load_desingf_sel_erf() {
            var parametros = {
                "combo": "desingf2",
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
                    var newHtml = "<select class=\"form-control\" name=\"lc_sel_erf\" id=\"lc_sel_erf\" onchange=\"onchange_defa_erf()\">" + data;
                    $("#div_lc_sel_erf").html(newHtml);

                    var x = $("#lc_sel_erf").val();
                    $("#cllocalidad_erf").val(x.split(",")[1]);

                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_erf"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function onchange_defa_erf() {
            $("#cllocalidad_erf").val($("#lc_sel_erf").val().split(",")[1]);
            cleanOut_erf();
        }



        function loadSuggested_erf() {

            var parametros = {
                "idproyect": <% out.print(session.getAttribute("id_proyect"));%>,
                "opcion": "4"
            };
            $.ajax({
                type: "POST",
                url: "../manager.jsp",
                data: parametros,
                beforeSend: function (xhr) {
                    block("Cargando...");
                },
                success: function (data, status, request) {
                    show_OkDialog($("#load_Dialog_erf"), "Proceso satisfactorio");
                    var res = data.split("-");

                    $("#basetemperature_erf").val(res[1]);
                    $("#basepressure_erf").val(res[0]);
                    cleanOut_erf();
                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_erf"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }
        
        function delete_erf() {

            //Confirmacion
            if ($("#opt_erf").val() == 2) {
                $("#dialog-confirm_erf").dialog({
                    resizable: false,
                    height: "auto",
                    width: 400,
                    modal: true,
                    buttons: {
                        "Delete": function () {
                            deleteReg_erf();
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

        function deleteReg_erf() {
            var parametros = {
                "id_erf": $("#id_erf").val(),
                "opcion": 3,
                "iduser": <%=session.getAttribute("idusu")%>,
                "from": "erf"
            };


            if ($("#opt_erf").val() == 2) {
                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    dataType: 'json',
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        cleanAll_erf();
                        $("#id_erf").val("-1");
                        $("#opt_erf").val("1");
                        show_OkDialog($("#delete_Dialog_erf"), "Satisfactory process");
                    },
                    error: function (xhr, ajaxOptions, err) {
                        alert(err);
                        show_OkDialog($("#error_Dialog_erf"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });

            } else {
                alert("You must load a record to be able to delete it");
            }
        }
        
        

        function load_len_sel_erf() {
            var parametros = {
                "combo": "in2",
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
                    var newHtml = "<select class='form-control' name='de_sel_erf' id= 'de_sel_erf' >" + data;
                    $("#div_de_sel_erf").html(newHtml);

                    var newHtml = "<select class='form-control' name='dn_sel_erf' id= 'dn_sel_erf' >" + data;
                    $("#div_dn_sel_erf").html(newHtml);

                    var newHtml = "<select class='form-control' name='en_sel_erf' id= 'en_sel_erf' >" + data;
                    $("#div_en_sel_erf").html(newHtml);

                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_erf"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function save_erf() {

            //Todos inputs y select que no tengan readonly
            var inputs = $("#page-wrapper input[type='text'],[type='hidden']").not("[readonly]");
            var selects = $("#page-wrapper select");
            var resultados = $("#page-wrapper input[type='text'][readonly]");

            var parametros = {
                "id_user": <% out.print(session.getAttribute("idusu"));%>,
                "from": "erf"
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
                        $("#id_erf").val(data.row.id);
                        $("#code_erf").val(data.row.id);
                        $("#opt_erf").val("2"); //opcion editar
                        show_OkDialog($("#save_Dialog_erf"), "Satisfactory process");
                    },
                    error: function (xhr, ajaxOptions, err) {
                        alert(err);
                        show_OkDialog($("#error_Dialog_erf"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

        }



    </script>


</html>