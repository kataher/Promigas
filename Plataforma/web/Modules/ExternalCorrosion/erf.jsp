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
                <h2><strong>External Corrosion direct assessment toolset:</strong> Safe Operating Pressure and metal losses under ASME B31G and the modified ASME B31G (0,85dl) criteria</h2>
            </div>
            <div class="col-lg-3"> 

                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_erf()">
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

            <div class="col-lg-9">
                Description:  
                <input  class="form-control" type="text" id="description_erf" name="description_erf"><br>
                Projects:
                <select class="form-control" id="proyects_sel_erf" name="proyects_sel_erf"> </select>
            </div>
        </div>
        <hr>
        <div class="col-lg-6">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Input Data
                </div>
                <div class="panel-body">
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
        <div class="col-lg-3">
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
        <div class="col-lg-3">
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
        <div class="col-lg-4">
            <input type="button" id="calculateBtn" name="calculateBtn" value="Calculate" onclick="calculate_erf()" class="btn btn-info btn-block">
            <input type="submit" id="saveBtn" name="saveBtn" value="Save" onclick="save_erf()" class="btn btn-success btn-block">   
            <input type="button" id="delteBtn" name="delteBtn" value="Eliminar" onclick="deleteReg_erf()" class="btn btn-danger btn-block">

            <input type="button" id="cleanAllBtn" name="cleanBtn" value="Clean All" onclick="cleanAll_erf()" class="btn btn-warning btn-block">
            <input type="button" id="cleanInputBtn" name="cleanBtn" value="Clean Input Data" onclick="cleanIn_erf()" class="btn btn-warning btn-block">
            <input type="button" id="cleanOutputBtn" name="cleanBtn" value="Clean Output Data" onclick="cleanOut_erf()" class="btn btn-warning btn-block">
            <input type="button" id="cleanSuggestedBtn" name="cleanBtn" value="Limpiar Datos Sugeridos" onclick="cleanSugg_erf()" class="btn btn-warning btn-block">
        </div>
        <input type="hidden" id="opcion_erf" name="opcion_erf"> 
        <input type="hidden" id="id_erf" name="opcion_erf">      

        <script>

            $(document).ready(function () {
                load_len_sel_erf();
                load_desingf_sel_erf();
                
                getproyectos(<%=session.getAttribute("idusu")%>,
                        $("#proyects_sel_erf"),
                        $("#error_Dialog_erf"));

            });

            function onchange_Input_erf(inp) {
                var sw = validateDecimal(inp.value);

                if (sw !== true) {
                    inp.value = "";
                }
                onchange_Input_zero(inp);
                cleanOut_erf();
            }

            function cleanOut_erf() {
                $("#prefalperme_erf").val("");
                $("#preseop_erf").val("");
                $("#erf_erf").val("");                
                $("#prefalpermeM_erf").val("");
                $("#preseopM_erf").val("");
                $("#erfM_erf").val("");
                $("#fos_erf").val("");
            }

            function cleanSugg_erf() {
                $("#basepressure_erf").val("");
                $("#basetemperature_erf").val("");
            }

            function cleanIn_erf() {
                $("#longacor_erf").val("");
                $("#pmpmac_erf").val("");
                $("#dianoex_erf").val("");
                $("#esnotu_erf").val("");
                $("#smys_erf").val("");
                $("#maop_erf").val("");
                $("#cllocalidad_erf").val("");
                $("#upstreamelevation_erf").val("");
                $("#downstreamelevation_erf").val("");
            }

            function cleanAll_erf() {
                cleanIn_erf();
                cleanSugg_erf();
                cleanOut_erf();
            }

            function save_erf() {

                var parametros = {
                    "basetemperature_pha": $("#basetemperature_erf").val(),
                    "basepressure_pha": $("#basepressure_erf").val(),
                    "longacor_pha": $("#longacor_erf").val(),
                    "pmpmac_pha": $("#pmpmac_erf").val(),
                    "pipelineefficiency_pha": $("#dianoex_erf").val(),
                    "upstreampressure_pha": $("#esnotu_erf").val(),
                    "flowrate_pha": $("#smys_erf").val(),
                    "internalpipe_pha": $("#maop_erf").val(),
                    "lengthof_pha": $("#cllocalidad_erf").val(),
                    "upstreamelevation_pha": $("#upstreamelevation_erf").val(),
                    "downstreamelevation_pha": $("#downstreamelevation_erf").val(),
                    "downstreampressure_pha": $("#prefalperme_erf").val(),
                    "transmissionfactor_pha": $("#preseop_erf").val(),
                    "velocity_pha": $("#erf_erf").val(),
                    "idproyect": <% out.print(session.getAttribute("id_proyect"));%>,
                    "form": "1",
                    "opcion": $("#opcion_erf").val()
                };

                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        $("#id_erf").val(data);
                        show_OkDialog($("#save_Dialog_erf"), "Proceso satisfactorio");
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_erf"), "Error");

                        $("#basetemperature_erf").val(parametros.basetemperature_pha);
                        $("#basepressure_erf").val(parametros.basepressure_pha);
                        $("#longacor_erf").val(parametros.longacor_pha);
                        $("#pmpmac_erf").val(parametros.pmpmac_pha);
                        $("#dianoex_erf").val(parametros.pipelineefficiency_pha);
                        $("#esnotu_erf").val(parametros.upstreampressure_pha);
                        $("#smys_erf").val(parametros.flowrate_pha);
                        $("#maop_erf").val(parametros.internalpipe_pha);
                        $("#cllocalidad_erf").val(parametros.lengthof_pha);
                        $("#upstreamelevation_erf").val(parametros.upstreamelevation_pha);
                        $("#downstreamelevation_erf").val(parametros.downstreamelevation_pha);
                        $("#prefalperme_erf").val(parametros.downstreampressure_pha);
                        $("#preseop_erf").val(parametros.transmissionfactor_pha);
                        $("#erf_erf").val(parametros.velocity_pha);
                    },
                    complete: function () {
                        unBlock();
                    }
                });
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
            
            function load_desingf_sel_erf() {
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
                    url: "Modules/manager.jsp",
                    data: parametros,
                    beforeSend: function (xhr) {
                        cleanSugg_erf();
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

            function deleteReg_erf() {

                var parametros = {
                    "id_erf": $("#id_erf").val(),
                    "form": "1",
                    "opcion": "3"
                };
                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    beforeSend: function (xhr) {
                        cleanSugg_erf();
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        cleanAll_erf();
                        show_OkDialog($("#delete_Dialog_erf"), "Proceso satisfactorio");
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_erf"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_len_sel_erf() {
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


        </script>

        <div id="load_Dialog_erf" title="Basic dialog" style='display:none;'>
            <p>Datos cargados exitosamente</p>
        </div>

        <div id="save_Dialog_erf" title="Basic dialog" style='display:none;'>
            <p>Datos guardados exitosamente</p>
        </div>

        <div id="error_Dialog_erf" title="Basic dialog" style='display:none;'>
            <p>Ha ocurrido un error en el proceso</p>
        </div>

        <div id="calculate_Dialog_erf" title="Basic dialog" style='display:none;'>
            <p>Calculo realizado exitosamente</p>
        </div>

        <div id="delete_Dialog_erf" title="Basic dialog" style='display:none;'>
            <p>Registro eliminado exitosamente</p>
        </div>
    </body>
</html>