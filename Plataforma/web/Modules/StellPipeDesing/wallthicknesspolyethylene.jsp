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
                                <h2><strong>Steel Pipe Design:</strong>  Wall Thickness Polyethylene Pipe</h2>
                            </div>
                            <div class="col-lg-3"> 
                                <br>
                                <!-- Button trigger modal -->
                                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_wtpe()">
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
                                                <div id="div-table_wtpe"></div>
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
                                <input  class="form-control" type="text" id="description_wtpe" name="description_wtpe"><br>
                                Projects: 
                                <select class="form-control" id="proyects_sel_wtpe" name="proyects_sel_wtpe"> </select>
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
                                                        <div class="panel-heading"> Select Pipe and Location Data </div>
                                                        <div class="panel-body">
                                                            <div class="row">
                                                                <div class="col-lg-12">                                                 
                                                                    <div class="panel panel-default">
                                                                        <div class="panel-heading">
                                                                            Polyethylene Line Pipe API 15LE:
                                                                        </div>
                                                                        <div class="panel-body">
                                                                            <div class="col-lg-12">
                                                                                <label>Tamaño nominal de la tubería</label>                        
                                                                                <div id="div_cole_sel_wtpe">
                                                                                    <select class="form-control" id="cole_sel_coef_wtpe" name="cole_sel_coef_wtpe"> </select>    
                                                                                </div>

                                                                            </div>                      

                                                                        </div>
                                                                    </div>
                                                                    <div class="panel panel-default">
                                                                        <div class="panel-heading">
                                                                            HDB - 73°F
                                                                        </div>
                                                                        <div class="panel-body">
                                                                            <div class="col-lg-12">
                                                                                <label>Piping Material Designation:</label>                        
                                                                                <div class="col-lg-12" id="div_material_sel_wtpe">
                                                                                    <select class="form-control" id="material_sel_wtpe" name="material_sel_wtpe"> </select>
                                                                                </div> 

                                                                            </div>                      

                                                                        </div>
                                                                    </div>

                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>


                                                <div class="form-group">
                                                    <div class="panel panel-default">
                                                        <div class="panel-heading"> Input Parameters </div>
                                                        <div class="panel-body">
                                                            <div class="row">
                                                                <div class="col-lg-12">    
                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Nominal pipe size:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" class="form-control" id="nom_pipeop_wtpe" name="nom_pipeop_wtpe" onchange='onchange_Input_wtpe(this)' required> 
                                                                        </div>
                                                                        <div class="col-md-4" id = "div_nom_pipeop_sel_wtpe">
                                                                            <select class="form-control" id="nom_pipeop_sel_wtpe" name="nom_pipeop_sel_wtpe" onchange='cleanOut_wtpe()'> 
                                                                            </select>
                                                                        </div>
                                                                    </div>

                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Outside Diameter:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" class="form-control" id="out_pipeop_wtpe" name="out_pipeop_wtpe" onchange='onchange_Input_wtpe(this)' required> 
                                                                        </div>
                                                                        <div class="col-md-4" id = "div_out_pipeop_sel_wtpe">
                                                                            <select class="form-control" id="out_pipeop_sel_wtpe" name="out_pipeop_sel_wtpe" onchange='cleanOut_wtpe()'> 
                                                                            </select>
                                                                        </div>
                                                                    </div>

                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Design Pressure:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" class="form-control" id="despress_pipeop_wtpe" name="despress_pipeop_wtpe" onchange='onchange_Input_wtpe(this)' required> 
                                                                        </div>
                                                                        <div class="col-md-4" id = "div_despress_pipeop_sel_wtpe">
                                                                            <select class="form-control" id="despress_pipeop_sel_wtpe" name="despress_pipeop_sel_wtpe" onchange='cleanOut_wtpe()'> 
                                                                                <option value="psi">psi</option>
                                                                                <option value="MPa">MPa</option>
                                                                            </select>
                                                                        </div>
                                                                    </div>

                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Hydrostatic Design Basis:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" class="form-control" id="hyd_pipeop_wtpe" name="hyd_pipeop_wtpe" onchange='onchange_Input_wtpe(this)' required> 
                                                                        </div>
                                                                        <div class="col-md-4" id = "div_hyd_pipeop_sel_wtpe">
                                                                            <select class="form-control" id="hyd_pipeop_sel_wtpe" name="hyd_pipeop_sel_wtpe" onchange='cleanOut_wtpe()'> 
                                                                                <option value="psi">psi</option>
                                                                                <option value="MPa">MPa</option>
                                                                            </select>
                                                                        </div>
                                                                    </div>

                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Design Factor:</label>
                                                                        </div>
                                                                        <div class="col-md-12">
                                                                            <input type="text" class="form-control" id="fact_pipeop_wtpe" name="fact_pipeop_wtpe" onchange='onchange_Input_wtpe(this)' required> 
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
                                                                        <div class="col-md-12">
                                                                            <label>Espesor mínimo de la pared de la tubería:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" name="minimun_wallthick_wtpe" id="minimun_wallthick_wtpe" class="form-control" readonly> 
                                                                        </div>
                                                                        <div class="col-md-4">
                                                                            <select class="form-control output-unit-select" data-output-type="long" data-output-value="minimun_wallthick_wtpe">
                                                                                <option value="in">in</option>
                                                                                <option value="mm">mm</option>
                                                                            </select>
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
                                                <input type="button" id="calculateBtn_wtpe" name="calculateBtn_wtpe" value="Calculate" onclick="calculate_wtpe()" class="btn btn-info btn-block">
                                                <input type="button" id="saveBtn_wtpe" name="saveBtn_wtpe" value="Save" onclick="save_wtpe()" class="btn btn-success btn-block">   
                                                <input type="button" id="delteBtn_wtpe" name="delteBtn_wtpe" value="Eliminar" onclick="deleteReg_wtpe()" class="btn btn-danger btn-block">          

                                                <input type="button" id="cleanAllBtn_wtpe" name="cleanBtn_wtpe" value="Clean All" onclick="cleanAll_wtpe()" class="btn btn-warning btn-block">
                                                <input type="button" id="cleanInputBtn_wtpe" name="cleanBtn_wtpe" value="Clean Input Data" onclick="cleanIn_wtpe()" class="btn btn-warning btn-block">
                                                <input type="button" id="cleanOutputBtn_wtpe" name="cleanBtn_wtpe" value="Clean Output Data" onclick="cleanOut_wtpe()" class="btn btn-warning btn-block">

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <input type="hidden" id="opt_wtpe" name="opt_wtpe"> 
        <input type="hidden" id="id_wtpe" name="id_wtpe"> 
                        </div>
                        <div id="load_Dialog_wtpe" title="Basic dialog" style='display:none;'>
                            <p>Successfully uploaded data</p>
                        </div>

                        <div id="save_Dialog_wtpe" title="Basic dialog" style='display:none;'>
                            <p>Data saved successfully</p>
                        </div>

                        <div id="error_Dialog_wtpe" title="Basic dialog" style='display:none;'>
                            <p>An error has occurred in the process</p>
                        </div>

                        <div id="calculate_Dialog_wtpe" title="Basic dialog" style='display:none;'>
                            <p>Calculation done successfully</p>
                        </div>

                        <div id="delete_Dialog_wtpe" title="Basic dialog" style='display:none;'>
                            <p>Successfully deleted record</p>
                        </div>

                        <div id="dialog-confirm_wtpe" title="Delete record" style='display:none;'>
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
                getproyectos(<%=session.getAttribute("idusu")%>,
                        $("#proyects_sel_wtpe"),
                        $("#error_Dialog_wtpe"));

                $("#opt_wtpe").val("1");
                load_np_sel_wtpe("npsn");
                load_hyd_sel_wtpe("HDB");
                load_in_sel_wtpe();
            });
            
            function load_in_sel_wtpe() {
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
                        var newHtml = "<select class='form-control' id='nom_pipeop_sel_wtpe' name='nom_pipeop_sel_wtpe' onchange='cleanOut_wtpe()'> " + data;
                        $("#div_nom_pipeop_sel_wtpe").html(newHtml);
                        
                        newHtml = "<select class='form-control' id='out_pipeop_sel_wtpe' name='out_pipeop_sel_wtpe' onchange='cleanOut_wtpe()'> " + data;
                        $("#div_out_pipeop_sel_wtpe").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_wtpe"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            
            function calculate_wtpe() {
                var variables = {
                    "nom_pipeop_wtpe": $("#nom_pipeop_wtpe").val(),
                    "out_pipeop_wtpe": $("#out_pipeop_wtpe").val(),
                    "despress_pipeop_wtpe": $("#despress_pipeop_wtpe").val(),
                    "hyd_pipeop_wtpe": $("#hyd_pipeop_wtpe").val(),
                    "fact_pipeop_wtpe": $("#fact_pipeop_wtpe").val()
                };
                
                var unidades = {
                    "nom_pipeop_sel_wtpe": $("#nom_pipeop_sel_wtpe").val().split(",")[1],
                    "out_pipeop_sel_wtpe": $("#out_pipeop_sel_wtpe").val().split(",")[1],
                    "despress_pipeop_sel_wtpe": $("#despress_pipeop_sel_wtpe").val(),
                    "hyd_pipeop_sel_wtpe": $("#hyd_pipeop_sel_wtpe").val()
                };

                var res = wall_poly_lene_form(variables, unidades);

                $("#minimun_wallthick_wtpe").val(res[0]);

                show_OkDialog($("#calculate_Dialog_wtpe"), "Proceso satisfactorio");
            }

            function load_np_sel_wtpe(idcombo) {
                var parametros = {
                    "combo": idcombo,
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
                        var newHtml = "<select class=\"form-control\" name=\"cole_sel_coef_wtpe\" id= \"cole_sel_coef_wtpe\" onchange=\"onchange_nps_wtpe()\">" + data;

                        $("#div_cole_sel_wtpe").html(newHtml);
                        var po = $("#cole_sel_coef_wtpe").val().trim().split(",")[1];
                        $("#nom_pipeop_wtpe").val(po);
                        $("#out_pipeop_wtpe").val(po);
                        onchange_nps_wtpe();

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_wtpe"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            function onchange_nps_wtpe() {
                var po = $("#cole_sel_coef_wtpe").val();
                $("#nom_pipeop_wtpe").val(po);
                $("#out_pipeop_wtpe").val(po);
                cleanOut_wtpe();
            }

            function load_hyd_sel_wtpe(idcombo) {
                var parametros = {
                    "combo": idcombo,
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
                        var newHtml = "<select class=\"form-control\" name=\"material_sel_wtpe\" id= \"material_sel_wtpe\" onchange=\"onchange_hyd_wtpe()\">" + data;

                        $("#div_material_sel_wtpe").html(newHtml);
                        var po = $("#material_sel_wtpe").val().trim().split(",")[1];
                        $("#hyd_pipeop_wtpe").val(po.split(",")[1]);
                        //$("#out_pipeop_wtpe").val(po);
                        onchange_hyd_wtpe();

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_wtpe"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            function onchange_hyd_wtpe() {
                var po = $("#material_sel_wtpe").val();
                $("#hyd_pipeop_wtpe").val(po.split(",")[1]);
                cleanOut_wtpe();
            }

            function cleanOut_wtpe() {
                $("#minimun_wallthick_wtpe").val("");
            }

            function cleanIn_wtpe() {
                $("#nom_pipeop_wtpe").val("");
                $("#out_pipeop_wtpe").val("");
                $("#despress_pipeop_wtpe").val("");
                $("#hyd_pipeop_wtpe").val("");
                $("#fact_pipeop_wtpe").val("");
            }

            function cleanAll_wtpe() {
                cleanOut_wtpe();
                cleanIn_wtpe();
            }
            
            function onchange_Input_wtpe(inp) {

                var sw = validateDecimal(inp.value);

                if (sw !== true) {
                    inp.value = "";
                }

                onchange_Input_zero(inp);
                cleanOut_wtpe();
            }
        </script>      
</html>