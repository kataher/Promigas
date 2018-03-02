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
    </head>
    
    <body>
        <div class="col-lg-12">
                    <h1 class="page-header">Modulo de Fases</h1>
        </div>
        <hr>
        <div class="col-lg-12">
            <div class="col-lg-4">
              <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">Crear Fase</button>                
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
        <h4 class="modal-title" id="myModalLabel">Crear Fase</h4>
      </div>
      <div class="modal-body">
       <form>
  <div class="form-group">
    <label for="exampleInputEmail1">Nombre</label>
    <input type="text" class="form-control" id="nombrenew_fas">
  </div>
 
 </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal" id="cerrarAddtBtn_fas">Cerrar</button>
        <button type="button" class="btn btn-primary" id="addfase_fas" onclick="addfase_fas()">Crear Fase</button>
      </div>
    </div>
  </div>
</div>
        <!-- FIN DE CREACION DE Fases-->
        
         <!-- CREACION DE Fases-->
        <div class="modal fade" id="EditModal"  tabindex="-1" role="dialog" aria-labelledby="myModalLabelEdit">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabelEdit">Editar Fase</h4>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="form-group">
                            <input type="hidden" id="idedit_fas" name="idedit_fas"> 
                            <label>Nombre</label>
                            <input type="text" class="form-control" id="nombreedit_fas">
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal" id="cerrarEditBtn_fas">Cerrar</button> <button type="button" class="btn btn-primary" onclick="edit_fas()">Editar Fase</button>
                </div> 
            </div>
        </div>
    </div>
        
        <div class="col-lg-12">
           <table id="dataTableFases" class="display" cellspacing="0" width="100%">
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
                    <button type="button" id="editarBtn_fas" data-toggle="modal" data-target="#EditModal"  class="btn btn-success btn-block">Editar</button>
                </div>
                <div class="col-md-2">
                    <button type="button" id="deleteBtn_fas" class="btn btn-danger btn-block">Eliminar</button>
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
                
                var table_fas = null;
                
                $(document).ready(function() {                     
                   loadTable_fas();
                });
                
                function addfase_fas(){

                    var parametros = {
                            "nombre": $("#nombrenew_fas").val(),
                            "opcion" : 323,
                            "from": "fas"

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
                                table_fas.row.add( {
                                "id": data.row[0].id,
                                "nombre": data.row[0].nombre}).draw( false );
                                $('.modal-backdrop').remove();
                                $('#cerrarAddtBtn_fas').click();
                                $("#nombrenew_fas").val("");
                                show_OkDialog($("#save_Dialog_fas"), "Satisfactory process");
                            },
                            error: function (xhr, ajaxOptions, err) {
                                alert(err);
                                show_OkDialog($("#error_Dialog_fas"), "Error");
                            },
                            complete: function(){
                                unBlock();
                            }
                        });                            
                    }                   
                }
                
                function edit_fas(){
                    
                    var parametros = {
                            "nombre": $("#nombreedit_fas").val(),
                            "opcion" : 321,
                            "id" : $("#idedit_fas").val(),
                            "from": "fas"

                    };
                    
                    var isOk = validate(parametros);
                    
                    if(isOk === false){
                        alert("Debe diligenciar todos los datos del usuario");
                    }else{
                        $.ajax({
                            type: "POST",
                            url: "Modules/manager.jsp",
                            data: parametros,
                            dataType: 'json',
                            async : false,
                            success:  function (response) {
                                $('.modal-backdrop').remove();
                                $('#cerrarEditBtn_fas').click();
                                table_fas.destroy();
                                $("#dataTableFases").html("");
                                loadTable_fas();
                                show_OkDialog($("#save_Dialog_fas"), "Satisfactory process");
                                $("#nombreedit_fas").val("");
                                $("#idedit_fas").val("");
                            },
                            error: function (xhr, ajaxOptions, err) {
                                show_OkDialog($("#error_Dialog_fas"), "Error");
                            }
                        });                            
                    }
                    
                    
                }
                
                function delete_fas(idfase){
                    
                    var parametros = {
                            "opcion" : 322,
                            "id" : idfase,
                            "from": "fas"
                    };
                    
                    
                    $( "#dialog-confirm_fas" ).dialog({
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
                                    table_fas.row('.selected').remove().draw( false );
                                    show_OkDialog($("#save_Dialog_fas"), "Satisfactory process");
                                },
                                error: function (xhr, ajaxOptions, err) {
                                    alert(err);
                                    show_OkDialog($("#error_Dialog_fas"), "Error");
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
                
                function loadTable_fas(){
                    
                    table_fas = $('#dataTableFases').DataTable( {
                        "ajax": "Modules/manager.jsp?opcion=320",
                        "columns": [
                            { "data": "id" },
                            { "data": "nombre" }
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
                    
                    $('#dataTableFases tbody').on( 'click', 'tr', function () {
                        if ( $(this).hasClass('selected') ) {
                            $(this).removeClass('selected');
                        }
                        else {
                            table_fas.$('tr.selected').removeClass('selected');
                            $(this).addClass('selected');
                        }
                    } );
                    
                    $('#editarBtn_fas').click( function () {   
                       
                        if(table_fas.rows('.selected').data()[0] !== undefined){
                            var id = table_fas.rows('.selected').data()[0].id;
                            var nombre = table_fas.rows('.selected').data()[0].nombre;
                            
                            $("#nombreedit_fas").val(nombre);
                            $("#idedit_fas").val(id);
                        }
                    } );
                    
                    $('#deleteBtn_fas').click( function () {
                        if(table_fas.rows('.selected').data()[0] !== undefined){
                            var id = table_fas.rows('.selected').data()[0].id;
                            delete_fas(id);
                        }
                    } );
                }
            </script>
            
            <div id="load_Dialog_fas" title="Basic dialog" style='display:none;'>
                <p>Successfully uploaded data</p>
            </div>
            
            <div id="save_Dialog_fas" title="Basic dialog" style='display:none;'>
                <p>Data saved successfully</p>
            </div>
            
            <div id="error_Dialog_fas" title="Basic dialog" style='display:none;'>
                <p>An error has occurred in the process</p>
            </div>
            
            <div id="dialog-confirm_fas" title="Eliminar Fase" style='display:none;'>
                <p><span class="ui-icon ui-icon-alert" style="float:left; margin:12px 12px 20px 0;"></span>
                    Esta seguro que desea eliminar esta fase de manera permanente?
                </p>
            </div>
            
           
    </body>
</html>