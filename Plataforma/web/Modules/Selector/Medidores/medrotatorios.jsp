<%-- 
    Document   : index
    Created on : 03-mar-2016, 17:02:38
    Author     : kata__000
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>::PROMIGAS::</title>

<!-- Jquery JS -->
<script type="text/JavaScript" src="js/jquery.js"></script>
<!-- Jquery UI -->
<script src="js/jquery-ui/jquery-ui.js"></script>
<!-- Jquery Blockui Plugin -->
<script src="js/jquery-ui/external/blockui/jquery-blockui.js"></script>
<!-- Formula File JS -->
<script src="js/functions/formulasK.js"></script>
<!-- Formula File JS -->
<script src="js/functions/formulasM.js"></script>
<!-- General Functions File JS -->
<script src="js/functions/functions.js"></script>
<!-- Jspdf Plugin JS -->
<script type="text/JavaScript" src="js/jspdf/jspdf.min.js" > </script>
<!-- Jspdf Plugin JS -->
<script type="text/JavaScript" src="js/jspdf/autotable.min.js" > </script>
<!-- Morris Plugin JS -->
<script src="bower_components/morrisjs/morris.js"></script>
<!-- Custom Theme JavaScript -->
<!--<script src="dist/js/sb-admin-2.js"></script> -->
<script src="bower_components/metisMenu/dist/metisMenu.min.js"></script>
<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="bower_components/raphael/raphael-min.js"></script>
<script src="js/dataTables/jquery.dataTables.js" type="text/javascript"></script>



<!--<script src="bower_components/jquery/dist/jquery.min.js"></script>-->
<!--<script type="text/javascript" src="js/highchart/highcharts.js"></script>-->
<!--<script type="text/javascript" src="js/highchart/exporting.js"></script>-->

