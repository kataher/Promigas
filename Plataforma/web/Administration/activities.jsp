

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>
<!DOCTYPE html>

<html lang="en">
    <head>  
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>::PROMIGAS::</title>  
        <script src="../js/jquery.js" type="text/JavaScript" ></script>
        <script src="../js/jquery-ui/jquery-ui.js"></script>
        <script src="../js/jquery-ui/external/blockui/jquery-blockui.js"></script>
        <script src="../js/functions/formulasK.js"></script>
        <script src="../js/functions/formulasM.js"></script>
        <script src="../js/functions/functions.js"></script>
        <script src="../js/jspdf/jspdf.min.js" type="text/JavaScript" > </script>
        <script src="../js/jspdf/autotable.min.js" type="text/JavaScript" > </script>
        <script src="../bower_components/morrisjs/morris.js"></script>
        <script src="../dist/js/sb-admin-2.js"></script>
        <script src="../bower_components/metisMenu/dist/metisMenu.min.js"></script>
        <script src="../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
        <script src="../bower_components/raphael/raphael-min.js"></script>
        <script src="../js/dataTables/jquery.dataTables.js" type="text/javascript"></script>
        <link rel="stylesheet" href="../js/jquery-ui/jquery-ui.css">
        <link rel="stylesheet" href="../bower_components/morrisjs/morris.css">
        <link rel="stylesheet" href="../bower_components/bootstrap/dist/css/bootstrap.min.css" />
        <link rel="stylesheet" href="../bower_components/metisMenu/dist/metisMenu.min.css" />
        <link rel="stylesheet" href="../dist/css/timeline.css" >
        <link rel="stylesheet" href="../dist/css/sb-admin-2.css" >
        <link rel="stylesheet" href="../bower_components/font-awesome/css/font-awesome.min.css" type="text/css">
        <link rel="stylesheet" href="../css/dataTables/jquery.dataTables.min.css" type="text/css">
        <link rel="stylesheet" href="../css/user-profiles-list-basic.css">
        <link rel="stylesheet" href="../css/menu.css">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.13/css/jquery.dataTables.min.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/select/1.2.1/css/select.dataTables.min.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.2.4/css/buttons.dataTables.min.css">
    </head>
    <body>

        <div id="wrapper">

            <!-- Navigation -->
            <jsp:include page="../allmenu.jsp"/>

            <div id="page-wrapper" class="row">
                <div id="content">
                    <div class="col-lg-12">
                        <h1 class="page-header">Modulo de Actividades</h1>
                    </div>
                    <hr>
                    
                    <div class="col-lg-12">
                        <div class="col-lg-4">
                            <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">Crear Actividad</button>                
                        </div>
                    </div>
                    <br>
                    <div class="col-lg-12">
                        <div class="panel-group" id="accordion">

                        </div> 
                    </div>

                    <!-- MODAL PARA CREAR USUARIOS-->
                    <!-- Modal -->
                    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                    <h4 class="modal-title" id="myModalLabel">Crear Actividad</h4>
                                </div>
                                <div class="modal-body">
                                    <form>
                                        <div class="form-group">
                                            <label for="nombre_acti">Nombre</label>
                                            <input type="text" class="form-control" id="nombre_acti">
                                            <label for="espe_acti">Especialidad Asociada:</label>
                                            <select class="form-control" id="espe_acti" name="espe_acti"> </select>
                                        </div>  
                                    </form>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal" id="cerrarAddtBtn_acti">Cerrar</button>
                                    <button type="button" class="btn btn-primary" id="addacti_acti" onclick="addacti_acti()">Crear Actividad</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- FIN DE CREACION DE USUARIO-->
                    <!-- Lista de usuarios -->


                    <div id="load_Dialog_erf" title="Basic dialog" style='display:none;'>
                        <p>Successfully uploaded data</p>
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

                    <script>

                        $(document).ready(function () {
                            var rowEspecialidades = null;

                            loadEspecialidades();



                        });


                        function loadEspecialidades() {
                            var parametros = {
                                "opcion": 330,
                                "from": "esp"
                            };

                            $.ajax({
                                type: "POST",
                                url: "../Modules/manager.jsp",
                                data: parametros,
                                dataType: 'json',
                                async: false,
                                beforeSend: function () {
                                    block("Cargando lista de usuarios...");
                                },
                                success: function (data, status, request) {

                                    rowEspecialidades = data;

                                    createHtmlCollapse_acti(); //Crea el acordeon
                                    loadForm_acti(); //Asigna en cada acordeon sus actividades

                                    for (var i = 0; i < data.data.length; i++) {
                                        $('#espe_acti').append('<option value="' + data.data[i].id + '">' + data.data[i].nombre + '</option>');

                                        $("select[name^='espeedit']").each(function () {
                                            var aux = this.name.split("_")[2];

                                            if (aux == data.data[i].id) {
                                                $("#" + this.name).append('<option value="' + data.data[i].id + '" selected>' + data.data[i].nombre + '</option>');
                                            } else {
                                                $("#" + this.name).append('<option value="' + data.data[i].id + '">' + data.data[i].nombre + '</option>');
                                            }
                                        });
                                    }


                                },
                                error: function (xhr, ajaxOptions, err) {
                                    alert(err);
                                    show_OkDialog($("#error_Dialog_esp"), "Error");
                                },
                                complete: function () {
                                    unBlock();
                                }
                            });
                        }

                        function addacti_acti() {
                            var parametros = {
                                "nombre": $("#nombre_acti").val(),
                                "id_especialidad": $("#espe_acti").val(),
                                "opcion": 313,
                                "from": "acti"

                            };

                            var isOk = validate(parametros);

                            if (isOk === false) {
                                alert("Debe diligenciar todos los datos del nuevo usuario");
                            } else {
                                $.ajax({
                                    type: "POST",
                                    url: "../Modules/manager.jsp",
                                    data: parametros,
                                    dataType: 'json',
                                    async: false,
                                    beforeSend: function () {
                                        block("Guardando...");
                                    },
                                    success: function (response) {
                                        loadForm_acti();

                                        /*if(rowEspecialidades == null){
                                         loadEspecialidades();                                     
                                         }else{
                                         
                                         for(var i = 0; i<rowEspecialidades.data.length; i++){
                                         $( "select[name^='espeedit']" ).each(function() {
                                         var aux = this.name.split("_")[2];
                                         
                                         if(aux == rowEspecialidades.data[i].id){                                            
                                         $("#" + this.name).append('<option value="'+rowEspecialidades.data[i].id+'" selected>'+rowEspecialidades.data[i].nombre+'</option>');
                                         }else{
                                         $("#" + this.name).append('<option value="'+rowEspecialidades.data[i].id+'">'+rowEspecialidades.data[i].nombre+'</option>');
                                         }
                                         });
                                         }
                                         }*/

                                        $('.modal-backdrop').remove();
                                        $('#cerrarAddtBtn_acti').click();
                                        show_OkDialog($("#save_Dialog_acti"), "Satisfactory process");

                                    },
                                    error: function (xhr, ajaxOptions, err) {
                                        alert(err);
                                        show_OkDialog($("#error_Dialog_acti"), "Error");
                                    },
                                    complete: function () {
                                        unBlock();
                                    }
                                });
                            }
                        }

                        function edit_acti(idact, last_espe) {

                            var parametros = {
                                "nombre": $("#nombreedit" + idact + "_acti").val(),
                                "id_especialidad": $("#espeedit_" + idact + "_" + last_espe + "_acti").val(),
                                "opcion": 311,
                                "id": idact,
                                "from": "acti"

                            };

                            var isOk = validate(parametros);

                            if (isOk === false) {
                                alert("Debe diligenciar todos los datos del usuario");
                            } else {
                                $.ajax({
                                    type: "POST",
                                    url: "../Modules/manager.jsp",
                                    data: parametros,
                                    dataType: 'json',
                                    async: false,
                                    success: function (response) {
                                        show_OkDialog($("#save_Dialog_acti"), "Satisfactory process");

                                        createHtmlCollapse_acti();
                                        loadForm_acti();

                                        for (var i = 0; i < rowEspecialidades.data.length; i++) {
                                            $("select[name^='espeedit']").each(function () {
                                                var aux = this.name.split("_")[2];

                                                if (aux == rowEspecialidades.data[i].id) {
                                                    $("#" + this.name).append('<option value="' + rowEspecialidades.data[i].id + '" selected>' + rowEspecialidades.data[i].nombre + '</option>');
                                                } else {
                                                    $("#" + this.name).append('<option value="' + rowEspecialidades.data[i].id + '">' + rowEspecialidades.data[i].nombre + '</option>');
                                                }
                                            });
                                        }
                                        $('.modal-backdrop').remove();
                                    },
                                    error: function (xhr, ajaxOptions, err) {
                                        show_OkDialog($("#error_Dialog_acti"), "Error");
                                    }
                                });
                            }


                        }

                        function delete_acti(idact) {

                            //Confirmacion

                            $("#dialog-confirm_acti").dialog({
                                resizable: false,
                                height: "auto",
                                width: 400,
                                modal: true,
                                buttons: {
                                    "Eliminar": function () {
                                        deleteconfirm_acti(idact);
                                        $(this).dialog("close");
                                    },
                                    Cancelar: function () {
                                        $(this).dialog("close");
                                    }
                                }
                            });



                        }

                        function deleteconfirm_acti(idact) {
                            var parametros = {
                                "opcion": 312,
                                "id": idact,
                                "from": "acti"
                            };

                            $.ajax({
                                type: "POST",
                                url: "../Modules/manager.jsp",
                                data: parametros,
                                dataType: 'json',
                                async: false,
                                success: function (response) {
                                    show_OkDialog($("#save_Dialog_acti"), "Satisfactory process");

                                    createHtmlCollapse_acti();
                                    loadForm_acti();

                                    for (var i = 0; i < rowEspecialidades.data.length; i++) {
                                        $("select[name^='espeedit']").each(function () {
                                            var aux = this.name.split("_")[2];

                                            if (aux == rowEspecialidades.data[i].id) {
                                                $("#" + this.name).append('<option value="' + rowEspecialidades.data[i].id + '" selected>' + rowEspecialidades.data[i].nombre + '</option>');
                                            } else {
                                                $("#" + this.name).append('<option value="' + rowEspecialidades.data[i].id + '">' + rowEspecialidades.data[i].nombre + '</option>');
                                            }
                                        });
                                    }

                                },
                                error: function (xhr, ajaxOptions, err) {
                                    alert(err);
                                    show_OkDialog($("#error_Dialog_acti"), "Error");
                                }
                            });
                        }

                        function loadForm_acti() {

                            var parametros = {
                                "opcion": 310,
                                "from": "acti"
                            };

                            $.ajax({
                                type: "POST",
                                url: "../Modules/manager.jsp",
                                data: parametros,
                                dataType: 'json',
                                async: false,
                                beforeSend: function () {
                                    block("Cargando lista de actividades...");
                                },
                                success: function (data, status, request) {
                                    var html = '<ul class="user-profiles-list-basic">';
                                    var x = 0;
                                    for (var i = 0; i < data.row.length; i++) {
                                        if (i !== 0) {
                                            if (data.row[i].id_espe !== data.row[i - 1].id_espe) {
                                                html += '</ul>';
                                                $("#list_" + data.row[i - 1].id_espe + "_acti").html(html);
                                                html = '<ul class="user-profiles-list-basic">';
                                                html += createHtmlListActi_acti(data.row[i].nombre, data.row[i].id, data.row[i].id_espe);
                                            } else {
                                                html += createHtmlListActi_acti(data.row[i].nombre, data.row[i].id, data.row[i].id_espe);
                                            }
                                        } else {
                                            html += createHtmlListActi_acti(data.row[i].nombre, data.row[i].id, data.row[i].id_espe);
                                        }
                                        x = data.row[i].id_espe;
                                    }
                                    html += '</ul>';

                                    $("#list_" + x + "_acti").html(html);

                                },
                                error: function (xhr, ajaxOptions, err) {
                                    alert(err);
                                    show_OkDialog($("#error_Dialog_acti"), "Error");
                                },
                                complete: function () {
                                    unBlock();
                                }
                            });

                        }

                        function createHtmlListActi_acti(nombre, idact, idespe) {
                            var html = "";

                            html = '<li>';
                            html += '<p>';
                            html += '<a href="">' + nombre + '</a>';

                            html += '</p>';
                            html += '<a class="edit" data-toggle="modal" href="#"  data-target="#EditModal' + idact + '"><i class="fa fa-edit" style="margin-left: 3px;"></i></a>';
                            html += '<a class="delete" href="#" onclick=delete_acti(' + idact + ')><i class="fa fa-close"></i></a>';

                            html += '<div class="modal fade" id="EditModal' + idact + '"  tabindex="-1" role="dialog" aria-labelledby="myModalLabel">';
                            html += '<div class="modal-dialog" role="document">';
                            html += '<div class="modal-content">';
                            html += '<div class="modal-header">';
                            html += '<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>';
                            html += '<h4 class="modal-title" id="myModalLabel">Editar Actividad</h4>';
                            html += '</div>';
                            html += '<div class="modal-body">';
                            html += '<form>';
                            html += '<div class="form-group">';
                            html += '<label>Nombre</label>';
                            html += '<input type="text" class="form-control" id="nombreedit' + idact + '_acti" value="' + nombre + '">';
                            html += '<label for="espe_acti">Especialidad Asociada:</label>';
                            html += '<select class="form-control" id="espeedit_' + idact + '_' + idespe + '_acti" name="espeedit_' + idact + '_' + idespe + '_acti"> </select>';
                            html += '</div>';
                            html += '</form>';
                            html += '</div>';
                            html += '<div class="modal-footer">';
                            html += '<button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button> <button type="button" class="btn btn-primary" onclick="edit_acti(' + idact + ', ' + idespe + ')">Editar Actividad</button>';
                            html += '</div>';
                            html += '</div>';
                            html += '</div>';
                            html += '</div>';
                            html += '<!-- fin del modal -->';
                            html += '</li>';
                            return html;
                        }

                        function createHtmlCollapse_acti() {
                            var html = "";

                            for (var i = 0; i < rowEspecialidades.data.length; i++) {

                                html += '<div class="panel panel-default">';
                                html += '   <div class="panel-heading">';
                                html += '       <h4 class="panel-title">';
                                html += '           <a data-toggle="collapse" data-parent="#accordion" href="#collapse' + rowEspecialidades.data[i].id + '">' + rowEspecialidades.data[i].nombre + '</a>';
                                html += '       </h4>';
                                html += '   </div>';
                                html += '   <div id="collapse' + rowEspecialidades.data[i].id + '" class="panel-collapse collapse in">';
                                html += '       <div class="panel-body"> ';
                                html += '<div id="list_' + rowEspecialidades.data[i].id + '_acti">';
                                html += '</div>';
                                html += '       </div>';
                                html += '   </div>';
                                html += '</div>';


                            }

                            $("#accordion").html(html);


                        }



                    </script>

                    <div id="load_Dialog_acti" title="Basic dialog" style='display:none;'>
                        <p>Successfully uploaded data</p>
                    </div>

                    <div id="save_Dialog_acti" title="Basic dialog" style='display:none;'>
                        <p>Data saved successfully</p>
                    </div>

                    <div id="error_Dialog_acti" title="Basic dialog" style='display:none;'>
                        <p>An error has occurred in the process</p>
                    </div>

                    <div id="dialog-confirm_acti" title="Eliminar Actividad" style='display:none;'>
                        <p><span class="ui-icon ui-icon-alert" style="float:left; margin:12px 12px 20px 0;"></span>
                            Esta seguro que desea eliminar esta actividad de manera permanente?
                        </p>
                    </div>
                </div>
                <!-- /#page-wrapper -->
            </div>

        </div>
        <!-- /#wrapper -->
    </body>

</html>


