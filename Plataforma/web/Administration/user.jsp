<%-- 
    Document   : index
    Created on : 03-mar-2016, 17:02:38
    Author     : kata__000
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <%@include file="../includehead2.html" %>
          <link rel="stylesheet" href="css/user-profiles-list-basic.css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
    </head>
    
    <body>
        <div class="col-lg-12">
                    <h1 class="page-header">Modulo de Usuarios</h1>
        </div>
        <hr>
        <div class="col-lg-12">
            <div class="col-lg-4">
              <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">Crear Usuario</button>                
            </div>
        </div>
        <hr>
        <!-- MODAL PARA CREAR USUARIOS-->
        <!-- Modal -->
          <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Crear Usuario</h4>
      </div>
      <div class="modal-body">
       <form>
  <div class="form-group">
    <label >Nombre</label>
    <input type="text" class="form-control" id="nombrenew_usu">
  </div>
           <div>
               <label>Nombre</label>
                <select id="tipousu_usu">
  <option value="1">Administración del Sitio</option>
  <option value="4">Lider de Area</option>
  <option value="2">Lider de Proyecto/Especialidad/Fase</option>
  <option value="6">Invitado</option>
  <option value="7">Diseñador</option>
</select> 
           </div>
 </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal" id="cerrarAddtBtn_usu">Cerrar</button>
        <button type="button" class="btn btn-primary" id="adduser_usu" onclick="adduser_usu()">Crear Usuario</button>
      </div>
    </div>
  </div>
