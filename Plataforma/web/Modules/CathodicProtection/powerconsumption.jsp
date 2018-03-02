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
                <h2><strong>Cathodic Protection: </strong> 8.8. Power Consumption of a Cathodic Protection Rectifier</h2>
                 
            </div>
            <div class="col-lg-3"> 
                 
                 <!-- Button trigger modal -->
                 <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_pc()">
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
                              <div id="div-table_pc"></div>
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
            <input  class="form-control" type="text" id="description_pc" name="description_pc"><br>
            Projects: 
            <select class="form-control" id="proyects_sel_pc" name="proyects_sel_pc"> </select>
        
        </div>
            </div>
        <hr>        
        <div class="col-lg-9">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Input Data
                        </div>
            <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
            <div class="form-group">
                <label class="col-md-12">Rectifier Output Voltage:</label>
                <div class="col-md-8">
                    <input class="form-control" type="text" id="rectifiero_pc" name="rectifiero_pc" onchange="onchange_Input_pc(this)" required>
                </div>
                <div class="col-md-4"  id="div_ro_sel_pc">
                    <select class="form-control" id="ro_sel_pc" name="ro_sel_pc">  <option value="1"> V </option></select>
                </div>
            </div>
                                    <div class="form-group">
                <label class="col-md-12">Rectifier Current Output:</label>
                <div class="col-md-8">
                    <input class="form-control" type="text" id="rectifierc_pc" name="rectifierc_pc" onchange="onchange_Input_pc(this)" required>
                </div>
                <div class="col-md-4"  id="div_rc_sel_pc">
                    <select class="form-control" id="rc_sel_pc" name="rc_sel_pc"> <option value="1"> A</option></select>
                </div>
            </div>
                                    <div class="form-group">
                <label class="col-md-12">Utility Rate:</label>
                <div class="col-md-8">
                    <input class="form-control" type="text" id="utilityr_pc" name="utilityr_pc" onchange="onchange_Input_pc(this)" required>
                </div>
                <div class="col-md-4"  id="div_ut_sel_pc">
                    <select class="form-control" id="ut_sel_pc" name="ut_sel_pc">  <option value="1"> $/kWh </option></select>
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
            <label>Power Consumption per Month [$/kWh]:</label>
            <input type="text" id="powerc_pc" name="powerc_pc" readonly required class="form-control">
            </div>
                                    <div class="form-group">
            <label>Montly Bill [$]</label>
            <input type="text" id="montlyb_pc" name="montlyb_pc" readonly required class="form-control">
            </div>
            <input type="button" id="calculateBtn_pc" name="calculateBtn_pc" value="Calculate" onclick="calculate_pc()" class="btn btn-info btn-block">
            <input type="button" id="saveBtn_pc" name="saveBtn_pc" value="Save" onclick="save_pc()" class="btn btn-success btn-block">   
            <input type="button" id="delteBtn_pc" name="delteBtn_pc" value="Delete" onclick="delete_pc()" class="btn btn-danger btn-block">

            </div>
                           </div>
                        </div>
                    </div>
            </div>
            <div class="col-lg-12">
            <div class="col-md-3">
            <input type="button" id="cleanAllBtn_pc" name="cleanAllBtn_pc" value="Clean All Data" onclick="cleanAll_pc()" class="btn btn-warning btn-block"></div>
            <div class="col-md-3">
            <input type="button" id="cleanInputBtn_pc" name="cleanInputBtn_pc" value="Clean Input Data" onclick="cleanIn_pc()" class="btn btn-warning btn-block"></div>
            <div class="col-md-3">
            <input type="button" id="cleanOutputBtn_pc" name="cleanOutputBtn_pc" value="Clean Output Data" onclick="cleanOut_pc()" class="btn btn-warning btn-block"></div>
            </div>
            <input type="hidden" id="id_pc" name="id_pc">  
            <input type="hidden" id="opt_pc" name="opt_pc" value="1"> 
        
            <script>
                
                $(document).ready(function() {
                   //load_history_pc(); 
                   getproyectos(<%=session.getAttribute("idusu") %>,
                                $("#proyects_sel_pc"),
                                $("#error_Dialog_pc"));
                });   
                
                function load_history_pc(){
                    var parametros = {
                        "idproyect": $("#proyects_sel_pc").val(),
			"iduser": <% out.print(session.getAttribute("idusu"));%>,
                        "opcion" : "6",
                        "nombre" : "historial",
                        "from": "pc"
                    };
                    
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        dataType: 'json',
                        async : false,
                        beforeSend: function (xhr) {
                            cleanAll_pc();
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
                                html += "<th>Code</th>";
                                html += "<th>Description</th>";
                                html += "<th>Load</th>";
                                html += "</tr>";
                                html += "</thead>";
                           if(tamano > 0){
                              
                            html += '<tbody>';
                            for(var i = 0; i< tamano ; i++){
                               html += "<tr>";
                               html += "<td>"+data.historial[i].date+"</td>";
                               html += "<td>"+data.historial[i].id+"</td>";
                               html += "<td>"+data.historial[i].description_pc+"</td>";
                               html += "<td><a href='#' onClick='load_form_pc("+data.historial[i].id+")'><span class='glyphicon glyphicon-plus' aria-hidden='true'></span></a></td>";
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
                           $("#div-table_pc").empty();
                           $("#div-table_pc").html(html);
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_pc"), "Error");
                        },
                        complete: function(){
                           unBlock();
                        }
                    });
                }
 
                function load_form_pc(id){
                     var parametros = {
                        "id": id,
                        "from": "pc",  
                        "opcion" : "4"
                    };
                    
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        dataType: 'json',
                        beforeSend: function (xhr) {
                            cleanAll_pc();
                            block("Cargado datos...");
                        },
                        success: function(data, status, request){
                            if (data !== null)
                            {
                                var tags = Object.keys(data.row);
                                
                                for(var i = 0; i < tags.length; i++){
                                    if(tags[i] != "date" && tags[i] != "id_proyect" && tags[i] != "id_user")
                                    {
                                        $("#" + tags[i]).val(data.row[tags[i]]);
                                    }
                                }
                                
                                $("#opt_pc").val("2");
                                $("#id_pc").val(data.row.id);
                                $("#proyects_sel_pc").val(data.row.id_proyect);
                            }else{
                                $("#opt_pc").val("1");
                            }
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            $("#opt_pc").val("1");
                            show_OkDialog($("#error_Dialog_pc"), "Error");
                           
                        },
                        complete: function(){
                           unBlock();
                        }
                    });
                }
               
                
                
                function onchange_Input_pc(inp){
                    var sw = validateDecimal(inp.value);
                    
                    if(sw != true){
                        inp.value = "";
                    }    
                    onchange_Input_zero(inp);
                    cleanOut_pc();
                }
                                
                function cleanOut_pc(){
                    $("#powerc_pc").val("");
                    $("#montlyb_pc").val("");
                }
        
                function cleanIn_pc(){
                    $("#rectifierc_pc").val("");  
                    $("#rectifiero_pc").val(""); 
                    $("#utilityr_pc").val("");            
                }
                
                function cleanAll_pc(){
                    cleanIn_pc();
                    cleanOut_pc();
                    $("#description_pc").val("");   
                }
                
                function save_pc(){
                    
                   
                    
                    var parametros = {
                                "rectifiero_pc" : $("#rectifiero_pc").val(),
                                "rectifierc_pc" : $("#rectifierc_pc").val(),
                                "utilityr_pc": $("#utilityr_pc").val(),
                                "ro_sel_pc": $("#ro_sel_pc").val(),
                                "rc_sel_pc": $("#rc_sel_pc").val(),
                                "ut_sel_pc": $("#ut_sel_pc").val(),

                                "powerc_pc": $("#powerc_pc").val(),
                                "montlyb_pc": $("#montlyb_pc").val(),
                                
                                "idproyect": $("#proyects_sel_pc").val(), 
                                "iduser": <% out.print(session.getAttribute("idusu"));%>,
                                "opcion": $("#opt_pc").val(),
                                "id_pc": 1,
                                "description_pc": $("#description_pc").val(),
                                "from": "pc"
                        };
                    
                    var isOk = validate(parametros);
                        
                    if(isOk === false){
                        alert("Debe realizar el càlculo");
                    }else{
                        if($("#opt_pc").val() == 2){
                            parametros.id_pc = $("#id_pc").val();
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
                                $("#id_pc").val(data.row.id);
                                $("#opt_pc").val("2");
                                show_OkDialog($("#save_Dialog_pc"), "Satisfactory process");
                            },
                            error: function (xhr, ajaxOptions, err) {
                                alert(err);
                                show_OkDialog($("#error_Dialog_pc"), "Error");
                            },
                            complete: function(){
                                unBlock();
                            }
                        });
                    }
                }
                                
                function calculate_pc(){
                    var variables = {
                            "rectifiero_pc" : $("#rectifiero_pc").val(),
                            "rectifierc_pc": $("#rectifierc_pc").val(),
                            "utilityr_pc" : $("#utilityr_pc").val()
                    };

                    var res = powerConsumption_Form(variables);
                    
                    $("#powerc_pc").val(res[0]);
                    $("#montlyb_pc").val(res[1]);
                    
                    show_OkDialog($("#calculate_Dialog_pc"), "Satisfactory process");
                }
                
                function delete_pc(){
                    
                    //Confirmacion
                    if($("#opt_pc").val() == 2){
                        $( "#dialog-confirm_pc" ).dialog({
                            resizable: false,
                            height: "auto",
                            width: 400,
                            modal: true,
                            buttons: {
                              "Delete": function() {
                                deleteReg_pc();
                                $( this ).dialog( "close" );
                              },
                              Cancelar: function() {
                                $( this ).dialog( "close" );
                              }
                            }
                        });    
                    }else{
                        alert("You must load a record to be able to delete it");
                    }
                }

                function deleteReg_pc(){

                    var parametros = {
                            "id_pc": $("#id_pc").val(),
                            "opcion" : "3",
                        "iduser": <%=session.getAttribute("idusu") %>,
                        "from": "pc"
                    };
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        beforeSend: function (xhr) {
                            block("Cargando...");
                        },
                        success: function(data, status, request){
                            $("#id_pc").val("");
                            $("#opt_pc").val("1");
                            cleanAll_pc();
                            show_OkDialog($("#delete_Dialog_pc"), "Satisfactory process");                           
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_pc"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                                
            </script>
            
            <div id="load_Dialog_pc" title="Basic dialog" style='display:none;'>
                <p>Successfully uploaded data</p>
            </div>
            
            <div id="save_Dialog_pc" title="Basic dialog" style='display:none;'>
                <p>Data saved successfully</p>
            </div>
            
            <div id="error_Dialog_pc" title="Basic dialog" style='display:none;'>
                <p>An error has occurred in the process</p>
            </div>
            
            <div id="calculate_Dialog_pc" title="Basic dialog" style='display:none;'>
                <p>Calculation done successfully</p>
            </div>
            
            <div id="delete_Dialog_pc" title="Basic dialog" style='display:none;'>
                <p>Successfully deleted record</p>
            </div>
            
            <div id="dialog-confirm_pc" title="Delete record" style='display:none;'>
                <p><span class="ui-icon ui-icon-alert" style="float:left; margin:12px 12px 20px 0;"></span>
                    Are you sure you want to permanently delete this record?
                </p>
            </div>
    </body>
</html>