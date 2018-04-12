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
                <h2><strong>Stell Pipe Design:</strong>  Internal Pressure - % SMYS </h2>
            </div>
            <div class="col-lg-3"> 

                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_ipsmys()">
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
                                <div id="div-table_ipsmys"></div>
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
                <input  class="form-control" type="text" id="description_ipsmys" name="description_ipsmys"><br>
                Projects: 
                <select class="form-control" id="proyects_sel_ipsmys" name="proyects_sel_ipsmys"> </select>
            </div>
        </div>
        <hr>

        <div class="col-lg-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Select Pipe
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">

                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    Especificaciones de la tubería
                                </div>
                                <div class="panel-body">
                                    <div class="form-group">
                                        <div class="col-lg-12">
                                            <div class="col-lg-6">
                                                <label>Nominal pipe size:</label>
                                            </div> 
                                            <div class="col-lg-6">
                                                <div id="div_nomps_sel_ipsmys">
                                                    <select class="form-control" id="nominal_sel_ipsmys" name="nominal_sel_ipsmys"> </select>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-12">  
                                            <div class="col-lg-5">                      
                                                <label>Wall Thickness [.in]:</label>
                                            </div> 
                                            <div class="col-lg-7">
                                                <div id="div_wallt_sel_ipsmys">
                                                    <select class="form-control" id="wthi_sel_ipsmys" name="wthi_sel_ipsmys"> </select>     
                                                </div>
                                            </div>                
                                        </div>
                                        <div class="col-lg-12">
                                            <div class="col-lg-6">                      
                                                <label>Grade:</label>
                                            </div> 
                                            <div class="col-lg-6">
                                                <div id="div_grade_sel_ipsmys">
                                                    <select class="form-control" id="grade_sel_ipsmys" name="grade_sel_ipsmys"> </select>
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

        <div class="col-lg-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Pipe and Operational Characteristics:
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">                                    
                            <div class="form-group">
                                <div class="form-group">
                                    <div class="col-md-12">
                                        <label>Nominal pipe size:</label>
                                    </div>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" id="nom_pipe_ipsmys" name="nom_pipe_ipsmys" onchange='onchange_Input_ipsmys(this)' required> 
                                    </div>
                                    <div class="col-md-4" id = "div_nom_pipe_sel_ipsmys">
                                        <select class="form-control" id="nom_pipe_sel_ipsmys" name="nom_pipe_sel_ipsmys" onchange='cleanOut_ipsmys()'> 
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-md-12">
                                        <label>Nominal Outside Diameter [in.]:</label>
                                    </div>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" id="nomout_ipsmys" name="nomout_ipsmys" onchange='onchange_Input_ipsmys(this)' required> 
                                    </div>
                                    <div class="col-md-4" id = "div_nomout_sel_ipsmys">
                                        <select class="form-control" id="nomout_sel_ipsmys" name="nomout_sel_ipsmys" onchange='cleanOut_ipsmys()'> 
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-md-12">
                                        <label>Nominal Wall Thickness [in.]:</label>
                                    </div>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" id="nom_wall_ipsmys" name="nom_wall_ipsmys" onchange='onchange_Input_ipsmys(this)' required> 
                                    </div>
                                    <div class="col-md-4" id = "div_nom_wall_sel_ipsmys">
                                        <select class="form-control" id="nom_wall_sel_ipsmys" name="nom_wall_sel_ipsmys" onchange='cleanOut_ipsmys()'> 
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-md-12">
                                        <label>Grade:</label>
                                    </div>
                                    <div class="col-md-12">
                                        <input type="text" class="form-control" id="grade_ipsmys" name="grade_ipsmys" onchange='onchange_Input_ipsmys(this)' required> 
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-md-12">
                                        <label>Specified Minimun Yield Strength [psi]:</label>
                                    </div>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" id="min_yield_ipsmys" name="min_yield_ipsmys" onchange='onchange_Input_ipsmys(this)' required> 
                                    </div>
                                    <div class="col-md-4" id = "div_min_yield_sel_ipsmys">
                                        <select class="form-control" id="min_yield_sel_ipsmys" name="min_yield_sel_ipsmys" onchange='cleanOut_ipsmys()'> 
                                            <option>psi</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-md-12">
                                        <label>Percent of SMYS [%]:</label>
                                    </div>
                                    <div class="col-md-12">
                                        <input type="text" class="form-control" id="porc_SMYS_ipsmys" name="porc_SMYS_ipsmys" onchange='onchange_Input_ipsmys(this)' required> 
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
                                <label>Internal Pressure [psi]:</label>
                                <input type="text" name="int_press" id="int_press" class="form-control" readonly> 
                                <BR>                                                                                                
                                <div>    
                                    <input type="button" id="calculateBtn_ip" name="calculateBtn_ip" value="Calculate" onclick="calculate_ipsmys()" class="btn btn-info btn-block">
                                    <input type="button" id="saveBtn_ip" name="saveBtn_ip" value="Save" onclick="save_ipsmys()" class="btn btn-success btn-block">   
                                    <input type="button" id="reportBtn_ip" name="reportBtn_ip" value="Delete" onclick="reportReg_ipsmys()" class="btn btn-danger btn-block">          
                                </div>
                            </div>  
                        </div> 
                    </div>               
                </div>
            </div>
        </div> 

        <div class="col-lg-12">
            <div class="col-md-3">
                <input type="button" id="cleanAllBtn_ip" name="cleanBtn_ip" value="Clean All" onclick="cleanAll_ipsmys()" class="btn btn-warning btn-block">
            </div>
            <div class="col-md-3">
                <input type="button" id="cleanInputBtn_ip" name="cleanBtn_ip" value="Clean Input Data" onclick="cleanIn_ipsmys()" class="btn btn-warning btn-block">
            </div>
            <div class="col-md-3">
                <input type="button" id="cleanOutputBtn_ip" name="cleanBtn_ip" value="Clean Output Data" onclick="cleanOut_ipsmys()" class="btn btn-warning btn-block">
            </div>    
        </div>

        <input type="hidden" id="opt_ip" name="opt_ip"> 
        <input type="hidden" id="id_ip" name="id_ip">   
        <script>
            $(document).ready(function () {
                getproyectos(<%=session.getAttribute("idusu")%>,
                        $("#proyects_sel_ipsmys"),
                        $("#error_Dialog_ipsmys"));
                $("#opt_ipsmys").val("1");
                load_np_sel_ipsmys("npsn");
                load_grade_sel_ipsmys("gra5l", 0);
                onchange_gra_ipsmys();
                load_in_sel_ipsmys();
            });

            function load_in_sel_ipsmys() {
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
                        var newHtml = "<select class='form-control' name='nom_wall_sel_ipsmys' id='nom_wall_sel_ipsmys' onchange='cleanOut_ipsmys()'>" + data;
                        $("#div_nom_wall_sel_ipsmys").html(newHtml);

                        newHtml = "<select class='form-control' name='nomout_sel_ipsmys' id='nomout_sel_ipsmys' onchange='cleanOut_ipsmys()'>" + data;
                        $("#div_nomout_sel_ipsmys").html(newHtml);

                        newHtml = "<select class='form-control' name='nom_pipe_sel_ipsmys' id='nom_pipe_sel_ipsmys' onchange='cleanOut_ipsmys()'>" + data;
                        $("#div_nom_pipe_sel_ipsmys").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_ipsmys"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function calculate_ipsmys() {
                var variables = {
                    "nom_pipe_ipsmys": $("#nom_pipe_ipsmys").val(),
                    "nomout_ipsmys": $("#nomout_ipsmys").val(),
                    "nom_wall_ipsmys": $("#nom_wall_ipsmys").val(),
                    "grade_ipsmys": $("#grade_ipsmys").val(),
                    "min_yield_ipsmys": $("#min_yield_ipsmys").val(),
                    "porc_SMYS_ipsmys": $("#porc_SMYS_ipsmys").val()
                };

                var unidades = {
                    "nom_wall_sel_ipsmys": $("#nom_wall_sel_ipsmys").val().split(",")[1],
                    "nomout_sel_ipsmys": $("#nomout_sel_ipsmys").val().split(",")[1],
                    "nom_pipe_sel_ipsmys": $("#nom_pipe_sel_ipsmys").val().split(",")[1]
                };

                var res = internal_pressure_form(variables, unidades);

                $("#int_press").val(res[0]);
                show_OkDialog($("#calculate_Dialog_ipsmys"), "Proceso satisfactorio");
            }

            function load_np_sel_ipsmys(idcombo) {
                var parametros = {
                    "combo": idcombo,
                    "type": "5l",
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
                        var newHtml = "<select class=\"form-control\" name=\"nomps_sel_ipsmys\" id= \"nomps_sel_ipsmys\" onchange=\"onchange_nps_ipsmys()\">" + data;

                        $("#div_nomps_sel_ipsmys").html(newHtml);


                        var po = $("#nomps_sel_ipsmys").val().trim().split(",")[1];

                        $("#nom_pipeop_ipsmys").val(po);
                        $("#out_pipeop_ipsmys").val(po);


                        load_wt_sel_ipsmys();

                        onchange_nps_ipsmys();

                        onchange_wt_ipsmys();

                        /*onchange_gra_ipsmys();*/


                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_ipsmys"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            function load_wt_sel_ipsmys() {
                var idOp = $("#nomps_sel_ipsmys").val();
                //alert(idOp);
                var parametros = {
                    "combo": "wtn",
                    "nps": idOp,
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

                        var newHtml = "<select class=\"form-control\" name=\"wthi_sel_ipsmys\" id= \"wthi_sel_ipsmys\" onchange=\"onchange_wt_ipsmys()\">" + data;

                        $("#div_wallt_sel_ipsmys").html(newHtml);


                        if (data.trim() != "") {
                            var val = $("#wthi_sel_ipsmys").val().trim().split(",");
                            $("#wall_pipeop_ipsmys").val(val[1]);
                        }

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_ipsmys"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            function load_grade_sel_ipsmys(idcombo, opcion) {
                var parametros = {
                    "combo": idcombo,
                    "opcion": "5"
                };
                // alert("Entro");
                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    async: false,
                    data: parametros,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {

                        var newHtml = "<select class=\"form-control\" name=\"grade_sel_ipsmys\" id=\"grade_sel_ipsmys\" onchange=\"onchange_gra_ipsmys()\">" + data;

                        if (opcion === 0) {
                            $("#div_grade_sel_ipsmys").html(newHtml);

                        }
                        if (opcion === 1) {
                            $("#div_grade_sel_ipsmys").html(newHtml);
                        }


                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_ipsmys"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            function onchange_nps_ipsmys() {
                cleanOut_ipsmys();
                var po = $("#nomps_sel_ipsmys").val();
                $("#nom_pipe_ipsmys").val(po);
                $("#nomout_ipsmys").val(po);
                load_wt_sel_ipsmys();
            }
            function onchange_wt_ipsmys() {
                cleanOut_ipsmys();
                var val = $("#wthi_sel_ipsmys").val().trim().split(",");
                $("#nom_wall_ipsmys").val(val[1]);
            }
            function onchange_gra_ipsmys() {
                var x = $("#grade_sel_ipsmys").val();
                var ind = $("#grade_sel_ipsmys option:selected").html();

                $("#grade_ipsmys").val(ind);
                $("#min_yield_ipsmys").val(x.split(",")[1]);
                cleanOut_ipsmys();
            }

            function cleanOut_ipsmys() {
                $("#int_press").val("");
            }

            function cleanIn_ipsmys() {
                $("#nom_pipe_ipsmys").val("");
                $("#nomout_ipsmys").val("");
                $("#nom_wall_ipsmys").val("");
                $("#grade_ipsmys").val("");
                $("#min_yield_ipsmys").val("");
                $("#porc_SMYS_ipsmys").val("");
            }

            function cleanAll_ipsmys() {
                cleanOut_ipsmys();
                cleanIn_ipsmys();
            }

            function onchange_Input_ipsmys(inp) {

                var sw = validateDecimal(inp.value);

                if (sw !== true) {
                    inp.value = "";
                }

                onchange_Input_zero(inp);
                cleanOut_ipsmys();
            }
        </script>      
    </body>
</html>