<link rel="stylesheet" href="js/jquery-ui/jquery-ui.css">
<link rel="stylesheet" href="bower_components/morrisjs/morris.css">
<link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css" />
<link rel="stylesheet" href="bower_components/metisMenu/dist/metisMenu.min.css" />
<link href="dist/css/timeline.css" rel="stylesheet">
<link href="dist/css/sb-admin-2.css" rel="stylesheet">
<link href="bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="css/dataTables/jquery.dataTables.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css/user-profiles-list-basic.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.13/css/jquery.dataTables.min.css">
<link rel="stylesheet" href="https://cdn.datatables.net/select/1.2.1/css/select.dataTables.min.css">
<link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.2.4/css/buttons.dataTables.min.css">

    </head>
    
    <body>
        <div id="formula_mer">
        <div class="row">
            <div class="col-lg-9">
                <h2>This module validates the capacity of the meters to be installed in natural gas transport or distribution applications: Rotatory Meters</h2>
            </div>
            <div class="col-lg-3"> 
                 
                 <!-- Button trigger modal -->
                 <p>
                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_mer()">
                      Record
                </button>
                 </p>
                 
                <!-- MODAL -->
                <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                  <div class="modal-dialog" role="document">
                    <div class="modal-content">
                      <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">Record</h4>
                      </div>
                      <div class="modal-body">
                          <div id="div-table_mer"></div>
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
            <input  class="form-control" type="text" id="description_mer" name="description_mer"><br>
            Projects:
            <select class="form-control" id="proyects_sel_mer" name="proyects_sel_mer"> </select>
            
            </div>
        </div>
        <hr>
        
        
            <div class="col-lg-4">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Input
                        </div>
            <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    
                                    <div class="form-group col-lg-12">
            <div>
            <label>Trademark:</label>
            </div>
            <div id = "div_ma_sel_mer">
            <input class="form-control" type="text" id="ma_sel_mer" name="ma_sel_mer" onchange="onchange_Input_mer(this)" required value="Segun vendor list.">
            </div>
            </div>
                                    <div class="form-group col-lg-12">
            <div>
            <label>Serie:</label>
            </div>
            <div id = "div_se_sel_mer">
            <select class="form-control" id="se_sel_mer" name="se_sel_mer"> </select>
            </div>
            </div>
                                    <div class="form-group col-lg-12">
            <div>
            <label>Model:</label>
            </div>
            <div id = "div_mo_sel_mer">
            <select class="form-control" id="mo_sel_mer" name="mo_sel_mer"> </select>
            </div>
            </div>
                                    
                                     
            <div class="form-group">
                <div class="col-md-12">
                <label>Operating Pressure:</label>
                </div>
            <div class="col-md-8">
            <input value="10000"  class="form-control" type="text" id="presionop_mer" name="presionop_mer" onchange="onchange_Input_mer(this)" required>
            </div>
            <div class="col-md-4" id = "div_po_sel_mer">
            <select class="form-control" id="po_sel_mer" name="po_sel_mer" onchange="cleanOut_mer()"> </select>
            </div>
             </div>
            <div class="form-group">
                 <div class="col-md-12">
            <label>Base Pressure:</label> 
                 </div>
            <div class="col-md-8">
            <input  class="form-control" type="text" id="preisonba_mer" name="preisonba_mer" value="14.65" onchange="onchange_Input_mer(this)" required><br>
            </div>
            <div class="col-md-4" id="div_pb_sel_mer">
            <select class="form-control" id="pb_sel_mer" name="pb_sel_mer" onchange="cleanOut_mer()"> </select>
            </div>
            </div>
            <div class="form-group">
                <div class="col-md-12">
            <label>Minimum Flow of Operation:</label>
                </div>
                
                <div class="col-md-8">
                <input value="150" class="form-control" type="text" id="flujomin_mer" name="flujomin_mer" onchange="onchange_Input_mer(this)" required>
                 </div>
                <div class="col-md-4" id="div_fmin_sel_mer">
                    <select class="form-control" id="fmin_sel_mer" name="fmin_sel_mer" disabled></select> 
                </div>
                
            </div>
                                    <div class="form-group">
                <div class="col-md-12">
            <label>Maximum Flow of Operation:</label>
                </div>
                <div class="col-md-8">
                <input value="92313" class="form-control" type="text" id="flujomax_mer" name="flujomax_mer" onchange="onchange_Input_mer(this)" required>
                 </div>
                <div class="col-md-4" id="div_fmax_sel_mer">
                    <select class="form-control" id="fmax_sel_mer" name="fmax_sel_mer"></select> 
                </div>
                
            </div>
                                    
                                    <div class="form-group">
                <div class="col-md-12">
            <label>Temperature of Operation</label>
                </div>
                <div class="col-md-8">
                <input value="85" class="form-control" type="text" id="temp_mer" name="temp_mer" onchange="onchange_Input_mer(this)" required>
                 </div>
                <div class="col-md-4" id="div_temp_sel_mer">
                    <select class="form-control" id="temp_sel_mer" name="temp_sel_mer"></select> 
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
                            Plot
                        </div>
            <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div id="graficaLineal_mer"></div>
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
            <label>Optimum Model:</label>
            <input type="text" id="modeloop_mer" name="modeloop_mer" readonly required class="form-control">
            </div>
             <div class="form-group">
            <label>% Work with maximum capacity (Optimum):</label>
            <input type="text" id="trabajoop_mer" name="trabajoop_mer" readonly required class="form-control">
            </div> 
            <div class="form-group">
            <label>Maximum Capacity of Measurement (Optimum):</label>            
            <input type="text" id="maxcapaop_mer" name="maxcapaop_mer" readonly required class="form-control">
            </div>
                                    <div class="form-group">
            <label>Evaluated Model</label>
            <input type="text" id="modeloev_mer" name="modeloev_mer" readonly required class="form-control">
            </div>
             <div class="form-group">
            <label>% Work with maximum capacity (Evaluated):</label>
            <input type="text" id="trabajoev_mer" name="trabajoev_mer" readonly required class="form-control">
            </div> 
            <div class="form-group">
            <label>Maximum Capacity of Measurement(Evaluated):</label>            
            <input type="text" id="maxcapaev_mer" name="maxcapaev_mer" readonly required class="form-control">
            </div>
              <div class="form-group">
            <label>% Work with minimum conditions of operation (Evaluated):</label>
            <input type="text" id="trabajocam_mer" name="trabajocam_mer" readonly required class="form-control">
            </div>                      
                                    
 <input type="button" id="calculateBtn_mer" name="calculateBtn_mer" value="Calculate" onclick="calculate_mer()" class="btn btn-info btn-block">
 <input type="button" id="saveBtn_mer" name="saveBtn_mer" value="Save" onclick="save_mer()" class="btn btn-success btn-block">   
 <input type="button" id="delteBtn_mer" name="delteBtn_mer" value="Delete" onclick="delete_mer()" class="btn btn-danger btn-block">
 <input type="button" id="datasheetgen_mer" name="datasheetgen_mer" value="Generate DataSheet" onclick="load_datasheet_mer()" class="btn btn-success btn-block">   

            
            </div>
                           </div>
                        </div>
                    </div>
            </div>
            <div class="col-lg-12">
            <div class="col-md-3">
                <input type="button" id="cleanAllBtn_mer" name="cleanBtn_mer" value="Clean All" onclick="cleanAll_mer()" class="btn btn-warning btn-block">
            </div>
                <div class="col-md-3">
                <input type="button" id="cleanInputBtn_mer" name="cleanBtn_mer" value="Clean Input Data" onclick="cleanIn_mer()" class="btn btn-warning btn-block">
            </div>
                <div class="col-md-3">
                <input type="button" id="cleanOutputBtn_mer" name="cleanBtn_mer" value="Clean Output Data" onclick="cleanOut_mer()" class="btn btn-warning btn-block">
            </div>
                
                </div>
            <input type="hidden" id="id_mer" name="id_mer">  
            <input type="hidden" id="opt_mer" name="opt_mer">
            <input type="hidden" id="capaopt_mer" name="capaopt_mer">
        </div>
        
        <script>
                
                $(document).ready(function() {  
                    $("#opt_mer").val("1");
                    load_serie_mer();  
                    load_press_sel_mer();
                    load_temp_sel_mer();
                    
                    document.getElementById("fmin_sel_mer").disabled=true;
                    document.getElementById("fmax_sel_mer").disabled=true;
                    
                    getproyectos(<%=session.getAttribute("idusu") %>,
                                $("#proyects_sel_mer"),
                                $("#error_Dialog_mer"));
                });
                
                
                
                function load_datasheet_mer(){
                    
                    var flujmin = $("#flujomin_mer").val() + " " + $( "#fmin_sel_mer option:selected" ).text();
                    var flujmax =  $("#flujomax_mer").val() + " " + $( "#fmax_sel_mer option:selected" ).text();
                    var model = $("#ma_sel_mer").val() + ": " + $( "#se_sel_mer option:selected" ).text() + ", Model " + $( "#mo_sel_mer option:selected" ).text();
                    var outer = "";
                    var ansi = "";
                    
                    var pres = 0;
                    
                    if ($("#po_sel_mer").val().split(",")[1] === "psig") {
                        pres = Number($("#presionop_mer").val());
                    }else{
                        pres = Number($("#presionop_mer").val()) * 14.504;
                    }
                     
                    
                    if(pres < 275){
                        outer = "Flanged ANSI 150 RF";
                        ansi ="ANSI 150";
                    }else if(pres < 740){
                        outer = "Flanged ANSI 300 RF";
                        ansi = "ANSI 300";
                    }else{
                        outer = "Flanged ANSI 600 RF";
                        ansi = "ANSI 600";
                    }
                    
                    var parametros = {
                            "opcion" : "102",
                            "linep": $("#presionop_mer").val() + " " + $( "#po_sel_mer option:selected" ).text(),
                            "type": "Rotative",
                            "flowr":  flujmin + " to " + flujmax,
                            "size": $("#mo_sel_mer").val().split(",")[2] + " Inch", //=+CONCATENAR(ROMET!X25;"  ";ROMET!Y25)
                            "outere": outer, 
                            "ansic": ansi, 
                            "model": model,
                            "temp": $("#temp_mer").val() + " " + $( "#temp_sel_mer option:selected" ).text(),
                            "iduser": <%=session.getAttribute("idusu") %>,
                            "proyecto" : $( "#proyects_sel_mer option:selected" ).text(),
                            "from" : "med"
                            
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
                            //window.open(data, "nuevo", "");
                            window.location="bajar.jsp?filename="+file+"&path="+path;
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_mer"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                    
                }
                
               
                
                function setGrafica_mer(){
                
                    var caprefop = parseFloat($("#capaopt_mer").val());
                    
                    var caprefev  = parseFloat($("#mo_sel_mer").val().split(",")[1]);
                                
                    var presb = parseFloat($("#preisonba_mer").val());
                    var aux = ($("#pb_sel_mer").val().split(",")[1] == "psig" ? 1 : 14.504); //1 si es psi, 14.504 si es bar 
                    var evaluado = [];
                    var enope = [];
                    var optimo = [];
                    var data = [];
                    var eve = Number($("#presionop_mer").val());
                    
                    var j = 0;
                    
                    var fin = eve + 100;
                    
                    for(var i = 0; i <= fin; i = i + 1){
                        evaluado[j] = (i+presb*aux)/(presb*aux)*caprefev;
                        optimo[j] = (i+presb*aux)/(presb*aux)*caprefop;
                        enope[j] = parseFloat($("#flujomax_mer").val());
                        
                        data[j] = { x: i.toString(), a: evaluado[j].toFixed(0), b: optimo[j].toFixed(0), c:enope[j].toFixed(0) };
                        
                        j += 1;
                    }
                    
                    $("#graficaLineal_mer").html("");
                    
                   
                    
                   Morris.Line({
                            element: 'graficaLineal_mer',
                            data: data,
                            xkey: 'x',
                            ykeys: ['a', 'b', 'c'],
                            labels: ['Medidor Evaluado', 'Medidor Optimo', 'Capacidad del Proceso'],
                            events: [
                              eve
                            ],
                            parseTime:false
                          });
                    
                }
                
                function load_temp_sel_mer(){
                    var parametros = {
                            "combo": "temp",
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
                            var newHtml = '<select class="form-control" name="temp_sel_mer" id="temp_sel_mer" onchange="cleanOut_mer()">' + data;
                            $("#div_temp_sel_mer").html(newHtml);      
                            
                            var vecObj = [$("#temp_sel_mer")];                            
                            onchageGeneral(vecObj, "3,F");
                            
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_ah"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function load_serie_mer(){
                    var parametros = {
                            "combo": 'seriemr',
                            "opcion" : "5",
                            "from": "med",
                            "type": "mer"
                    };
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        beforeSend: function (xhr) {                            
                            block("Cargando...");
                        },
                        success: function(data, status, request){ 
                            var newHtml = "<select class=\"form-control\" name=\"se_sel_mer\" id= \"se_sel_mer\" onchange=\"onchange_serie_mer(true)\">" + data;
                            $("#div_se_sel_mer").html(newHtml);  
                            
                            //llamar al llenar Minimum Flow of Operation
                            
                            load_fluE_sel_mer();
                            onchange_serie_mer(false);
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_mer"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function onchange_serie_mer(swclear){
                
                    if(swclear){
                        cleanOut_mer();
                    }
                    
                    var parametros = {
                            "combo": "modelo",
                            "serie": $("#se_sel_mer").val().split(",")[1],
                            "type": "rotatorio2",
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
                            var newHtml = "<select class=\"form-control\" name=\"mo_sel_mer\" id=\"mo_sel_mer\" onchange=\"cleanOut_mer()\">" + data;
                            $("#div_mo_sel_mer").html(newHtml);
                            
                            if($("#se_sel_mer").val().split(",")[1] === "imperial1"){
                                $("#fmin_sel_mer").val("1284,SCFH");
                                $("#fmax_sel_mer").val("1284,SCFH");               
                            }else{
                                $("#fmin_sel_mer").val("1285,SCMH");
                                $("#fmax_sel_mer").val("1285,SCMH");   
                            }
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_mer"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function load_history_mer(){
                    var parametros = {
                        "idproyect": $("#proyects_sel_mer").val(),
			"iduser": <% out.print(session.getAttribute("idusu"));%>,
                        "type": "rotatorio",
                        "opcion" : "6",
                        "nombre" : "historial",
                        "from" : "med"
                    };
                    
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        dataType: 'json',
                        beforeSend: function (xhr) {
                            $("#opt_mer").val("1");
                            $("#id_mer").val("");
                            cleanAll_mer();
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
                               html += "<td>"+data.historial[i].description_med+"</td>";
                               html += "<td><a href='#' onClick=\"load_form_mer("+data.historial[i].id+")\"><span class='glyphicon glyphicon-plus' aria-hidden='true'></span></a></td>";
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
                           $("#div-table_mer").empty();
                           $("#div-table_mer").html(html);
                           
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_mer"), "Error");
                        },
                        complete: function(){
                           unBlock();
                        }
                    });
                }
                
                function load_fluE_sel_mer(){
                    var parametros = {
                            "combo": "flusel",
                            "opcion" : "5",
                            "from": "med"
                    };
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        beforeSend: function (xhr) {                            
                            block("Cargando...");
                        },
                        success: function(data, status, request){ 
                            var newHtml = "<select class=\"form-control\" name=\"fmin_sel_mer\" id= \"fmin_sel_mer\" onchange=\"cleanOut_mer()\">" + data;
                            $("#div_fmin_sel_mer").html(newHtml);
                            
                            newHtml = "<select class=\"form-control\" name=\"fmax_sel_mer\" id= \"fmax_sel_mer\" onchange=\"cleanOut_mer()\">" + data;
                            $("#div_fmax_sel_mer").html(newHtml);
                            
                            if($("#se_sel_mer").val().split(",")[1] === "imperial1"){
                               $("#fmin_sel_mer").val("1284,SCFH");
                               $("#fmax_sel_mer").val("1284,SCFH");
                            }else{
                               $("#fmin_sel_mer").val("1285,SCMH");
                               $("#fmax_sel_mer").val("1285,SCMH");
                            }
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_mer"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function load_press_sel_mer(){
                    var parametros = {
                            "combo": "presel",
                            "opcion" : "5",
                            "from": "med"
                    };
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        beforeSend: function (xhr) {                            
                            block("Cargando...");
                        },
                        success: function(data, status, request){ 
                            var newHtml = "<select class=\"form-control\" name=\"po_sel_mer\" id= \"po_sel_mer\" onchange=\"cleanOut_mer()\">" + data;
                            $("#div_po_sel_mer").html(newHtml);  
                            
                            newHtml = "<select class=\"form-control\" name=\"pb_sel_mer\" id= \"pb_sel_mer\" onchange=\"cleanOut_mer()\">" + data;
                            $("#div_pb_sel_mer").html(newHtml);
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_mer"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                 
                function load_form_mer(id){
                    
                   var parametros = {
                        "id": id,
                        "opcion" : "4",
                        "from": "med"
                    };
                    
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        dataType: 'json',
                        beforeSend: function (xhr) {
                            cleanAll_mer();
                            block("Cargado datos...");
                        },
                        success: function(data, status, request){
                            if (data != null)
                            {
                                
                                var tags = Object.keys(data.row);
                                for(var i = 0; i < tags.length; i++){
                                    
                                    if(tags[i].substring(tags[i].length - 4, tags[i].length) === "_med"){
                                        var newt = tags[i].substring(0, tags[i].length-3) + "mer";
                                        $("#" + newt).val(data.row[tags[i]]);
                                    }else{
                                         $("#" + tags[i]).val(data.row[tags[i]]);
                                    }
                                   
                                    
                                }
                                
                                onchange_serie_mer(false);
                                $("#mo_sel_mer").val(data.row["mo_sel_med"]);
                                $("#proyects_sel_mer").val(data.row["id_proyect"]);
                                
                                $("#opt_mer").val("2");
                                $("#id_mer").val(data.row.id);
                            }else{
                                $("#opt_mer").val("1");
                            }
                            
                            setGrafica_mer();
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            $("#opt_mer").val("1");
                            show_OkDialog($("#error_Dialog_mer"), "Error");
                        },
                        complete: function(){
                           unBlock();
                        }
                    });
                }
                
                function cleanOut_mer(){
                    $("#modeloop_mer").val("");
                    $("#maxcapaop_mer").val("");
                    $("#trabajoop_mer").val("");
                    $("#modeloev_mer").val("");
                    $("#maxcapaev_mer").val("");
                    $("#trabajoev_mer").val("");
                    $("#trabajocam_mer").val("");
                    $("#graficaLineal_mer").html("");
                }
        
                function cleanIn_mer(){
                    $("#ma_sel_mer").val("");
                    $("#presionop_mer").val("");
                    $("#preisonba_mer").val("");
                    $("#flujomin_mer").val("");
                    $("#flujomax_mer").val("");
                }
                
                function cleanAll_mer(){
                    cleanIn_mer();
                    cleanOut_mer();
                    $("#description_mer").val("");
                }
                
                function onchange_Input_mer(inp){
                    
                    var sw = validateDecimal(inp.value);

                    if(sw != true){
                        inp.value = "";
                    }                 
                    onchange_Input_zero(inp);
                    cleanOut_mer();
                    
                }
                
                function calculate_mer(){
                    
                    var medidores = '';
                    $("#mo_sel_mer option").each(function(){
                        if ($(this).val() != "" ){        
                            medidores += $(this).val()+'@';
                        }
                    });
                    
                    var variables = {
                            "ma_sel": $("#ma_sel_mer").val(),
                            "se_sel" : $("#se_sel_mer").val(),
                            "mo_sel": $("#mo_sel_mer").val(),
                            "presionop" : $("#presionop_mer").val(),
                            "preisonba" : $("#preisonba_mer").val(),
                            "flujomin" : $("#flujomin_mer").val(),
                            "flujomax": $("#flujomax_mer").val(),
                            "medidores": medidores
                    };
                    
                    var uni = {
                            "po_sel": $("#po_sel_mer").val(),
                            "pb_sel" : $("#pb_sel_mer").val()
                    };
                    
                    var isOk = validate(variables);
                    
                    if(isOk === false){
                        alert("You must complete all fields");
                    }else{
                    
                        var res = capacidadMedidores_Form(variables, uni);
                        $("#modeloop_mer").val(res[0]);
                        $("#trabajoop_mer").val(res[1]);
                        $("#maxcapaop_mer").val(res[2]);
                        $("#modeloev_mer").val(res[3]);
                        $("#trabajoev_mer").val(res[4]);
                        $("#maxcapaev_mer").val(res[5]);
                        $("#trabajocam_mer").val(res[6]);
                        $("#capaopt_mer").val(res[7]);
                        
                        setGrafica_mer();
                        show_OkDialog($("#calculate_Dialog_mer"), "Satisfactory process");
                        
                    }
                }
                
                function save_mer(){
                    
                    var parametros = {
                            "ma_sel_mer": $("#ma_sel_mer").val(),
                            "se_sel_mer" : $("#se_sel_mer").val(),
                            "mo_sel_mer": $("#mo_sel_mer").val(),
                            "presionop_mer" : $("#presionop_mer").val(),
                            "preisonba_mer" : $("#preisonba_mer").val(),
                            "flujomin_mer" : $("#flujomin_mer").val(),
                            "flujomax_mer": $("#flujomax_mer").val(),
                            "po_sel_mer": $("#po_sel_mer").val(),
                            "pb_sel_mer" : $("#pb_sel_mer").val(),
                            "fmin_sel_mer": $("#fmin_sel_mer").val(),
                            "fmax_sel_mer" : $("#fmax_sel_mer").val(),
                            "modeloop_mer" : $("#modeloop_mer").val(),
                            "trabajoop_mer" : $("#trabajoop_mer").val(),
                            "maxcapaop_mer": $("#maxcapaop_mer").val(),
                            "modeloev_mer" : $("#modeloev_mer").val(),
                            "trabajoev_mer" : $("#trabajoev_mer").val(),
                            "maxcapaev_mer" : $("#maxcapaev_mer").val(),
                            "trabajocam_mer": $("#trabajocam_mer").val(),
                            "capaopt_mer": $("#capaopt_mer").val(),
                            
                            
                            "idproyect": $("#proyects_sel_mer").val(),
                            "opcion": $("#opt_mer").val(),
                            "iduser": <%=session.getAttribute("idusu") %>,
                            "id_med": 1,
                            "description_mer": $("#description_mer").val(),
                            "type": "rotatorio",
                            "from": "med"
                    };
                    
                    var isOk = validate(parametros);

                    if(isOk === false){
                        alert("You must perform the calculation and fill out the description");
                    }else{

                        if($("#opt_mer").val() == 2){
                            parametros.id_med = $("#id_mer").val();
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
                                $("#id_mer").val(data.row.id);
                                $("#opt_mer").val("2");
                                show_OkDialog($("#save_Dialog_mer"), "Satisfactory process");
                            },
                            error: function (xhr, ajaxOptions, err) {
                                alert(err);
                                show_OkDialog($("#error_Dialog_mer"), "Error");
                            },
                            complete: function(){
                                unBlock();
                            }
                        });
                    }   
                }
                
                function delete_mer(){
                    
                    //Confirmacion
                    if($("#opt_mer").val() == 2){
                        $( "#dialog-confirm_mer" ).dialog({
                            resizable: false,
                            height: "auto",
                            width: 400,
                            modal: true,
                            buttons: {
                              "Delete": function() {
                                deleteReg_mer();
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
                
                function deleteReg_mer(){
                    var parametros = {
                        "id_med": $("#id_mer").val(),
                        "opcion": 3,
                        "iduser": <%=session.getAttribute("idusu") %>,
                        "from": "med"
                    };
                        
                        
                    if($("#opt_mer").val() == 2){
                        $.ajax({
                                type: "POST",
                                url: "Modules/manager.jsp",
                                data: parametros,
                                dataType: 'json',
                                beforeSend: function (xhr) {
                                    block("Cargando...");
                                },
                                success: function(data, status, request){
                                    cleanAll_mer();
                                    $("#id_mer").val("");
                                    $("#opt_mer").val("1");
                                    show_OkDialog($("#delete_Dialog_mer"), "Satisfactory process");
                                },
                                error: function (xhr, ajaxOptions, err) {
                                    alert(err);
                                    show_OkDialog($("#error_Dialog_mer"), "Error");
                                },
                                complete: function(){
                                    unBlock();
                                }
                            });

                    }else{
                        alert("You must load a log to be able to delete it");
                    }
                }
                
                
            </script>
        
            <div id="load_Dialog_mer" title="Basic dialog" style='display:none;'>
                <p>Successfully uploaded data</p>
            </div>
            
            <div id="save_Dialog_mer" title="Basic dialog" style='display:none;'>
                <p>Data saved successfully</p>
            </div>
            
            <div id="error_Dialog_mer" title="Basic dialog" style='display:none;'>
                <p>An error has occurred in the process</p>
            </div>
            
            <div id="calculate_Dialog_mer" title="Basic dialog" style='display:none;'>
                <p>Calculation done successfully</p>
            </div>
            
            <div id="delete_Dialog_mer" title="Basic dialog" style='display:none;'>
                <p>Successfully deleted record</p>
            </div>
            
            <div id="dialog-confirm_mer" title="Delete record" style='display:none;'>
                <p><span class="ui-icon ui-icon-alert" style="float:left; margin:12px 12px 20px 0;"></span>
                    Are you sure you want to permanently delete this record?
                </p>
            </div>
    </body>
</html>