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
        <div id="formula_tra">
        <div class="row">
            <div class="col-lg-9">
                <h2>This module validates the capacity of the meters to be installed in natural gas transport or distribution applications</h2>
            </div>
            
        </div>
        <hr>
        
        
        <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Input Data
                        </div>
            <div class="panel-body">
                <form enctype='multipart/form-data' id='formuploadajax_tra' name='formuploadajax_tra' method='post' action='subirT.jsp'>
                            <div class="row">
                                <div class="col-lg-12">
                                    
                                    <div class="form-group col-lg-12">
             <div class="col-lg-12">
            <label>Description: </label>            
            <input  class="form-control" required type="text" id="description_tra" name="description_tra">
            </div>
                                    </div>
                                    
                                    <div class="form-group col-lg-12">
             <div class="col-lg-12">
            <label>Projects: </label>            
            <select required class="form-control" id="proyects_sel_tra" name="proyects_sel_tra" > </select>
            </div>
                                    </div>
                                    
                                    <div class="form-group col-lg-12">
             <div class="col-lg-10">
            <label>Transmitter Type:</label>
            
            <div >
            <select class="form-control" id="tipo_sel_tra" name="tipo_sel_tra"> 
                <option value="1">Temperature Transmitters</option>
                <option value="2">Static Pressure Transmitters</option>
                <option value="3">Differential Pressure Transmitters</option>
            </select>
            </div>
            </div>
            </div>
                                    
                                    <div class="form-group col-lg-12">
             <div class="col-lg-10">
            <label>Attach Document:</label>            
            <input required type='file' id='idfile' name='idfile'>
            </div>
                                        
            <div class="col-lg-2">
                <input class="btn btn-success" type="submit" value="Save" />
            </div>
                                        <input type="hidden" id="id_tra" name="id_tra">
                                        <input type="hidden" id="id_user" name="id_user"> 
                                        <input type="hidden" id="opt_tra" name="opt_tra">
                                    </div>
            
                                    </div>
                            </div>
                    </form>
            </div>
            </div>
      </div>
        
        <div class="col-lg-12">
             
             <div class="col-lg-12">
                 <div class="col-lg-2">                
                    <label>Transmitter Type:</label>
                </div>
                
            
                <div class="col-lg-8">
                <select class="form-control" id="tipo2_sel_tra" name="tipo2_sel_tra"> 
                    <option value="1">Temperature Transmitters</option>
                    <option value="2">Static Pressure Transmitters</option>
                    <option value="3">Differential Pressure Transmitters</option>
                </select>
                </div>
            
                <div class="col-lg-2">                
                    <input type="button" id="datasheetgen_tra" name="datasheetgen_tra" value="Generate Datasheet" onclick="load_datasheet_tra()" class="btn btn-success btn-block">   
                </div>
            </div>                    
            
            </div>
        
        <div class="row">
            <div class="col-lg-12">
                <h2>Record</h2>
            </div>
        </div>
        
        <div class="row">
        <div class="col-lg-12">
            <div id="tablehistorial">
                      
                       <table id="dataTableHistorial_tra" class="display" cellspacing="0" width="100%">
        <thead>
            <tr>
                <th>Código</th>
                <th>Description</th>
                <th>Project</th>
                <th>File</th>
                <th>Created by</th>
                <th>Ruta</th>
            </tr>
        </thead>
        <tfoot>
            <tr>
                <th>Código</th>
                <th>Description</th>
                <th>Project</th>
                <th>File</th>
                <th>Created by</th>
                <th>Ruta</th>
            </tr>
        </tfoot>
    </table>
                      
                      <div class="col-lg-12">
           
               <div class="col-md-2">         
                          <input type="button" id="downloadBtn_tra" name="downloadBtn_tra" value="Download Document"  class="btn btn-success btn-block">   
                 </div>         
                          <div class="col-md-2">
                    <button type="button" id="deleteBtn_tra" class="btn btn-danger btn-block">Delete</button>
                </div>
            </div>
                      
                      
                  </div>
        </div>
        </div>
            
        </div>
        
        <script>
            var table_tra, idusu, tipo;
                
                $(document).ready(function() {  
                    $("#opt_tra").val("1");
                    
                    idusu = <%=session.getAttribute("idusu") %>;
                    tipo = <%=session.getAttribute("tipo") %>;
                    
                    
                    getproyectos(<%=session.getAttribute("idusu") %>,
                                $("#proyects_sel_tra"),
                                $("#error_Dialog_tra"));
                                
                    $("#idpro_tra").val($("#proyects_sel_tra").val());
                    $("#id_user").val(idusu);
                    loadTable_tra();
                    
                });
                
                function loadTable_tra(){
                    
                    table_tra = $('#dataTableHistorial_tra').DataTable( {
                        "ajax": "Modules/manager.jsp?opcion=6&from=tra&iduser="+idusu+"&type="+tipo+"&nombre=data",
                        "columns": [
                            { "data": "id" },
                            { "data": "description_tra" },
                            { "data": "name" },
                            { "data": "nombre_tra" },
                            { "data": "nuser" },
                            { "data": "ruta_tra" }
                        ],
                        "columnDefs": [
                            {
                                "targets": [ 5 ],
                                "visible": false,
                                "searchable": false
                            }
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
                    
                    $('#dataTableHistorial_tra tbody').on( 'click', 'tr', function () {
                        if ( $(this).hasClass('selected') ) {
                            $(this).removeClass('selected');
                        }
                        else {
                            table_tra.$('tr.selected').removeClass('selected');
                            $(this).addClass('selected');
                        }
                    } );
                    
                    $('#deleteBtn_tra').click( function () {
                        if(table_tra.rows('.selected').data()[0] !== undefined){
                            var id = table_tra.rows('.selected').data()[0].id;
                            delete_tra(id);                            
                        }
                    } );
                    
                    $('#downloadBtn_tra').click( function () {
                        if(table_tra.rows('.selected').data()[0] !== undefined){
                            var file = table_tra.rows('.selected').data()[0].nombre_tra;
                            var path = table_tra.rows('.selected').data()[0].ruta_tra;
                            
                            window.location="bajar.jsp?filename="+file+"&path="+path;
                            
                        }
                    } );
                    
                   
                }
                
                function load_datasheet_tra(){
                    
                    var parametros = {
                            "opcion" : "102",
                            "tipo_sel_tra": $("#tipo_sel_tra").val(),
                            "iduser": <%=session.getAttribute("idusu") %>,
                            "from": "tra"
                            
                    };
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        async: false,
                        dataType: "json",
                        beforeSend: function (xhr) {                            
                            block("Cargando...");
                        },
                        success: function(data, status, request){ 
                            
                            alert("Successfully generated file");
                            var file = data.row.file;
                            var path = data.row.path;
                            window.location="bajar.jsp?filename="+file+"&path="+path;
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_tra"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                    
                }
                
                function delete_tra(id){                    
                    //Confirmacion
                    $( "#dialog-confirm_tra" ).dialog({
                        resizable: false,
                        height: "auto",
                        width: 400,
                        modal: true,
                        buttons: {
                          "Delete": function() {
                            deleteconfirm_tra(id);
                            $( this ).dialog( "close" );
                          },
                          Cancelar: function() {
                            $( this ).dialog( "close" );
                          }
                        }
                    });    
                }
                
                function deleteconfirm_tra(id){
                    var parametros = {
                        "id_tra": id,
                        "iduser": <%=session.getAttribute("idusu") %>,
                        "opcion": 3,
                        "from": "tra"
                    };
                        
                        
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        dataType: 'json',
                        beforeSend: function (xhr) {
                            block("Cargando...");
                        },
                        success: function(data, status, request){
                            $("#id_tra").val("");
                            $("#opt_tra").val("1");
                            show_OkDialog($("#delete_Dialog_tra"), "Satisfactory process");
                            table_tra.row('.selected').remove().draw( false );
                        },
                        error: function (xhr, ajaxOptions, err) {
                            alert(err);
                            show_OkDialog($("#error_Dialog_tra"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                    });
                }
                
                
            </script>
        
            <div id="load_Dialog_tra" title="Basic dialog" style='display:none;'>
                <p>Successfully uploaded data</p>
            </div>
            
            <div id="save_Dialog_tra" title="Basic dialog" style='display:none;'>
                <p>Data saved successfully</p>
            </div>
            
            <div id="error_Dialog_tra" title="Basic dialog" style='display:none;'>
                <p>An error has occurred in the process</p>
            </div>
            
            <div id="calculate_Dialog_tra" title="Basic dialog" style='display:none;'>
                <p>Calculation done successfully</p>
            </div>
            
            <div id="delete_Dialog_tra" title="Basic dialog" style='display:none;'>
                <p>Successfully deleted record</p>
            </div>
             <div id="dialog-confirm_tra" title="Delete record" style='display:none;'>
                <p><span class="ui-icon ui-icon-alert" style="float:left; margin:12px 12px 20px 0;"></span>
                    Are you sure you want to permanently delete this record?
                </p>
            </div>
    </body>
</html>