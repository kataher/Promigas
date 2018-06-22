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
                <h2><strong>Stell Pipe Design:</strong>  Design Pressure</h2>
            </div>
            <div class="col-lg-3"> 

                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_dp()">
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
                                <div id="div-table_dp"></div>
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
                <input  class="form-control" type="text" id="description_dp" name="description_dp"><br>
                Projects: 
                <select class="form-control" id="proyects_sel_dp" name="proyects_sel_dp"> </select>
            </div>
        </div>
        <hr>

        <div class="col-lg-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Select Pipe and Location Data
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="checkbox">

                                <input type="radio" id = "api5l_dp" name="linepipe_dp" value="api5l_dp" onchange="onchange_linepipe_dp()" required> Tubería - especificación API 5L <br>
                                <input type="radio" id = "astm_dp" name="linepipe_dp" value="astm_dp" onchange="onchange_linepipe_dp()" required> Standart Steel Pipe - ASTM - ANSI B36.10

                            </div>

                            <form role="form">
                                <div class="form-group">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            Line Pipe API 5L
                                        </div>
                                        <div class="panel-body">
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <div class="form-group">
                                                        <div class="col-md-12">
                                                            <label>Nominal pipe size:</label> 
                                                        </div>
                                                        <div class="col-md-12">
                                                            <div id="div_nominalps_sel_dp">
                                                                <select class="form-control" id="nominalps_sel_dp" name="nominalps_sel_dp"> </select></div>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <div class="col-lg-12">                      
                                                            <label>Wall Thickness [.in]:</label>
                                                        </div> 
                                                        <div class="col-lg-12" id="div_wt_sel_dp">
                                                            <select class="form-control" id="wt_sel_dp" name="wt_sel_dp"> </select>
                                                        </div>
                                                    </div> 
                                                    <div class="form-group">
                                                        <div class="col-md-12">
                                                            <label>Grade:</label> 
                                                        </div>
                                                        <div class="col-md-12">
                                                            <div id="div_grade_sel_dp">
                                                                <select class="form-control" id="grade_sel_dp" name="grade_sel_dp"> </select>
                                                            </div>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>  
                                    </div></div>
                                <div class="form-group">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            Design Factor -F                       
                                        </div>
                                        <div class="panel-body">
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <div class="form-group">

                                                        <div class="col-md-12">
                                                            <div id="div_df_sel_dp">
                                                                <select class="form-control" id="design_factor_sel_dp" name="design_factor_sel_dp"> </select>
                                                            </div>
                                                        </div>
                                                    </div>


                                                </div>
                                            </div>
                                        </div>  
                                    </div> </div>
                                <div class="form-group">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            Longintudinal Joint Factor - E                      </div>
                                        <div class="panel-body">
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <div class="form-group">

                                                        <div class="col-md-12">
                                                            <div id="div_jf_sel_dp">
                                                                <select class="form-control" id="longitudinal_jf_dp" name="longitudinal_jf_dp"> </select>
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
                                        <div class="panel-heading">
                                            Temperature Derating Factor -E
                                        </div>
                                        <div class="panel-body">
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <div class="form-group">
                                                        <div class="col-md-12">
                                                            <label>Temperature [°F]:</label> 
                                                        </div>
                                                        <div class="col-md-12">
                                                            <div  id="div_td_sel_dp">                    
                                                                <select class="form-control" id="temperature_dp" name="temperature_dp"> </select>
                                                            </div>                  
                                                        </div>
                                                    </div>


                                                </div>
                                            </div>
                                        </div>  
                                    </div>




                                </div>
                            </form>
                        </div>
                    </div>
                </div>  
            </div>
        </div>

        <div class="col-lg-5">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Pipe and Operational Data:
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
                                        <input type="text" class="form-control" id="nom_pipeop_dp" name="nom_pipeop_dp" onchange='onchange_Input_dp(this)' required> 
                                    </div>
                                    <div class="col-md-4" id = "div_nom_pipeop_sel_dp">
                                        <select class="form-control" id="nom_pipeop_sel_dp" name="nom_pipeop_sel_dp" onchange='cleanOut_dp()'> 
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-md-12">
                                        <label>Nominal Outside Diameter:</label>
                                    </div>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" id="nomout_pipeop_dp" name="nomout_pipeop_dp" onchange='onchange_Input_dp(this)' required> 
                                    </div>
                                    <div class="col-md-4" id = "div_nomout_pipeop_sel_dp">
                                        <select class="form-control" id="nomout_pipeop_sel_dp" name="nomout_pipeop_sel_dp" onchange='cleanOut_dp()'> 
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-md-12">
                                        <label>Nominal Wall Thickness:</label>
                                    </div>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" id="nomwall_pipeop_dp" name="nomwall_pipeop_dp" onchange='onchange_Input_dp(this)' required> 
                                    </div>
                                    <div class="col-md-4" id = "div_nomwall_pipeop_sel_dp">
                                        <select class="form-control" id="nomwall_pipeop_sel_dp" name="nomwall_pipeop_sel_dp" onchange='cleanOut_dp()'> 
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-md-12">
                                        <label>Grade:</label>
                                    </div>
                                    <div class="col-md-12">
                                        <input type="text" class="form-control" id="gra_pipeop_dp" name="gra_pipeop_dp" onchange='onchange_Input_dp(this)' required> 
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-md-12">
                                        <label>Specified Minimun Yield Strength:</label>
                                    </div>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" id="yield_pipeop_dp" name="yield_pipeop_dp" onchange='onchange_Input_dp(this)' required> 
                                    </div>
                                    <div class="col-md-4" id = "div_yield_pipeop_sel_dp">
                                        <select class="form-control" id="yield_pipeop_sel_dp" name="yield_pipeop_sel_dp" onchange='cleanOut_dp()'> 
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-md-12">
                                        <label>Design Factor:</label>
                                    </div>
                                    <div class="col-md-12">
                                        <input type="text" class="form-control" id="fact_pipeop_dp" name="fact_pipeop_dp" onchange='onchange_Input_dp(this)' required> 
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-md-12">
                                        <label>Longitudinal Join Factor:</label>
                                    </div>
                                    <div class="col-md-12">
                                        <input type="text" class="form-control" id="long_pipeop_dp" name="long_pipeop_dp" onchange='onchange_Input_dp(this)' required> 
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-md-12">
                                        <label>Temperature Derating Factor:</label>
                                    </div>
                                    <div class="col-md-12">
                                        <input type="text" class="form-control" id="temp_pipeop_dp" name="temp_pipeop_dp" onchange='onchange_Input_dp(this)' required> 
                                    </div>
                                </div>
                            </div> 
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-md-3">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Results
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">                                    
                            <div class="form-group">
                                <label>Design Pressure [psig]:</label>
                                <input type="text" name="despress_pipeop_dp" id="despress_pipeop_dp" class="form-control" readonly> 
                                <BR>
                                <div>    
                                    <input type="button" id="calculateBtn_dp" name="calculateBtn_dp" value="Calculate" onclick="calculate_dp()" class="btn btn-info btn-block">
                                    <input type="button" id="saveBtn_dp" name="saveBtn_dp" value="Save" onclick="save_dp()" class="btn btn-success btn-block">   
                                    <input type="button" id="delteBtn_dp" name="delteBtn_dp" value="Eliminar" onclick="deleteReg_dp()" class="btn btn-danger btn-block">          
                                </div>
                            </div>  
                        </div> 
                    </div>               
                </div>
            </div>
        </div> 

        <div class="col-lg-12">
            <div class="col-md-3">
                <input type="button" id="cleanAllBtn_dp" name="cleanBtn_dp" value="Clean All" onclick="cleanAll_dp()" class="btn btn-warning btn-block">
            </div>
            <div class="col-md-3">
                <input type="button" id="cleanInputBtn_dp" name="cleanBtn_dp" value="Clean Input Data" onclick="cleanIn_dp()" class="btn btn-warning btn-block">
            </div>
            <div class="col-md-3">
                <input type="button" id="cleanOutputBtn_dp" name="cleanBtn_dp" value="Clean Output Data" onclick="cleanOut_dp()" class="btn btn-warning btn-block">
            </div>    
        </div>

        <input type="hidden" id="opt_dp" name="opt_dp"> 
        <input type="hidden" id="id_dp" name="id_dp">   
        <script>
            function calculate_dp() {
                //alert("Entro");
                var variables = {
                    "nom_pipeop_dp": $("#nom_pipeop_dp").val(),
                    "nomout_pipeop_dp": $("#nomout_pipeop_dp").val(),
                    "nomwall_pipeop_dp": $("#nomwall_pipeop_dp").val(),
                    "gasspecificgra_dp": $("#gasspecificgra_dp").val(),
                    //"gra_pipeop_dp": $("#gra_pipeop_dp").val(),
                    "yield_pipeop_dp": $("#yield_pipeop_dp").val(),
                    "fact_pipeop_dp": $("#fact_pipeop_dp").val(),
                    "long_pipeop_dp": $("#long_pipeop_dp").val(),
                    "temp_pipeop_dp": $("#temp_pipeop_dp").val()
                };

                var unidades = {
                    "nom_pipeop_sel_dp": $("#nom_pipeop_sel_dp").val().split(",")[1],
                    "nomwall_pipeop_sel_dp": $("#nomwall_pipeop_sel_dp").val().split(",")[1],
                    "nomout_pipeop_sel_dp": $("#nomout_pipeop_sel_dp").val().split(",")[1],
                    "yield_pipeop_sel_dp": $("#yield_pipeop_sel_dp").val().split(",")[1]
                };

                var res = design_pressure_form(variables, unidades);

                $("#despress_pipeop_dp").val(res[0]);


                show_OkDialog($("#calculate_Dialog_wdp"), "Proceso satisfactorio");
            }

            $(document).ready(function () {
                getproyectos(<%=session.getAttribute("idusu")%>,
                        $("#proyects_sel_dp"),
                        $("#error_Dialog_dp"));

                $("#opt_dp").val("1");
                $('#api5l_dp').attr('checked', 'checked');
                load_nps_sel_dp("5l");
                load_deratingf_sel_dp();
                load_grade_sel_dp("gra5l");
                load_joinf_sel_dp("jointf5l");
                load_desingf_sel_dp();
                load_pres_sel_dp();
                load_in_sel_dp();
            });

            function load_in_sel_dp() {
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
                        var newHtml = "<select class='form-control' name='nom_pipeop_sel_dp' id='nom_pipeop_sel_dp' onchange='cleanOut_dp()'>" + data;
                        $("#div_nom_pipeop_sel_dp").html(newHtml);

                        newHtml = "<select class='form-control' name='nomout_pipeop_sel_dp' id='nomout_pipeop_sel_dp' onchange='cleanOut_dp()'>" + data;
                        $("#div_nomout_pipeop_sel_dp").html(newHtml);

                        newHtml = "<select class='form-control' name='nomwall_pipeop_sel_dp' id='nomwall_pipeop_sel_dp' onchange='cleanOut_dp()'>" + data;
                        $("#div_nomwall_pipeop_sel_dp").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_dp"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_pres_sel_dp() {
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
                        var newHtml = "<select class='form-control' name='yield_pipeop_sel_dp' id='yield_pipeop_sel_dp' onchange='cleanOut_dp()'>" + data;
                        $("#div_yield_pipeop_sel_dp").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_dp"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_deratingf_sel_dp() {
                var parametros = {
                    "combo": "deratingf",
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
                        var newHtml = "<select class=\"form-control\" name=\"td_sel_ma\" id=\"td_sel_ma\" onchange=\"onchange_df_ma()\">" + data;
                        $("#div_td_sel_ma").html(newHtml);

                        $("#tempu_ma").val($("#td_sel_ma").val().split(",")[1]);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_ma"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            function load_form_dp(id) {

                var parametros = {
                    "id": id,
                    "opcion": "4",
                    "from": "ppw"
                };

                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    dataType: 'json',
                    beforeSend: function (xhr) {
                        // cleanAll_dp();
                        block("Cargado datos...");
                    },
                    success: function (data, status, request) {
                        if (data != null)
                        {
                            var tags = Object.keys(data.row);

                            for (var i = 0; i < tags.length; i++) {
                                if (tags[i] != "date" && tags[i] != "id_proyect" && tags[i] != "id_user" && tags[i] != "id" && tags[i] != "linepipe_dp")
                                {
                                    $("#" + tags[i]).val(data.row[tags[i]]);
                                }
                            }

                            if (data.row["linepipe_dp"] == "api5l_dp") {
                                document.getElementById("api5l_dp").checked = true;
                                load_grade_sel_dp("gra5l");
                                load_joinf_sel_dp("jointf5l");
                            } else {//astm_dp
                                document.getElementById("astm_dp").checked = true;
                                load_grade_sel_dp("graastm");
                                load_joinf_sel_dp("jointf");
                            }

                            $("#grade_sel_dp").val(data.row["grade_sel_dp"]);
                            $("#grade_dp").val(data.row["grade_dp"]);

                            $("#jf_sel_dp").val(data.row["jf_sel_dp"]);
                            $("#jf_dp").val(data.row["jf_dp"]);

                            $("#opt_dp").val("2");
                            $("#id_dp").val(data.row.id);
                        } else {
                            $("#opt_dp").val("1");
                        }

                    },
                    error: function (xhr, ajaxOptions, err) {
                        $("#opt_dp").val("1");
                        show_OkDialog($("#error_Dialog_dp"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_temp_sel_dp() {
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
                        var newHtml = "<select class=\"form-control\" name=\"tempd_sel_dp\" id= \"tempd_sel_dp\" onchange=\"cleanOut_dp()\">" + data;
                        $("#div_tempd_sel_dp").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_dp"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_nps_sel_dp(type) {
                var parametros = {
                    "combo": "npsn",
                    "type": type,
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
                        var newHtml = "<select class=\"form-control\" name=\"nominalps_sel_dp\" id= \"nominalps_sel_dp\" onchange=\"onchange_nps_dp()\">" + data;
                        $("#div_nominalps_sel_dp").html(newHtml);
                        var res = $("#nominalps_sel_dp option:selected").html();
                        $("#nom_pipeop_dp").val(res);
                        $("#nomout_pipeop_dp").val($("#nominalps_sel_dp").val());
                        load_wt_sel_dp();
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_dp"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            function load_wt_sel_dp() {
                var parametros = {
                    "combo": "wtn",
                    "nps": $("#nominalps_sel_dp").val(),
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
                        var newHtml = "<select class=\"form-control\" name=\"wt_sel_dp\" id= \"wt_sel_dp\" onchange=\"onchange_wt_dp()\">" + data;
                        $("#div_wt_sel_dp").html(newHtml);
                        $("#nomwall_pipeop_dp").val($("#wt_sel_dp").val().split(",")[1]);

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_dp"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            function load_press_sel_dp() {
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
                        var newHtml = "<select class=\"form-control\" name=\"syms_sel_dp\" id= \"syms_sel_dp\" onchange=\"cleanOut_dp()\">" + data;
                        $("#div_syms_sel_dp").html(newHtml);

                        newHtml = "<select class=\"form-control\" name=\"mop_sel_dp\" id= \"mop_sel_dp\" onchange=\"cleanOut_dp()\">" + data;
                        $("#div_mop_sel_dp").html(newHtml);

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_dp"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_deratingf_sel_dp() {
                var parametros = {
                    "combo": "deratingf",
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
                        var newHtml = "<select class=\"form-control\" name=\"td_sel_dp\" id=\"td_sel_dp\" onchange=\"onchange_df_dp()\">" + data;
                        $("#div_td_sel_dp").html(newHtml);
                        $("#temp_pipeop_dp").val($("#td_sel_dp").val().split(",")[1]);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_dp"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_grade_sel_dp(idcombo) {
                var parametros = {
                    "combo": idcombo,
                    "opcion": "5"
                };
                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    async: false,
                    data: parametros,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        var newHtml = "<select class=\"form-control\" name=\"grade_sel_dp\" id=\"grade_sel_dp\" onchange=\"onchange_gra_dp()\">" + data;
                        $("#div_grade_sel_dp").html(newHtml);

                        var x = $("#grade_sel_dp").val();
                        $("#specifiedmys_dp").val(x.split(",")[1]);
                        var res = $("#grade_sel_dp option:selected").html();
                        $("#gra_pipeop_dp").val(res);
                        $("#yield_pipeop_dp").val(x.split(",")[1]);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_dp"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_joinf_sel_dp(idcombo) {
                var parametros = {
                    "combo": idcombo,
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
                        var newHtml = "<select class=\"form-control\" name=\"longitudinal_jf_dp\" id=\"longitudinal_jf_dp\" onchange=\"onchange_jf_dp()\">" + data;
                        $("#div_jf_sel_dp").html(newHtml);
                        $("#long_pipeop_dp").val($("#longitudinal_jf_dp").val().split(",")[1]);

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_dp"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_desingf_sel_dp() {
                var parametros = {
                    "combo": "desingf2",
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
                        var newHtml = "<select class=\"form-control\" name=\"design_factor_sel_dp\" id=\"design_factor_sel_dp\" onchange=\"onchange_defa_dp()\">" + data;
                        $("#div_df_sel_dp").html(newHtml);

                        var x = $("#design_factor_sel_dp").val();
                        $("#fact_pipeop_dp").val(x.split(",")[1]);

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_dp"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            function onchange_linepipe_dp() {

                var sel = $("input[type='radio'][name='linepipe_dp']:checked");
                if (sel.val() == "api5l_dp") {
                    load_grade_sel_dp("gra5l");
                    load_joinf_sel_dp("jointf5l");
                    load_nps_sel_dp("5l");

                } else {
                    load_grade_sel_dp("graastm");
                    load_joinf_sel_dp("jointf");
                    load_nps_sel_dp("astm");
                }

                //  cleanOut_dp();

            }
            
            function onchange_Input_dp(inp) {

                var sw = validateDecimal(inp.value);

                if (sw !== true) {
                    inp.value = "";
                }

                onchange_Input_zero(inp);
                cleanOut_dp();
            }

            function onchange_nps_dp() {
                var res = $("#nominalps_sel_dp option:selected").html();
                $("#nom_pipeop_dp").val(res);
                $("#nomout_pipeop_dp").val($("#nominalps_sel_dp").val());
                load_wt_sel_dp();
                cleanOut_dp();
            }

            function onchange_wt_dp() {
                $("#nomwall_pipeop_dp").val($("#wt_sel_dp").val().split(",")[1]);
                cleanOut_dp();
            }

            function onchange_gra_dp() {
                var x = $("#grade_sel_dp").val();
                $("#specifiedmys_dp").val(x.split(",")[1]);
                var res = $("#grade_sel_dp option:selected").html();
                //$("#gra_pipeop_dp").val(x.split(",")[1]);
                $("#gra_pipeop_dp").val(res);
                $("#yield_pipeop_dp").val(x.split(",")[1]);
                cleanOut_dp();
            }

            function onchange_jf_dp() {
                $("#long_pipeop_dp").val($("#longitudinal_jf_dp").val().split(",")[1]);
                cleanOut_dp();
            }

            function onchange_df_dp() {
                $("#temp_pipeop_dp").val($("#td_sel_dp").val().split(",")[1]);
                cleanOut_dp();
            }

            function onchange_defa_dp() {
                $("#fact_pipeop_dp").val($("#design_factor_sel_dp").val().split(",")[1]);
                cleanOut_dp();
            }

            function cleanOut_dp() {
                $("#despress_pipeop_dp").val("");
            }

            function cleanIn_dp() {
                $("#nom_pipeop_dp").val("");
                $("#nomout_pipeop_dp").val("");
                $("#nomwall_pipeop_dp").val("");
                $("#gra_pipeop_dp").val("");
                $("#yield_pipeop_dp").val("");
                $("#fact_pipeop_dp").val("");
                $("#long_pipeop_dp").val("");
                $("#temp_pipeop_dp").val("");
            }

            function cleanAll_dp() {
                cleanOut_dp();
                cleanIn_dp();
            }

        </script>       
    </body>
</html>