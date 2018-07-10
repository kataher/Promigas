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
                <h2><strong>Steel Pipe Design:</strong>  Maximum Allowable Pipe Span Length </h2>
            </div>
            <div class="col-lg-3"> 

                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_urpp()">
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
                                <div id="div-table_urpp"></div>
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
                <input  class="form-control" type="text" id="description_urpp" name="description_urpp"><br>
                Projects: 
                <select class="form-control" id="proyects_sel_urpp" name="proyects_sel_urpp"> </select>
            </div>
        </div>
    <hr>

      <div class="col-lg-4">
        <div class="panel panel-default">
          <div class="panel-heading">
            Pipe Properties
          </div>
          <div class="panel-body">
            <div class="row">
              <div class="col-lg-12">
                <div class="panel panel-default">
                  <div class="panel-heading">
                    Line Pipe API 5L
                  </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                   <div class="form-group">
                                    <div class="col-md-12">
                                      <label>Nominal pipe size:</label> 
                                    </div>
                                    <div class="col-md-12">
                                      <div id="div_nominalps_sel_urpp">
                                       <select class="form-control" id="nominalps_sel_urpp" name="nominalps_sel_urpp"> </select></div>
                                    </div>
                                    </div>
                                     <div class="form-group">
                                        <div class="col-lg-12">                      
                                          <label>Wall Thickness [.in]:</label>
                                        </div> 
                                       <div class="col-lg-12" id="div_wt_sel_urpp">
                                         <select class="form-control" id="wt_sel_urpp" name="wt_sel_urpp"> </select>
                                       </div>
                                     </div> 
                                    <div class="form-group">
                                      <div class="col-md-12">
                                        <label>Grade:</label> 
                                      </div>
                                      <div class="col-md-12">
                                          <div id="div_grade_sel_urpp">
                                        <select class="form-control" id="grade_sel_urpp" name="grade_sel_urpp"> </select>
                                          </div>
                                      </div>
                                    </div>
                                                                          
                                </div>
                            </div>
                        </div> 
                </div>                          
                <div class="panel panel-default">
                  <div class="panel-body">
                    <div class="form-group">
                        <div class="col-lg-12"> 
                      <div class="col-lg-12">
                        <label>Pipe Class:</label>
                       </div> 
                      <div class="col-lg-12">
                         <div id="div_jf_sel_urpp">
                           <select class="form-control" id="longitudinal_jf_urpp" name="longitudinal_jf_urpp"> </select>
                         </div>
                      </div> 
                        </div>
                      <div class="col-lg-12"> 
                      <div class="col-lg-12">                      
                        <label>Young's Modulus for Steel [ksi]:</label>
                      </div> 
                      <div class="col-lg-12">
                          <input type="text" name="youn__maxallo_urpp" id="youn__maxallo_urpp" class="form-control" value="29000">
                      </div>               
                      </div>
                      <div class="col-lg-12"> 
                      <div class="col-lg-12">                      
                        <label>Poisson's Ratio for Steel:</label>
                      </div> 
                      <div class="col-lg-12">
                          <input type="text" name="poi_maxallo_urpp" id="poi_maxallo_urpp" class="form-control" value="0.30">
                      </div>                  
                      </div>
                      <div class="col-lg-12">   
                      <div class="col-lg-12">                      
                        <label>Average Unit Weight of Steel [lb/ft<sup>3</sup>]:</label>
                      </div> 
                      <div class="col-lg-12">
                          <input type="text" name="ave_weight_urpp" id="ave_weight_urpp" class="form-control" value="490">
                      </div>                  
                     </div>
                   
                      <div class="col-lg-12"> 
                      <div class="col-lg-12">
                        <label>Location Class:</label>
                       </div> 
                      <div class="col-lg-12">
                       <div id="div_df_sel_urpp">
                          <select class="form-control" id="design_factor_sel_urpp" name="design_factor_sel_urpp"> </select>
                        </div>
                      </div>  
                          </div>
                      <div class="col-lg-12"> 
                      <div class="col-lg-12">
                        <label>Operating Temperature [°F]:</label>
                       </div> 
                      <div class="col-lg-12">
                        <div  id="div_td_sel_urpp">                    
                           <select class="form-control" id="temperature_urpp" name="temperature_urpp"> </select>
                        </div>
                      </div>
                          </div>
                      <div class="col-lg-12"> 
                      <div class="col-lg-12">                      
                        <label>Pipe Hydrotest:</label>
                      </div> 
                      <div class="col-lg-12">
                        <input type="radio" id ="pipe_hyd" name="pipe_hyd" selected onchange="onchange_line_maxallo(1)" required> Yes
                        <input type="radio" id ="pipe_hyd" name="pipe_hyd" onchange="onchange_line_maxallo(0)" required> No
                        <input type="hidden" name="pipe_hydSel" id="pipehydSel" value="1"/>
                      </div>   
                          </div>
                      
                    </div> 
                  </div>
                </div>                 
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="col-lg-4">
        <div class="panel panel-default">
          <div class="panel-heading">
            Pipe and Operational Data:
          </div>
          <div class="panel-body">
            <div class="row">
              <div class="col-lg-12">                                    
                <div class="form-group">      
                  <label>Operating Pressure [psi]:</label>
                  <input type="text" name="oper_press_urpp" id="oper_press_urpp" class="form-control">
                  <label>Pipe outside diameter [in]:</label>
                  <input type="text" class="form-control" id="pipe_dia_urpp" name="pipe_dia_urpp">
                  <label>Wall Thickness [in]:</label>
                  <input type="text" name="pipe_wt_urpp" id="pipe_wt_urpp" class="form-control">
                  <label>Specified Minimun Yield Stress [psi]:</label>
                  <input type="text" class="form-control" id="min_yield_urpp" name="min_yield_urpp">               
                  <label>Design Factor:</label>
                  <input type="text" name="fact_pipeop_urpp" id="fact_pipeop_urpp" class="form-control">
                  <label>Longitudinal Join Factor:</label>
                  <input type="text" class="form-control" id="long_fact_urpp" name="long_fact_urpp">
                  <label>Temperature Derating Factor:</label>
                  <input type="text" name="temp_fact_urpp" id="temp_fact_urpp" class="form-control">
                  <label>Additional Uniform Load and Pipe [lb/ft]:</label>
                  <input type="text" class="form-control" id="add_maxallo_urpp" name="add_maxallo_urpp">
                  <label>Deflection Limited to: </label>   
                  <div class="col-lg-12">                
                    <div class="col-lg-6">
                      <div id="div_defli_sel_urpp">
                        <select class="form-control" id="defli_sel_urpp" name="defli_sel_urpp"> </select>
                      </div>
                    </div>
                    <div class="col-lg-6">
                      <input type="text" class="form-control" id="defl_lim_urpp" name="defl_lim_urpp">
                    </div>
                  </div>
                  <label>Maximun Test Pressure [psi]:</label>
                  <input type="text" name="max_press_urpp" id="max_press_urpp" class="form-control">
                  <label>Maximun Allowable % of SMYS for Testing [%]:</label>
                  <input type="text" class="form-control" id="max_SMYS_urpp" name="max_SMYS_urpp">                  
                </div> 
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="col-md-4">
        <div class="panel panel-default">
          <div class="panel-heading">
            Results
          </div>
          <div class="panel-body">
            <div class="row">
              <div class="col-lg-12">                                    
                <div class="form-group">
                  <div class="panel panel-default">
                    <div class="panel-body">
                      <label>MAOP - Maximun Allowable Operating Pressure [psig]:</label>
                      <input type="text" name="max_allow" id="max_allow" class="form-control">
                      <label>Hoop/Barlow Stress [psi]:</label>
                      <input type="text" class="form-control" id="hoop_bar" name="hoop_bar">
                    </div>
                  </div>
                  <div class="panel panel-default">
                    <div class="panel-body">
                      <label>Maximun Allowable Bending Stress [psi]:</label>
                      <input type="text" name="max_allow_bend" id="max_allow_bend" class="form-control">
                      <label>Moment of Inertia [in^4]:</label>
                      <input type="text" class="form-control" id="mom_iner" name="mom_iner">
                      <label>Section Modulus [in<sup>3</sup>]:</label>
                      <input type="text" name="sec_modu" id="sec_modu" class="form-control">
                      <label>Bending Moment [lb-ft]:</label>
                      <input type="text" class="form-control" id="bend_mom" name="bend_mom">                      
                    </div>
                  </div>    
                  <div class="panel panel-default">
                    <div class="panel-body">
                      <label>Maximun Pipe Span Length Due to Bending [ft]:</label>
                      <input type="text" name="max_span_bend" id="max_span_bend" class="form-control">
                      <label>Deflection [in]:</label>
                      <input type="text" name="defl_msb" id="defl_msb" class="form-control">
                    </div>
                  </div> 
                  <div class="panel panel-default">
                    <div class="panel-body">
                      <label>Maximun Pipe Span Length Due to Deflection [ft]:</label>
                      <input type="text" name="max_span_defl" id="max_span_defl" class="form-control">
                      <label>Deflection [in]:</label>
                      <input type="text" name="defl_msd" id="defl_msd" class="form-control">
                    </div>
                  </div>
                  <div class="panel panel-default">
                    <div class="panel-body">
                      <label>MAXIMUN ALLOWABLE PIPE SPAN LENGTH [ft]:</label>
                      <input type="text" name="max_allow_span_length" id="max_allow_span_length" class="form-control">
                    </div>
                  </div>
                  <BR>                                      
                  <div>    
                    <input type="button" id="calculateBtn_max" name="calculateBtn_max" value="Calculate" onclick="calculate_max()" class="btn btn-info btn-block">
                    <input type="button" id="saveBtn_max" name="saveBtn_max" value="Save" onclick="save_max()" class="btn btn-success btn-block">   
                    <input type="button" id="reportBtn_max" name="reportBtn_max" value="Delete" onclick="reportReg_max()" class="btn btn-danger btn-block">          
                  </div>                              
                </div>  
              </div> 
            </div>               
          </div>
        </div>
      </div> 

      <div class="col-lg-12">
        <div class="col-md-3">
          <input type="button" id="cleanAllBtn_max" name="cleanBtn_max" value="Clean All" onclick="cleanAll_max()" class="btn btn-warning btn-block">
        </div>
        <div class="col-md-3">
          <input type="button" id="cleanInputBtn_max" name="cleanBtn_max" value="Clean Input Data" onclick="cleanIn_max()" class="btn btn-warning btn-block">
        </div>
        <div class="col-md-3">
          <input type="button" id="cleanOutputBtn_max" name="cleanBtn_max" value="Clean Output Data" onclick="cleanOut_max()" class="btn btn-warning btn-block">
        </div>    
      </div>

      <input type="hidden" id="opt_max" name="opt_max"> 
      <input type="hidden" id="id_max" name="id_max">   
      <script>
          function onchange_line_maxallo(value){
               $("#pipehydSel").val(value);
          }
          function calculate_max(){
            //  alert("Entro");
              /*
               * S se calcula 
               * MOAP se calcula
               * I se calcula
               * 
               */
              var variables = {
                "D"  : $("#pipe_dia_urpp").val(),
                "W"  : $("#ave_weight_urpp").val(),
                "MOP": $("#oper_press_urpp").val(),
                "t": $("#pipe_wt_urpp").val(),
                "SMYS": $("#min_yield_urpp").val(),
                "E"   : $("#youn__maxallo_urpp").val(),
                "L"   : $("#long_fact_urpp").val(),
                "d"   : $("#defl_lim_urpp").val(),
                "temde": $("#temp_fact_urpp").val(),
                "aul": $("#add_maxallo_urpp").val(),
                "mtp": $("#max_press_urpp").val(),
                "maSMYS": $("#max_SMYS_urpp").val(),
                "F"     : $("#fact_pipeop_urpp").val(),
                "Pmod"  : $("#pipehydSel").val()
              };
               var res = maximunallowable(variables); 
                  
               $("#max_allow").val(res[0]);
               $("#hoop_bar").val(res[1]);
               $("#max_allow_bend").val(res[2]);
               $("#mom_iner").val(res[3]);
               $("#sec_modu").val(res[4]);
               $("#bend_mom").val(res[5]);
               $("#max_span_bend").val(res[6]);
               $("#defl_msb").val(res[7]);
               $("#max_span_defl").val(res[8]);
               $("#defl_msd").val(res[9]);
               $("#defl_msd").val(res[10]);
                  //  show_OkDialog($("#calculate_Dialog_ipsmys"), "Proceso satisfactorio");
                  
              
          }
        $(document).ready(function() {  
                    getproyectos(<%=session.getAttribute("idusu")%>,
                        $("#proyects_sel_urpp"),
                        $("#error_Dialog_urpp"));
                        
                    $("#opt_urpp").val("1");
                    $('#api5l_urpp').attr('checked', 'checked');
                    load_nps_sel_urpp("5l");
                    load_grade_sel_urpp("gra5l");
                    load_defli_sel_urpp("dlt");
                    load_deratingf_sel_urpp();                    
                    load_joinf_sel_urpp("jointf5l");
                    load_desingf_sel_urpp();
                    
                });
                
              function load_deratingf_sel_urpp(){
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
                            var newHtml = "<select class=\"form-control\" name=\"td_sel_ma\" id=\"td_sel_ma\" onchange=\"onchange_df_urpp()\">" + data;
                            $("#div_td_sel_urpp").html(newHtml); 
                            
                            $("#temp_fact_urpp").val($("#td_sel_urpp").val().split(",")[1]);
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_ma"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                function load_form_urpp(id){
                    
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
                           // cleanAll_urpp();
                            block("Cargado datos...");
                        },
                        success: function(data, status, request){
                            if (data != null)
                            {
                                var tags = Object.keys(data.row);
                                
                                for(var i = 0; i < tags.length; i++){
                                    if(tags[i] != "date" && tags[i] != "id_proyect" && tags[i] != "id_user" && tags[i]!= "id" &&  tags[i]!="linepipe_urpp")
                                    {
                                       $("#" + tags[i]).val(data.row[tags[i]]);
                                    }
                                }
                                
                                if(data.row["linepipe_urpp"] == "api5l_urpp"){
                                    document.getElementById("api5l_urpp").checked = true; 
                                    load_grade_sel_urpp("gra5l");
                                    load_joinf_sel_urpp("jointf5l");
                                }else{//astm_urpp
                                    document.getElementById("astm_urpp").checked = true; 
                                    load_grade_sel_urpp("graastm");
                                    load_joinf_sel_urpp("jointf");
                                }
                                
                                $("#grade_sel_urpp").val(data.row["grade_sel_urpp"]);
                                $("#grade_urpp").val(data.row["grade_urpp"]);
                                
                                $("#jf_sel_urpp").val(data.row["jf_sel_urpp"]);
                                $("#jf_urpp").val(data.row["jf_urpp"]);
                                
                                $("#opt_urpp").val("2");
                                $("#id_urpp").val(data.row.id);
                            }else{
                                $("#opt_urpp").val("1");
                            }
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            $("#opt_urpp").val("1");
                            show_OkDialog($("#error_Dialog_urpp"), "Error");
                        },
                        complete: function(){
                           unBlock();
                        }
                    });
                }
                
                function load_in_sel_urpp(){
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
                            var newHtml = "<select class=\"form-control\" name=\"md_sel_urpp\" id= \"md_sel_urpp\" onchange=\"cleanOut_urpp()\">" + data;
                            $("#div_md_sel_urpp").html(newHtml);
                            
                            newHtml = "<select class=\"form-control\" name=\"pipeo_sel_urpp\" id= \"pipeo_sel_urpp\" onchange=\"cleanOut_urpp()\">" + data;
                            $("#div_pipeo_sel_urpp").html(newHtml);
                            
                            newHtml = "<select class=\"form-control\" name=\"np_sel_urpp\" id= \"np_sel_urpp\" onchange=\"cleanOut_urpp()\">" + data;
                            $("#div_np_sel_urpp").html(newHtml);
                            
                             newHtml = "<select class=\"form-control\" name=\"le_sel_urpp\" id= \"le_sel_urpp\" onchange=\"cleanOut_urpp()\">" + data;
                            $("#div_le_sel_urpp").html(newHtml);
                            
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_urpp"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function load_temp_sel_urpp(){
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
                            var newHtml = "<select class=\"form-control\" name=\"tempd_sel_urpp\" id= \"tempd_sel_urpp\" onchange=\"cleanOut_urpp()\">" + data;
                            $("#div_tempd_sel_urpp").html(newHtml);
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_urpp"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function load_nps_sel_urpp(type){
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
                            var newHtml = "<select class=\"form-control\" name=\"nominalps_sel_urpp\" id= \"nominalps_sel_urpp\" onchange=\"onchange_nps_urpp()\">" + data;
                            $("#div_nominalps_sel_urpp").html(newHtml);
                             var res =  $("#nominalps_sel_urpp option:selected").html();
                             $("#pipe_dia_urpp").val($("#nominalps_sel_urpp").val()); 
                            $("#nomout_pipeop_urpp").val($("#nominalps_sel_urpp").val());
                            load_wt_sel_urpp();
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_urpp"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                 function load_wt_sel_urpp(){
                var parametros = {
                    "combo": "wtn",
                    "nps": $("#nominalps_sel_urpp").val(),
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
                        var newHtml = "<select class=\"form-control\" name=\"wt_sel_urpp\" id= \"wt_sel_urpp\" onchange=\"onchange_wt_urpp()\">" + data;
                        $("#div_wt_sel_urpp").html(newHtml);                            
                        $("#pipe_wt_urpp").val($("#wt_sel_urpp").val().split(",")[1]);

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_urpp"), "Error");
                    },
                    complete: function(){
                        unBlock();
                    }
                 });
            }
                function load_press_sel_urpp(){
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
                            var newHtml = "<select class=\"form-control\" name=\"syms_sel_urpp\" id= \"syms_sel_urpp\" onchange=\"cleanOut_urpp()\">" + data;
                            $("#div_syms_sel_urpp").html(newHtml);  
                            
                            newHtml = "<select class=\"form-control\" name=\"mop_sel_urpp\" id= \"mop_sel_urpp\" onchange=\"cleanOut_urpp()\">" + data;
                            $("#div_mop_sel_urpp").html(newHtml);
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_urpp"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                 
                function load_deratingf_sel_urpp(){
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
                            var newHtml = "<select class=\"form-control\" name=\"td_sel_urpp\" id=\"td_sel_urpp\" onchange=\"onchange_df_urpp()\">" + data;
                            $("#div_td_sel_urpp").html(newHtml); 
                            $("#temp_pipeop_urpp").val($("#td_sel_urpp").val().split(",")[1]);
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_urpp"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function load_grade_sel_urpp(idcombo){
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
                            var newHtml = "<select class=\"form-control\" name=\"grade_sel_urpp\" id=\"grade_sel_urpp\" onchange=\"onchange_gra_urpp()\">" + data;
                            $("#div_grade_sel_urpp").html(newHtml); 
                            
                            var x = $("#grade_sel_urpp").val();
                            $("#min_yield_urpp").val(x.split(",")[1]);
                           /* var res =  $("#grade_sel_urpp option:selected").html();
                             $("#gra_pipeop_urpp").val(res); 
                             $("#yield_pipeop_urpp").val(x.split(",")[1]); */
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_urpp"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                 function load_defli_sel_urpp(idcombo){
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
                            var newHtml = "<select class=\"form-control\" name=\"defli_sel_urpp\" id=\"defli_sel_urpp\" onchange=\"onchange_defli_urpp()\">" + data;
                            $("#div_defli_sel_urpp").html(newHtml); 
                            
                            var x = $("#defli_sel_urpp").val();
                            $("#defl_lim_urpp").val(x.split(",")[1]);
                          
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_urpp"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function load_joinf_sel_urpp(idcombo){
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
                            var newHtml = "<select class=\"form-control\" name=\"longitudinal_jf_urpp\" id=\"longitudinal_jf_urpp\" onchange=\"onchange_jf_urpp()\">" + data;
                            $("#div_jf_sel_urpp").html(newHtml);
                            $("#long_fact_urpp").val($("#longitudinal_jf_urpp").val().split(",")[1]);
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_urpp"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function load_desingf_sel_urpp(){
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
                            var newHtml = "<select class=\"form-control\" name=\"design_factor_sel_urpp\" id=\"design_factor_sel_urpp\" onchange=\"onchange_defa_urpp()\">" + data;
                            $("#div_df_sel_urpp").html(newHtml); 
                            
                            var x = $("#design_factor_sel_urpp").val();
                            $("#fact_pipeop_urpp").val(x.split(",")[1]);
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_urpp"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                 function onchange_Input_urpp(inp){
                    
                    var sw = validateDecimal(inp.value);

                    if(sw != true){
                        inp.value = "";
                    }     
                    onchange_Input_zero(inp);
                   // cleanOut_urpp();
                    
                }
                
                function onchange_nps_urpp(){
                    var res =  $("#nominalps_sel_urpp option:selected").html();
                    $("#pipe_dia_urpp").val(res); 
                    $("#nomout_pipeop_urpp").val($("#nominalps_sel_urpp").val());
                    load_wt_sel_urpp();
                }
                
                function onchange_wt_urpp(){
                    $("#pipe_wt_urpp").val($("#wt_sel_urpp").val().split(",")[1]);
                }
                
                function onchange_gra_urpp(){
                    var x = $("#grade_sel_urpp").val();
                            $("#min_yield_urpp").val(x.split(",")[1]);
                           /* var res =  $("#grade_sel_urpp option:selected").html();
                             $("#gra_pipeop_urpp").val(x.split(",")[1]); */
                   // cleanOut_urpp();
                }
                function onchange_defli_urpp(){
                    var x = $("#defli_sel_urpp").val();
                            $("#defl_lim_urpp").val(x.split(",")[1]);
                           /* var res =  $("#grade_sel_urpp option:selected").html();
                             $("#gra_pipeop_urpp").val(x.split(",")[1]); */
                   // cleanOut_urpp();
                }
                
                function onchange_jf_urpp(){
                    $("#long_fact_urpp").val($("#longitudinal_jf_urpp").val().split(",")[1]);
                    //cleanOut_urpp();
                }
                
                function onchange_df_urpp(){
                    $("#temp_fact_urpp").val($("#td_sel_urpp").val().split(",")[1]);
                    //cleanOut_urpp();
                }
                
                function onchange_defa_urpp(){
                    $("#fact_pipeop_urpp").val($("#design_factor_sel_urpp").val().split(",")[1]);
                   // cleanOut_urpp();
                }
          
      </script>
  </body>
</html>