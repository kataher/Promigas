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
                <h2><strong>Pipe Installation:</strong> 1.5. Relief Valve-Reaction Force</h2>
            </div>
            <div class="col-lg-3"> 
                 
                 <!-- Button trigger modal -->
                 <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_rvr()">
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
                              <div id="div-table_rvr"></div>
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
            <input  class="form-control" type="text" id="description_rvr" name="description_rvr"><br>
            Projects: 
            <select class="form-control" id="proyects_sel_rvr" name="proyects_sel_rvr"> </select>
            
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
                                    
                                    <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Opciones
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
            
            <div class="form-group">
            <div class="col-md-12">           
            <label>Selección de Variable Conocida:</label>
            </div>
            <div class="col-md-12">
                <input type="radio" id="selectk1_rvr" name="selectk_rvr" value="selectk1_rvr" required onchange="onchange_selectk_rvr()"> Molecular Weight of Gas or Steam<br>
                <input type="radio" id="selectk2_rvr" name="selectk_rvr" value="selectk2_rvr" required onchange="onchange_selectk_rvr()"> Specific Gravity of Gas or Vapor
            </div>
            </div>                                    
                                    
            </div>
                           </div>
                        </div>
                    </div>
            </div>
                                    
           
            
            <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Steam or Gas Selection:
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
            <div class="form-group">
                
                
            
            <div class="col-md-12">
                <div id="div_selectgv_sel_rvr">
                    <select class="form-control" id="selectgv_sel_rvr" name="selectgv_sel_rvr" onchange="onchange_gasvp_rvr()"> </select> <br>
                </div>
            
            <div id="ocu_molecularw_rvr">
            <label>Molecular weight of gas or vapor:</label>           
            <input class="form-control" type="text" id="molecularw_rvr" readonly name="molecularw_rvr" onchange="onchange_Input_rvr(this)" required>
            </div>
            
            <div id="ocu_specificg_rvr">
            <label>Specific Gravity:</label>           
            <input class="form-control" type="text" id="specificg_rvr" readonly name="specificg_rvr" onchange="onchange_Input_rvr(this)" required>
            </div>
            
            <label>Specific heat ratio:</label><input class="form-control" readonly type="text" id="specifich_rvr" name="specifich_rvr" onchange="onchange_Input_rvr(this)" required><br>
            <label>Critical Flow Ratio:</label><input class="form-control" readonly type="text" id="criticalf_rvr" name="criticalf_rvr" onchange="onchange_Input_rvr(this)" required>
            
            </div>
            </div>
                                    
                                    
            </div>
                           </div>
                        </div>
                    </div>
            </div>
            
             <div class="form-group">
            <div class="col-md-12">
            <label>Height: </label>
            </div>
            <div class="col-md-8">
            <input value = "0" class="form-control" type="text" id="enteree_rvr" name="enteree_rvr" onchange="onchange_Input_rvr(this)" required>
            </div>
            <div class="col-md-4" id = "div_ee_sel_rvr">
            <select class="form-control" id="ee_sel_rvr" name="ee_sel_rvr"> </select>
            </div>
            </div>                       
            <div class="form-group">
            <div class="col-md-12">
            <label>Gas or vapor flow [lbm/hr]:</label>
            </div>
            <div class="col-md-8">
            <input value = "1000" class="form-control" type="text" id="requiredf_rvr" name="requiredf_rvr" onchange="onchange_Input_rvr(this)" required>
            </div>
            <div class="col-md-4" id = "div_rf_sel_rvr">
            <select class="form-control" id="rf_sel_rvr" name="rf_sel_rvr"> </select>
            </div>
            </div>
                                    <div class="form-group">
            <div class="col-md-12">
            <label>Temperature at the output:</label>
            </div>
            <div class="col-md-8">
            <input  value = "90" class="form-control" type="text" id="temperatureo_rvr" name="temperatureo_rvr" onchange="onchange_Input_rvr(this)" required>
            </div>
            <div class="col-md-4" id = "div_tempo_sel_rvr">
            <select class="form-control" id="tempo_sel_rvr" name="tempo_sel_rvr"> </select>
            </div>
            </div>  
                                    <div class="form-group">
            <div class="col-md-12">
                <label> Static pressure inside the outlet at the point of discharge: </label>
            </div>
            <div class="col-md-8">
            <input  value = "250" class="form-control" type="text" id="staticp_rvr" name="staticp_rvr" onchange="onchange_Input_rvr(this)" required>
            </div>
            <div class="col-md-4" id = "div_sp_sel_rvr">
            <select class="form-control" id="sp_sel_rvr" name="sp_sel_rvr"> </select>
            </div>
            </div>
               <div class="form-group">
            <div class="col-md-12">
            <label> Output area at the point of download: </label>
            </div>
            <div class="col-md-8">
            <input  value = "0.196" class="form-control" type="text" id="areao_rvr" name="areao_rvr" onchange="onchange_Input_rvr(this)" required>
            </div>
            <div class="col-md-4" id = "div_ao_sel_rvr">
            <select class="form-control" id="ao_sel_rvr" name="ao_sel_rvr"> </select>
            </div>
            </div>   
                                    <div class="form-group" id="div_pesomolecular_rvr">
            <div class="col-md-12">
            <label>Molecular weight of gas or vapor:</label>
            
            <input  value = "1.25" class="form-control" type="text" id="pesomolecular_rvr" name="pesomolecular_rvr" onchange="onchange_Input_rvr(this)" required>
            </div>
            </div>
                                    <div class="form-group" id="div_specificgra_rvr">
            <div class="col-md-12">
            <label>Specific Gravity:</label>
            
            <input  value = "1.25" class="form-control" type="text" id="specificgra_rvr" name="specificgra_rvr" onchange="onchange_Input_rvr(this)" required>
            </div>
            </div>
            
                                    <div class="form-group">
            <div class="col-md-12">
            <label>Specific heat ratio:</label>
            
            <input  value = "1.25" class="form-control" type="text" id="specifichs_rvr" name="specifichs_rvr" onchange="onchange_Input_rvr(this)" required>
            </div>
            </div>
                                    
                                    <div class="form-group">
            <div class="col-md-12">
                <label>Critical flow ratio:</label>
            </div>
            <div class="col-md-8">
            <input  value = "1000" class="form-control" type="text" id="criticalfw_rvr" name="criticalfw_rvr" onchange="onchange_Input_rvr(this)" required>
            </div>
            <div class="col-md-4" id = "div_cfw_sel_rvr">
            <select class="form-control" id="cfw_sel_rvr" name="cfw_sel_rvr"> </select>
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
            <label>Z:</label>
            <input type="text" id="z_rvr" name="z_rvr" readonly required class="form-control">
            </div>
             <div class="form-group">
            <label>Reaction force at the point of discharge [lbf]:</label>
            <input type="text" id="reactionf_rvr" name="reactionf_rvr" readonly required class="form-control">
            </div>
            <input type="button" id="calculateBtn_rvr" name="calculateBtn_rvr" value="Calculate" onclick="calculate_rvr()" class="btn btn-info btn-block">
            <input type="button" id="saveBtn_rvr" name="saveBtn_rvr" value="Save" onclick="save_rvr()" class="btn btn-success btn-block">   
            <input type="button" id="delteBtn_rvr" name="delteBtn_rvr" value="Delete" onclick="delete_rvr()" class="btn btn-danger btn-block">
            <input type="button" id="cleanAllBtn_rvr" name="cleanBtn_rvr" value="Clean All Data" onclick="cleanAll_rvr()" class="btn btn-warning btn-block">
            <input type="button" id="cleanInputBtn_rvr" name="cleanBtn_rvr" value="Clean Input Data" onclick="cleanIn_rvr()" class="btn btn-warning btn-block">
            <input type="button" id="cleanOutputBtn_rvr" name="cleanBtn_rvr" value="Clean Output Data" onclick="cleanOut_rvr()" class="btn btn-warning btn-block">

            </div>
                           </div>
                        </div>
                    </div>
            </div>
            <input type="hidden" id="id_rvr" name="id_rvr">   
            <input type="hidden" id="opt_rvr" name="opt_rvr">   
            
            <script>
               $(document).ready(function() { 
                   $("#opt_rvr").val("1");
                   $('#selectk1_rvr').attr('checked', 'checked');
                   
                   $('#ocu_molecularw_rvr').show();
                   $('#ocu_specificg_rvr').hide();
                   $('#div_pesomolecular_rvr').show();
                   $('#div_specificgra_rvr').hide();
                   $('#specificg_rvr').val("0");
                   
                   load_press_sel_rvr();
                   load_temp_sel_rvr();
                   load_gasvap_sel_rvr();
                   load_in_sel_rvr();
                   load_flue_sel_rvr();
                   load_flow_sel_rvr();
                   load_he_sel_rvr();
                   
                   document.getElementById('rf_sel_rvr').style.visibility = 'hidden';
                   
                   getproyectos(<%=session.getAttribute("idusu") %>,
                                $("#proyects_sel_rvr"),
                                $("#error_Dialog_rvr"));
                    
                   
                });
                
                function onchange_gasvp_rvr(){
                    var x = $("#selectgv_sel_rvr").val().split(",");
                    var G = x[1] / 28.96443;
                    
                    $("#molecularw_rvr").val(x[1]);
                    $("#specifich_rvr").val(x[2]);
                    $("#criticalf_rvr").val(x[3]);
                    
                    //
                    $("#pesomolecular_rvr").val(x[1]);
                    $("#specifichs_rvr").val(x[2]);
                    $("#criticalfw_rvr").val(x[3]);
                    
                    $("#specificg_rvr").val(G.toFixed(2));
                    
                    $("#specificgra_rvr").val(G.toFixed(2));
                    $("#pesomolecular_rvr").val(x[1]);
                    $("#specifichs_rvr").val(x[2]);
                    $("#criticalfw_rvr").val(x[3]);
                    
                }
                
                function onchange_selectk_rvr(){    
                    
                    var sel = $("input[type='radio'][name='selectk_rvr']:checked");
                    if(sel.val() === "selectk1_rvr"){
			$('#ocu_molecularw_rvr').show();
                        $('#ocu_specificg_rvr').hide();
                        $('#div_pesomolecular_rvr').show();
                        $('#div_specificgra_rvr').hide();
                    }else{
                        $('#ocu_molecularw_rvr').hide();
                        $('#ocu_specificg_rvr').show();
                        $('#div_pesomolecular_rvr').hide();
                        $('#div_specificgra_rvr').show();
                    }
                    
                    onchange_gasvp_rvr();
                    
                }
                
                function load_in_sel_rvr(){
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
                            var newHtml = "<select class='form-control' name='ao_sel_rvr' id= 'ao_sel_rvr' onchange='onchange_capacity_rvr()'>" + data;
                            $("#div_ao_sel_rvr").html(newHtml);  
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_rvr"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function load_flow_sel_rvr(){
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
                            var newHtml = "<select class='form-control' name='cfw_sel_rvr' id= 'cfw_sel_rvr' onchange='cleanOut_rvr()'>" + data;
                            $("#div_cfw_sel_rvr").html(newHtml);  
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_rvr"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function load_he_sel_rvr(){
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
                            var newHtml =  "<select class='form-control' name='ee_sel_rvr' id= 'ee_sel_rvr' onchange='cleanOut_rvr()'>" + data;
                            $("#div_ee_sel_rvr").html(newHtml);
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_rvr"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function load_flue_sel_rvr(){
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
                            var newHtml = "<select class=\"form-control\" name=\"rf_sel_rvr\" id= \"rf_sel_rvr\">" + data;
                            $("#div_rf_sel_rvr").html(newHtml);  
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_rvr"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function load_press_sel_rvr(){
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
                            var newHtml = "<select class=\"form-control\" name=\"sp_sel_rvr\" id= \"sp_sel_rvr\">" + data;
                            $("#div_sp_sel_rvr").html(newHtml); 
                            
                            $("#sp_sel_rvr").val("65,psig"); 
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_rvr"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function load_gasvap_sel_rvr(){
                    var parametros = {
                            "combo": "gasvap",
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
                            var newHtml = "<select class=\"form-control\" name=\"selectgv_sel_rvr\" id= \"selectgv_sel_rvr\" onchange=\"onchange_gasvp_rvr()\">" + data;
                            $("#div_selectgv_sel_rvr").html(newHtml);
                            
                            var x = $("#selectgv_sel_rvr").val().split(",");
                            $("#molecularw_rvr").val(x[1]);
                            $("#specifich_rvr").val(x[2]);
                            $("#criticalf_rvr").val(x[3]);
                            
                            $("#pesomolecular_rvr").val(x[1]);
                            $("#specifichs_rvr").val(x[2]);
                            $("#criticalfw_rvr").val(x[3]);
                            
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_rvr"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function load_temp_sel_rvr(){
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
                            var newHtml = "<select class=\"form-control\" name=\"tempo_sel_rvr\" id= \"tempo_sel_rvr\">" + data;
                            $("#div_tempo_sel_rvr").html(newHtml);
                            
                            $("#tempo_sel_rvr").val("3,F");
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_rvr"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function load_history_rvr(){
                    var parametros = {
                        "idproyect": $("#proyects_sel_rvr").val(),
			"iduser": <% out.print(session.getAttribute("idusu"));%>,
                        "opcion" : "6",
                        "nombre" : "historial",
                        "from": "rvr"
                    };
                    
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        dataType: 'json',
                        async : false,
                        beforeSend: function (xhr) {
                            cleanAll_rvr();
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
                               html += "<td>"+data.historial[i].description_rvr+"</td>";
                               html += "<td><a href='#' onClick=\"load_form_rvr("+data.historial[i].id+")\"><span class='glyphicon glyphicon-plus' aria-hidden='true'></span></a></td>";
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
                           $("#div-table_rvr").empty();
                           $("#div-table_rvr").html(html);
                           
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_rvr"), "Error");
                        },
                        complete: function(){
                           unBlock();
                        }
                    });
                }
                
                function load_form_rvr(id){
                    
                   var parametros = {
                        "id": id,
                        "opcion" : "4",
                        "from": "rvr"
                    };
                    
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        dataType: 'json',
                        beforeSend: function (xhr) {
                            cleanAll_rvr();
                            block("Cargado datos...");
                        },
                        success: function(data, status, request){
                            if (data != null)
                            {
                                var tags = Object.keys(data.row);
                                
                                for(var i = 0; i < tags.length; i++){
                                    if(tags[i] != "date" && tags[i] != "id_proyect" && tags[i] != "id_user" && tags[i]!= "id" &&  tags[i]!="selectk_rvr")
                                    {
                                       $("#" + tags[i]).val(data.row[tags[i]]);
                                    }
                                }
                                
                                
                                if(data.row["opsk_rvr"] == "selectk1_rvr"){
                                    $('#selectk1_rvr').attr('checked', true);                                    
                                    $('#ocu_molecularw_rvr').show();
                                    $('#ocu_specificg_rvr').hide();
                                    

                                }else{
                                    $('#selectk2_rvr').attr('checked', true); 
                                    $('#ocu_molecularw_rvr').hide();
                                    $('#ocu_specificg_rvr').show();
                                }
                                
                                $("#proyects_sel_rvr").val(data.row.id_proyect);
                                $("#opt_rvr").val("2");
                                $("#id_rvr").val(data.row.id);
                            }else{
                                $("#opt_rvr").val("1");
                            }
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            $("#opt_rvr").val("1");
                            show_OkDialog($("#error_Dialog_rvr"), "Error");
                        },
                        complete: function(){
                           unBlock();
                        }
                    });
                }
                
                function cleanOut_rvr(){
                    $("#reactionf_rvr").val("");
                }
                
                function cleanIn_rvr(){
                    $("#molecularw_rvr").val("");
                    $("#specifich_rvr").val("");
                    $("#criticalf_rvr").val("");
                    
                    $("#requiredf_rvr").val("");
                    $("#temperatureo_rvr").val("");
                    $("#staticp_rvr").val("");
                    $("#areao_rvr").val("");
                    $("#molecularw_rvr").val("");
                    $("#specificg_rvr").val("");
                    $("#specifichs_rvr").val("");
                    $("#criticalfw_rvr").val("");                 
                }
                
                function cleanAll_rvr(){
                    cleanIn_rvr();
                    cleanOut_rvr();
                    $("#description_rvr").val("");
                }
                
                function onchange_Input_rvr(inp){
                    var sw = validateDecimal(inp.value);
                    
                    if(sw != true){
                        inp.value = ""; 
                    }
                    onchange_Input_zero(inp);
                    cleanOut_rvr();
                }
                
                function calculate_rvr(){
                    var sel = $("input[type='radio'][name='selectk_rvr']:checked");
                    
                    var variables = {
                            "opsk_rvr": sel.val(),
                            "specificgra_rvr": $("#specificgra_rvr").val(),
                            "specifichs_rvr": $("#specifichs_rvr").val(),
                            "criticalfw_rvr": $("#criticalfw_rvr").val(),
                            "pesomolecular_rvr": $("#pesomolecular_rvr").val(),
                            "requiredf_rvr" : $("#requiredf_rvr").val(),
                            "temperatureo_rvr" : $("#temperatureo_rvr").val(),
                            "staticp_rvr": $("#staticp_rvr").val(),
                            "areao_rvr": $("#areao_rvr").val(),
                            "enteree_rvr": $("#enteree_rvr").val()
                    };
                    
                    if(sel.val() == "selectk1_rvr"){
                        $("#specificgra_rvr").val("0");
                    }else{
                        $("#pesomolecular_rvr").val("0");
                    }
                    
                    var isOk = validate(variables);
                    
                    if(isOk === false){
                        alert("You must complete all fields");
                    }else{
                    
                        var unidades = {
                            "tempo_sel_rvr": $("#tempo_sel_rvr").val().split(",")[1],
                            "sp_sel_rvr": $("#sp_sel_rvr").val().split(",")[1],
                            "ao_sel_rvr": $("#ao_sel_rvr").val().split(",")[1],
                            "ee_sel_rvr": $("#ee_sel_rvr").val().split(",")[1]
                        };

                        var res = reliefValveReaction_Form(variables, unidades);

                        $("#reactionf_rvr").val(res[0]);
                        $("#z_rvr").val(res[1]);
                    
                        show_OkDialog($("#calculate_Dialog_rvr"), "Satisfactory process");
                    }
                }
                
                function save_rvr(){
                    
                        var sel = $("input[type='radio'][name='selectk_rvr']:checked");

                        var parametros = {
                                "opsk_rvr": sel.val(),
                                "specificg_rvr": $("#specificg_rvr").val(),
                                "molecularw_rvr" : $("#molecularw_rvr").val(),
                                "specifich_rvr": $("#specifich_rvr").val(),
                                "criticalf_rvr" : $("#criticalf_rvr").val(),
                                
                                "enteree_rvr":  $("#enteree_rvr").val(),
                                "requiredf_rvr" : $("#requiredf_rvr").val(),
                                "temperatureo_rvr" : $("#temperatureo_rvr").val(),
                                "staticp_rvr": $("#staticp_rvr").val(),
                                "areao_rvr": $("#areao_rvr").val(),
                                
                                "pesomolecular_rvr" :  $("#pesomolecular_rvr").val(),
                                "specificgra_rvr" :  $("#specificgra_rvr").val(),
                                "specifichs_rvr": $("#specifichs_rvr").val(),
                                "criticalfw_rvr": $("#criticalfw_rvr").val(),
                                
                                "selectgv_sel_rvr": $("#selectgv_sel_rvr").val(),
                                "rf_sel_rvr": $("#rf_sel_rvr").val(),
                                "tempo_sel_rvr": $("#tempo_sel_rvr").val(),
                                "sp_sel_rvr": $("#sp_sel_rvr").val(),
                                "ao_sel_rvr": $("#ao_sel_rvr").val(), 
                                "ee_sel_rvr": $("#ee_sel_rvr").val(),  
                                
                                "reactionf_rvr": $("#reactionf_rvr").val(),
                                
                                "idproyect": $("#proyects_sel_rvr").val(),
                                "opcion": $("#opt_rvr").val(),
                                "iduser": <% out.print(session.getAttribute("idusu"));%>,
                                "id_rvr": 1,
                                "description_rvr": $("#description_rvr").val(),
                                "from": "rvr"
                        };
                        
                        if(sel.val() == "selectk1_rvr"){
                            $("#specificgra_rvr").val("0");
                        }else{
                            $("#pesomolecular_rvr").val("0");
                        }
                        
                        var isOk = validate(parametros);
                        
                        if(isOk === false){
                            alert("You must perform the calculation and fill out the description");
                        }else{
                            
                            if($("#opt_rvr").val() == 2){
                                parametros.id_rvr = $("#id_rvr").val();
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
                                    $("#id_rvr").val(data.row.id);
                                    $("#opt_rvr").val("2");
                                    show_OkDialog($("#save_Dialog_rvr"), "Satisfactory process");
                                },
                                error: function (xhr, ajaxOptions, err) {
                                    alert(err);
                                    show_OkDialog($("#error_Dialog_rvr"), "Error");
                                },
                                complete: function(){
                                    unBlock();
                                }
                            });
                        }   
                }
                
                function delete_rvr(){
                    
                    //Confirmacion
                    if($("#opt_rvr").val() == 2){
                        $( "#dialog-confirm_rvr" ).dialog({
                            resizable: false,
                            height: "auto",
                            width: 400,
                            modal: true,
                            buttons: {
                              "Delete": function() {
                                deleteReg_rvr();
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
                
                function deleteReg_rvr(){
                    var parametros = {
                        "id_rvr": $("#id_rvr").val(),
                        "opcion": 3,
                        "iduser": <%=session.getAttribute("idusu") %>,
                        "from": "rvr"
                    };
                        
                        
                    if($("#opt_rvr").val() == 2){
                        $.ajax({
                                type: "POST",
                                url: "Modules/manager.jsp",
                                data: parametros,
                                dataType: 'json',
                                beforeSend: function (xhr) {
                                    block("Cargando...");
                                },
                                success: function(data, status, request){
                                    cleanAll_rvr();
                                    $("#id_rvr").val("");
                                    $("#opt_rvr").val("1");
                                    show_OkDialog($("#delete_Dialog_rvr"), "Satisfactory process");
                                },
                                error: function (xhr, ajaxOptions, err) {
                                    alert(err);
                                    show_OkDialog($("#error_Dialog_rvr"), "Error");
                                },
                                complete: function(){
                                    unBlock();
                                }
                            });

                    }else{
                        alert("You must load a record to be able to delete it");
                    }
                }
                
               
            </script>
        
            <div id="load_Dialog_rvr" title="Basic dialog" style='display:none;'>
                <p>Successfully uploaded data</p>
            </div>
            
            <div id="save_Dialog_rvr" title="Basic dialog" style='display:none;'>
                <p>Data saved successfully</p>
            </div>
            
            <div id="error_Dialog_rvr" title="Basic dialog" style='display:none;'>
                <p>An error has occurred in the process</p>
            </div>
            
            <div id="calculate_Dialog_rvr" title="Basic dialog" style='display:none;'>
                <p>Calculation done successfully</p>
            </div>
            
            <div id="delete_Dialog_rvr" title="Basic dialog" style='display:none;'>
                <p>Successfully deleted record</p>
            </div>  
            
            <div id="dialog-confirm_rvr" title="Delete record" style='display:none;'>
                <p><span class="ui-icon ui-icon-alert" style="float:left; margin:12px 12px 20px 0;"></span>
                    Are you sure you want to permanently delete this record?
                </p>
            </div>
    </body>
</html>