</div>
        <!-- FIN DE CREACION DE USUARIO-->
        <div class="modal fade" id="EditModal"  tabindex="-1" role="dialog" aria-labelledby="myModalLabelEdit">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabelEdit">Editar Usuario</h4>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="form-group">
                            <input type="hidden" id="idedit_usu" name="idedit_usu"> 
                            <label>Nombre</label>
                            <input type="text" class="form-control" id="nombreedit_usu">
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal" id="cerrarEditBtn_usu">Cerrar</button> <button type="button" class="btn btn-primary" onclick="edit_usu()">Editar Usuario</button>
                </div> 
            </div>
        </div>
    </div>
        
        <!-- Lista de usuarios -->
        <div class="col-lg-12">
           <table id="dataTableUsuarios" class="display" cellspacing="0" width="100%">
        <thead>
            <tr>
                <th>Còdigo</th>
                <th>Nombre</th>
            </tr>
        </thead>
        <tfoot>
            <tr>
                <th>Còdigo</th>
                <th>Nombre</th>
            </tr>
        </tfoot>
    </table>
            <div class="col-lg-12">
           
                <div class="col-md-2">
                    <button type="button" id="editarBtn_usu" data-toggle="modal" data-target="#EditModal"  class="btn btn-success btn-block">Editar</button>
                </div>
                <div class="col-md-2">
                    <button type="button" id="deleteBtn_usu" class="btn btn-danger btn-block">Eliminar</button>
                </div>
            </div>
        </div>
            
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
                
                var table_usu;
                
                $(document).ready(function() {                     
                    loadTable_usu();
                });
                
                function loadTable_usu(){
                    
                    table_usu = $('#dataTableUsuarios').DataTable( {
                        "ajax": "Modules/manager.jsp?opcion=300",
                        "columns": [
                            { "data": "id" },
                            { "data": "name" }
                        ],
                        "scrollY": "300px",
                        "scrollCollapse": true,
                        "language": {
                            "lengthMenu": "Mostrando _MENU_ filas por página",
                            "zeroRecords": "No se han encontrado resultados",
                            "info": "Mostrando página _PAGE_ de _PAGES_",
                            "infoEmpty": "No existen filas disponibles",
                            "infoFiltered": "(filtrando de _MAX_ filas en total)"
                        }
                    } );
                    
                    $('#dataTableUsuarios tbody').on( 'click', 'tr', function () {
                        if ( $(this).hasClass('selected') ) {
                            $(this).removeClass('selected');
                        }
                        else {
                            table_usu.$('tr.selected').removeClass('selected');
                            $(this).addClass('selected');
                        }
                    } );
                    
                    $('#editarBtn_usu').click( function () {   
                       
                        if(table_usu.rows('.selected').data()[0] !== undefined){
                            var id = table_usu.rows('.selected').data()[0].id;
                            var nombre = table_usu.rows('.selected').data()[0].name;
                            
                            $("#nombreedit_usu").val(nombre);
                            $("#idedit_usu").val(id);
                        }
                    } );
                    
                    $('#deleteBtn_usu').click( function () {
                        if(table_usu.rows('.selected').data()[0] !== undefined){
                            var id = table_usu.rows('.selected').data()[0].id;
                            delete_usu(id);
                        }
                    } );
                }
                
                function adduser_usu(){
                    
                    var parametros = {
                            "nombre": $("#nombrenew_usu").val(),
                            "tipo": $("#tipousu_usu").val(),
                            "opcion" : 303,
                            "from": "usu"
                    };
                    
                    var isOk = validate(parametros);
                    
                    if(isOk === false){
                        alert("Debe diligenciar todos los datos del nuevo usuario");
                    }else{
                        $.ajax({
                            type: "POST",
                            url: "Modules/manager.jsp",
                            data: parametros,
                            dataType: 'json',
                            async : false,
                            beforeSend: function () {
                                block("Guardando...");
                            },
                            success:  function(data, status, request){
                                table_usu.row.add( {
                                "id": data.row[0].id,
                                "name": data.row[0].name}).draw( false );
                                $('.modal-backdrop').remove();
                                $('#cerrarAddtBtn_usu').click();
                                $("#nombrenew_usu").val("");
                                show_OkDialog($("#save_Dialog_usu"), "Satisfactory process");
                            },
                            error: function (xhr, ajaxOptions, err) {
                                show_OkDialog($("#error_Dialog_usu"), err);
                            },
                            complete: function(){
                                unBlock();
                            }
                        });                            
                    }                   
                }
                
                function edit_usu(){
                    
                    var parametros = {
                            "nombre": $("#nombreedit_usu").val(),
                            "opcion" : 301,
                            "id_user" : $("#idedit_usu").val(),
                            "from": "usu"
                    };
                    
                    var isOk = validate(parametros);
                    
                    if(isOk === false){
                        alert("Debe diligenciar todos los datos del usuario");
                    }else{
                        $.ajax({
                            type: "POST",
                            url: "Modules/manager.jsp",
                            data: parametros,
                            async : false,
                           beforeSend: function () {
                                block("Guardando...");
                            },
                            success:  function (response) {
                               
                                $('.modal-backdrop').remove();
                                $('#cerrarEditBtn_usu').click();
                                table_usu.destroy();
                                $("#dataTableUsuarios").html("");
                                loadTable_usu();
                                show_OkDialog($("#save_Dialog_usu"), "Satisfactory process");
                                $("#nombreedit_usu").val("");
                                $("#idedit_usu").val("");
                            },
                            error: function (xhr, ajaxOptions, err) {
                                show_OkDialog($("#error_Dialog_usu"), err);
                            },
                            complete: function(){
                                unBlock();
                            }
                        });                            
                    }
                    
                    
                }
                
                function delete_usu(iduser){
                    
                    var parametros = {
                            "opcion" : 302,
                            "id_user" : iduser,
                            "from": "usu"
                    };
                    
                    $( "#dialog-confirm_usu" ).dialog({
                        resizable: false,
                        height: "auto",
                        width: 400,
                        modal: true,
                        buttons: {
                          "Eliminar": function() {
                            $.ajax({
                                type: "POST",
                                url: "Modules/manager.jsp",
                                data: parametros,
                                dataType: 'json',
                                async : false,
                                success:  function (response) {
                                    table_usu.row('.selected').remove().draw( false );
                                    show_OkDialog($("#save_Dialog_usu"), "Satisfactory process");
                                },
                                error: function (xhr, ajaxOptions, err) {
                                    show_OkDialog($("#error_Dialog_usu"), err);
                                }
                            });   
                            $( this ).dialog( "close" );
                          },
                          Cancelar: function() {
                            $( this ).dialog( "close" );
                          }
                        }
                    });    
                                        
                      
                                   
                }
                
                
            </script>
            
            <div id="load_Dialog_usu" title="Basic dialog" style='display:none;'>
                <p>Successfully uploaded data</p>
            </div>
            
            <div id="save_Dialog_usu" title="Basic dialog" style='display:none;'>
                <p>Data saved successfully</p>
            </div>
            
            <div id="error_Dialog_usu" title="Basic dialog" style='display:none;'>
                <p>An error has occurred in the process</p>
            </div>
            
            <div id="dialog-confirm_usu" title="Eliminar Uduario" style='display:none;'>
                <p><span class="ui-icon ui-icon-alert" style="float:left; margin:12px 12px 20px 0;"></span>
                    Esta seguro que desea eliminar el usuario de  manera permanente?
                </p>
            </div>
            
           
    </body>
</html>