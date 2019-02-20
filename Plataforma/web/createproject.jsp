<!DOCTYPE html>


<%-- 
    Document   : home
    Created on : 26/09/2018, 02:21:47 PM
    Author     : alberb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>

<%

    session = request.getSession();
    if (session.getAttribute("roles") != null) {
        String roles = session.getAttribute("roles").toString();
        if (roles.contains("-1-") || roles.contains("-2-") || roles.contains("-3-")) {
%>
<!DOCTYPE html>

<html lang="en">
    <head>  
        <%@include file="includehead.html" %>
        <style>
            #informacion ul{
                width:260px;
                float:left;
                min-height: 50px;
                border: 1px #000 dashed;
                padding: 5px;
                list-style-type: none;
            }

            #informacion li{
                cursor:move;
                padding:5px;
                list-style-type: none;
            } 
        </style>
    </head>
    <body>

        <div id="wrapper">

            <!-- Navigation -->
            <jsp:include page="allmenu.jsp"/>

            <div id="page-wrapper">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Crear Proyecto</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
                <div class="row">
                    <div class="col-lg-12">
                        <div id="paso1F">
                            <div class="form-group">
                                <label>Nombre del Proyecto:</label>
                                <input type="text" class="form-control" id="nombre_proyecto" name="nombre_proyecto" placeholder="Proyecto" onchange="validatename_newp();">
                                <label>Area Asociada:</label>
                                <select class="form-control" id="area_proyecto" name="area_proyecto"> </select>

                            </div>
                            <div id="informacion">
                                <div class="col-lg-12"> <h3>Seleccione las Especialidades que tendrá este proyecto</h3></div>
                                <div class="col-lg-6">
                                    <div class="panel panel-success">
                                        <div class="panel-heading">
                                            Escogidas
                                        </div>
                                        <div class="panel-body">
                                            <div class="col-lg-6"> 
                                                <ul  class="list-group" id="especialidadesseleccionadas">

                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-6">
                                    <div class="panel panel-primary">
                                        <div class="panel-heading">
                                            Disponibles
                                        </div>
                                        <div class="panel-body">
                                            <div class="col-lg-6">
                                                <div id="contentallespe">

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>

                            <div class="col-lg-12">
                                <button disabled onclick="nextStep('2')" id="paso1" name="paso1" type="button" class="btn btn-primary btn-lg btn-block">
                                    Ir a Paso 2: Asignar Fases a la especialidad</button>
                            </div>

                        </div>
                        <div id="paso2F" style="display: none;">
                            <div id ="infoP2" class="col-lg-12">

                            </div>
                            <div class="col-lg-12">
                                <div class="col-lg-4"><button  onclick="prevStep('1')" id="regpaso2" name="regpaso2" type="button" class="btn btn-danger btn-lg btn-block">Regresar</button></div>
                                <div class="col-lg-8"><button  onclick="nextStep('3')" id="paso2" name="paso2" type="button" class="btn btn-primary btn-lg btn-block">Ir a Paso 3: Asignar actividades a las fases</button></div>
                            </div>
                        </div>
                        <div id="paso3F" style="display: none;">
                            <div id="infoP3">

                            </div>

                            <div class="col-lg-12">
                                <div class="col-lg-4"><button  onclick="prevStep('2')" id="regpaso3" name="regpaso3" type="button" class="btn btn-danger btn-lg btn-block">Regresar</button></div>
                                <div class="col-lg-8"><button  onclick="nextStep('4')" id="paso3" name="paso3" type="button" class="btn btn-primary btn-lg btn-block"> Ir a Paso 4: Asignar modulos a las actividades</button></div>

                            </div>
                        </div>
                        <div id="paso4F" style="display: none;">
                            <div id="infoP4">

                            </div>
                            <div class="col-lg-12">
                                <div class="col-lg-4"><button  onclick="prevStep('3')" id="regpaso4" name="regpaso4" type="button" class="btn btn-danger btn-lg btn-block">Regresar</button></div>
                                <div class="col-lg-8"><button  onclick="nextStep('5')" id="paso4" name="paso4" type="button" class="btn btn-primary btn-lg btn-block">Ir a Paso 5: Asignar responsables</button></div>
                            </div>

                        </div>
                        <div id="paso5F" style="display: none;">
                            <div id="infoP5">

                            </div>
                            <div class="col-lg-12">
                                <div class="col-lg-4"><button  onclick="prevStep('4')" id="regpaso5" name="regpaso5" type="button" class="btn btn-danger btn-lg btn-block">Regresar</button></div>
                                <div class="col-lg-8"><button  onclick="nextStep('6')" id="paso5" name="paso5" type="button" class="btn btn-primary btn-lg btn-block">Finalizar</button></div>

                            </div>
                        </div>
                        <div id="paso6F" style="display: none;">
                            <div id="infoP6"></div>

                            <div class="col-lg-12">
                                <div class="col-lg-4"><button  onclick="prevStep('5')" id="regpaso6" name="regpaso6" type="button" class="btn btn-danger btn-lg btn-block">Regresar</button></div>
                                <div class="col-lg-8"><button  onclick="terminar();" id="paso6" name="paso6" type="button" class="btn btn-primary btn-lg btn-block">Finalizar Configuración</button></div>
                                <!-- <div class="col-lg-8"><button  onclick="RecolectarInfo();" id="paso1" name="paso1" type="button" class="btn btn-primary btn-lg btn-block">Terminar</button></div>-->
                            </div>
                        </div>

                    </div>      
                </div>
                <!-- /.row -->
            </div>
            <!-- /#page-wrapper -->
            <input type="hidden" id="id_newp" name="id_newp">  
            <div id="load_Dialog_newp" title="Basic dialog" style='display:none;'>
                <p>Successfully uploaded data</p>
            </div>

            <div id="save_Dialog_newp" title="Basic dialog" style='display:none;'>
                <p>Data saved successfully</p>
            </div>

            <div id="error_Dialog_newp" title="Basic dialog" style='display:none;'>
                <p>An error has occurred in the process</p>
            </div>

            <div id="calculate_Dialog_newp" title="Basic dialog" style='display:none;'>
                <p>Calculation done successfully</p>
            </div>

            <div id="delete_Dialog_newp" title="Basic dialog" style='display:none;'>
                <p>Successfully deleted record</p>
            </div>
        </div>
        <!-- /#wrapper -->

        <script>

            //sw Regresar;
            var swRP1 = 0, swRP2 = 0, swRP3 = 0, swRP4 = 0, swRP5;

            var espe = {"info": []};
            var fasesall = {"info": []};
            var modusall = {"info": []};

            var allfaseshtml = "";
            var allmoduloshtml = "";
            var idproyect = "";
            var nombrep = "";

            $(document).ready(function () {
                //Preparar Paso 1: Nombre y Especialidades del Proyecto
                getEspecialidades();
                getFases();
                getModulos();
                loadAreas();
                var idpro = <%= request.getParameter("idpro")%>;

                if (idpro != null) {
                    getInfoProyect(idpro);
                    setSpet1(idpro);
                    swRP1 = 1;
                }

                $("#allespecialidades li, #especialidadesseleccionadas li").draggable({
                    appendTo: "body",
                    helper: 'clone'
                });
                $("#especialidadesseleccionadas, #allespecialidades").droppable({
                    accept: 'li',
                    activeClass: "ui-state-default",
                    hoverClass: "ui-state-hover",
                    drop: function (event, ui) {
                        ui.draggable.appendTo(this).fadeIn();
                    }
                });


            });

            function setSpet1(idpro) {

                $("#nombre_proyecto").val(espe.nombrep);
                $("#nombre_proyecto").val(espe.nombrep);

                for (var i = 0; i < espe.info.length; i++) {
                    document.getElementById("espe-" + espe.info[i].id).remove();
                    $("#especialidadesseleccionadas").append('<li  class="list-group-item" id="espe-' + espe.info[i].id + '">' + espe.info[i].nombre + '</li>');
                }

                document.getElementById("paso1").disabled = false;
                $("#id_newp").val(idpro);
            }

            function nextStep(val) {

                switch (val) {
                    case '2':
                        saveStep1();
                        break;
                    case '3':
                        saveStep2();
                        break;
                    case '4':
                        saveStep3();
                        break;
                    case '5':
                        saveStep4();
                        break;
                    case '6':
                        saveStep5();
                    default:
                        break;
                }

            }

            function prevStep(val) {

                noneAll();

                switch (val) {
                    case '1':
                        swRP1 = 1;
                        document.getElementById("paso1F").style.display = "block";
                        break;
                    case '2':
                        swRP2 = 1;
                        document.getElementById("paso2F").style.display = "block";
                        break;
                    case '3':
                        swRP3 = 1;
                        document.getElementById("paso3F").style.display = "block";
                        break;
                    case '4':
                        swRP4 = 1;
                        document.getElementById("paso4F").style.display = "block";
                    case '5':
                        swRP5 = 1;
                        document.getElementById("paso5F").style.display = "block";
                    default:
                        break;
                }

            }




            function activarBoton(val, name) {
                var tam = val.length;
                if (tam === 0) {
                    document.getElementById(name).disabled = true;
                } else {
                    document.getElementById(name).disabled = false;
                }
            }

            function terminar() {

                var parametros = {
                    "id_proyect": idproyect,
                    "opcion": "206",
                    "lider": $("#lidp").val(),
                    "from": "newp"
                };

                var isOk = validate(parametros);

                if (isOk === false) {
                    alert("Debe diligenciar todos los datos requeridos");
                } else {

                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        beforeSend: function (xhr) {
                            //block("Cargando...");
                        },
                        success: function (data, status, request) {
                            window.location.href = "projects.jsp";
                            show_OkDialog($("#save_Dialog_newp"), "Satisfactory process");
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_newp"), "Error");
                        },
                        complete: function () {
                            //unBlock();
                        }
                    });
                }

            }


            function noneAll() {
                document.getElementById("paso1F").style.display = "none";
                document.getElementById("paso2F").style.display = "none";
                document.getElementById("paso3F").style.display = "none";
                document.getElementById("paso4F").style.display = "none";
                document.getElementById("paso5F").style.display = "none";
                document.getElementById("paso6F").style.display = "none";
            }

            function validatename_newp() {

                if ($("#nombre_proyecto").val().trim() === "") {
                    return;
                }

                var parametros = {
                    "nombre": $("#nombre_proyecto").val(),
                    "idpro": $("#id_newp").val(),
                    "opcion": "205",
                    "from": "newp"
                };

                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    async: false,
                    beforeSend: function (xhr) {
                        //block("Cargando...");
                    },
                    success: function (data, status, request) {
                        activarBoton($("#nombre_proyecto").val(), 'paso1');
                    },
                    error: function (xhr, ajaxOptions, err) {
                        document.getElementById("paso1").disabled = true;
                        show_OkDialog($("#error_Dialog_newp"), err);
                    },
                    complete: function () {
                        //unBlock();
                    }
                });

            }

            function validateLider(inp, idrol) {

                var parametros = {
                    "name": inp.value,
                    "opcion": "307",
                    "from": "usu"
                };

                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    dataType: 'json',
                    async: false,
                    beforeSend: function (xhr) {
                        //block("Cargando...");
                    },
                    success: function (data, status, request) {
                        if (data.data.length > 0) {
                            var sw = false;
                            $.each(data.data, function (i, item) {
                                if(item.idrol === idrol){
                                    sw = true;
                                }
                            });
                            
                            if(sw == false){
                                inp.value = "";
                                show_OkDialog($("#error_Dialog_newp"), "El usuario no puede ser lider");
                            }
                        }else{
                            inp.value = "";
                            show_OkDialog($("#error_Dialog_newp"), "El usuario no puede ser lider");
                        }
                        /*if (!(data.type === "2" || data.type === "3" || data.type === "5")) {
                         show_OkDialog($("#error_Dialog_newp"), "El usuario no puede ser lider");
                         inp.value = "";
                         }*/
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_newp"), err);
                        inp.value = "";
                    },
                    complete: function () {
                        //unBlock();
                    }
                });

            }

            function getNombreAct(idact, idespe) {


                for (var i = 0; i < espe.info.length; i++) {
                    if (espe.info[i].id === idespe) {
                        for (var j = 0; j < espe.info[i].actis.length; j++) {
                            if (espe.info[i].actis[j].id == idact) {
                                return espe.info[i].actis[j].nombre;
                            }
                        }
                    }
                }
            }

            function setFases() {

                var swOk = true;

                for (var j = 0; j < espe.info.length; j++)
                {
                    var namefase = "fases" + espe.info[j].id;
                    var opciones = $("#" + namefase).val();
                    var infofase = [];

                    if (opciones === null) {
                        swOk = false;
                    } else {
                        for (var i = 0; i < opciones.length; i++)
                        {
                            infofase[infofase.length] = {"id": opciones[i].split("-")[1], "nombre": $("#fase-" + opciones[i]).text(), "lider": "", "acti": []};
                        }
                    }

                    espe.info[j].fases = infofase;

                    if (infofase.length === 0) {
                        swOk = false;
                    }
                }

                return swOk;
            }

            function setEspecialidades() {

                espe = {"info": []};

                var el = document.getElementById("especialidadesseleccionadas").getElementsByTagName("li");
                for (var i = 0; i < el.length; i++)
                {
                    var id = el[i].id.split("-")[1];
                    espe.info[i] = {"id": id, "nombre": el[i].innerHTML, "fases": [], "lider": "", "actis": []};
                }
            }

            function setActividades() {

                var swOk = true;
                var pesoTotal = 0;
                var pesoTotalFases = 0;


                for (var i = 0; i < espe.info.length; i++)
                {
                    pesoTotalFases = 0;
                    for (var j = 0; j < espe.info[i].fases.length; j++)
                    {

                        var opciones = document.getElementById("collapseOne" + espe.info[i].id + "-" + espe.info[i].fases[j].id).getElementsByTagName("input");
                        var pesofase = $("#pfase" + espe.info[i].id + "-" + espe.info[i].fases[j].id).val();
                        pesoTotalFases += parseFloat(pesofase);
                        espe.info[i].fases[j].peso = pesofase;

                        var infoactis = [];
                        pesoTotal = 0;

                        for (var k = 0; k < opciones.length; k++) {

                            if (opciones[k].getAttribute('type') === "checkbox")
                            {
                                if (opciones[k].checked === true) {
                                    var inppeso = document.getElementById("peso" + opciones[k].value);
                                    var inptiempo = document.getElementById("tiempo" + opciones[k].value);
                                    var idact = opciones[k].value.split("-")[2];
                                    infoactis[infoactis.length] = {"id": idact, "nombre": getNombreAct(idact, espe.info[i].id), "peso": inppeso.value, tiempo: inptiempo.value, "modulos": []};

                                    if (inppeso.value.trim() === "" || inptiempo.value.trim() === "") {
                                        swOk = false;
                                    }

                                    pesoTotal += parseFloat(inppeso.value);

                                }
                            }

                        }
                        espe.info[i].fases[j].acti = infoactis;

                        if (infoactis.length === 0) {
                            swOk = false;
                        }

                        if (pesoTotal !== 100) {
                            swOk = false;
                            show_OkDialog($("#error_Dialog_newp"), "Los pesos de las actividades deben sumar 100");
                        }

                    }

                    if (pesoTotalFases !== 100) {
                        swOk = false;
                        show_OkDialog($("#error_Dialog_newp"), "Los pesos de las fases deben sumar 100");
                    }
                }



                return swOk;
            }

            function setModulos() {
                for (var i = 0; i < espe.info.length; i++)
                {
                    for (var j = 0; j < espe.info[i].fases.length; j++)
                    {
                        for (var k = 0; k < espe.info[i].fases[j].acti.length; k++) {
                            var modulos = [];

                            var opciones = document.getElementById("collapseAct" + espe.info[i].id + "-" + espe.info[i].fases[j].id + "-" + espe.info[i].fases[j].acti[k].id).getElementsByTagName("input");

                            for (var l = 0; l < opciones.length; l++) {
                                if (opciones[l].checked === true) {
                                    modulos[modulos.length] = {"id": opciones[l].value};
                                }
                            }

                            espe.info[i].fases[j].acti[k].modulos = modulos;
                        }

                    }

                }
            }

            function setLideres() {

                var swOk = true;

                for (var i = 0; i < espe.info.length; i++)
                {
                    espe.info[i].lider = $("#lide-" + espe.info[i].id).val();

                    for (var j = 0; j < espe.info[i].fases.length; j++)
                    {
                        espe.info[i].fases[j].lider = $("#lidf-" + espe.info[i].id + "-" + espe.info[i].fases[j].id).val();

                        if ($("#lidf-" + espe.info[i].id + "-" + espe.info[i].fases[j].id).val().trim() === "") {
                            swOk = false;
                        }
                    }

                }

                return swOk;
            }

            function getHtmlStep2() {

                var html = "";

                html += ' <div id="informacion"> ';
                html += '        <div class="col-lg-12"> <h3>Asigne las fases a sus especialidades</h3></div>';
                //html += '            <div class="col-lg-6">'; 

                for (var i = 0; i < espe.info.length; i++)
                {
                    html += '              <div class="panel panel-info">';
                    html += '                <div class="panel-heading">';
                    html += espe.info[i].nombre;
                    html += '                </div>';
                    html += '                <div class="panel-body">';
                    html += '                   <div class="form-group">';
                    html += '                       <label>Puedes Escoger varias Fases (Presionando Ctrl + Click)</label>';
                    html += '                       <select id="fases' + espe.info[i].id + '" multiple="" class="form-control">';
                    for (var j = 0; j < fasesall.row.length; j++) {
                        html += '<option value="' + espe.info[i].id + '-' + fasesall.row[j].id + '"id ="fase-' + espe.info[i].id + '-' + fasesall.row[j].id + '">' + fasesall.row[j].nombre + '</option>';
                    }
                    html += '                       </select>';
                    html += '                    </div>             ';
                    html += '                </div>';
                    html += '              </div>';
                }

                //html += '            </div> '; 
                html += '         </div>';
                html += ' </div> ';
                return html;
            }

            function getHtmlStep3() {

                var html = "";

                html += ' <div id="informacion"> ';
                html += '    <div class="col-lg-12"> <h3>Asigne los Modulos a las actividades</h3></div>';
                for (var i = 0; i < espe.info.length; i++) {

                    html += '        <div class="col-lg-12">';
                    html += '          <div class="panel panel-info">';
                    html += '               <div class="panel-heading">';
                    html += espe.info[i].nombre;
                    html += '               </div>';
                    html += '               <div class="panel-body">';

                    for (var j = 0; j < espe.info[i].fases.length; j++)
                    {

                        html += '                   <div class="panel-group" id="accordion">';
                        html += '                       <div class="panel panel-default">';
                        html += '                           <div class="panel-heading">';
                        html += '                           <h4 class="panel-title">';
                        html += '                               <a data-toggle="collapse" data-parent="#accordion" href="#collapseEspe' + espe.info[i].id + '-' + espe.info[i].fases[j].id + '" aria-expanded="true" class="collapsed"> ' + espe.info[i].fases[j].nombre + ' </a>';
                        html += '                           </h4>';
                        html += '                           </div>';
                        html += '                           <div id="collapseEspe' + espe.info[i].id + '-' + espe.info[i].fases[j].id + '" class="panel-collapse collapse" aria-expanded="false" style="height: 0px;">';
                        html += '                               <div class="panel-body">';
                        //-------------------------------------------------------------------------
                        for (var k = 0; k < espe.info[i].fases[j].acti.length; k++)
                        {
                            html += '  <div class="panel panel-default">';
                            html += '     <div class="panel-heading">';
                            html += '          <h4 class="panel-title">';
                            html += '              <a data-toggle="collapse" data-parent="#accordion" href="#collapseAct' + espe.info[i].id + '-' + espe.info[i].fases[j].id + '-' + espe.info[i].fases[j].acti[k].id + '" aria-expanded="false" class="collapsed">' + getNombreAct(espe.info[i].fases[j].acti[k].id, espe.info[i].id) + '</a>';
                            html += '          </h4>';
                            html += '       </div>';
                            html += '    <div id="collapseAct' + espe.info[i].id + '-' + espe.info[i].fases[j].id + '-' + espe.info[i].fases[j].acti[k].id + '" class="panel-collapse collapse" aria-expanded="false" style="height: 0px;">';
                            html += '    <div class="panel-body">';

                            html += '<div class="col-lg-4">';

                            for (var l = 0; l < modusall.info.length; l++) {
                                var chek = "";
                                for (var m = 0; m < espe.info[i].fases[j].acti[k].modulos.length; m++) {

                                    if (espe.info[i].fases[j].acti[k].modulos[m].id === modusall.info[l].id) {
                                        chek = "checked";
                                        m = espe.info[i].fases[j].acti[k].modulos.length;

                                        swRP4 = 1;
                                    }
                                }

                                //Validar si ese modulo se encuentra en esa actividad
                                html += '<div class="checkbox" > <label><input ' + chek + ' type="checkbox" value=" ' + modusall.info[l].id + '">' + modusall.info[l].nombre + '</label> </div>';

                            }
                            html += '</div>';

                            html += '      </div>';
                            html += '    </div>';
                            html += '   </div>';

                        }


                        //---------------------------------------------------------------------------
                        html += '                               </div>';
                        html += '                           </div>';
                        html += '                       </div>';
                        html += '                   </div>  ';



                    }
                    html += '               </div>';
                    html += '           </div>';
                    html += '       </div> ';

                }
                html += '        </div> ';
                html += '     </div>';
                return html;
            }

            function getHtmlStep4() {

                var html = "";
                html += ' <div id="informacion">';
                html += '        <div class="col-lg-12"> <h3>Asigne las actividades con sus respectivos pesos y tiempo a las fases de cada especialidad</h3></div>';
                html += '            <div class="col-lg-12">';
                for (var i = 0; i < espe.info.length; i++)
                {
                    //getActividades(espe.info[i].id, i);

                    html += '              <div class="panel panel-info">';
                    html += '                <div class="panel-heading">';
                    html += espe.info[i].nombre;
                    html += '                </div>';
                    html += '                <div class="panel-body">';
                    html += '  <label>Peso acumulado de las fases: </label>';
                    html += '  <input type="text" id="ptotalfases' + espe.info[i].id + '" name="ptotalfases' + espe.info[i].id + '" value = "0" disabled> </td>';

                    html += '                <div class="panel-group" id="accordion">';
                    html += '                    <div class="panel panel-default">';

                    for (var j = 0; j < espe.info[i].fases.length; j++) {
                        var pesoaux = 0;

                        if (espe.info[i].fases[j].peso !== undefined) {
                            pesoaux = espe.info[i].fases[j].peso;
                        }


                        html += '                        <div class="panel-heading">';
                        html += '                            <h4 class="panel-title">';
                        html += '                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne' + espe.info[i].id + '-' + espe.info[i].fases[j].id + '" aria-expanded="false" class="collapsed">' + espe.info[i].fases[j].nombre + ': <span id="apfase' + espe.info[i].id + '-' + espe.info[i].fases[j].id + '"> </span> </a>';
                        html += '                            </h4>';
                        html += '                        </div>';
                        html += '                        <div id="collapseOne' + espe.info[i].id + '-' + espe.info[i].fases[j].id + '" class="panel-collapse collapse" aria-expanded="false" style="height: 0px;">';
                        html += '                            <div class="panel-body">';
                        html += '  <label>Peso de la fase: </label>';
                        html += '  <input type="text" id="pfase' + espe.info[i].id + '-' + espe.info[i].fases[j].id + '" name="pfase' + espe.info[i].id + '-' + espe.info[i].fases[j].id + '" value = "' + pesoaux + '" onchange="onchange_Input_newp(this)"> </br>';
                        html += '  <label>Peso acumulado de las actividades: </label>';
                        html += '  <input  disabled type="text" id="ptotalacti' + espe.info[i].id + '-' + espe.info[i].fases[j].id + '" name="ptotalfases' + espe.info[i].id + '-' + espe.info[i].fases[j].id + '" value = "0" > </br>';
                        html += '                               <div class="checkbox">';
                        html += ' <table class="table table-hover">';
                        html += '<thead>';
                        html += '        <tr>';
                        html += '          <th>Actividad</th>';
                        html += '          <th>Peso % [0-100]</th>';
                        html += '          <th>Tiempo (Horas)</th>';
                        html += '        </tr>';
                        html += '      </thead> <tbody>';


                        for (var k = 0; k < espe.info[i].actis.length; k++) {
                            //Validar si esta actividad se encuentra en las actividades seleccionadas
                            var swIs = false;
                            var peso = 0;
                            var tiempo = 0;
                            for (var l = 0; l < espe.info[i].fases[j].acti.length; l++) {

                                if (espe.info[i].actis[k].id === espe.info[i].fases[j].acti[l].id) {
                                    peso = espe.info[i].fases[j].acti[l].peso;
                                    tiempo = espe.info[i].fases[j].acti[l].tiempo;
                                    swIs = true;
                                    l = espe.info[i].fases[j].acti.length;
                                }
                            }

                            var idcom = espe.info[i].id + '-' + espe.info[i].fases[j].id + '-' + espe.info[i].actis[k].id;

                            if (swIs === false) {
                                html += '<tr>\n\
                                        <td><label><input id="check' + idcom + '" type="checkbox" value="' + idcom + '" onchange="onchangeCheck(this)">' + espe.info[i].actis[k].nombre + '</label> </td> \n\
                                        <td><input  disabled step="any" type="number" id="peso' + idcom + '" name="peso' + idcom + '" onchange="onchange_Input_newp(this)"> </td> \n\
                                        <td><input  disabled step="any" type="number" id="tiempo' + idcom + '" name="tiempo' + idcom + '" onchange="onchange_Input_newp(this)"> </td> \n\
                                    </tr>';
                            } else {
                                swRP3 = 1;
                                html += '<tr>\n\
                                        <td><label><input id="check' + idcom + '" checked type="checkbox" value="' + idcom + '" onchange="onchangeCheck(this)">' + espe.info[i].actis[k].nombre + '</label> </td> \n\
                                        <td><input step="any" type="number"  value="' + peso + '" id="peso' + idcom + '" name="peso' + idcom + '" onchange="onchange_Input_newp(this)"> </td> \n\
                                        <td><input step="any" type="number" value="' + tiempo + '" id="tiempo' + idcom + '" name="tiempo' + idcom + '" onchange="onchange_Input_newp(this)"> </td> \n\
                                    </tr>';
                            }

                        }
                        html += '  </tbody> </table>';


                        html += '                               </div>';
                        html += '                            </div>';
                        html += '                        </div>';

                    }

                    html += '                    </div>         ';
                    html += '                </div>';
                    html += '              </div>';
                    html += '              </div>';
                }

                html += '            </div> ';
                html += '            </div>';
                html += '     </div>';

                return html;
            }


            function onchangeCheck(check) {

                var id = check.value;

                if (check.checked === true) {
                    $("#peso" + id).removeAttr('disabled');
                    $("#tiempo" + id).removeAttr('disabled');
                } else {
                    $("#peso" + id).attr('disabled', 'disabled');
                    $("#tiempo" + id).attr('disabled', 'disabled');
                    $("#tiempo" + id).val("");
                    $("#ptotalfases").val(parseFloat($("#ptotalfases").val()) - parseFloat($("#peso" + id).val()));
                    $("#peso" + id).val("");

                    //restar
                    var ids = id.split("-");
                    var newpt = recalcularPesoActividades(ids[0], ids[1]);
                    $("#ptotalacti" + ids[0] + "-" + ids[1]).val(newpt);
                }
            }

            function onchange_Input_newp(inp) {

                var sw = validateDecimal(inp.value);

                if (sw !== true) {
                    inp.value = "";
                } else {
                    if (inp.id.includes("pfase") === true) { //Recalcular los pesos de la fase
                        $("#a" + inp.id).html(inp.value);
                        var ids = inp.id.substr(5, inp.id.length - 1).split("-");
                        var newpt = recalcularPesoFases(ids[0]);

                        if (newpt > 100) {
                            alert("Los pesos deben sumar 100");
                        }

                        $("#ptotalfases" + ids[0]).val(newpt);
                    } else if (inp.id.includes("peso") === true) { //Recalcular los pesos de las actividadews de la  fase
                        var ids = inp.id.substr(4, inp.id.length - 1).split("-");
                        var newpt = recalcularPesoActividades(ids[0], ids[1]);

                        if (newpt > 100) {
                            alert("Los pesos deben sumar 100");
                        }

                        $("#ptotalacti" + ids[0] + "-" + ids[1]).val(newpt);
                    }
                }

            }

            function recalcularPesoFases(idEspe) {

                var total = 0;
                $("input[name^='pfase" + idEspe + "']").each(function () {
                    total += Number($(this).val());
                });

                return total;
            }

            function recalcularPesoActividades(idEspe, idFase) {

                var total = 0;
                $("input[name^='peso" + idEspe + "-" + idFase + "']").each(function () {
                    total += Number($(this).val());
                });

                return total;
            }

            function getHtmlStep5() {

                var html = "";

                html += '<div id="informacion">';

                html += '             <div class="panel-body">';
                html += '               <div class="form-group input-group">';
                html += '<label>Lider de Proyecto</label>';
                html += '                   <span class="input-group-addon">@</span>';
                if (espe.lider !== undefined) {
                    swRP5 = 1;
                    html += '                   <input id="lidp" type="text" onchange="onchangeLP(this)" class="form-control" placeholder="Username" value="' + espe.lider + '">';
                } else {
                    swRP5 = 0;
                    html += '                   <input id="lidp" type="text" onchange="onchangeLP(this)" class="form-control" placeholder="Username" value="">';
                }
                html += '               </div>';
                html += '             </div>';

                html += '<div class="col-lg-12"> <h3>Asigne responsable por Especialidad</h3></div>';

                for (var i = 0; i < espe.info.length; i++) {

                    html += '<div class="col-lg-6">';
                    html += '<div class="panel panel-info">';
                    html += '<div class="panel-heading">';
                    html += espe.info[i].nombre;
                    html += '</div>';
                    html += '<div class="panel-body">';
                    html += '<div class="form-group input-group">';
                    html += '<label>Lider de Especialidad</label>';
                    html += ' <span class="input-group-addon">@</span>';

                    if (espe.info[i].lider !== undefined) {
                        html += '  <input id="lide-' + espe.info[i].id + '" type="text" onchange="onchangeLE(this)" class="form-control" placeholder="Username" value="' + espe.info[i].lider + '">';
                    } else {
                        html += '  <input id="lide-' + espe.info[i].id + '" type="text" onchange="onchangeLE(this)" class="form-control" placeholder="Username" value="">';
                    }

                    html += '</div>';

                    for (var j = 0; j < espe.info[i].fases.length; j++) {

                        html += '<div class="panel-group" id="accordion"> ';
                        html += '<div class="panel panel-default">';
                        html += '         <div class="panel-heading">';
                        html += '             <h4 class="panel-title">';
                        html += '                 <a data-toggle="collapse" data-parent="#accordion" href="#collapseResPo' + espe.info[i].id + '-' + espe.info[i].fases[j].id + '" aria-expanded="false" class="collapsed">' + espe.info[i].fases[j].nombre + '</a>';
                        html += '             </h4>';
                        html += '         </div>';
                        html += '         <div id="collapseResPo' + espe.info[i].id + '-' + espe.info[i].fases[j].id + '" class="panel-collapse collapse" aria-expanded="false" style="height: 0px;">';
                        html += '             <div class="panel-body">';
                        html += '               <div class="form-group input-group">';
                        html += '                   <span class="input-group-addon">@</span>';
                        if (espe.info[i].fases[j].lider !== undefined) {
                            html += '                   <input id="lidf-' + espe.info[i].id + '-' + espe.info[i].fases[j].id + '" onchange="onchangeLF(this)" type="text" class="form-control" placeholder="Username" value="' + espe.info[i].fases[j].lider + '">';
                        } else {
                            html += '                   <input id="lidf-' + espe.info[i].id + '-' + espe.info[i].fases[j].id + '" onchange="onchangeLF(this)" type="text" class="form-control" placeholder="Username" value="">';
                        }
                        html += '               </div>';
                        html += '             </div>';
                        html += '         </div>';
                        html += '</div>';
                        html += '</div>';
                    }



                    html += '   </div>';

                    html += ' </div>';
                    html += '</div> ';

                }



                html += '</div>';

                return html;


            }

            function getHtmlStep6() {

                var html = "";



                html += '<div class="col-lg-12">';
                html += '            <div class="col-xs-12 col-sm-12">';
                html += '     <p class="pull-right visible-xs">';
                html += '       <button type="button" class="btn btn-primary btn-xs" data-toggle="offcanvas">Toggle nav</button>';
                html += '     </p>';
                html += '     <div class="jumbotron" style="padding-top: 10px; padding-bottom: 10px;">';
                html += '       <h2>Proyecto: ' + nombrep + '</h2>';
                html += '     </div>';
                html += '     <div class="row">';

                for (var i = 0; i < espe.info.length; i++) {

                    html += '        <div class="col-xs-6 col-lg-6">';
                    html += '        <div class="panel panel-success">';
                    html += '                   <div class="panel-heading">';
                    html += '                      <h2>' + espe.info[i].nombre + '</h2>';
                    html += '                   </div>';
                    html += '                   <div class="panel-body">';
                    html += '                       <div class="panel-group">';

                    for (var j = 0; j < espe.info[i].fases.length; j++) {

                        html += '                           <div class="panel panel-default">';
                        html += '                             <div class="panel-heading">';
                        html += '                               <h4 class="panel-title">';
                        html += '                                 <a data-toggle="collapse" href="#fase-' + espe.info[i].fases[j].id + '">' + espe.info[i].fases[j].nombre + ': <span> ' + espe.info[i].fases[j].peso + '</span></a>';
                        html += '                               </h4>';
                        html += '                             </div>';
                        html += '                             <div id="fase-' + espe.info[i].fases[j].id + '" class="panel-collapse collapse">';
                        html += '                               <ul class="list-group">';

                        for (var k = 0; k < espe.info[i].fases[j].acti.length; k++) {
                            var tt = Number(espe.info[i].fases[j].acti[k].peso);
                            var ti = espe.info[i].fases[j].acti[k].tiempo;
                            html += '  <li class="list-group-item">' + espe.info[i].fases[j].acti[k].nombre + '<span class="badge">' + tt + '%</span> <span class="badge">' + ti + ' dias</span></li>';
                        }
                        html += '                      </ul>';

                        html += '                    </div>';
                        html += '                  </div>';
                    }

                    html += '              </div>';
                    html += '          </div>';
                    html += '      </div>';
                    html += '</div>';

                }

                html += '</div>';
                html += '</div>';
                html += '</div> ';

                return html;

            }

            function onchangeLP(inp) {

                validateLider(inp, "3");

                /*$("input[id^='lide-']").each(function () {
                    $(this).val(inp.value);
                });

                $("input[id^='lidf-']").each(function () {
                    $(this).val(inp.value);
                });*/


            }

            function onchangeLE(inp) {

                validateLider(inp, "4");

                /*var aux = inp.id.split("-")[1];

                $("input[id^='lidf-" + aux + "']").each(function () {
                    $(this).val(inp.value);
                });*/


            }
            
            function onchangeLF(inp) {

                validateLider(inp, "5");

            }

            function loadAreas() {
                var parametros = {
                    "from": "rol",
                    "opcion": "340"
                };
                $.ajax({
                    type: "POST",
                    url: "/Plataforma/Modules/manager.jsp",
                    data: parametros,
                    async: false,
                    dataType: 'json',
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        $("#area_proyecto").empty();
                        $.each(data.data, function (i, item) {
                            $("#area_proyecto").append($("<option>",
                                    {
                                        name: "area" + item.id,
                                        id: "area" + item.id,
                                        value: item.id,
                                        text: item.descripcion
                                    }));
                        });


                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_ahp"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }


            //Ajax
            function getEspecialidades() {

                var parametros = {
                    "opcion": "201",
                    "from": "newp"
                };

                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    dataType: 'json',
                    async: false,
                    beforeSend: function (xhr) {
                        //block("Cargando...");
                    },
                    success: function (data, status, request) {
                        var html = "";
                        html += '<ul  class="list-group" id="allespecialidades">';
                        for (var i = 0; i < data.row.length; i++) {
                            html += '<li  class="list-group-item" id="espe-' + data.row[i].id + '">' + data.row[i].nombre + '</li>';
                        }
                        html += '</ul>';

                        $("#contentallespe").html(html);

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_newp"), "Error");
                    },
                    complete: function () {
                        //unBlock();
                    }
                });
            }

            function getFases() {
                var parametros = {
                    "opcion": "202",
                    "from": "newp"
                };

                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    dataType: 'json',
                    async: false,
                    beforeSend: function (xhr) {
                        //block("Cargando...");
                    },
                    success: function (data, status, request) {
                        fasesall = data;
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_newp"), "Error");
                    },
                    complete: function () {
                        //unBlock();
                    }
                });
            }

            function getModulos() {
                var parametros = {
                    "opcion": "203",
                    "from": "newp"
                };

                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    dataType: 'json',
                    async: false,
                    beforeSend: function (xhr) {
                        //block("Cargando...");
                    },
                    success: function (data, status, request) {
                        modusall = {"info": []};
                        for (var i = 0; i < data.row.length; i++) {
                            modusall.info[modusall.info.length] = {"id": data.row[i].id, "nombre": data.row[i].nombre};
                        }

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_newp"), "Error");
                    },
                    complete: function () {
                        //unBlock();
                    }
                });
            }

            function getActividades(id_espe, ind) {
                var parametros = {
                    "opcion": "204",
                    "id_espe": id_espe,
                    "from": "newp"
                };

                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    dataType: 'json',
                    async: false,
                    beforeSend: function (xhr) {
                        //block("Cargando...");
                    },
                    success: function (data, status, request) {

                        espe.info[ind].actis = data.info;
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_newp"), "Error");
                    },
                    complete: function () {
                        //unBlock();
                    }
                });
            }

            function saveStep1() {
                setEspecialidades();

                var parametros = {
                    "nombre": $("#nombre_proyecto").val(),
                    "area": $("#area_proyecto").val(),
                    "id_proyect": "1",
                    "id_user": <%=session.getAttribute("idusu")%>,
                    "step": "1",
                    "especialidades": JSON.stringify(espe),
                    "update": swRP1,
                    "opcion": "200",
                    "from": "newp"
                };

                var isOk = validate(parametros);


                if (isOk === false || espe.info.length === 0) {
                    alert("Debe diligenciar todos los datos requeridos");
                } else {
                    parametros.id_proyect = $("#id_newp").val();

                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        dataType: 'json',
                        async: false,
                        beforeSend: function (xhr) {
                            //block("Cargando...");
                        },
                        success: function (data, status, request) {
                            $("#id_newp").val(data.row[0].id);
                            idproyect = data.row[0].id;
                            nombrep = $("#nombre_proyecto").val();
                            var html = getHtmlStep2();

                            $("#infoP2").html(html);
                            show_OkDialog($("#save_Dialog_newp"), "Paso 1");
                            noneAll();
                            getInfoProyect(idproyect);

                            for (var i = 0; i < espe.info.length; i++)
                            {
                                for (var j = 0; j < espe.info[i].fases.length; j++) {
                                    $('#fase-' + espe.info[i].id + '-' + espe.info[i].fases[j].id).attr('selected', 'selected');
                                    swRP2 = 1;
                                }

                            }

                            document.getElementById("paso2F").style.display = "block";
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_newp"), err);
                        },
                        complete: function () {
                            //unBlock();
                        }
                    });
                }
            }

            function saveStep2() {


                var swFaseOk = setFases();

                var parametros = {
                    "id_proyect": $("#id_newp").val(),
                    "step": "2",
                    "especialidades": JSON.stringify(espe),
                    "update": swRP2,
                    "opcion": "200",
                    "from": "newp"
                };

                var isOk = validate(parametros);

                if (isOk === false || swFaseOk === false) {
                    alert("Debe diligenciar todos los datos requeridos");
                } else {

                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        dataType: 'json',
                        beforeSend: function (xhr) {
                            //block("Cargando...");
                        },
                        success: function (data, status, request) {
                            getInfoProyect($("#id_newp").val());

                            var html = getHtmlStep4();
                            $("#infoP3").html(html);

                            //Calcular pesos acumulados

                            //if(swRP3 == 1){
                            for (var i = 0; i < espe.info.length; i++)
                            {
                                var newpt = recalcularPesoFases(espe.info[i].id);
                                $("#ptotalfases" + espe.info[i].id).val(newpt);
                                //alert(swRP3);

                                for (var j = 0; j < espe.info[i].fases.length; j++) {
                                    newpt = recalcularPesoActividades(espe.info[i].id, espe.info[i].fases[j].id);
                                    $("#ptotalacti" + espe.info[i].id + "-" + espe.info[i].fases[j].id).val(newpt);

                                    $("#apfase" + espe.info[i].id + "-" + espe.info[i].fases[j].id).html(espe.info[i].fases[j].peso);
                                }

                            }
                            //}


                            show_OkDialog($("#save_Dialog_newp"), "Satisfactory process");
                            noneAll();
                            document.getElementById("paso3F").style.display = "block";
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_newp"), "Error");
                        },
                        complete: function () {
                            //unBlock();
                        }
                    });
                }
            }

            function saveStep3() {

                var swActi = setActividades();

                var parametros = {
                    "id_proyect": idproyect,
                    "step": "3",
                    "especialidades": JSON.stringify(espe),
                    "opcion": "200",
                    "update": swRP3,
                    "from": "newp"
                };

                var isOk = validate(parametros);


                if (isOk === false || swActi === false) {
                    alert("Debe diligenciar todos los datos requeridos");
                } else {

                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        dataType: 'json',
                        beforeSend: function (xhr) {
                            //block("Cargando...");
                        },
                        success: function (data, status, request) {
                            getInfoProyect(idproyect);
                            var html = getHtmlStep5();
                            $("#infoP5").html(html);
                            show_OkDialog($("#save_Dialog_newp"), "Satisfactory process");
                            noneAll();
                            document.getElementById("paso5F").style.display = "block";
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_newp"), "Error");
                        },
                        complete: function () {
                            //unBlock();
                        }
                    });
                }

            }

            function saveStep4() {
                setModulos();

                var parametros = {
                    "id_proyect": idproyect,
                    "step": "4",
                    "especialidades": JSON.stringify(espe),
                    "opcion": "200",
                    "update": swRP4,
                    "from": "newp"
                };

                var isOk = validate(parametros);

                if (isOk === false) {
                    alert("Debe diligenciar todos los datos requeridos");
                } else {

                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        dataType: 'json',
                        beforeSend: function (xhr) {
                            //block("Cargando...");
                        },
                        success: function (data, status, request) {
                            getInfoProyect(idproyect);
                            var html = getHtmlStep5();
                            $("#infoP5").html(html);
                            show_OkDialog($("#save_Dialog_newp"), "Satisfactory process");
                            noneAll();
                            document.getElementById("paso5F").style.display = "block";
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_newp"), "Error");
                        },
                        complete: function () {
                            //unBlock();
                        }
                    });
                }

            }

            function saveStep5() {



                setLideres();

                var parametros = {
                    "nombre": $("#nombre_proyecto").val(),
                    "id_user": <%=session.getAttribute("idusu")%>,
                    "step": "5",
                    "especialidades": JSON.stringify(espe),
                    "lidp": $("#lidp").val(),
                    "id_proyect": idproyect,
                    "update": swRP5,
                    "opcion": "200",
                    "from": "newp"
                };

                var isOk = validate(parametros);

                if (isOk === false) {
                    alert("Debe diligenciar todos los datos requeridos");
                } else {

                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        dataType: 'json',
                        beforeSend: function (xhr) {
                            //block("Cargando...");
                        },
                        success: function (data, status, request) {
                            var html = getHtmlStep6();
                            $("#infoP6").html(html);
                            show_OkDialog($("#save_Dialog_newp"), "Satisfactory process");
                            noneAll();
                            document.getElementById("paso6F").style.display = "block";
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_newp"), "Error");
                        },
                        complete: function () {
                            //unBlock();
                        }
                    });
                }
            }

            function getInfoProyect(idpro) {

                var parametros = {
                    "opcion": 212,
                    "idpro": idpro,
                    "from": "newp"

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
                        $("#area_proyecto").val(data.area);
                        espe = data;
                    },
                    error: function (xhr, ajaxOptions, err) {
                        alert(err);
                        // show_OkDialog($("#error_Dialog_usu"), "Error");
                    },
                    complete: function (data, status, request) {

                    }
                });

            }






        </script>
    </body>

</html>


<%} else {
%>
<script type="text/javascript">
    window.location = "/Plataforma/error.jsp";
</script>
<%
    }
} else {
%>
<script type="text/javascript">
    window.location = "/Plataforma/index.jsp";
</script>
<%
    }
%>
