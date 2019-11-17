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
                                <h2><strong>Pipeline Corrosion:</strong> 7.3. Rate of Electrical Current Flow Through the Corrosion Cell </h2>
                            </div>
                            <div class="col-lg-3"> 
                                <br>
                                <!-- Button trigger modal -->
                                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_re()">
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
                                                <div id="div-table_re"></div>
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
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            Description:  
                            <input  class="form-control" type="text" id="description_re" name="description_re"><br>
                            Projects: 
                            <select class="form-control" id="proyects_sel_re" name="proyects_sel_re"> </select>
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
                                                    <div class="panel-heading"> Input Parameters </div>
                                                    <div class="panel-body">
                                                        <div class="row">
                                                            <div class="col-lg-12">
                                                                <div class="form-group">
                                                                    <div class="col-md-12">
                                                                        <label>Potential of the cathode with respect to a reference electrode:</label>
                                                                    </div>
                                                                    <div class="col-md-8">
                                                                        <input class="form-control" value = "15" type="text" id="potentialc_re" name="potentialc_re" onchange="onchange_Input_re(this)" required>
                                                                    </div>
                                                                    <div class="col-md-4" id = "div_pc_sel_re">
                                                                        <select class="form-control" id="pc_sel_re" name="pc_sel_re" onchange="cleanOut_re()"> </select>
                                                                    </div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <div class="col-md-12">
                                                                        <label>Potential of the anode with respect to the same reference electrode:</label>
                                                                    </div>
                                                                    <div class="col-md-8">
                                                                        <input class="form-control"  value = "33" type="text" id="potentiala_re" name="potentiala_re" onchange="onchange_Input_re(this)" required>

                                                                    </div>
                                                                    <div class="col-md-4" id = "div_pa_sel_re">
                                                                        <select class="form-control" id="pa_sel_re" name="pa_sel_re" onchange="cleanOut_re()"> </select>
                                                                    </div>
                                                                </div>

                                                                <div class="form-group">
                                                                    <div class="col-md-12">
                                                                        <label>Total resistance to electrical current flow thugh the cell:</label>
                                                                    </div>
                                                                    <div class="col-md-8">
                                                                        <input class="form-control"  value = "23" type="text" id="totalr_re" name="totalr_re" onchange="onchange_Input_re(this)" required>            
                                                                    </div>
                                                                    <div class="col-md-4" id = "div_tr_sel_re">
                                                                        <select class="form-control" id="tr_sel_re" name="tr_sel_re" onchange="cleanOut_re()"> </select>
                                                                    </div>
                                                                </div>   
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
                                                                <div class="form-group">
                                                                    <label>Rate of the electrical current flow through the corrosion cell [Amp]:</label>
                                                                    <input type="text" id="ratee_re" name="ratee_re" readonly required class="form-control">
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
                                            <input type="button" id="calculateBtn_re" name="calculateBtn_re" value="Calculate" onclick="calculate_re()" class="btn btn-info btn-block">
                                            <input type="button" id="saveBtn_re" name="saveBtn_re" value="Save" onclick="save_re()" class="btn btn-success btn-block">   
                                            <input type="button" id="delteBtn_re" name="delteBtn_re" value="Delete" onclick="delete_re()" class="btn btn-danger btn-block">
                                            <input type="button" id="cleanAllBtn_re" name="cleanAllBtn_re" value="Clean All Data" onclick="cleanAll_re()" class="btn btn-warning btn-block">
                                            <input type="button" id="cleanInputBtn_re" name="cleanInputBtn_re" value="Clean Input Data" onclick="cleanIn_re()" class="btn btn-warning btn-block">
                                            <input type="button" id="cleanOutputBtn_re" name="cleanOutputBtn_re" value="Clean Output Data" onclick="cleanOut_re()" class="btn btn-warning btn-block">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <input type="hidden" id="id_re" name="id_re" value="-1">  
                        <input type="hidden" id="opt_re" name="opt_re" value="1"> 
                    </div>
                    <div id="load_Dialog_re" title="Basic dialog" style='display:none;'>
                        <p>Successfully uploaded data</p>
                    </div>

                    <div id="save_Dialog_re" title="Basic dialog" style='display:none;'>
                        <p>Data saved successfully</p>
                    </div>

                    <div id="error_Dialog_re" title="Basic dialog" style='display:none;'>
                        <p>An error has occurred in the process</p>
                    </div>

                    <div id="calculate_Dialog_re" title="Basic dialog" style='display:none;'>
                        <p>Calculation done successfully</p>
                    </div>

                    <div id="delete_Dialog_re" title="Basic dialog" style='display:none;'>
                        <p>Successfully deleted record</p>
                    </div>

                    <div id="dialog-confirm_re" title="Delete record" style='display:none;'>
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
        load_pote_sel_re();
        load_ohm_sel_re();

        getproyectos(<%=session.getAttribute("idusu")%>,
                $("#proyects_sel_re"),
                $("#error_Dialog_re"));
    });

    function load_pote_sel_re() {
        var parametros = {
            "combo": "pote",
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
                var newHtml = "<select class=\"form-control\" name=\"pc_sel_re\" id= \"pc_sel_re\" onchange=\"cleanOut_re()\">" + data;
                $("#div_pc_sel_re").html(newHtml);

                newHtml = "<select class=\"form-control\" name=\"pa_sel_re\" id= \"pa_sel_re\" onchange=\"cleanOut_re()\">" + data;
                $("#div_pa_sel_re").html(newHtml);

            },
            error: function (xhr, ajaxOptions, err) {
                show_OkDialog($("#error_Dialog_re"), "Error");
            },
            complete: function () {
                unBlock();
            }
        });
    }

    function load_ohm_sel_re() {
        var parametros = {
            "combo": "ohm",
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
                var newHtml = "<select class=\"form-control\" name=\"tr_sel_re\" id= \"tr_sel_re\" onchange=\"cleanOut_re()\">" + data;
                $("#div_tr_sel_re").html(newHtml);

            },
            error: function (xhr, ajaxOptions, err) {
                show_OkDialog($("#error_Dialog_re"), "Error");
            },
            complete: function () {
                unBlock();
            }
        });
    }

    function load_history_re() {
        var parametros = {
            "idproyect": $("#proyects_sel_re").val(),
            "iduser": <% out.print(session.getAttribute("idusu"));%>,
            "opcion": "6",
            "nombre": "historial",
            "from": "re"
        };

        $.ajax({
            type: "POST",
            url: "../manager.jsp",
            data: parametros,
            dataType: 'json',
            async: false,
            beforeSend: function (xhr) {
                cleanAll_re();
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
                            html += "<td>" + data.historial[i].description_re + "</td>";
                            html += "<td><a href='#' onClick=\"load_form_re(" + data.historial[i].id + ")\"><span class='glyphicon glyphicon-plus' aria-hidden='true'></span></a></td>";
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
                $("#div-table_re").empty();
                $("#div-table_re").html(html);

            },
            error: function (xhr, ajaxOptions, err) {
                show_OkDialog($("#error_Dialog_re"), "Error");
            },
            complete: function () {
                unBlock();
            }
        });
    }

    function load_form_re(id) {
        var parametros = {
            "id": id,
            "opcion": "4",
            "from": "re"
        };

        $.ajax({
            type: "POST",
            url: "../manager.jsp",
            data: parametros,
            dataType: 'json',
            beforeSend: function (xhr) {
                cleanAll_re();
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

                    $("#proyects_sel_re").val(data.row.id_proyect);

                    $("#opt_re").val("2");
                    $("#id_re").val(data.row.id);
                } else {
                    $("#opt_re").val("1");
                }

            },
            error: function (xhr, ajaxOptions, err) {
                $("#opt_re").val("1");
                show_OkDialog($("#error_Dialog_re"), "Error");

            },
            complete: function () {
                unBlock();
            }
        });
    }

    function onchange_Input_re(inp) {
        var sw = validateDecimal(inp.value);

        if (sw != true) {
            inp.value = "";
        }
        onchange_Input_zero(inp);
        cleanOut_re();
    }

    function cleanOut_re() {
        $("#ratee_re").val("");
    }

    function cleanIn_re() {
        $("#potentiala_re").val("");
        $("#potentialc_re").val("");
        $("#totalr_re").val("");
    }

    function cleanAll_re() {
        cleanIn_re();
        cleanOut_re();

        $("#description_re").val("");
    }

    function save_re() {
        var inputs = $("#page-wrapper input[type='text'],[type='hidden']").not("[readonly]");
        var selects = $("#page-wrapper select");
        var resultados = $("#page-wrapper input[type='text'][readonly]");

        var parametros = {
            "id_user": <% out.print(session.getAttribute("idusu"));%>,
            "from": "re"
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
                    $("#id_re").val(data.row.id);
                    $("#opt_re").val("2");
                    show_OkDialog($("#save_Dialog_re"), "Satisfactory process");
                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_re"), "Error");
                    alert(err);
                },
                complete: function () {
                    unBlock();
                }
            });
        }

    }

    function calculate_re() {
        var variables = {
            "potentialc_re": $("#potentialc_re").val().replace(",", ""),
            "potentiala_re": $("#potentiala_re").val().replace(",", ""),
            "totalr_re": $("#totalr_re").val().replace(",", "")
        };

        var isOk = validate(variables);

        if (isOk === false) {
            alert("You must complete all fields");
        } else {

            var unidades;

            var res = rateElectrical_Form(variables);

            $("#ratee_re").val(res[0]);

            show_OkDialog($("#calculate_Dialog_re"), "Satisfactory process");
        }

    }

    function delete_re() {

        //Confirmacion
        if ($("#opt_re").val() == 2) {
            $("#dialog-confirm_re").dialog({
                resizable: false,
                height: "auto",
                width: 400,
                modal: true,
                buttons: {
                    "Delete": function () {
                        deleteReg_re();
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

    function deleteReg_re() {

        var parametros = {
            "id_re": $("#id_re").val(),
            "opcion": "3",
            "iduser": <% out.print(session.getAttribute("idusu"));%>,
            "from": "re"
        };
        $.ajax({
            type: "POST",
            url: "../manager.jsp",
            data: parametros,
            beforeSend: function (xhr) {
                block("Cargando...");
            },
            success: function (data, status, request) {
                cleanAll_re();
                $("#id_re").val("-1");
                $("#opt_re").val("1");
                show_OkDialog($("#delete_Dialog_re"), "Satisfactory process");
            },
            error: function (xhr, ajaxOptions, err) {
                show_OkDialog($("#error_Dialog_re"), "Error");
            },
            complete: function () {
                unBlock();
            }
        });
    }

</script>

</html>