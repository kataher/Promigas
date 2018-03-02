<%-- 
    Document   : index
    Created on : 03-mar-2016, 17:02:38
    Author     : kata__000
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <jsp:include page="../../../head.jsp" />
    <head>
      <%@include file="../../../includehead2.html" %>
    </head>
    
    <body>
        
        <hr>       
           
            <div class="col-lg-6">
                <div id ="nuevoact_adact">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Datos del Equipo Especificado
                        </div>
                        <div class="panel-body">

                            <div class="row col-lg-12">
                                    <div class="form-group col-lg-12">
                                            <label>Name of actuator model:</label>
                                            <input class="form-control" type="text" id="nombre_adact" name="nombre_adact" required>
                                    </div>

                <div class="form-group col-md-12">                
                    <label>Actuator Mark:</label>
                    <div id="div_maact_sel_adact">
                        <select class="form-control" id="maact_sel_adact" name="maact_sel_adact" ></select> 
                    </div>

                </div>
                                        <div class="form-group col-md-12"> 
                <label>Actuator reference:</label>
                    <div id="div_refe_sel_adact">
                        <select class="form-control" id="refe_sel_adact" name="refe_sel_adact" ></select> 
                    </div>

                </div>
                                        <div class="form-group col-md-12"> 
                <label>Type of action required:</label>
                    <div id="div_tiac_sel_adact">
                        <select class="form-control" id="tiac_sel_adact" name="tiac_sel_adact" ></select> 
                    </div>

                </div>
                                        <div class="form-group col-md-12"> 
                <label>Existing actuator models:</label>
                    <div id="div_moac_sel_adact">
                        <select class="form-control" id="moac_sel_adact" name="moac_sel_adact" ></select> 
                    </div>

                </div>

                            </div>  
                            <input type="button" id="saveBtn_act" name="saveBtn_act" value="Save" onclick="save_adact()" class="btn btn-success btn-block"> 
                        </div>              
                         
                    </div>
                </div>
                
                                  
            </div>
            <script>
                
                $(document).ready(function() {  
                   $("#opt_adact").val("1");
                   
                   load_accion_sel_adact();
                   load_maactuador_sel_adact();
                   
                });
                
                function load_accion_sel_adact(){
                    var parametros = {
                            "combo": "tiac",
                            "opcion" : "5",
                            "from": "act"
                    };
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        async: false,
                        beforeSend: function (xhr) {                            
                            block("Cargando...");
                        },
                        success: function(data, status, request){ 
                            var newHtml = "<select class='form-control' name='tiac_sel_adact' id= 'tiac_sel_adact' onchange='onchange_accion_adact()'>" + data;
                            $("#div_tiac_sel_adact").html(newHtml);
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_adact"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function load_maactuador_sel_adact(){
                    var parametros = {
                            "combo": "maact",
                            "opcion" : "5",
                            "from": "act"
                    };
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        async: false,
                        beforeSend: function (xhr) {                            
                            block("Cargando...");
                        },
                        success: function(data, status, request){ 
                            var newHtml = "<select class='form-control' name='maact_sel_adact' id= 'maact_sel_adact' onchange='onchange_maactuador_adact()'>" + data;
                            $("#div_maact_sel_adact").html(newHtml);
                            
                            onchange_maactuador_adact();
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_adact"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function load_refe_sel_adact(){
                    var parametros = {
                            "combo": "refeact",
                            "opcion" : "5",                            
                            "marca": $("#maact_sel_adact").val(),
                            "from": "act"
                    };
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        async: false,
                        beforeSend: function (xhr) {                            
                            block("Cargando...");
                        },
                        success: function(data, status, request){ 
                            var newHtml = '<select class="form-control" name="refe_sel_adact" id= "refe_sel_adact" onchange="onchange_refe_adact()">' + data;
                            $("#div_refe_sel_adact").html(newHtml);
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_adact"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                                
                function load_accion_sel_adact(){
                    var parametros = {
                            "combo": "tiac",
                            "opcion" : "5",
                            "from": "act"
                    };
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        async: false,
                        beforeSend: function (xhr) {                            
                            block("Cargando...");
                        },
                        success: function(data, status, request){ 
                            var newHtml = "<select class='form-control' name='tiac_sel_adact' id= 'tiac_sel_adact' onchange='onchange_accion_adact()'>" + data;
                            $("#div_tiac_sel_adact").html(newHtml);
                            
                            var newHtml = "<select class='form-control' name='nutiac_sel_adact' id= 'nutiac_sel_adact'>" + data;
                            $("#div_nutiac_sel_adact").html(newHtml);
                            
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_adact"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                                
                function load_modeloact_sel_adact(){
                    var parametros = {
                            "combo": "moac",
                            "referencia": $("#refe_sel_adact").val(),
                            "accion": $("#tiac_sel_adact").val(),
                            "opcion" : "5",
                            "from": "act"
                    };
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        async: false,
                        beforeSend: function (xhr) {                            
                            block("Cargando...");
                        },
                        success: function(data, status, request){ 
                            var newHtml = "<select class='form-control' name='moac_sel_adact' id= 'moac_sel_adact'>" + data;
                            $("#div_moac_sel_adact").html(newHtml);
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_adact"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function onchange_maactuador_adact(){
                    load_refe_sel_adact();
                    onchange_refe_adact();
                }
                
                function onchange_refe_adact(){
                    load_modeloact_sel_adact();
                }
                
                function onchange_accion_adact(){
                    load_modeloact_sel_adact();
                }
                
                function save_adact(){
                    
                    var parametros = {
                            "nombre_adact": $("#nombre_adact").val(),
                            "maact_sel_adact": $("#maact_sel_adact").val(),
                            "tiac_sel_adact": $("#tiac_sel_adact").val(),
                            "refe_sel_adact": $("#refe_sel_adact").val(),
                            "opcion" : 107
                    };
                    
                    var isOk = validate(parametros);

                    if(isOk === false){
                        alert("Debe indicar todos los campos");
                    }else{

                        $.ajax({
                            type: "POST",
                            url: "Modules/manager.jsp",
                            data: parametros,
                            beforeSend: function (xhr) {
                                block("Cargando...");
                            },
                            success: function(data, status, request){
                                var newHtml = "<select class='form-control' name='moac_sel_adact' id= 'moac_sel_adact'>" + data;
                                $("#div_moac_sel_adact").html(newHtml);
                                $("#nombre_adact").val("");
                                show_OkDialog($("#save_Dialog_act"), "Satisfactory process");
                                
                            },
                            error: function (xhr, ajaxOptions, err) {
                                alert(err);
                                show_OkDialog($("#error_Dialog_act"), "Error");
                            },
                            complete: function(){
                                unBlock();
                            }
                        });
                    }   
                }
                
                
                
                
                                
            </script>
        
            <div id="load_Dialog_adact" title="Basic dialog" style='display:none;'>
                <p>Successfully uploaded data</p>
            </div>
            
            <div id="save_Dialog_adact" title="Basic dialog" style='display:none;'>
                <p>Data saved successfully</p>
            </div>
            
            <div id="error_Dialog_adact" title="Basic dialog" style='display:none;'>
                <p>An error has occurred in the process</p>
            </div>
            
            <div id="calculate_Dialog_adact" title="Basic dialog" style='display:none;'>
                <p>Calculation done successfully</p>
            </div>
            
            <div id="delete_Dialog_adact" title="Basic dialog" style='display:none;'>
                <p>Successfully deleted record</p>
            </div>
    </body>
</html>