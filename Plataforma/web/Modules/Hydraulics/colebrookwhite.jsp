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
                <h2><strong>Hydraulics:</strong> ColebrookWhite</h2>
            </div>
            <div class="col-lg-3"> 

                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_cfr()">
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
                                <div id="div-table_cfr"></div>
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
                <input  class="form-control" type="text" id="description_cfr" name="description_cfr"><br>
                Projects: 
                <select class="form-control" id="proyects_sel_cfr" name="proyects_sel_cfr"> </select>
            </div>
        </div>
        <hr>
        
        <div class="col-lg-3">
        <div class="panel panel-default">
                        <div class="panel-heading">
                            Suggested Data
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    <form role="form">
                                        <div class="form-group">

              <div class="form-group">
                <div class="col-sm-12"> <label>Base Temperature:</label> </div>
             <div class="col-sm-5">
             <input class="form-control" type="text" id="basetemperature_cfr" name="basetemperature_cfr" onchange="onchange_Input_cfr(this)" required value="60">
             </div>
             <div class="col-sm-6" id="div_bt_sel_cfr">
                <select class="form-control" id="bt_sel_cfr" name="bt_sel_cfr" onchange="cleanOut_cfr()"> </select>
            </div>
            
            </div>
            <div class="form-group">
            <div class="col-sm-12">
              <label>Base Pressure:</label>
            </div>
            <div class="col-sm-6">
             <input  class="form-control" type="text" id="basepressure_cfr" name="basepressure_cfr" onchange="onchange_Input_cfr(this)" required value="14.65"><br>
            </div>
            
                <div class="col-sm-6" id="div_bte_sel_cfr">
                <select class="form-control" id="bte_sel_cfr" name="bte_sel_cfr"> </select>
             </div>
            </div>
            <div class="form-group">
                <div class="col-md-12"><label>Unknown</label>        </div>
            <select class="form-control" onchange="hide(this)" id="unknown_cfr" name="unknown_cfr">
                 <option value="-" >--Choose One--</option>
                 <option value="flowrate" >Flow rate</option>
                 <option value="internal" >Internal Pipe Diameter</option>
                 <option value="upstream" >Upstream Pressure</option>
                 <option value="downstream" >Downstream Pressure</option>
             </select>
            </div>
            </div>
                                   </form>
                                </div>
                            </div>
                        </div>  
                    </div>
       </div>
        
        <div class="col-lg-6">
        <div class="panel panel-default">
                        <div class="panel-heading">
                            Input Data
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    <form role="form">
                                        <div class="form-group">
                                            
                                        <div class="col-md-12">   
                                        <div class="col-md-12">
                                        <label>Height:</label>
                                        </div>
                                        <div class="col-md-8">
                                        <input value = "0" class="form-control" type="text" id="enteree_crf" name="enteree_crf" required>
                                        </div>
                                                                    <div class="col-md-4" id = "div_ee_sel_crf">
                                        <select class="form-control" id="ee_sel_crf" name="ee_sel_crf"> </select>
                                        </div>
                                        </div>
                                       
                                            
                                            <div class="col-md-12">
                                               <div class="col-md-12"> <label>Gas flow temperature</label></div>
                                              <div class="col-md-8">                                              
                                                <input class="form-control" type="text" id="gasflowingtemp_cfr" name="gasflowingtemp_cfr" onchange="onchange_Input_zero(this)" required>
                                              </div>   
                                               <div class="col-md-4" id = "div_ee_sel_cfr">
                                                <select class="form-control" id="ee_sel_cfr" name="ee_sel_cfr"> </select>
                                              </div>
                                           </div>
                                            
                                            <div class="col-md-12">
                                               <div class="col-md-12"> <label>Gas Specific Gravity:</label></div>
                                              <div class="col-md-12">                                              
                                                <input class="form-control" type="text" id="gasspecificgra_cfr" name="gasspecificgra_cfr" onchange="onchange_Input_cfr(this)" required>
                                           </div>  
                                           </div>
                                          <div class="col-md-12">
                                              <div class="col-md-12">
                                               <label>Pipeline Roughness:</label>
                                              </div>
                                              <div class="col-md-8"> 
                                                <div id="div_rou_sel_cfr">
                                                    <select class="form-control" id="roughness_cfr" name="roughness_cfr"> </select>
                                                </div>
                                              </div>
                                              <div class="col-md-4"> 
                                                <input class="form-control" type="text" id="pipelineroughness_cfr" name="pipelineroughness_cfr" required>
                                              </div>
                                           </div>
                                            <div class="col-md-12">
                                           <div class="col-md-12">
                                            <label>Pipeline Efficiency Factor</label>
                                            <input class="form-control" type="text" id="pipelineefficiency_cfr" name="pipelineefficiency_cfr"  required>
                                           </div>
                                            </div>
                                            <!-- Desaparece opción 1-->
                                             <!-- Desaparece opción 1-->
                                            <div class="col-md-12" id="flowrate">
                                                <div class="col-md-12"><label>Flow Rate</label></div>
                                                <div class="col-md-8">
                                            <input class="form-control" type="text" id="flowrate_cfr" name="flowrate_cfr" required >
                                                </div>
                                            <div class="col-md-4" id = "div_if_sel_cfr">
                                                <select class="form-control" id="if_sel_cfr" name="if_sel_cfr" onchange="onchange_fr_cfr(this)"> </select>
                                              </div>
                                            
                                            </div>
                                            <!-- fin -->
                                           <div class="col-md-12"  id="upstream">
                                               <div class="col-md-12"> <label> Upstream Pressure</label></div>
                                               <div class="col-md-8">                                            
                                                <input class="form-control" type="text" id="upstreampressure_cfr" name="upstreampressure_cfr"  required>
                                               </div>
                                             <div class="col-md-4" id="div_up_sel_cfr">
                                              <select class="form-control" id="up_sel_cfr" name="up_sel_cfr"> </select>
                                            </div>
                                            
                                           </div>
                                           <div class="col-md-12 success"  id="downstream">
                                               <div class="col-md-12"> <label>Downstream Pressure</label></div>
                                               <div class="col-md-8">                                            
                                            <input class="form-control" type="text" id="downstreampressure_cfr" name="downstreampressure_cfr"  required>
                                               </div>
                                             <div class="col-md-4" id="div_bp_sel_cfr">
                                              <select class="form-control" id="bp_sel_cfr" name="bp_sel_cfr"> </select>
                                                </div>
                                           </div>
                                            <div class="col-md-12">
                                            <div class="col-md-12">
                                           <div class="form-group success"  id="internal">
                                            <label>Internal Pipe Diameter</label>
                                            <input class="form-control" type="text" id="internalpipe_cfr" name="internalpipe_cfr"  required>
                                           </div>
                                            </div>
                                            </div>
                                           <div class="col-md-12">
                                               <div class="col-md-12"><label>Length of Pipeline</label></div>
                                               <div class="col-md-8">
                                                <input class="form-control" type="text" id="lengthof_cfr" name="lengthof_cfr"  required onchange="onchange_Input_zero(this)">
                                               </div>
                                               <div class="col-md-4" id = "div_le_sel_cfr">
                                               <select class="form-control" id="le_sel_cfr" name="le_sel_cfr"> </select>
                                             </div>
                                           </div>
                                           <div class="col-md-12">
                                            <div class="col-md-12">  <label>Upstream Elevation</label></div>
                                            <div class="col-md-8">
                                              <input class="form-control" type="text" id="upstreamelevation_cfr" name="upstreamelevation_cfr" required onchange="onchange_Input_zero(this)">
                                            </div>
                                             <div class="col-md-4" id = "div_ue_sel_cfr">
                                               <select class="form-control" id="ue_sel_cfr" name="ue_sel_cfr"> </select>
                                             </div>
                                           </div>
                                           <div class="col-md-12">
                                               <div class="col-md-12"><label>Downstream Elevation</label></div>
                                               <div class="col-md-8">
                                                 <input class="form-control" type="text" id="downstreamelevation_cfr" name="downstreamelevation_cfr"  required onchange="onchange_Input_zero(this)">
                                               </div>
                                               <div class="col-md-4" id = "div_de_sel_cfr">
                                                 <select class="form-control" id="de_sel_cfr" name="de_sel_cfr"> </select>
                                               </div>
                                           </div>
           
           
                                        </div>
                                   </form>
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
                                    <form role="form">
                                        <div class="form-group">

            <div class="form-group">
              <label id="lbltipAddedComment">Flow Rate</label>
              <input class="form-control" type="text" id="resultado_cfr" name="resultado_cfr" readonly>
           </div>
          
            <input type="button" id="calculateBtn" name="calculateBtn" value="Calculate" onclick="calculate_cfr()" class="btn btn-info btn-block">
            <input type="submit" id="saveBtn" name="saveBtn" value="Save" onclick="save_cfr()"  class="btn btn-success btn-block"> 
            <input type="button" id="delteBtn" name="delteBtn" value="Eliminar" onclick="deleteReg_cfr()"  class="btn btn-danger btn-block">
           
                                        </div>
                                   </form>
                                </div>
                            </div>
                        </div>  
                    </div>
       </div>
        
        <div class="col-lg-3">
            <input type="button" id="cleanAllBtn" name="cleanBtn" value="Clean All" onclick="cleanAll_cfr()" class="btn btn-warning btn-block">
            <input type="button" id="cleanInputBtn" name="cleanBtn" value="Clean Input Data" onclick="cleanIn_cfr()" class="btn btn-warning btn-block">
            <input type="button" id="cleanOutputBtn" name="cleanBtn" value="Clean Output Data" onclick="cleanOut_cfr()" class="btn btn-warning btn-block">
            <input type="button" id="cleanSuggestedBtn" name="cleanBtn" value="Limpiar Datos Sugeridos" onclick="cleanSugg_cfr()" class="btn btn-warning btn-block">
        </div> 

        <input type="hidden" id="opt_cfr" name="opt_cfr"> 
        <input type="hidden" id="id_cfr" name="id_cfr">      
        
        <script>
               function hide(form){
                   var opcion = (form.value);
                   document.getElementById("flowrate").style.display="block";
                   document.getElementById("upstream").style.display="block";
                   document.getElementById("downstream").style.display="block";
                   document.getElementById("internal").style.display="block";
                   document.getElementById(opcion).style.display="none";
                   var x = document.getElementById("unknown_cfr").selectedIndex;
                   var y = document.getElementById("unknown_cfr").options;
                    document.getElementById('lbltipAddedComment').innerHTML = y[x].text;
                } 
                 function onchange_Input_zero(inp){
                   
                    var str = inp.value;
                     var pos = str.indexOf(".");
                    
                    if(pos == 0){
                        inp.value = "0"+str;
                    }                    
                    
}
                $(document).ready(function() {
                    getproyectos(<%=session.getAttribute("idusu")%>,
                        $("#proyects_sel_cfr"),
                        $("#error_Dialog_cfr"));
                        
                    $("#opt_cfr").val("1");
                    load_np_sel_rwb("cole");
                    load_cfruE_sel_cfr();
                    load_press_sel_cfr();
                    load_in_sel_cfr();
                    load_temp_sel_cfr();
                    load_len_sel_cfr();
                    load_he_sel_crf();
                });
                
                function load_he_sel_crf(){
                    var parametros = {
                            "combo": "he",
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
                            var newHtml = "<select class='form-control' name='ee_sel_crf' id= 'ee_sel_crf'>" + data;
                            $("#div_ee_sel_crf").html(newHtml);
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_crf"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function load_history_cfr(){
                    var parametros = {
                        "idproyect": <% out.print(session.getAttribute("id_proyect"));%>,
			"iduser": <% out.print(session.getAttribute("idusu"));%>,
                        "from": "cfr",
                        "opcion" : "6",
                        "nombre" : "historial"
                    };
                    
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        dataType: 'json',
                        async : false,
                        beforeSend: function (xhr) {
                            $("#opt_cfr").val("1");
                            $("#id_cfr").val("");
                            cleanAll_cfr();
                            block("Cargado datos...");
                        },
                        success: function(data, status, request){
                            
                            if(data!==null){
                            var tags = Object.keys(data.historial[0]);
                            
                            var tamano = data.size;
                            
                            var html = "<table class='table table-bordered table-striped'>";
                                html += "<thead>";
                                html += "<tr>";
                                html += "<th>Fecha de Creación</th>";
                                html += "<th>Descripción</th>";
                                html += "<th>Cargar</th>";
                                html += "</tr>";
                                html += "</thead>";
                           if(tamano > 0){
                              
                            html += '<tbody>';
                            for(var i = 0; i< tamano ; i++){
                               html += "<tr>";
                               html += "<td>"+data.historial[i].date+"</td>";
                               html += "<td>"+data.historial[i].description_cfr+"</td>";
                               html += "<td><a href='#' onClick=\"load_form_cfr("+data.historial[i].id+")\"><span class='glyphicon glyphicon-plus' aria-hidden='true'></span></a></td>";
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
                           $("#div-table_cfr").empty();
                           $("#div-table_cfr").html(html);
                           
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_cfr"), "Error");
                        },
                        complete: function(){
                           unBlock();
                        }
                    });
                }
                
                
                
                function load_np_sel_rwb(idcombo){
                    var parametros = {
                            "combo": idcombo,
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
                            var newHtml = "<select class=\"form-control\" name=\"roughness_cfr\" id= \"roughness_cfr\" onchange=\"onchange_rou_cfr()\">" + data;
                            $("#div_rou_sel_cfr").html(newHtml);
                            var po = $("#roughness_cfr").val().trim().split(",")[1];
                            $("#pipelineroughness_cfr").val(po);
                            onchange_rou_cfr();
                         },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_rwb"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function onchange_rou_cfr(){
                    var po = $("#roughness_cfr").val();
                    $("#pipelineroughness_cfr").val(po.split(",")[1]);
                }
                
                function onchange_Input_cfr(inp){
                    var sw = validateDecimal(inp.value);
                    
                    if(sw != true){
                        inp.value = "";
                    }      
                    onchange_Input_zero(inp);
                    cleanOut_cfr();
                }
                                
                function cleanOut_cfr(){
                    $("#flowrate_cfr").val("");
                    $("#transmissionfactor_cfr").val("");
                    $("#velocity_cfr").val("");
                }
        
                function cleanSugg_cfr(){
                    $("#basepressure_cfr").val("");  
                    $("#basetemperature_cfr").val("");   
                }
        
                function cleanIn_cfr(){
                    $("#gasflowingtemp_cfr").val("");
                    $("#gasspecificgra_cfr").val("");
                    $("#pipelineefficiency_cfr").val("");
                    $("#flowrate_cfr").val("");
                    $("#upstreampressure_cfr").val("");
                    $("#downstreampressure_cfr").val("");
                    $("#internalpipe_cfr").val("");
                    $("#lengthof_cfr").val("");
                    $("#upstreamelevation_cfr").val("");
                    $("#downstreamelevation_cfr").val("");
                }
                
                function cleanAll_cfr(){
                    cleanIn_cfr();
                    cleanSugg_cfr();
                    cleanOut_cfr();
                }
                
                function save_cfr(){

                    var parametros = {
                            "basetemperature_cfr" : $("#basetemperature_cfr").val(),
                            "basepressure_cfr" : $("#basepressure_cfr").val(),
                            "unknown_cfr": $("#unknown_cfr").val(),
                            "gasflowingtemp_cfr": $("#gasflowingtemp_cfr").val(),           
                            "gasspecificgra_cfr": $("#gasspecificgra_cfr").val(),
                            "roughness_cfr":$("#roughness_cfr").val(),
                            "pipelineroughness_cfr": $("#pipelineroughness_cfr").val(),
                            "pipelineefficiency_cfr": $("#pipelineefficiency_cfr").val(),
                            "flowrate_cfr": $("#flowrate_cfr").val(),
                            "upstreampressure_cfr": $("#upstreampressure_cfr").val(),
                            "downstreampressure_cfr": $("#downstreampressure_cfr").val(),
                            "internalpipe_cfr": $("#internalpipe_cfr").val(),
                            "lengthof_cfr": $("#lengthof_cfr").val(),
                            "upstreamelevation_cfr": $("#upstreamelevation_cfr").val(),
                            "downstreamelevation_cfr": $("#downstreamelevation_cfr").val(),
                             "resultado_cfr": $("#resultado_cfr").val(),            
                            "idproyect": <% out.print(session.getAttribute("id_proyect"));%>,
                            "iduser": <% out.print(session.getAttribute("idusu"));%>,
                            "opcion": $("#opt_cfr").val(),
                            "id_cfr": 1,
                            "description_cfr": $("#description_cfr").val(),
                            "from": "cfr"
                    };
                    
                    var isOk = validate(parametros);
                    
                    if(isOk === false){
                            alert("Debe realizar el cálculo y diligenciar la descripción");
                    }else{

                        if($("#opt_cfr").val() == 2){
                            parametros.id_cfr = $("#id_cfr").val();
                        }

                        $.ajax({
                            type: "POST",
                            url: "Modules/manager.jsp",
                            data: parametros,
                            dataType: "json",
                            beforeSend: function (xhr) {
                                block("Cargando...");
                            },
                            success: function(data, status, request){
                                $("#id_cfr").val(data.row.id);
                                $("#opt_cfr").val("2");
                                show_OkDialog($("#save_Dialog_cfr"), "Proceso satisfactorio");
                            },
                            error: function (xhr, ajaxOptions, err) {
                                alert(err);
                                show_OkDialog($("#error_Dialog_cfr"), "Error");
                            },
                            complete: function(){
                                unBlock();
                            }
                        });
                    } 
                }
                                
                function calculate_cfr(){
                    var opcion =  $("#unknown_cfr").val();
                 
                    var variables = {
                            "basetemperature_cfr" : $("#basetemperature_cfr").val(),
                            "basepressure_cfr" : $("#basepressure_cfr").val(),
                            "pipelineroughness_cfr" : $("#pipelineroughness_cfr").val(),
                            "gasflowingtemp_cfr" : $("#gasflowingtemp_cfr").val(),
                            "gasspecificgra_cfr" : $("#gasspecificgra_cfr").val(),
                            "pipelineefficiency_cfr" : $("#pipelineefficiency_cfr").val(),
                            
                            "flowrate_cfr" : $("#flowrate_cfr").val(),
                            "upstreampressure_cfr" : $("#upstreampressure_cfr").val(),
                            "internalpipe_cfr" : $("#internalpipe_cfr").val(),
                            "downstreampressure_cfr" : $("#downstreampressure_cfr").val(),
                            "lengthof_cfr" : $("#lengthof_cfr").val(),
                            
                            "upstreamelevation_cfr" : $("#upstreamelevation_cfr").val(),
                            "downstreamelevation_cfr" : $("#downstreamelevation_cfr").val()
                            
                           };
                            var unidades = {
                            "bt_sel_cfr": $("#bt_sel_cfr").val().split(",")[1],
                            "bte_sel_cfr": $("#bte_sel_cfr").val().split(",")[1],
                            "ee_sel_cfr": $("#ee_sel_cfr").val().split(",")[1],
                            "if_sel_cfr": $("#if_sel_cfr").val().split(",")[1],
                            "up_sel_cfr": $("#up_sel_cfr").val().split(",")[1],
                            "bp_sel_cfr": $("#bp_sel_cfr").val().split(",")[1],
                            "le_sel_cfr": $("#le_sel_cfr").val().split(",")[1],
                            "ue_sel_cfr": $("#ue_sel_cfr").val().split(",")[1],
                            "de_sel_cfr": $("#de_sel_cfr").val().split(",")[1]
                        };
                           
                   // var isOk = validate(variables);
                    
                   /* if(isOk === false){
                        alert("Debe diligenciar todos los campos");
                    }else{*/
                        
                        var res;
                        if(opcion === 'flowrate'){
                          res = flowrate_cl_form(variables,unidades);
                        }
                        if(opcion === 'upstream'){

                            res = upstream_cl_form(variables,unidades); 
                        }
                        if(opcion === 'downstream'){
                           res = downstream_cl_form(variables,unidades);  
                        }
                        if(opcion === 'internal'){
                             res = internal_cl_form(variables,unidades); 
                        }
                         $("#resultado_cfr").val(res);


                        show_OkDialog($("#calculate_Dialog_cfr"), "Proceso satisfactorio");
                   // }
                }

                function deleteReg_cfr(){
                    var parametros = {
                        "id_cfr": $("#id_cfr").val(),
                        "opcion": 3,
                        "from": "cfr"
                    };
                        
                        
                    if($("#opt_cfr").val() === 2){
                        $.ajax({
                            type: "POST",
                            url: "Modules/manager.jsp",
                            data: parametros,
                            dataType: 'json',
                            beforeSend: function (xhr) {
                                block("Cargando...");
                            },
                            success: function(data, status, request){
                                cleanAll_cfr();
                                $("#id_cfr").val("");
                                $("#opt_cfr").val("1");
                                show_OkDialog($("#delete_Dialog_cfr"), "Proceso satisfactorio");
                            },
                            error: function (xhr, ajaxOptions, err) {
                                alert(err);
                                show_OkDialog($("#error_Dialog_cfr"), "Error");
                            },
                            complete: function(){
                                unBlock();
                            }
                        });

                    }else{
                        alert("Debe cargar un registro para poder eliminarlo");
                    }
                }
                
             
                
                
                
                
               
                function load_cfruE_sel_cfr(){
                    var parametros = {
                            "combo": "fluE",
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
                            var newHtml = "<select class=\"form-control\" name=\"if_sel_cfr\" id= \"if_sel_cfr\" onchange=\"onchange_fr_cfr(this)\">" + data;
                            $("#div_if_sel_cfr").html(newHtml);
                            
                            $("#if_sel_cfr").val("71,MMSCFD");
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_cfr"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                function load_press_sel_cfr(){
                    var parametros = {
                            "combo": "pres",
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
                            var newHtml = "<select class=\"form-control\" name=\"up_sel_cfr\" id= \"up_sel_cfr\" onchange=\"onchange_pres_cfr(this)\">" + data;
                            $("#div_up_sel_cfr").html(newHtml);   
                            
                            newHtml = "<select class=\"form-control\" name=\"dp_sel_cfr\" id= \"dp_sel_cfr\" onchange=\"onchange_pres_cfr(this)\">" + data;
                            $("#div_dp_sel_cfr").html(newHtml);
                            
                            newHtml = "<select class=\"form-control\" name=\"bp_sel_cfr\" id= \"bp_sel_cfr\" onchange=\"cleanOut_cfr()\">" + data;
                            $("#div_bp_sel_cfr").html(newHtml);
                            
                            var newHtml = "<select class=\"form-control\" name=\"bte_sel_cfr\" id= \"bte_sel_cfr\" onchange=\"onchange_pres_cfr(this)\">" + data;
                            $("#div_bte_sel_cfr").html(newHtml);
                            
                          /*  var newHtml = "<select class=\"form-control\" name=\"ee_sel_cfr\" id= \"ee_sel_cfr\" onchange=\"onchange_pres_cfr(this)\">" + data;
                            $("#div_ee_sel_cfr").html(newHtml);*/
                            
                            var obj = [$("#up_sel_cfr"), $("#dp_sel_cfr"), $("#bp_sel_cfr"), $("#bte_sel_cfr")];
                            onchageGeneral(obj, "5,psia");
                            
                            //$("#bp_sel_cfr").val("5,psia");
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_cfr"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                function onchange_pres_cfr(imp){
                    /*cleanOut_cfr();
                    var obj = [$("#dp_sel_cfr"), $("#sp_sel_cfr")];
                    onchageGeneral(obj, imp.value);*/
                }  
                function load_in_sel_cfr(){
                    var parametros = {
                            "combo": "in",
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
                            var newHtml = "<select class=\"form-control\" name=\"bc_sel_cfr\" id= \"bc_sel_cfr\" onchange=\"onchange_long_cfr(this)\">" + data;
                            $("#div_bc_sel_cfr").html(newHtml);
                            
                           /* newHtml = "<select class=\"form-control\" name=\"ee_sel_cfr\" id= \"ee_sel_cfr\" onchange=\"onchange_long_cfr(this)\">" + data;
                            $("#div_ee_sel_cfr").html(newHtml);*/
                            
                            
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_cfr"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                function load_temp_sel_cfr(){
                    var parametros = {
                            "combo": "temp",
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
                            var newHtml = "<select class='form-control' name='st_sel_cfr' id= 'st_sel_cfr' onchange='onchange_temp_cfr(this)'>" + data;
                            $("#div_st_sel_cfr").html(newHtml);      
                            
                            newHtml = "<select class='form-control' name='bt_sel_cfr' id= 'bt_sel_cfr' onchange='onchange_temp_cfr(this)'>" + data;
                            $("#div_bt_sel_cfr").html(newHtml);
                            
                             var newHtml = "<select class=\"form-control\" name=\"ee_sel_cfr\" id= \"ee_sel_cfr\" onchange=\"onchange_pres_cfr(this)\">" + data;
                            $("#div_ee_sel_cfr").html(newHtml)
                            
                            var vecObj = [$("#bt_sel_cfr"),  $("#ee_sel_cfr")];                            
                            onchageGeneral(vecObj, "3,F");
                            
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_cfr"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                function load_len_sel_cfr(){
                    var parametros = {
                            "combo": "len",
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
                            var newHtml = "<select class='form-control' name='ue_sel_cfr' id= 'ue_sel_cfr' >" + data;
                            $("#div_ue_sel_cfr").html(newHtml);
                            
                            var newHtml = "<select class='form-control' name='de_sel_cfr' id= 'de_sel_cfr' >" + data;
                            $("#div_de_sel_cfr").html(newHtml);
                            
                            var newHtml = "<select class='form-control' name='le_sel_cfr' id= 'le_sel_cfr' >" + data;
                            $("#div_le_sel_cfr").html(newHtml);
                            
                            var vecObj = [$("#de_sel_cfr"),  $("#ue_sel_cfr"),,  $("#le_sel_cfr")];                            
                            onchageGeneral(vecObj, "2463,mt");
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_cfr"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                function onchange_Input_zero(inp){
                   
                    var str = inp.value;
                     var pos = str.indexOf(".");
                    
                    if(pos == 0){
                        inp.value = "0"+str;
                    }                    
                    
}
                                
            </script>
            
        <div id="load_Dialog_cfr" title="Basic dialog" style='display:none;'>
            <p>Datos cargados exitosamente</p>
        </div>

        <div id="save_Dialog_cfr" title="Basic dialog" style='display:none;'>
            <p>Datos guardados exitosamente</p>
        </div>

        <div id="error_Dialog_cfr" title="Basic dialog" style='display:none;'>
            <p>Ha ocurrido un error en el proceso</p>
        </div>

        <div id="calculate_Dialog_cfr" title="Basic dialog" style='display:none;'>
            <p>Calculo realizado exitosamente</p>
        </div>

        <div id="delete_Dialog_cfr" title="Basic dialog" style='display:none;'>
            <p>Registro eliminado exitosamente</p>
        </div>
    </body>
</html>