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
                <h2><strong>Pipeline Testing:</strong>  Normas de aceptación alternativas para soldaduras circunferenciales (API 1104)</h2>
            </div>
            <div class="col-lg-3"> 
                 
                 <!-- Button trigger modal -->
                 <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_alc()">
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
                              <div id="div-table_alc"></div>
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
                <input  class="form-control" type="text" id="description_alc" name="description_alc"><br>
            </div>
        </div>
        <hr>
            <div class="col-lg-7">
                     
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
                            Pipe
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
             <div class="form-group">
            <div class="col-md-12">
                <input type="radio" id = "pipe1_alc" name="pipe_rad_alc" value="pipe1_alc" onchange="onchange_pipe_rad_alc()" required> Pipe - Specification API 5L <br>
                <input type="radio" id = "pipe2_alc" name="pipe_rad_alc" value="pipe2_alc" onchange="onchange_pipe_rad_alc()" required> Tubería estándar de acero- ASTM - ANSI B36.10
            </div>
            </div>                                    
                                    
             <div class="form-group">
            <label>Nominal pipe size:</label>
            <div id="div_nomps_sel_alc">
             <select class="form-control" id="nomps_sel_alc" name="nomps_sel_alc"> </select>
            </div>
            </div>
                                    <div class="form-group">
            <label>Grade:</label>
            <div id="div_grade_sel_alc">
                <select class="form-control" id="grade_sel_alc" name="grade_sel_alc" onchange="onchange_grade_alc()"> </select>
            </div>
            </div>
                                     <div class="form-group">
            <label>Wall Thickness:</label>
            <div id="div_wallt_sel_alc">
            <select class="form-control" id="wallt_sel_alc" name="wallt_sel_alc"> </select>
            </div>
            </div>
                                    
            
            </div>
                           </div>
                        </div>
                    </div>
                    
            </div>
           
            <div class="form-group">
            <label>Poisson's Ratio:</label>
            <input class="form-control" type="text" id="poissonr_alc" name="poissonr_alc" onchange="onchange_Input_alc(this)" required>
            </div>
            <div class="form-group">
            <div class="col-md-12">
            <label>Young's Modulus Of Elasticity:</label>
            </div>
            <div class="col-md-8">
            <input class="form-control" type="text" id="young_alc" name="young_alc" onchange="onchange_Input_alc(this)" required>
            </div>
            <div class="col-md-4" id = "div_young_sel_alc">
            <select class="form-control" id="young_sel_alc" name="young_sel_alc"> </select>
            </div>
            </div>
                                    
            
                                    <div class="form-group">
            <div class="col-md-12">
            <label>Nominal pipe size:</label>
            
            <input class="form-control" type="text" id="nps_alc" name="nps_alc" onchange="onchange_Input_alc(this)" required>
            </div>
            </div>
                                    
                                    <div class="form-group">
            <div class="col-md-12">
            <label>Nominal Outside Diameter</label>
            </div>
            <div class="col-md-8">
            <input class="form-control" type="text" id="nominalo_alc" name="nominalo_alc" onchange="onchange_Input_alc(this)" required>
            </div>
            <div class="col-md-4" id = "div_no_sel_alc">
            <select class="form-control" id="no_sel_alc" name="no_sel_alc"> </select>
            </div>
            </div>
                                    
                                    <div class="form-group">
            <div class="col-md-12">
            <label>Nominal Wall Thickness :</label>
            </div>
            <div class="col-md-8">
            <input class="form-control" type="text" id="nominalt_alc" name="nominalt_alc" onchange="onchange_Input_alc(this)" required>
            </div>
            <div class="col-md-4" id = "div_nt_sel_alc">
            <select class="form-control" id="nt_sel_alc" name="nt_sel_alc"> </select>
            </div>
            </div>
                                    
                                    <div class="form-group">
            <div class="col-md-12">
            <label>Grade:</label>
            <input class="form-control" type="text" id="grade_alc" name="grade_alc" onchange="onchange_Input_alc(this)" required>
            </div>
            </div>
                                    
                                    <div class="form-group">
            <div class="col-md-12">
            <label>Specific Minimun Yield Strength:</label>
            </div>
            <div class="col-md-8">
            <input class="form-control" type="text" id="specificmy_alc" name="specificmy_alc" onchange="onchange_Input_alc(this)" required>
            </div>
            <div class="col-md-4" id = "div_my_sel_alc">
            <select class="form-control" id="my_sel_alc" name="my_sel_alc"> </select>
            </div>
            </div>
                                    
                                    <div class="form-group">
            <div class="col-md-12">
            <label>Minimun CTOD Toughness:</label>
            </div>
            <div class="col-md-8">
            <input class="form-control" type="text" id="minctod_alc" name="minctod_alc" onchange="onchange_Input_alc(this)" required>
            </div>
            <div class="col-md-4" id = "div_mctod_sel_alc">
            <select class="form-control" id="mctod_sel_alc" name="mctod_sel_alc"> </select>
            </div>
            </div>
                                    
                                    <div class="form-group">
            <div class="col-md-12">
            <label>Applied Stress:</label>
            </div>
            <div class="col-md-8">
            <input class="form-control" type="text" id="applieds_alc" name="applieds_alc" onchange="onchange_Input_alc(this)" required>
            </div>
            <div class="col-md-4" id = "div_as_sel_alc">
            <select class="form-control" id="as_sel_alc" name="as_sel_alc"> </select>
            </div>
            </div>
                                    
            </div>
            </div>
            </div>
            </div>
      </div>
            <div class="col-lg-5">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Results
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
           
            <input type="button" id="calculateBtn_alc" name="calculateBtn_alc" value="Calculate" onclick="calculate_alc()" class="btn btn-info btn-block">
            <input type="button" id="saveBtn_alc" name="saveBtn_alc" value="Save" onclick="save_alc()" class="btn btn-success btn-block">   
            <input type="button" id="delteBtn_alc" name="delteBtn_alc" value="Delete" onclick="deleteReg_alc()" class="btn btn-danger btn-block">
            <input type="button" id="cleanAllBtn_alc" name="cleanBtn_alc" value="Clean All Data" onclick="cleanAll_alc()" class="btn btn-warning btn-block">
            <input type="button" id="cleanInputBtn_alc" name="cleanBtn_alc" value="Clean Input Data" onclick="cleanIn_alc()" class="btn btn-warning btn-block">
            <input type="button" id="cleanOutputBtn_alc" name="cleanBtn_alc" value="Clean Output Data" onclick="cleanOut_alc()" class="btn btn-warning btn-block">

            </div>
                           </div>
                        </div>
                    </div>
            </div>
            <input type="hidden" id="id_alc" name="id_alc">  
            <input type="hidden" id="opt_alc" name="opt_alc">
            
            <script>
                $(document).ready(function() {  
                      $('#pipe1_alc').attr('checked', 'checked');
                      $("#opt_alc").val("1");
                      
                      load_np_sel_alc("nps");
                      load_pres_sel_alc();
                      load_len_sel_alc();
                      load_in_sel_alc();
                      load_grade_sel_alc("gra5l");
                    
                });
                
                function load_np_sel_alc(idcombo){
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
                            var newHtml = "<select class=\"form-control\" name=\"nomps_sel_alc\" id= \"nomps_sel_alc\" onchange=\"onchange_nps_alc()\">" + data;
                            $("#div_nomps_sel_alc").html(newHtml);
                            
                            onchange_nps_alc();
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_alc"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function load_grade_sel_alc(idcombo){
                    var parametros = {
                            "combo": idcombo,
                            "opcion" : "5"
                    };
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        beforeSend: function (xhr) {                            
                            block("Cargando...");
                        },
                        success: function(data, status, request){ 
                            var newHtml = "<select class=\"form-control\" name=\"grade_sel_alc\" id=\"grade_sel_alc\" onchange=\"onchange_grade_alc()\">" + data;
                            $("#div_grade_sel_alc").html(newHtml); 
                            onchange_grade_alc();
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_alc"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function load_pres_sel_alc(){
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
                            var newHtml = "<select class=\"form-control\" name=\"my_sel_alc\" id=\"my_sel_alc\" >" + data;
                            $("#div_my_sel_alc").html(newHtml);
                            
                            newHtml = "<select class=\"form-control\" name=\"as_sel_alc\" id=\"as_sel_alc\" >" + data;
                            $("#div_as_sel_alc").html(newHtml);
                            
                            newHtml = "<select class=\"form-control\" name=\"young_sel_alc\" id=\"young_sel_alc\" >" + data;
                            $("#div_young_sel_alc").html(newHtml);
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_alc"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function load_len_sel_alc(){
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
                            var newHtml = "<select class=\"form-control\" name=\"pl_sel_alc\" id= \"pl_sel_alc\" >" + data;
                            $("#div_pl_sel_alc").html(newHtml);
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_alc"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function load_in_sel_alc(){
                    
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
                            var newHtml = "<select class=\"form-control\" name=\"no_sel_alc\" id= \"no_sel_alc\" >" + data;
                            $("#div_no_sel_alc").html(newHtml);
                            
                            newHtml = "<select class=\"form-control\" name=\"nt_sel_alc\" id= \"nt_sel_alc\" >" + data;
                            $("#div_nt_sel_alc").html(newHtml);
                            
                            newHtml = "<select class=\"form-control\" name=\"mctod_sel_alc\" id= \"mctod_sel_alc\" >" + data;
                            $("#div_mctod_sel_alc").html(newHtml);
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_alc"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function load_wt_sel_alc(){
                    var idOp = $("#nomps_sel_alc").val().trim().split(",")[0];
                    
                    var parametros = {
                            "combo": "wt," + idOp,
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
                            var newHtml = "<select class=\"form-control\" name=\"wallt_sel_alc\" id= \"wallt_sel_alc\" onchange=\"onchange_wt_alc()\">" + data;
                            $("#div_wallt_sel_alc").html(newHtml);
                            
                            $("#nominalt_alc").val($("#wallt_sel_alc").val().split(",")[1]);
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_alc"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function onchange_pipe_rad_alc(){
                    var sel = $("input[type='radio'][name='pipe_rad_alc']:checked");
                    if(sel.val() == "pipe1_alc"){
			load_np_sel_alc("nps");
                        load_grade_sel_alc("gra5l");
                    }else{
                        load_np_sel_alc("nps");
                        load_grade_sel_alc("graastm");
                    }
                }
                
                function onchange_nps_alc(){
                    cleanOut_alc();
                    $("#nps_alc").val($("#nomps_sel_alc").val().split(",")[1]);
                    load_wt_sel_alc();
                }
                
                function onchange_wt_alc(){
                    $("#nominalt_alc").val($("#wallt_sel_alc").val().split(",")[1]);
                    cleanOut_alc();
                }
                
                function load_form_alc(id){
                    
                   var parametros = {
                        "id": id,
                        "opcion" : "4"
                    };
                    
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        dataType: 'json',
                        beforeSend: function (xhr) {
                            cleanAll_alc();
                            block("Cargado datos...");
                        },
                        success: function(data, status, request){
                            if (data != null)
                            {
                                var tags = Object.keys(data.row);
                                
                                for(var i = 0; i < tags.length; i++){
                                    if(tags[i] != "date" && tags[i] != "id_proyect" && tags[i] != "id_user" && tags[i]!= "id" &&  tags[i]!="pipe_rad_alc")
                                    {
                                        $("#" + tags[i]).val(data.row[tags[i]]);
                                    }
                                }
                                
                                if(data.row["pipe_rad_alc"] == "pipe1_alc"){
                                    document.getElementById("pipe1_alc").checked = true; 
                                    load_grade_sel_alc("gra5l");
                                    
                                }else{
                                    document.getElementById("pipe2_alc").checked = true; 
                                    load_grade_sel_alc("graastm");
                                }
                                
                                load_wt_sel_alc();
                                $("#grade_sel_alc").val(data.row["grade_sel_alc"]);
                                $("#wallt_sel_alc").val(data.row["wallt_sel_alc"]);
                                
                                $("#opt_alc").val("2");
                                $("#id_alc").val(data.row.id);
                            }else{
                                $("#opt_alc").val("1");
                            }
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            $("#opt_alc").val("1");
                            show_OkDialog($("#error_Dialog_alc"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                    });
                }
                
                function load_history_alc(){
                    var parametros = {
                        "idproyect": <% out.print(session.getAttribute("id_proyect"));%>,
			"iduser": <% out.print(session.getAttribute("idusu"));%>,
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
                            $("#opt_alc").val("1");
                            $("#id_alc").val("");
                            cleanAll_alc();
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
                               html += "<td>"+data.historial[i].description_alc+"</td>";
                               html += "<td><a href='#' onClick=\"load_form_alc("+data.historial[i].id+")\"><span class='glyphicon glyphicon-plus' aria-hidden='true'></span></a></td>";
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
                           $("#div-table_alc").empty();
                           $("#div-table_alc").html(html);
                           
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_alc"), "Error");
                        },
                        complete: function(){
                           unBlock();
                        }
                    });
                }
                
                function cleanOut_alc(){
                    
                }
                
                function cleanIn_alc(){
                    $("#poissonr_alc").val("");  
                    $("#young_alc").val(""); 
                    $("#nps_alc").val(""); 
                    $("#nominalo_alc").val(""); 
                    $("#nominalt_alc").val(""); 
                    $("#grade_alc").val(""); 
                    $("#specificmy_alc").val(""); 
                    $("#minctod_alc").val(""); 
                    $("#applieds_alc").val(""); 
                }
                
                function cleanAll_alc(){
                    cleanIn_alc();
                    cleanOut_alc();
                    $("#description_alc").val("");
                }
                
                function onchange_Input_alc(inp){
                    var sw = validateDecimal(inp.value);
                    
                    if(sw != true){
                        inp.value = ""; 
                    }
                    onchange_Input_zero(inp);
                    cleanOut_alc();
                }
                
                function onchange_grade_alc(){
                    var x = $("#grade_sel_alc").val();
                    $("#grade_alc").val(x.split(",")[1]);
                }
                
                function calculate_alc(){
                    var variables = {
                            "poissonr_alc" : $("#poissonr_alc").val().replace(",", ""),
                            "young_alc" : $("#young_alc").val().replace(",", ""),
                            "nps_alc" : $("#nps_alc").val().replace(",", ""),
                            "nominalo_alc" : $("#nominalo_alc").val().replace(",", ""),
                            "nominalt_alc" : $("#nominalt_alc").val().replace(",", ""),
                            "grade_alc" : $("#grade_alc").val().replace(",", ""),
                            "specificmy_alc" : $("#specificmy_alc").val().replace(",", ""),
                            "minctod_alc" : $("#minctod_alc").val().replace(",", ""),
                            "applieds_alc" : $("#applieds_alc").val().replace(",", "")
                            
                    };
                    
                    var isOk = validate(variables);
                    
                    if(isOk === false){
                        alert("You must complete all fields");
                    }else{
                        var unidades = {

                        };

                        //Llamar a formula
                        show_OkDialog($("#calculate_Dialog_alc"), "Satisfactory process");
                    }
                }
                
                function save_alc(){
                    var sel = $("input[type='radio'][name='pipe_rad_alc']:checked");
                    
                    var parametros = {
                            "poissonr_alc" : $("#poissonr_alc").val(),
                            "young_alc" : $("#young_alc").val(),
                            "nps_alc" : $("#nps_alc").val(),
                            "nominalo_alc" : $("#nominalo_alc").val(),
                            "nominalt_alc" : $("#nominalt_alc").val(),
                            "grade_alc" : $("#grade_alc").val(),
                            "specificmy_alc" : $("#specificmy_alc").val(),
                            "minctod_alc" : $("#minctod_alc").val(),
                            "applieds_alc" : $("#applieds_alc").val(),
                            
                            "pipe_rad_alc": sel.val(),
                            "nomps_sel_alc" : $("#nomps_sel_alc").val(),
                            "grade_sel_alc" : $("#grade_sel_alc").val(),
                            "wallt_sel_alc" : $("#wallt_sel_alc").val(),
                            
                            "young_sel_alc" : $("#young_sel_alc").val(),
                            "no_sel_alc" : $("#no_sel_alc").val(),
                            "nt_sel_alc" : $("#nt_sel_alc").val(),
                            "my_sel_alc" : $("#my_sel_alc").val(),
                            "mctod_sel_alc" : $("#mctod_sel_alc").val(),
                            "as_sel_alc" : $("#as_sel_alc").val(),
                            
                            "idproyect": <% out.print(session.getAttribute("id_proyect"));%>,
                            "opcion": $("#opt_alc").val(),
                            "iduser": <% out.print(session.getAttribute("idusu"));%>,
                            "id_alc": 1,
                            "description_alc": $("#description_alc").val()
                    };
                    
                    var isOk = validate(parametros);
                    
                    if(isOk === false){
                        alert("Debe realizar el càlculo");
                    }else{
                        
                        if($("#opt_alc").val() == 2){
                            parametros.id_alc = $("#id_alc").val();
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
                                $("#id_alc").val(data.row.id);
                                $("#opt_alc").val("2");
                                show_OkDialog($("#save_Dialog_alc"), "Satisfactory process");
                            },
                            error: function (xhr, ajaxOptions, err) {
                                alert(err);
                                show_OkDialog($("#error_Dialog_alc"), "Error");
                            },
                            complete: function(){
                                unBlock();
                            }
                        });
                    }
                    
                }
                
                function deleteReg_alc(){
                    var parametros = {
                            "id_alc": $("#id_alc").val(),
                            "opcion" : "3"
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
                            $("#id_alc").val("");
                            $("#opt_alc").val("1");                         
                            cleanAll_alc();
                            show_OkDialog($("#delete_Dialog_alc"), "Satisfactory process");                           
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_alc"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                
            </script>
        
            <div id="load_Dialog_alc" title="Basic dialog" style='display:none;'>
                <p>Successfully uploaded data</p>
            </div>
            
            <div id="save_Dialog_alc" title="Basic dialog" style='display:none;'>
                <p>Data saved successfully</p>
            </div>
            
            <div id="error_Dialog_alc" title="Basic dialog" style='display:none;'>
                <p>An error has occurred in the process</p>
            </div>
            
            <div id="calculate_Dialog_alc" title="Basic dialog" style='display:none;'>
                <p>Calculation done successfully</p>
            </div>
            
            <div id="delete_Dialog_alc" title="Basic dialog" style='display:none;'>
                <p>Successfully deleted record</p>
            </div>
    </body>
</html>