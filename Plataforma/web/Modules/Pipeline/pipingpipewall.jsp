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
                <h2><strong>Pipe Installation:</strong> 1.1.7. Piping-Pipe Wall Thickness</h2>
            </div>
            <div class="col-lg-3"> 
                 <!-- Button trigger modal -->
<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_ppw()">
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
          <div id="div-table_ppw"></div>
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
            <input  class="form-control" type="text" id="description_ppw" name="description_ppw"><br>
            Projects:
            <select class="form-control" id="proyects_sel_ppw" name="proyects_sel_ppw"> </select>   
        </div>
            </div>
        <hr>
        <div class="col-lg-4">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                           Select Pipe And Location Data
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                <div class="checkbox">
                                
                                 <input type="radio" id = "api5l_ppw" name="linepipe_ppw" value="api5l_ppw" onchange="onchange_linepipe_ppw()" required> Line Pipe. API Specification 5L <br>
                                 <input type="radio" id = "astm_ppw" name="linepipe_ppw" value="astm_ppw" onchange="onchange_linepipe_ppw()" required> Standart Steel Pipe - ASTM - ANSI B36.10
                                              
                                </div>
                              
                                    <form role="form">
                                        <div class="form-group">
                                        <div class="panel panel-default">
                        <div class="panel-heading">
                            <span id="tittle_ppw"> Line Pipe. API Specification 5L </span>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    
                                   <div class="form-group">
           							<div class="col-md-12">
                                      <label>Nominal Pipe Size:</label> 
                                    </div>
            						<div class="col-md-8">
                                                            <div id="div_nominalps_sel_ppw">
                                                                <select class="form-control" id="nominalps_sel_ppw" name="nominalps_sel_ppw"> </select></div>
                                    </div>
            						</div>
          						    <div class="form-group">
                                      <div class="col-md-12">
                                        <label>Grade:</label> 
                                      </div>
                                      <div class="col-md-8">
                                          <div id="div_grade_sel_ppw">
                                        <select class="form-control" id="grade_sel_ppw" name="grade_sel_ppw"> </select>
                                          </div>
                                      </div>
                                    </div>
            							                                  
                                </div>
                            </div>
                        </div>  
                    </div></div>
                                        <div class="form-group">
                                        <div class="panel panel-default">
                        <div class="panel-heading">
                            Design Factor -F                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                   <div class="form-group">
           							
            						<div class="col-md-12">
                                                            <div id="div_df_sel_ppw">
                                      <select class="form-control" id="design_factor_sel_ppw" name="design_factor_sel_ppw"> </select>
                                                            </div>
                                    </div>
            						</div>
          						    
            							                                  
                                </div>
                            </div>
                        </div>  
                    </div> </div>
                                        <div class="form-group">
                                        <div class="panel panel-default">
                        <div class="panel-heading">
                            Longintudinal Joint Factor - E                      </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                   <div class="form-group">
           							
            						<div class="col-md-12">
                                                             <div id="div_jf_sel_ppw">
                                      <select class="form-control" id="longitudinal_jf_ppw" name="longitudinal_jf_ppw"> </select>
                                                             </div>
                                    </div>
            						</div>
          						    
            							                                  
                                </div>
                            </div>
                        </div>  
                    </div>
                                     </div>
                                        <div class="form-group">
                                        <div class="panel panel-default">
                        <div class="panel-heading">
                            Temperature Derating Factor -E
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                   <div class="form-group">
           							<div class="col-md-12">
                                      <label>Temperature [°F(°C)]:</label> 
                                    </div>
            						<div class="col-md-12">
                                        <div  id="div_td_sel_ppw">                    
                                      <select class="form-control" id="temperature_ppw" name="temperature_ppw"> </select>
                                        </div>                  
                                    </div>
            						</div>
          						    
            							                                  
                                </div>
                            </div>
                        </div>  
                    </div>
                                        
            							
            							
           
                                        </div>
                                   </form>
                                </div>
                            </div>
                        </div>  
                    </div>   
       </div>
       <div class="col-lg-5">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Pipe and Operational Data:
                        </div>
            <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <div class="col-md-12">
                                        <label>Height [ft]:</label>
                                        </div>
                                        <div class="col-md-8">
                                        <input value = "0" class="form-control" type="text" id="enteree_ppw" name="enteree_ppw" onchange="onchange_Input_ppw(this)" required>
                                        </div>
                                        <div class="col-md-4" id="div_al_sel_ppw">
                                            <select class="form-control" id="al_sel_ppw" name="al_sel_ppw"> </select>
                                        </div>
                                    </div>
            <div class="form-group">
             <div class="col-md-12">
            <label>Nominal Pipe Size [in]</label>
                </div>
             <div class="col-md-12">
            <input class="form-control" type="text" id="nominalps_ppw" name="nominalps_ppw" onchange="onchange_Input_ppw(this)" required ></div>
            </div>
            <!--  Ventana 2 -->
            <div class="form-group">
             <div class="col-md-12">
            <label>Nominal Outside Diameter :</label>
                </div>
             <div class="col-md-8">
            <input class="form-control" type="text" id="nominalos_ppw" name="nominalos_ppw" onchange="onchange_Input_ppw(this)" required ></div>
            <div class="col-md-4" id="div_nod_sel_ppw">
                                            <select class="form-control" id="nod_sel_ppw" name="nod_sel_ppw"> </select>
                                        </div>
            </div>
            <!--  Ventana 3 -->
            <div class="form-group">
             <div class="col-md-12">
            <label>Design Pressure [Psig]:</label>
                </div>
             <div class="col-md-12">
            <input class="form-control" value="1200" type="text" id="designp_ppw" name="designp_ppw"  required >
             </div>                
            </div>
            <!--  Ventana 4-->
            <div class="form-group">
             <div class="col-md-12">
            <label>Grade:</label>
                </div>
             <div class="col-md-12">
            <input class="form-control" type="text" id="grade_ppw" name="grade_ppw" onchange="onchange_Input_ppw(this)" required ></div>
            </div>
            <!--  Ventana 5-->
            <div class="form-group">
             <div class="col-md-12">
            <label>Specified Minimum Yield Strenght [psi]:</label>
                </div>
             <div class="col-md-12">
            <input class="form-control" type="text" id="specifiedmys_ppw" name="specifiedmys_ppw" onchange="onchange_Input_ppw(this)" required ></div>
            </div>
            <!--  Ventana 6-->
            <div class="form-group">
             <div class="col-md-12">
            <label>Design Factor:</label>
                </div>
             <div class="col-md-12">
            <input class="form-control" type="text" id="designf_ppw" name="designf_ppw" onchange="onchange_Input_ppw(this)" required ></div>
            </div>
            <!--  Ventana 7-->
            <div class="form-group">
             <div class="col-md-12">
            <label>Longitudinal Joint Factor:</label>
                </div>
             <div class="col-md-12">
            <input class="form-control" type="text" id="ljf_ppw" name="ljf_ppw" onchange="onchange_Input_ppw(this)" required ></div>
            </div>
            <!--  Ventana 8-->
            <div class="form-group">
             <div class="col-md-12">
            <label>Temperature Derating Factor:</label>
                </div>
             <div class="col-md-12">
            <input class="form-control" type="text" id="temperaturedf_ppw" name="temperaturedf_ppw" onchange="onchange_Input_ppw(this)" required ></div>
            </div>
            <div class="form-group">
             <div class="col-md-12">
            <label>Allowed corrosion thickness:</label>
                </div>
             <div class="col-md-8">
            <input value="0.04" class="form-control" type="text" id="especp_ppw" name="especp_ppw" onchange="onchange_Input_ppw(this)" required ></div>
            <div class="col-md-4" id="div_ac_sel_ppw">
                                            <select class="form-control" id="ac_sel_ppw" name="ac_sel_ppw"> </select>
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
            <label>Minimum Pipe Wall Thickness[in.]:</label>
            <input type="text" id="minimum_ppw" name="minimum_ppw" readonly required class="form-control">
            </div>
            
 <input type="button" id="calculateBtn_ppw" name="calculateBtn_ppw" value="Calculate" onclick="calculate_ppw()" class="btn btn-info btn-block">
 <input type="button" id="saveBtn_ppw" name="saveBtn_ppw" value="Save" onclick="save_ppw()" class="btn btn-success btn-block">   
 <input type="button" id="delteBtn_ppw" name="delteBtn_ppw" value="Delete" onclick="delete_ppw()" class="btn btn-danger btn-block">
            
            </div>
                           </div>
                        </div>
                    </div>
            </div>
            <div class="col-lg-3">
            <input type="button" id="cleanAllBtn_ppw" name="cleanBtn_ppw" value="Clean All Data" onclick="cleanAll_ppw()" class="btn btn-warning btn-block">
            <input type="button" id="cleanInputBtn_ppw" name="cleanBtn_ppw" value="Clean Input Data" onclick="cleanIn_ppw()" class="btn btn-warning btn-block">
            <input type="button" id="cleanOutputBtn_ppw" name="cleanBtn_ppw" value="Clean Output Data" onclick="cleanOut_ppw()" class="btn btn-warning btn-block">
            <input type="button" id="cleanSuggestedBtn_ppw" name="cleanBtn_ppw" value="Limpiar Datos Sugeridos" onclick="cleanSugg_ppw()" class="btn btn-warning btn-block">
            </div>
            <input type="hidden" id="opt_ppw" name="opt_ppw"> 
            <input type="hidden" id="id_ppw" name="id_ppw">   
            
            <script>
                 $(document).ready(function() {  
                    
                    $("#opt_ppw").val("1");
                    $('#api5l_ppw').attr('checked', 'checked');
                   
                    load_in_sel_ppw();
                    load_nps_sel_ppw("5l");
                    load_deratingf_sel_ppw();
                    load_grade_sel_ppw("gra5l");
                    load_joinf_sel_ppw("jointf5l");
                    load_desingf_sel_ppw();
                    load_he_sel_dgv();
                    
                    getproyectos(<%=session.getAttribute("idusu") %>,
                                $("#proyects_sel_ppw"),
                                $("#error_Dialog_ppw"));
                    
                });
                
                 function load_history_ppw(){
                    var parametros = {
                        "idproyect": $("#proyects_sel_ppw").val(),
			"iduser": <% out.print(session.getAttribute("idusu"));%>,
                        "opcion" : "6",
                        "nombre" : "historial",
                        "from": "ppw"
                    };
                    
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        dataType: 'json',
                        async : false,
                        beforeSend: function (xhr) {
                            $("#opt_ppw").val("1");
                            $("#id_ppw").val("");
                            cleanAll_ppw();
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
                               html += "<td>"+data.historial[i].description_ppw+"</td>";
                               html += "<td><a href='#' onClick=\"load_form_ppw("+data.historial[i].id+")\"><span class='glyphicon glyphicon-plus' aria-hidden='true'></span></a></td>";
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
                           $("#div-table_ppw").empty();
                           $("#div-table_ppw").html(html);
                           
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_ppw"), "Error");
                        },
                        complete: function(){
                           unBlock();
                        }
                    });
                }
                function load_deratingf_sel_ppw(){
                    var parametros = {
                            "combo": "deratingf",
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
                            var newHtml = "<select class=\"form-control\" name=\"td_sel_ma\" id=\"td_sel_ma\" onchange=\"onchange_df_ma()\">" + data;
                            $("#div_td_sel_ma").html(newHtml); 
                            
                            $("#tempu_ma").val($("#td_sel_ma").val().split(",")[1]);
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_ma"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                function load_form_ppw(id){
                    
                   var parametros = {
                        "id": id,
                        "opcion" : "4",
                        "from": "ppw"
                    };
                    
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        dataType: 'json',
                        beforeSend: function (xhr) {
                            cleanAll_ppw();
                            block("Cargado datos...");
                        },
                        success: function(data, status, request){
                            if (data != null)
                            {
                                var tags = Object.keys(data.row);
                                
                                for(var i = 0; i < tags.length; i++){
                                    if(tags[i] != "date" && tags[i] != "id_proyect" && tags[i] != "id_user" && tags[i]!= "id")
                                    {
                                       $("#" + tags[i]).val(data.row[tags[i]]);
                                    }
                                }
                                
                                if(data.row["opcpipe_ppw"] == "api5l_ppw"){
                                    document.getElementById("api5l_ppw").checked = true; 
                                    onchange_linepipe_ppw();
                                    load_grade_sel_ppw("gra5l");
                                    load_joinf_sel_ppw("jointf5l");
                                }else{//astm_ppw
                                    document.getElementById("astm_ppw").checked = true; 
                                    onchange_linepipe_ppw();
                                    load_grade_sel_ppw("graastm");
                                    load_joinf_sel_ppw("jointf");
                                }
                                
                                $("#minimum_ppw").val(data.row["minimum_ppw"]);
                                $("#designp_ppw").val(data.row["designp_ppw"]);
                                $("#nominalps_sel_ppw").val(data.row["nominalps_sel_ppw"]);
                                $("#grade_sel_ppw").val(data.row["grade_sel_ppw"]);
                                $("#grade_ppw").val(data.row["grade_ppw"]);
                                
                                $("#jf_sel_ppw").val(data.row["jf_sel_ppw"]);
                                $("#jf_ppw").val(data.row["jf_ppw"]);
                                
                                $("#opt_ppw").val("2");
                                $("#id_ppw").val(data.row.id);
                                $("#proyects_sel_ppw").val(data.row.id_proyect)
                            }else{
                                $("#opt_ppw").val("1");
                            }
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            $("#opt_ppw").val("1");
                            show_OkDialog($("#error_Dialog_ppw"), "Error");
                        },
                        complete: function(){
                           unBlock();
                        }
                    });
                }
                
                function load_in_sel_ppw(){
                    var parametros = {
                            "combo": "in2",
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
                            var newHtml = "<select class=\"form-control\" name=\"nod_sel_ppw\" id= \"nod_sel_ppw\" onchange=\"cleanOut_ppw()\">" + data;
                            $("#div_nod_sel_ppw").html(newHtml);
                            
                            newHtml = "<select class=\"form-control\" name=\"ac_sel_ppw\" id= \"ac_sel_ppw\" onchange=\"cleanOut_ppw()\">" + data;
                            $("#div_ac_sel_ppw").html(newHtml);
                            
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_ppw"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function load_he_sel_dgv(){
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
                            var newHtml = "<select class='form-control' name='al_sel_ppw' id= 'al_sel_ppw' onchange='cleanOut_dgv()'> " + data;
                            $("#div_al_sel_ppw").html(newHtml);
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_dgv"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                
                function load_temp_sel_ppw(){
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
                            var newHtml = "<select class=\"form-control\" name=\"tempd_sel_ppw\" id= \"tempd_sel_ppw\" onchange=\"cleanOut_ppw()\">" + data;
                            $("#div_tempd_sel_ppw").html(newHtml);
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_ppw"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function load_nps_sel_ppw(type){
                    var parametros = {
                            "combo": "npsn",
                            "type": type,
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
                            var newHtml = "<select class=\"form-control\" name=\"nominalps_sel_ppw\" id= \"nominalps_sel_ppw\" onchange=\"onchange_nps_ppw()\">" + data;
                            $("#div_nominalps_sel_ppw").html(newHtml);
                             var res =  $("#nominalps_sel_ppw option:selected").html();
                             $("#nominalps_ppw").val(res); 
                            $("#nominalos_ppw").val($("#nominalps_sel_ppw").val());
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_ppw"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function load_deratingf_sel_ppw(){
                    var parametros = {
                            "combo": "deratingf",
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
                            var newHtml = "<select class=\"form-control\" name=\"td_sel_ppw\" id=\"td_sel_ppw\" onchange=\"onchange_df_ppw()\">" + data;
                            $("#div_td_sel_ppw").html(newHtml); 
                            $("#temperaturedf_ppw").val($("#td_sel_ppw").val().split(",")[1]);
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_ppw"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function load_grade_sel_ppw(idcombo){
                    var parametros = {
                            "combo": idcombo,
                            "opcion" : "5"
                    };
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        async: false,
                        data: parametros,
                        beforeSend: function (xhr) {                            
                            block("Cargando...");
                        },
                        success: function(data, status, request){ 
                            var newHtml = "<select class=\"form-control\" name=\"grade_sel_ppw\" id=\"grade_sel_ppw\" onchange=\"onchange_gra_ppw()\">" + data;
                            $("#div_grade_sel_ppw").html(newHtml); 
                            
                            var x = $("#grade_sel_ppw").val();
                            $("#specifiedmys_ppw").val(x.split(",")[1]);
                            var res =  $("#grade_sel_ppw option:selected").html();
                             $("#grade_ppw").val(res); 
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_ppw"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function load_joinf_sel_ppw(idcombo){
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
                            var newHtml = "<select class=\"form-control\" name=\"longitudinal_jf_ppw\" id=\"longitudinal_jf_ppw\" onchange=\"onchange_jf_ppw()\">" + data;
                            $("#div_jf_sel_ppw").html(newHtml);
                            $("#ljf_ppw").val($("#longitudinal_jf_ppw").val().split(",")[1]);
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_ppw"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function load_desingf_sel_ppw(){
                    var parametros = {
                            "combo": "desingf2",
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
                            var newHtml = "<select class=\"form-control\" name=\"design_factor_sel_ppw\" id=\"design_factor_sel_ppw\" onchange=\"onchange_defa_ppw()\">" + data;
                            $("#div_df_sel_ppw").html(newHtml); 
                            
                            var x = $("#design_factor_sel_ppw").val();
                            $("#designf_ppw").val(x.split(",")[1]);
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_ppw"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function cleanOut_ppw(){
                    $("#minimum_ppw").val("");
                }
        
                function cleanIn_ppw(){
                    $("#nominalps_ppw").val("");
                    $("#nominalos_ppw").val("");
                    $("#designp_ppw").val("");
                    $("#grade_ppw").val("");
                    $("#specifiedmys_ppw").val("");
                    $("#designf_ppw").val("");
                    $("#ljf_ppw").val("");
                    $("#temperaturedf_ppw").val("");
                    $("#especp_ppw").val("");
                }
                
                function cleanAll_ppw(){
                    cleanIn_ppw();
                    cleanOut_ppw();
                    $("#description_ppw").val("");
                }
                
                function onchange_linepipe_ppw(){    
                    
                    
                    
                    var sel = $("input[type='radio'][name='linepipe_ppw']:checked");
                    if(sel.val() == "api5l_ppw"){
                        
                        $("#tittle_ppw").html("Line Pipe. API Specification 5L ");
                        load_grade_sel_ppw("gra5l");
                        load_joinf_sel_ppw("jointf5l");
                        load_nps_sel_ppw("5l");
                        
                    }else{
                        $("#tittle_ppw").html("Standart Steel Pipe - ASTM - ANSI B36.10 ");
                        
                        load_grade_sel_ppw("graastm");
                        load_joinf_sel_ppw("jointf");
                        load_nps_sel_ppw("astm");
                    }
                    
                    cleanOut_ppw();
                    
                }
                
                function onchange_Input_ppw(inp){
                    
                    var sw = validateDecimal(inp.value);

                    if(sw != true){
                        inp.value = "";
                    }        
                    onchange_Input_zero(inp);
                    cleanOut_ppw();
                    
                }
                
                function onchange_nps_ppw(){
                    var res =  $("#nominalps_sel_ppw option:selected").html();
                    $("#nominalps_ppw").val(res); 
                    $("#nominalos_ppw").val($("#nominalps_sel_ppw").val());
                }
                
                function onchange_wt_ppw(){
                    $("#wallt_ppw").val($("#wallt_sel_ppw").val().split(",")[1]);
                }
                
                function onchange_gra_ppw(){
                    var x = $("#grade_sel_ppw").val();
                            $("#specifiedmys_ppw").val(x.split(",")[1]);
                            var res =  $("#grade_sel_ppw option:selected").html();
                             $("#grade_ppw").val(res); 
                   // cleanOut_ppw();
                }
                
                function onchange_jf_ppw(){
                    $("#ljf_ppw").val($("#longitudinal_jf_ppw").val().split(",")[1]);
                    //cleanOut_ppw();
                }
                
                function onchange_df_ppw(){
                    $("#temperaturedf_ppw").val($("#td_sel_ppw").val().split(",")[1]);
                    //cleanOut_ppw();
                }
                
                function onchange_defa_ppw(){
                    $("#designf_ppw").val($("#design_factor_sel_ppw").val().split(",")[1]);
                   // cleanOut_ppw();
                }
                
                 function calculate_ppw(){
                    var variables_ppw = {
                            "nominalps_ppw" : $("#nominalps_ppw").val(),
                            "nominalos_ppw": $("#nominalos_ppw").val(),
                            "designp_ppw" : $("#designp_ppw").val(),
                            "grade_ppw": $("#grade_ppw").val(),
                            "specifiedmys_ppw" : $("#specifiedmys_ppw").val(),
                            "designf_ppw" : $("#designf_ppw").val(),
                            "ljf_ppw": $("#ljf_ppw").val(),
                            "temperaturedf_ppw": $("#temperaturedf_ppw").val(),
                            "especp_ppw": $("#especp_ppw").val(),
                            "enteree_ppw": $("#enteree_ppw").val()
                            
                    };
                    
                    var isOk = validate(variables_ppw);
                    if(isOk === false){
                        alert("You must complete all fields");
                    }else{
                    
                        var unidades = {
                            "nod_sel_ppw": $("#nod_sel_ppw").val().split(",")[1],
                            "dp_sel_ppw": "psig",
                            "ac_sel_ppw": $("#ac_sel_ppw").val().split(",")[1],
                            "al_sel_ppw": $("#al_sel_ppw").val().split(",")[1]
                        };

                        var res = p_wall_thinkness_Form(variables_ppw, unidades);

                         $("#minimum_ppw").val(res);


                        show_OkDialog($("#calculate_Dialog_ppw"), "Satisfactory process");
                    }
                }
                
                function save_ppw(){
                    
                        var opcpipe_ppw = $("input[type='radio'][name='linepipe_ppw']:checked");
                        
                        var parametros = {
                            "opcpipe_ppw": opcpipe_ppw.val(),
                            "nominalps_sel_ppw": $("#nominalps_sel_ppw").val(), 
                            "grade_sel_ppw": $("#grade_sel_ppw").val(),
                            "design_factor_sel_ppw": $("#design_factor_sel_ppw").val(),         
                            "longitudinal_jf_ppw": $("#longitudinal_jf_ppw").val(),              
                            "td_sel_ppw": $("#td_sel_ppw").val(),                                       
                            "nominalps_ppw" : $("#nominalps_ppw").val(),
                            "nominalos_ppw": $("#nominalos_ppw").val(),
                            "nod_sel_ppw": $("#nod_sel_ppw").val(),
                            "dp_sel_ppw": "65,psig",
                            "designp_ppw" : $("#designp_ppw").val(),
                            "grade_ppw": $("#grade_ppw").val(),
                            "specifiedmys_ppw" : $("#specifiedmys_ppw").val(),
                            "designf_ppw" : $("#designf_ppw").val(),
                            "ljf_ppw": $("#ljf_ppw").val(),
                            "temperaturedf_ppw": $("#temperaturedf_ppw").val() ,
                            "especp_ppw": $("#especp_ppw").val() ,
                            "ac_sel_ppw": $("#ac_sel_ppw").val() ,
                            "minimum_ppw": $("#minimum_ppw").val() ,
                            
                            "idproyect": $("#proyects_sel_ppw").val(),
                            "opcion": $("#opt_ppw").val(),
                            "iduser": <% out.print(session.getAttribute("idusu"));%>,
                            "id_ppw": 1,
                            "description_ppw": $("#description_ppw").val(),
                            "from": "ppw"
                        };
                        
                        var isOk = validate(parametros);
                        
                        if(isOk === false){
                            alert("You must perform the calculation and fill out the description");
                        }else{
                            
                            if($("#opt_ppw").val() == 2){
                                parametros.id_ppw = $("#id_ppw").val();
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
                                    $("#id_ppw").val(data.row.id);
                                    $("#opt_ppw").val("2");
                                    show_OkDialog($("#save_Dialog_ppw"), "Satisfactory process");
                                },
                                error: function (xhr, ajaxOptions, err) {
                                    alert(err);
                                    show_OkDialog($("#error_Dialog_ppw"), "Error");
                                },
                                complete: function(){
                                    unBlock();
                                }
                            });
                        }   
                }
                
                function delete_ppw(){
                    
                    //Confirmacion
                    if($("#opt_ppw").val() == 2){
                    
                        $( "#dialog-confirm_ppw" ).dialog({
                            resizable: false,
                            height: "auto",
                            width: 400,
                            modal: true,
                            buttons: {
                              "Delete": function() {
                                deleteReg_ppw();
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
              
                function deleteReg_ppw(){
                    var parametros = {
                        "id_ppw": $("#id_ppw").val(),
                        "opcion": 3,
                        "iduser": <%=session.getAttribute("idusu") %>,
                        "from": "ppw"
                    };
                    
                    if($("#opt_ppw").val() == 2){
                        $.ajax({
                            type: "POST",
                            url: "Modules/manager.jsp",
                            data: parametros,
                            beforeSend: function (xhr) {
                                block("Cargando...");
                            },
                            success: function(data, status, request){
                                cleanAll_ppw();
                                $("#id_ppw").val("");
                                $("#opt_ppw").val("1");
                                show_OkDialog($("#delete_Dialog_ppw"), "Satisfactory process");                           
                            },
                            error: function (xhr, ajaxOptions, err) {
                                show_OkDialog($("#error_Dialog_ppw"), "Error");
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
        
            <div id="load_Dialog_ppw" title="Basic dialog" style='display:none;'>
                <p>Successfully uploaded data</p>
            </div>
            
            <div id="save_Dialog_ppw" title="Basic dialog" style='display:none;'>
                <p>Data saved successfully</p>
            </div>
            
            <div id="error_Dialog_ppw" title="Basic dialog" style='display:none;'>
                <p>An error has occurred in the process</p>
            </div>
            
            <div id="calculate_Dialog_ppw" title="Basic dialog" style='display:none;'>
                <p>Calculation done successfully</p>
            </div>
            
            <div id="delete_Dialog_ppw" title="Basic dialog" style='display:none;'>
                <p>Successfully deleted record</p>
            </div>
            
            <div id="dialog-confirm_ppw" title="Delete record" style='display:none;'>
                <p><span class="ui-icon ui-icon-alert" style="float:left; margin:12px 12px 20px 0;"></span>
                    Are you sure you want to permanently delete this record?
                </p>
            </div>
    </body>
</html>