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
                <h2>This module validates the selection of the regulators to be installed in natural gas transport and distribution applications</h2>
            </div>
            <div class="col-lg-3"> 
                 
                 <!-- Button trigger modal -->
                 <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_reg()">
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
                              <div id="div-table_reg"></div>
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
            <input  class="form-control" type="text" id="description_reg" name="description_reg"><br> 
            Projects: 
            <select class="form-control" id="proyects_sel_reg" name="proyects_sel_reg"> </select>
        </div>
            </div>
        <hr>
        
           
            <div class="col-lg-9">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Data Input
                        </div>
            <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    
                                    <div class="form-group col-lg-12">
            <div>
            <label>Trademark:</label>
            </div>
            <div id = "div_ma_sel_reg">
            <input class="form-control" type="text" id="ma_sel_reg" name="ma_sel_reg" onchange="onchange_Input_reg(this)" required value="Segun vendor list.">
            </div>
            </div>
                                    <div class="form-group col-lg-12">
            <div>
            <label>Model:</label>
            </div>
            <div id = "div_mod_sel_reg">
            <select class="form-control" id="mod_sel_reg" name="mod_sel_reg"> </select>
            </div>
            </div>
                                    <div class="form-group col-lg-12">
            <div>
            <label>Size [in]:</label>
            </div>
            <div id = "div_tam_sel_reg">
            <select class="form-control" id="tam_sel_reg" name="tam_sel_reg"> </select>
            </div>
            </div>                   
            
            <div class="form-group">
                <div class="col-md-12">
             <label>Input pressure range (min):</label> 
                </div>
                
                <div class="col-md-8">
                <input value="340" class="form-control" type="text" id="rangomin_reg" name="rangomin_reg" onchange="onchange_Input_reg(this)" required><br>
            </div>
                <div class="col-md-4" id="div_rangomin_sel_reg">
            <select class="form-control" id="rangomin_sel_reg" name="rangomin_sel_reg" onchange="cleanOut_reg()"> </select>
            </div>
                
            </div>
                                    
            <div class="form-group">
                <div class="col-md-12">
            <label>Input pressure range (max):</label>
                </div>
                
                <div class="col-md-8">
                <input value="936"  class="form-control" type="text" id="rangomax_reg" name="rangomax_reg" onchange="onchange_Input_reg(this)" required>
                 </div>
                <div class="col-md-4" id="div_rangomax_sel_reg">
                    <select class="form-control" id="rangomax_sel_reg" name="rangomax_sel_reg" disabled></select> 
                </div>
                
            </div>
                                    
                                    <div class="form-group">
                <div class="col-md-12">
                <label>Regulated pressure:</label>
                </div>
            <div class="col-md-8">
            <input value="200" class="form-control" type="text" id="presionr_reg" name="presionr_reg" onchange="onchange_Input_reg(this)" required>
            </div>
            <div class="col-md-4" id = "div_presionr_sel_reg">
            <select class="form-control" id="presionr_sel_reg" name="presionr_sel_reg" onchange="cleanOut_reg()"> </select>
            </div>
             </div>
                                    
                                    <div class="form-group">
                <div class="col-md-12">
            <label>Base Pressure:</label>
                </div>
                <div class="col-md-8">
                <input value="14.65" class="form-control" type="text" id="presionb_reg" name="presionb_reg" onchange="onchange_Input_reg(this)" required>
                 </div>
                <div class="col-md-4" id="div_pb_sel_reg">
                    <select class="form-control" id="pb_sel_reg" name="pb_sel_reg"></select> 
                </div>
                
            </div>
                                    <div class="form-group">
                <div class="col-md-12">
            <label>Maximum operating flow:</label>
                </div>
                <div class="col-md-8">
                <input value="35" class="form-control" type="text" id="flujomax_reg" name="flujomax_reg" onchange="onchange_Input_reg(this)" required>
                 </div>
                <div class="col-md-4" id="div_flujomax_sel_reg">
                    <select class="form-control" id="flujomax_sel_reg" name="flujomax_sel_reg"></select> 
                </div>
                
            </div>
                                    <div class="form-group">
                <div class="col-md-12">
            <label>Operating temperature:</label>
                </div>
                <div class="col-md-8">
                <input value="85" class="form-control" type="text" id="tempope_reg" name="tempope_reg" onchange="onchange_Input_reg(this)" required>
                 </div>
                <div class="col-md-4" id="div_tempope_sel_reg">
                    <select class="form-control" id="tempope_sel_reg" name="tempope_sel_reg"></select> 
                </div>
                
            </div>
                                    <div class="form-group">
                <div class="col-md-12">
            <label>Specific Gravity of Gas:</label>
                </div>
                <div class="col-md-8">
                <input value="0.568" class="form-control" type="text" id="grav_reg" name="grav_reg" onchange="onchange_Input_reg(this)" required>
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
                            Results
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="form-group">
            <label>Specified Model:</label>
            <input type="text" id="modeloesp_reg" name="modeloesp_reg" readonly required class="form-control">
            </div>
             <div class="form-group">
            <label>% Work:</label>
            <input type="text" id="portrabajo_reg" name="portrabajo_reg" readonly required class="form-control">
            </div> 
            <div class="form-group">
            <label>Estimated maximum regulation capacity[SCFH]:</label>            
            <input type="text" id="capaest_reg" name="capaest_reg" readonly required class="form-control">
            </div>
                                   
                                    
                                    
                                    
 <input type="button" id="calculateBtn_reg" name="calculateBtn_reg" value="Calculate" onclick="calculate_reg()" class="btn btn-info btn-block">
 <input type="button" id="saveBtn_reg" name="saveBtn_reg" value="Save" onclick="save_reg()" class="btn btn-success btn-block">   
 <input type="button" id="delteBtn_reg" name="delteBtn_reg" value="Delete" onclick="deleteReg_reg()" class="btn btn-danger btn-block"> 
 <input type="button" id="datasheetgen_reg" name="datasheetgen_reg" value="Generate Datasheet" onclick="load_datasheet_reg()" class="btn btn-success btn-block">   

            
            </div>
                           </div>
                        </div>
                    </div>
            </div>
            <div class="col-lg-12">
            <div class="col-md-3">
                <input type="button" id="cleanAllBtn_reg" name="cleanBtn_reg" value="Clean All Data" onclick="cleanAll_reg()" class="btn btn-warning btn-block">
            </div>
                <div class="col-md-3">
                <input type="button" id="cleanInputBtn_reg" name="cleanBtn_reg" value="Clean Input Data" onclick="cleanIn_reg()" class="btn btn-warning btn-block">
            </div>
                <div class="col-md-3">
                <input type="button" id="cleanOutputBtn_reg" name="cleanBtn_reg" value="Clean Output Data" onclick="cleanOut_reg()" class="btn btn-warning btn-block">
            </div>
                
                </div>
            <input type="hidden" id="id_reg" name="id_reg">  
            <input type="hidden" id="opt_reg" name="opt_reg"> 
            <input type="hidden" id="op1g_reg" name="op1g_reg"> 
            <input type="hidden" id="op2g_reg" name="op2g_reg">
            
            <script>
               
                
                
                $(document).ready(function() {  
                    $("#opt_reg").val("1");
                    load_modelo_reg();    
                    load_tamano_reg();
                    load_fluE_sel_reg();
                    load_press_sel_reg();
                    load_temp_sel_reg();
                    
                    getproyectos(<%=session.getAttribute("idusu") %>,
                                $("#proyects_sel_reg"),
                                $("#error_Dialog_reg"));
                    
                    
                });
                
                function load_modelo_reg(){
                    
                    var parametros = {
                            "combo": 'modreg',
                            "opcion" : "5"
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
                            var newHtml = "<select class='form-control' name='mod_sel_reg' id= 'mod_sel_reg'>" + data;
                            $("#div_mod_sel_reg").html(newHtml); 
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_reg"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                    
                    
                }
                
                function load_tamano_reg(){
                    var parametros = {
                            "combo": 'tamreg',
                            "type": '2',
                            "opcion" : "5"
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
                            var newHtml = "<select class='form-control' name='tam_sel_reg' id= 'tam_sel_reg'>" + data;
                            $("#div_tam_sel_reg").html(newHtml); 
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_reg"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                    
                    
                }
                
                function load_history_reg(){
                    var parametros = {
                        "idproyect":  $("#proyects_sel_reg").val(),
			"iduser": <% out.print(session.getAttribute("idusu"));%>,
                        "opcion" : "6",
                        "nombre" : "historial",
                        "from" : "reg"
                    };
                    
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        dataType: 'json',
                        async : false,
                        beforeSend: function (xhr) {
                            $("#opt_reg").val("1");
                            $("#id_reg").val("");
                            cleanAll_reg();
                            block("Cargado datos...");
                        },
                        success: function(data, status, request){
                            
                            if(data!==null){
                            var tags = Object.keys(data.historial[0]);
                            
                            var tamano = data.size;
                            
                            var html = "<table class='table table-bordered table-striped'>";
                                html += "<thead>";
                                html += "<tr>";
                                html += "<th>Creation date</th>";
                                html += "<th>Description</th>";
                                html += "<th>Load</th>";
                                html += "</tr>";
                                html += "</thead>";
                           if(tamano > 0){
                              
                            html += '<tbody>';
                            for(var i = 0; i< tamano ; i++){
                               html += "<tr>";
                               html += "<td>"+data.historial[i].date+"</td>";
                               html += "<td>"+data.historial[i].description_reg+"</td>";
                               html += "<td><a href='#' onClick='load_form_reg("+data.historial[i].id+")'><span class='glyphicon glyphicon-plus' aria-hidden='true'></span></a></td>";
                               html += "<tr>";
                               
                            }
                               html += '</tbody>';
                           }else{
                               html += '<p>No records available.</p>';
                           }
                           html += "</table><br><br>";
                       
                           }else{
                            html = '<p>No records available.</p>';
                           }
                           $("#div-table_reg").empty();
                           $("#div-table_reg").html(html);
                           
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_reg"), "Error");
                        },
                        complete: function(){
                           unBlock();
                        }
                    });
                }
                
                function load_fluE_sel_reg(){
                    var parametros = {
                            "combo": "fluE",
                            "opcion" : "5",
                            "from": "reg"
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
                            var newHtml = '<select class="form-control" name="flujomax_sel_reg" id="flujomax_sel_reg" onchange="cleanOut_reg()">' + data;
                            $("#div_flujomax_sel_reg").html(newHtml);
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_reg"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function load_temp_sel_reg(){
                    var parametros = {
                            "combo": "temp",
                            "opcion" : "5",
                            "from": "reg"
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
                            var newHtml = '<select class="form-control" name="tempope_sel_reg" id="tempope_sel_reg" onchange="cleanOut_reg()">' + data;
                            $("#div_tempope_sel_reg").html(newHtml);
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_reg"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function load_press_sel_reg(){
                    var parametros = {
                            "combo": "pres",
                            "opcion" : "5",
                            "from": "reg"
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
                            var newHtml = "<select class='form-control' name='presionr_sel_reg' id= 'presionr_sel_reg' onchange='cleanOut_reg()'>" + data;
                            $("#div_presionr_sel_reg").html(newHtml);  
                            
                            newHtml = "<select class='form-control' name='rangomin_sel_reg' id= 'rangomin_sel_reg' onchange='cleanOut_reg()'>" + data;
                            $("#div_rangomin_sel_reg").html(newHtml);
                            
                            newHtml = "<select class='form-control' name='rangomax_sel_reg' id= 'rangomax_sel_reg' onchange='cleanOut_reg()'>" + data;
                            $("#div_rangomax_sel_reg").html(newHtml);
                            
                            newHtml = "<select class='form-control' name='pb_sel_reg' id= 'pb_sel_reg' onchange='cleanOut_reg()'>" + data;
                            $("#div_pb_sel_reg").html(newHtml);
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_reg"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                 
                function load_form_reg(id){
                    
                   var parametros = {
                        "id": id,
                        "opcion" : "4",
                        "from": "reg"
                    };
                    
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        dataType: 'json',
                        beforeSend: function (xhr) {
                            cleanAll_reg();
                            block("Cargado datos...");
                        },
                        success: function(data, status, request){
                            if (data != null)
                            {
                                var tags = Object.keys(data.row);
                                
                                for(var i = 0; i < tags.length; i++){
                                    $("#" + tags[i]).val(data.row[tags[i]]);
                                }
                                
                                $("#proyects_sel_reg").val(data.row["id_proyect"]);
                                
                                $("#opt_reg").val("2");
                                $("#id_reg").val(data.row.id);
                            }else{
                                $("#opt_reg").val("1");
                            }
                        },
                        error: function (xhr, ajaxOptions, err) {
                            $("#opt_reg").val("1");
                            show_OkDialog($("#error_Dialog_reg"), "Error");
                        },
                        complete: function(){
                           unBlock();
                        }
                    });
                }
                
                function cleanOut_reg(){
                    $("#modeloesp_reg").val("");
                    $("#portrabajo_reg").val("");
                    $("#capaest_reg").val("");
                }
        
                function cleanIn_reg(){
                    $("#ma_sel_reg").val("");
                    $("#presionr_reg").val("");
                    $("#rangomin_reg").val("");
                    $("#rangomax_reg").val("");
                    $("#presionb_reg").val("");
                    $("#flujomax_reg").val("");
                    $("#tempope_reg").val("");
                    $("#grav_reg").val("");
                }
                
                function cleanAll_reg(){
                    cleanIn_reg();
                    cleanOut_reg();
                    $("#description_reg").val("");
                }
                
                function onchange_Input_reg(inp){
                    
                    var sw = validateDecimal(inp.value);

                    if(sw != true){
                        inp.value = "";
                    }                
                    onchange_Input_zero(inp);
                    cleanOut_reg();
                    
                }
                
                function calculate_reg(){
                    
                    var variables = {
                            "mod_sel_reg": $("#mod_sel_reg").val(),
                            "tam_sel_reg" : $("#tam_sel_reg").val() ,
                            "rangomin_reg" : $("#rangomin_reg").val(),
                            "rangomax_reg" : $("#rangomax_reg").val(),
                            "presionr_reg" : $("#presionr_reg").val(),
                            "flujomax_reg" : $("#flujomax_reg").val(),
                            "tempope_reg" : $("#tempope_reg").val() ,
                            "grav_reg" : $("#grav_reg").val()
                    };
                    
                    var uni = {
                        "flujomax_sel_reg" : $("#flujomax_sel_reg").val().split(",")[1],
                        "tempope_sel_reg" : $("#tempope_sel_reg").val().split(",")[1],
                        "rangomin_sel_reg" : $("#rangomin_sel_reg").val().split(",")[1],
                        "rangomax_sel_reg" : $("#rangomax_sel_reg").val().split(",")[1],
                        "presionr_sel_reg" : $("#presionr_sel_reg").val().split(",")[1]
                    };
                    
                    var isOk = validate(variables);
                    
                    if(isOk === false){
                        alert("You must complete all fields");
                    }else{
                    
                        var res = reguladores_Form(variables, uni);
                        $("#portrabajo_reg").val(res[0]);
                        $("#capaest_reg").val(res[1]);
                        
                        var modelo = $("#mod_sel_reg option:selected").text() + " " + $("#tam_sel_reg option:selected").text() + " inches";                        
                        $("#modeloesp_reg").val(modelo);
                        
                        show_OkDialog($("#calculate_Dialog_reg"), "Satisfactory process");
                        
                    }
                }
                
                function save_reg(){
                    
                    var parametros = {
                            "ma_sel_reg": $("#ma_sel_reg").val(),
                            "mod_sel_reg" : $("#mod_sel_reg").val(),
                            "tam_sel_reg": $("#tam_sel_reg").val(),
                            "rangomin_reg" : $("#rangomin_reg").val(),
                            "rangomin_sel_reg" : $("#rangomin_sel_reg").val(),
                            "rangomax_reg" : $("#rangomax_reg").val(),
                            "rangomax_sel_reg": $("#rangomax_sel_reg").val(),
                            "presionb_reg": $("#presionb_reg").val(),
                            "pb_sel_reg" : $("#pb_sel_reg").val(),
                            "presionr_reg" : $("#presionr_reg").val(),
                            "presionr_sel_reg": $("#presionr_sel_reg").val(),
                            "flujomax_reg": $("#flujomax_reg").val(),
                            "flujomax_sel_reg": $("#flujomax_sel_reg").val(),
                            "tempope_reg": $("#tempope_reg").val(),
                            "tempope_sel_reg": $("#tempope_sel_reg").val(),
                            "grav_reg": $("#grav_reg").val(),
                            
                            "modeloesp_reg" : $("#modeloesp_reg").val(),
                            "portrabajo_reg" : $("#portrabajo_reg").val(),
                            "capaest_reg": $("#capaest_reg").val(),                            
                            
                            "idproyect": $("#proyects_sel_reg").val(),
                            "opcion": $("#opt_reg").val(),
                            "iduser": <% out.print(session.getAttribute("idusu"));%>,
                            "id_reg": 1,
                            "description_reg": $("#description_reg").val(),
                            "from": "reg"
                    };
                    
                    var isOk = validate(parametros);

                    if(isOk === false){
                        alert("You must perform the calculation and fill out the description");
                    }else{

                        if($("#opt_reg").val() == 2){
                            parametros.id_reg = $("#id_reg").val();
                        }

                        $.ajax({
                            type: "POST",
                            url: "Modules/manager.jsp",
                            data: parametros,
                            dataType: 'json',
                            beforeSend: function (xhr) {
                                block("Cargando...");
                            },
                            success: function(data, status, request){
                                $("#id_reg").val(data.row.id);
                                $("#opt_reg").val("2");
                                show_OkDialog($("#save_Dialog_reg"), "Satisfactory process");
                            },
                            error: function (xhr, ajaxOptions, err) {
                                alert(err);
                                show_OkDialog($("#error_Dialog_reg"), "Error");
                            },
                            complete: function(){
                                unBlock();
                            }
                        });
                    }   
                }
                
                function deleteReg_reg(){
                    var parametros = {
                        "id_reg": $("#id_reg").val(),
                        "opcion": 3,
                        "iduser": <%=session.getAttribute("idusu") %>,
                        "from": "reg"
                    };
                        
                        
                    if($("#opt_reg").val() == 2){
                        $.ajax({
                                type: "POST",
                                url: "Modules/manager.jsp",
                                data: parametros,
                                dataType: 'json',
                                beforeSend: function (xhr) {
                                    block("Cargando...");
                                },
                                success: function(data, status, request){
                                    cleanAll_reg();
                                    $("#id_reg").val("");
                                    $("#opt_reg").val("1");
                                    show_OkDialog($("#delete_Dialog_reg"), "Satisfactory process");
                                },
                                error: function (xhr, ajaxOptions, err) {
                                    alert(err);
                                    show_OkDialog($("#error_Dialog_reg"), "Error");
                                },
                                complete: function(){
                                    unBlock();
                                }
                            });

                    }else{
                        alert("You must load a log to be able to delete it");
                    }
                }
                
                function load_datasheet_reg(){
                    var parametros = {
                            "opcion" : "102",
                            "iduser": <%=session.getAttribute("idusu") %>,
                            "proyecto" : $( "#proyects_sel_reg option:selected" ).text(),
                            "from" : "reg"
                            
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
                            show_OkDialog($("#error_Dialog_reg"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                    
                }
                
                
                
            </script>
        
            <div id="load_Dialog_reg" title="Basic dialog" style='display:none;'>
                <p>Successfully uploaded data</p>
            </div>
            
            <div id="save_Dialog_reg" title="Basic dialog" style='display:none;'>
                <p>Data saved successfully</p>
            </div>
            
            <div id="error_Dialog_reg" title="Basic dialog" style='display:none;'>
                <p>An error has occurred in the process</p>
            </div>
            
            <div id="calculate_Dialog_reg" title="Basic dialog" style='display:none;'>
                <p>Calculation done successfully</p>
            </div>
            
            <div id="delete_Dialog_reg" title="Basic dialog" style='display:none;'>
                <p>Successfully deleted record</p>
            </div>
    </body>
</html>