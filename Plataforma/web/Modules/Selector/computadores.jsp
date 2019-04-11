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
        <script src="https://cdn.plot.ly/plotly-latest.min.js"></script>
        <script src="../../js/jquery.js" type="text/JavaScript" ></script>
        <script src="../../js/jquery-ui/jquery-ui.js"></script>
        <script src="../../js/jquery-ui/external/blockui/jquery-blockui.js"></script>
        <script src="../../js/functions/formulasK.js"></script>
        <script src="../../js/functions/formulasM.js"></script>
        <script src="../../js/functions/functions.js"></script>
        <script src="../../js/jspdf/jspdf.min.js" type="text/JavaScript" > </script>
        <script src="../../js/jspdf/autotable.min.js" type="text/JavaScript" > </script>
        <script src="../../bower_components/morrisjs/morris.js"></script>
        <script src="../../dist/js/sb-admin-2.js"></script>
        <script src="../../bower_components/metisMenu/dist/metisMenu.min.js"></script>
        <script src="../../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
        <script src="../../bower_components/raphael/raphael-min.js"></script>
        <script src="../../js/dataTables/jquery.dataTables.js" type="text/javascript"></script>
        <link rel="stylesheet" href="../../js/jquery-ui/jquery-ui.css">
        <link rel="stylesheet" href="../../bower_components/morrisjs/morris.css">
        <link rel="stylesheet" href="../../bower_components/bootstrap/dist/css/bootstrap.min.css" />
        <link rel="stylesheet" href="../../bower_components/metisMenu/dist/metisMenu.min.css" />
        <link rel="stylesheet" href="../../dist/css/timeline.css" >
        <link rel="stylesheet" href="../../dist/css/sb-admin-2.css" >
        <link rel="stylesheet" href="../../bower_components/font-awesome/css/font-awesome.min.css" type="text/css">
        <link rel="stylesheet" href="../../css/dataTables/jquery.dataTables.min.css" type="text/css">
        <link rel="stylesheet" href="../../css/user-profiles-list-basic.css">
        <link rel="stylesheet" href="../../css/menu.css">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.13/css/jquery.dataTables.min.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/select/1.2.1/css/select.dataTables.min.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.2.4/css/buttons.dataTables.min.css">
    </head>

    <body>
        <div id="wrapper">
            <jsp:include page="../../allmenu.jsp"/>
            <div id="page-wrapper">
                <div id="content">
                    <div class="row">
                        <div class="col-lg-9">
                            <h2>This module selects the flow computers to be installed in natural gas transport and distribution applications</h2>
                        </div>
                        <div class="col-lg-3"> 

                            <!-- Button trigger modal -->
                            <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_com()">
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
                                            <div id="div-table_com"></div>
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
                            <input  class="form-control" type="text" id="description_com" name="description_com"><br>
                            Projects:
                            <select class="form-control" id="proyects_sel_com" name="proyects_sel_com"> </select>
                        </div>
                    </div>

                    <hr>


                    <div class="col-lg-9" id="div_datasheet_com" style="display:none">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Input
                            </div>
                            <div class="panel-body" > 
                                <div class="col-lg-12">
                                    <div class="form-group col-lg-12">
                                        <label>Enter the tag of the meter in accordance with the guidelines stipulated in ISA Standard 5.1 (Functional Component + Consecutive + Location) </label>
                                        <input  class="form-control" type="text" id="tag_com" name="tag_com">
                                    </div>
                                    <div class="form-group col-lg-12">
                                        <label>Choose the protocol or communication protocols you need to be available on the device </label>
                                        <div class="checkbox col-lg-12">
                                            <label><input id="checkpro_1_com" name ="checkpro_1_com" type="checkbox" value="RS - 232">RS - 232</label>
                                        </div>
                                        <div class="checkbox col-lg-12">
                                            <label><input id="checkpro_2_com" name ="checkpro_2_com" type="checkbox" value="RS - 323">RS - 323</label>
                                        </div>
                                        <div class="checkbox col-lg-12">
                                            <label><input id="checkpro_3_com" name ="checkpro_3_com" type="checkbox" value="RS - 485">RS - 485</label>
                                        </div>
                                        <div class="checkbox col-lg-12">
                                            <label><input id="checkpro_4_com" name ="checkpro_4_com" type="checkbox" value="Ethernet">Ethernet</label>
                                        </div>
                                        <div class="checkbox col-lg-12">
                                            <label><input id="checkpro_5_com" name ="checkpro_5_com" type="checkbox" value="">Otro</label>
                                            <input  class="form-control" type="text" id="otropro_com" name="otropro_com">
                                        </div>
                                    </div>
                                    <div class="form-group col-lg-12">
                                        <label>Select the communication ports that need to be incorporated into the equipment</label>
                                        <div class="checkbox col-lg-12">
                                            <label><input id="checkpuer_1_com" name ="checkpuer_1_com" type="checkbox" value="Modbus STD">Modbus STD</label>
                                        </div>
                                        <div class="checkbox col-lg-12">
                                            <label><input id="checkpuer_2_com" name ="checkpuer_2_com" type="checkbox" value="Modbus ASCII">Modbus ASCII</label>
                                        </div>
                                        <div class="checkbox col-lg-12">
                                            <label><input id="checkpuer_3_com" name ="checkpuer_3_com" type="checkbox" value="Bsap">Bsap</label>
                                        </div>
                                        <div class="checkbox col-lg-12">
                                            <label><input id="checkpuer_4_com" name ="checkpuer_4_com" type="checkbox" value="TCP-IP">TCP-IP</label>
                                        </div>
                                        <div class="checkbox col-lg-12">
                                            <label><input id="checkpuer_5_com" name ="checkpuer_5_com" type="checkbox" value="">Otro</label>
                                            <input  class="form-control" type="text" id="otropuer_com" name="otropuer_com">
                                        </div>
                                    </div>
                                    <div class="form-group col-lg-12">
                                        <label>Select the type of meter</label>
                                        <div class="checkbox col-lg-12">
                                            <label><input id="checkmed_1_com" name ="checkmed_1_com" type="checkbox" value="Rotary">Rotary</label>
                                        </div>
                                        <div class="checkbox col-lg-12">
                                            <label><input id="checkmed_2_com" name ="checkmed_2_com" type="checkbox" value="USM">Ultrasonico</label>
                                        </div>
                                        <div class="checkbox col-lg-12">
                                            <label><input id="checkmed_3_com" name ="checkmed_3_com" type="checkbox" value="Gas Turbine">Gas Turbine</label>
                                        </div>
                                        <div class="checkbox col-lg-12">
                                            <label><input id="checkmed_4_com" name ="checkmed_4_com" type="checkbox" value="Positive Displacement">Positive Displacement</label>
                                        </div>
                                        <div class="checkbox col-lg-12">
                                            <label><input id="checkmed_5_com" name ="checkmed_5_com" type="checkbox" value="Orifice Plate Tube">Orifice Plate Tube</label> 
                                        </div>
                                    </div>
                                    <div class="form-group col-lg-12">
                                        <div class="col-lg-12">
                                            <label>Line pressure</label>
                                        </div>
                                        <div class="col-md-8">
                                            <input  class="form-control" type="text" id="presion_com" name="presion_com">
                                        </div>
                                        <div class="col-md-4" id = "div_presion_sel_com">
                                            <select class="form-control" id="presion_sel_com" name="presion_sel_com" onchange="cleanOut_com()"> </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-lg-12">
                                        <div class="col-lg-12">
                                            <label>Maximum Flow </label>
                                        </div>
                                        <div class="col-md-8">
                                            <input  class="form-control" type="text" id="flujo_com" name="flujo_com">
                                        </div>
                                        <div class="col-md-4" id = "div_flujo_sel_com">
                                            <select class="form-control" id="flujo_sel_com" name="flujo_sel_com" onchange="cleanOut_com()"> </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-lg-12">
                                        <label>Include calculations according to AGA </label>
                                        <div class="checkbox col-lg-12">
                                            <label><input id="checkaga_1_com" name ="checkaga_1_com" type="checkbox" value="AGA 3">AGA 3</label>
                                        </div>
                                        <div class="checkbox col-lg-12">
                                            <label><input id="checkaga_2_com" name ="checkaga_2_com" type="checkbox" value="AGA 7">AGA 7</label>
                                        </div>
                                        <div class="checkbox col-lg-12">
                                            <label><input id="checkaga_3_com" name ="checkaga_3_com" type="checkbox" value="AGA 8">AGA 8</label>
                                        </div>
                                        <div class="checkbox col-lg-12">
                                            <label><input id="checkaga_4_com" name ="checkaga_4_com" type="checkbox" value="AGA 9">AGA 9</label>
                                        </div>
                                    </div>
                                    <div class="form-group col-lg-12">
                                        <label>PC cable</label>
                                        <div class="checkbox col-lg-12">
                                            <label><input id="checkcab_com" name ="checkcab_com" type="checkbox" value="">Cable para PC</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group col-lg-12">
                                    <div class="col-lg-12">
                                        <label>Cable length for solar panel</label>
                                    </div>
                                    <div class="col-md-8">
                                        <input  class="form-control" type="text" id="long_com" name="long_com">
                                    </div>
                                    <div class="col-md-4" id = "div_long_sel_com">
                                        <select class="form-control" id="long_sel_com" name="long_sel_com" onchange="cleanOut_com()"> 
                                            <option value="ft">ft</option>
                                        </select>
                                    </div>
                                </div>


                                
                            </div>
                        </div>
                    </div>
                    
                    <div class="row">

                    <div class="col-lg-9" id="div_datos_com">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Inputs
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                Select the producer
                                            </div>
                                            <div class="panel-body">       
                                                <div class="form-group">            
                                                    <div class="form-group col-md-12"> 
                                                        <label>Producer:</label>                                                        
                                                        <div id="div_fabricante_sel_com">
                                                            <select class="form-control" id="fabricante_sel_com" name="fabricante_sel_com" onchange="onchange_fab_com()"> </select>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group col-md-12"> 
                                                    <label>Model: </label>
                                                    <div id="div_modelo_sel_com">
                                                        <select class="form-control" id="modelo_sel_com" name="modelo_sel_com" onchange="onchange_mod_com()"> </select>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="panel-body" id="div_efm"> 
                                            <div class="form-group col-lg-12">                                    
                                                <label>Integral MVT Wet End DP URL</label>                                    
                                                <div id = "div_trans_sel_com">
                                                    <select class="form-control" id="trans_sel_com" name="trans_sel_com" > </select>
                                                </div>
                                            </div>
                                            <div class="form-group col-lg-12">
                                                <label>MVT Wet End</label>
                                                <div id = "div_ubtrans_sel_com">
                                                    <select class="form-control" id="ubtrans_sel_com" name="ubtrans_sel_com"> </select>
                                                </div>
                                            </div>
                                            <div class="form-group col-lg-12">
                                                <label>Integral Enclosure and LCD/Keypad:</label>
                                                <div id = "div_gbp_sel_com">
                                                    <select class="form-control" id="gbp_sel_com" name="gbp_sel_com"> </select>
                                                </div>
                                            </div>
                                            <div class="form-group col-lg-12">
                                                <label>Chassis, Processor and Control System:</label>                                    
                                                <div id = "div_cha_sel_com">
                                                    <select class="form-control" id="cha_sel_com" name="cha_sel_com" > </select>
                                                </div>
                                            </div>
                                            <div class="form-group col-lg-12">                                     
                                                <label>Application Program:</label>     
                                                <input  value="Standard" class="form-control" type="text" id="programa_com" name="programa_com" required><br>
                                            </div>
                                            <div class="form-group col-lg-12">
                                                <label>Power System:</label>                            
                                                <div id = "div_sa_sel_com">
                                                    <select class="form-control" id="sa_sel_com" name="sa_sel_com" > </select>
                                                </div>
                                            </div>
                                            <div class="form-group col-lg-12">
                                                <label>Hazardous Area Certification:</label>                            
                                                <div id = "div_cap_sel_com">
                                                    <select class="form-control" id="cap_sel_com" name="cap_sel_com" > </select>
                                                </div>
                                            </div>
                                            <div class="form-group col-lg-12">
                                                <label>Bendable RTD:</label>                            
                                                <div id = "div_rtd_sel_com">
                                                    <select class="form-control" id="rtd_sel_com" name="rtd_sel_com" > </select>
                                                </div>
                                            </div>
                                            <div class="form-group col-lg-12">
                                                <label>Thermowell Options for RTD:</label>                            
                                                <div id = "div_tp_sel_com">
                                                    <select class="form-control" id="tp_sel_com" name="tp_sel_com" > </select>
                                                </div>
                                            </div>
                                            <div class="form-group col-lg-12">
                                                <label>I/O Slot 3:</label>                            
                                                <div id = "div_s3_sel_com">
                                                    <select class="form-control" id="s3_sel_com" name="s3_sel_com" > </select>
                                                </div>
                                            </div>
                                            <div class="form-group col-lg-12">
                                                <label>I/O Slot 4:</label>                            
                                                <div id = "div_s4_sel_com">
                                                    <select class="form-control" id="s4_sel_com" name="s4_sel_com" > </select>
                                                </div>
                                            </div>
                                            <div class="form-group col-lg-12">
                                                <label>I/O Slot 5:</label>                            
                                                <div id = "div_s5_sel_com">
                                                    <select class="form-control" id="s5_sel_com" name="s5_sel_com" > </select>
                                                </div>
                                            </div>
                                            <div class="form-group col-lg-12">
                                                <label>I/O Slot 6:</label>                            
                                                <div id = "div_s6_sel_com">
                                                    <select class="form-control" id="s6_sel_com" name="s6_sel_com" > </select>
                                                </div>
                                            </div>
                                            <div class="form-group col-lg-12">
                                                <label>I/O Slot 7:</label>                            
                                                <div id = "div_s7_sel_com">
                                                    <select class="form-control" id="s7_sel_com" name="s7_sel_com" > </select>
                                                </div>
                                            </div>
                                            <div class="form-group col-lg-12">
                                                <label>I/O Slot 8:</label>                            
                                                <div id = "div_s8_sel_com">
                                                    <select class="form-control" id="s8_sel_com" name="s8_sel_com" > </select>
                                                </div>
                                            </div>
                                            <div class="form-group col-lg-12">
                                                <label>Switched Network Modem -- On Comm Expansion Module :</label>                            
                                                <div id = "div_mr_sel_com">
                                                    <select class="form-control" id="mr_sel_com" name="mr_sel_com" > </select>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="panel-body" id="div_gfc"> 
                                            <div class="form-group col-lg-12">
                                                <label>Integral Sensor Assembly - Either Gauge Pressure or DP/P:</label>                            
                                                <div id = "div_sie_sel_com">
                                                    <select class="form-control" id="sie_sel_com" name="sie_sel_com" > </select>
                                                </div>
                                            </div>
                                            <div class="form-group col-lg-12">                                    
                                                <label>DP/P Flange Orientation - Location of static pressure sensor:</label>                                    
                                                <div id = "div_us_sel_com">
                                                    <select class="form-control" id="us_sel_com" name="us_sel_com" > </select>
                                                </div>
                                            </div>
                                            <div class="form-group col-lg-12">
                                                <label>Integral Enclosure and LCD/Keypad </label>
                                                <div id = "div_gpt_sel_com">
                                                    <select class="form-control" id="gpt_sel_com" name="gpt_sel_com"> </select>
                                                </div>
                                            </div>
                                            <div class="form-group col-lg-12">
                                                <label>Mounting Hardware:</label>
                                                <div id = "div_mh_sel_com">
                                                    <select class="form-control" id="mh_sel_com" name="mh_sel_com"> </select>
                                                </div>
                                            </div>
                                            <div class="form-group col-lg-12">
                                                <label>Processor/Main Electronics Board Selection:</label>                                    
                                                <input value="Standard" class="form-control" type="text" id="pet_com" name="pet_com" required><br>
                                            </div>
                                            <div class="form-group col-lg-12">                                     
                                                <label>Application Program:</label>     
                                                <div id = "div_prog_sel_com">
                                                    <select class="form-control" id="prog_sel_com" name="prog_sel_com" > </select>
                                                </div>
                                            </div>
                                            <div class="form-group col-lg-12">
                                                <label>Power System:</label>                            
                                                <div id = "div_sag_sel_com">
                                                    <select class="form-control" id="sag_sel_com" name="sag_sel_com" > </select>
                                                </div>
                                            </div>
                                            <div class="form-group col-lg-12">
                                                <label>Hazardous Area Certification:</label>                            
                                                <div id = "div_capg_sel_com">
                                                    <select class="form-control" id="capg_sel_com" name="capg_sel_com" > </select>
                                                </div>
                                            </div>
                                            <div class="form-group col-lg-12">
                                                <label>Bendable RTD:</label>                            
                                                <div id = "div_rtdg_sel_com">
                                                    <select class="form-control" id="rtdg_sel_com" name="rtdg_sel_com" > </select>
                                                </div>
                                            </div>
                                            <div class="form-group col-lg-12">
                                                <label>Thermowell Options for RTD:</label>                            
                                                <div id = "div_tpg_sel_com">
                                                    <select class="form-control" id="tpg_sel_com" name="tpg_sel_com" > </select>
                                                </div>
                                            </div>                                    
                                            <div class="form-group col-lg-12">
                                                <label>I/O Configuration :</label>                            
                                                <div id = "div_cio_sel_com">
                                                    <select class="form-control" id="cio_sel_com" name="cio_sel_com" > </select>
                                                </div>
                                            </div>
                                            <div class="form-group col-lg-12">
                                                <label>Radio Cable/Mounting Hardware and Polyphaser Option :</label>                            
                                                <div id = "div_oppr_sel_com">
                                                    <select class="form-control" id="oppr_sel_com" name="oppr_sel_com" > </select>
                                                </div>
                                            </div>
                                            <div class="form-group col-lg-12">
                                                <label>Radio or Modem Option:</label>                            
                                                <div id = "div_oprm_sel_com">
                                                    <select class="form-control" id="oprm_sel_com" name="oprm_sel_com" > </select>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="panel-body" id="div_gfcc"> 
                                            <div class="form-group col-lg-12">
                                                <label>Gauge Pressure Sensors:</label>                            
                                                <div id = "div_siegc_sel_com">
                                                    <select class="form-control" id="siegc_sel_com" name="siegc_sel_com" > 
                                                        <option value="1">300 in H2O</option>
                                                        <option value="2">25 psig</option>
                                                        <option value="3">100 psig</option>
                                                        <option value="4">300 psig</option>
                                                        <option value="5">1000 psig</option>
                                                        <option value="6">2000 psig</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group col-lg-12">                                    
                                                <label>Integral Enclosure and LCD/Keypad</label>                                    
                                                <div id = "div_gbt_sel_com">
                                                    <select class="form-control" id="gbt_sel_com" name="gbt_sel_com" > 
                                                        <option value="1">7½” x 11¾” Lexan sólo con LCD y sin Botones</option>
                                                        <option value="2">7½” x 11¾” Lexan,con  LCD y  2 Botones.</option>
                                                        <option value="3">7½” x 11¾” Lexan,con  LCD y 25 Botones.</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group col-lg-12">
                                                <label>Mounting Hardware :</label>
                                                <div id = "div_mhgc_sel_com">
                                                    <select class="form-control" id="mhgc_sel_com" name="mhgc_sel_com"> 
                                                        <option value="1">Process Mount - No Extra Hardware is Included - for models with TeleCounter only</option>
                                                        <option value="2">Pole Mount - Includes wall-mount and 2” pole-mount Hardware</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group col-lg-12">
                                                <label>Processor/Main Electronics Board Selection:</label>                                    
                                                <input value="Standard" class="form-control" type="text" id="progc_com" name="progc_com" required><br>
                                            </div>
                                            <div class="form-group col-lg-12">                                     
                                                <label>Application Program:</label>   
                                                <input value="Standard" class="form-control" type="text" id="proga_com" name="proga_com" required><br>
                                            </div>
                                            <div class="form-group col-lg-12">
                                                <label>Power System :</label>                            
                                                <div id = "div_sagc_sel_com">
                                                    <select class="form-control" id="sagc_sel_com" name="sagc_sel_com" > 
                                                        <option value="1">Ninguno (Se requiere alimentación externa</option>
                                                        <option value="2">Batería  de litio de 7.2 V  tipo  Sencilla</option>
                                                        <option value="3">Batería  de litio de 7.2 V  tipo  Dual</option>
                                                        <option value="4">Celda de Bateria de carga acida 7 AH y 6V + Sistema de panel solar de 1 W</option>
                                                        <option value="5">Celda de Bateria de carga acida 7 AH y 6V + Sistema de panel solar de 6.5 W</option>
                                                        <option value="6">Celda de Bateria de carga acida 7 AH y 12V + Sistema de panel solar de 4.5 W</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group col-lg-12">
                                                <label>Hazardous Area Certification:</label>                            
                                                <div id = "div_capgc_sel_com">
                                                    <select class="form-control" id="capgc_sel_com" name="capgc_sel_com" > 
                                                        <option value="1">Ninguna - UL Class I, Division 2 at Component Level Only</option>
                                                        <option value="2">Class I, Division 2 (Sin Peligro de Incendio) </option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group col-lg-12">
                                                <label>Bendable RTD :</label>                            
                                                <div id = "div_rtdgc_sel_com">
                                                    <select class="form-control" id="rtdgc_sel_com" name="rtdgc_sel_com" > 
                                                        <option value="1">Ninguna </option>
                                                        <option value="2">Con RTD y Cable de 6 Ft de longitud.</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group col-lg-12">
                                                <label>Thermowell Options for RTD :</label>                            
                                                <div id = "div_tpgc_sel_com">
                                                    <select class="form-control" id="tpgc_sel_com" name="tpgc_sel_com" > 
                                                        <option value="1">Ninguna </option>
                                                        <option value="2">Con Termopozo e inserción de 2 1/2" de longitud.</option>
                                                        <option value="3">Con Termopozo e inserción de 4 1/2" de longitud. </option>
                                                        <option value="4">Con Termopozo e inserción de 7 1/2" de longitud. </option>
                                                    </select>
                                                </div>
                                            </div>                                    
                                            <div class="form-group col-lg-12">
                                                <label>I/O Configuration :</label>                            
                                                <div id = "div_ciogc_sel_com">
                                                    <select class="form-control" id="ciogc_sel_com" name="ciogc_sel_com" > 
                                                        <option value="1">Básica 2DI + PI (Pulse input).  Sin tarjetas </option>
                                                        <option value="2">2DI+ PI(PULSE INPUT)  + 2DI/DO, 4DI, 2DO, 2HSC</option>
                                                        <option value="3">2DI+ PI(PULSE INPUT)  + 2DI/DO, 4DI, 2DO, 2HSC + 3AI</option>
                                                        <option value="4">2DI+ PI(PULSE INPUT)  + 2DI/DO, 4DI, 2DO, 2HSC + 3AI + 1 AO</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group col-lg-12">
                                                <label>Radio Cable/Mounting Hardware and Polyphaser Option:</label>                            
                                                <div id = "div_cr_sel_com">
                                                    <select class="form-control" id="cr_sel_com" name="cr_sel_com" > 
                                                        <option value="1">Sin Radio </option>
                                                        <option value="2">Sin Polifasor</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group col-lg-12">
                                                <label>Proximity Sesnor and board interface:</label>                            
                                                <div id = "div_sp_sel_com">
                                                    <select class="form-control" id="sp_sel_com" name="sp_sel_com" > 
                                                        <option value="1">Ninguno</option>
                                                        <option value="2">Con sensor de Proximidad e interface en el tablero</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group col-lg-12">
                                                <label>Radio or Modem Option:</label>                            
                                                <div id = "div_oprmgc_sel_com">
                                                    <select class="form-control" id="oprmgc_sel_com" name="oprmgc_sel_com" > 
                                                        <option value="1">Ninguno</option>
                                                        <option value="2">Dial-line Modem</option>
                                                        <option value="3">Standard Freewave Radio All radios are located on the Radio Bracket in the flow computer enclosure.</option>
                                                        <option value="4">Standard Freewave Radio Ready</option>
                                                        <option value="5">Standard MDS Transnet Radio Standard Application Note: Works with either the modem or any radio.</option>
                                                        <option value="6">Standard Transnet Radio Ready </option>
                                                        <option value="7">Standard MDS 9810 Radio with Diag</option>
                                                        <option value="8">Standard MDS 4710A Radio with Diag</option>
                                                        <option value="9">Standard MDS 4710B Radio with Diag</option>
                                                        <option value="10">Standard MDS 9710A Radio with Diag</option>
                                                        <option value="11">Standard MDS 9710B Radio with Diag</option>
                                                        <option value="12">Standard MDS 4710 A/B, 9710 A/B, 9810 Radio Ready</option>
                                                        <option value="13">Standard MDS EntraNet 900 Radio (Serial Remote)</option>
                                                        <option value="14">Standard MDS EntraNet 900 Radio (Ethernet Remote)</option>
                                                        <option value="15">Standard MDS EntraNet 900 Radio (Access Point)</option>
                                                        <option value="16">Standard MDS EntraNet Radio Ready</option>
                                                        <option value="17">Standard MDS iNet 900 Radio (Remote Serial Gateway)</option>
                                                        <option value="18">Standard MDS iNet 900 Radio (Remote Ethernet Bridge)</option>
                                                        <option value="19">Standard MDS iNet 900 Radio (Access Point/Remote Dual Gateway) </option>
                                                        <option value="20">Standard MDS iNet 900 Radio Ready</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group col-lg-12">
                                                <label>Telecounter mounting kit:</label>                            
                                                <div id = "div_kit_sel_com">
                                                    <select class="form-control" id="kit_sel_com" name="kit_sel_com" > 
                                                        <option value="1">Ninguno</option>
                                                        <option value="2">Standard (Equimeter roots type)</option>
                                                        <option value="3">Tipo American Meter.</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group col-lg-12">
                                                <label>Telecounter blank digits:</label>                            
                                                <div id = "div_db_sel_com">
                                                    <select class="form-control" id="db_sel_com" name="db_sel_com" > 
                                                        <option value="1">Ninguno</option>
                                                        <option value="2">Primer Digito (Centenas)</option>
                                                        <option value="3">Seguno Digito (Unidades).</option>
                                                        <option value="4">Tercer Digito (Decenas)</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group col-lg-12">
                                                <label>Meter Flow Rate Index (Telecounter):</label>                            
                                                <div id = "div_ir_sel_com">
                                                    <select class="form-control" id="ir_sel_com" name="ir_sel_com" >  
                                                        <option value="1">Ninguno</option>
                                                        <option value="2">1 CF / REV</option>
                                                        <option value="3">5 CF / REV</option>
                                                        <option value="4">10 CF / REV</option>
                                                        <option value="5">100 CF / REV</option>
                                                        <option value="6">1000 CF / REV</option>
                                                        <option value="7">0.1 M3 / REV</option>
                                                        <option value="8">1 M3 / REV</option>
                                                        <option value="9">10 M3 / REV</option>
                                                        <option value="10">100 M3 / REV</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group col-lg-12">
                                                <label>Pulse meter assembly:</label>                            
                                                <div id = "div_ec_sel_com">
                                                    <select class="form-control" id="ec_sel_com" name="ec_sel_com" >
                                                        <option value="1">Ninguno</option>
                                                        <option value="2">Con índice horário (CW) </option>
                                                        <option value="3">Con índice antihorario (CCW)</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>

                                        <div id="div_xartu-1">
                                            <div class="panel-body" > 
                                                <div class="form-group col-lg-12">
                                                    <label>Input Power </label>
                                                    <textarea id="energia_com" class="form-control">
7-30 VDC. Dos Conectores de Baterías con conectores MTA. Una entrada de alimentación externa con terminales de tornillo. Una entrada de Paneles solares con terminales de tornillo.
                                                    </textarea>
                                                </div>

                                                <div class="form-group col-lg-12">
                                                    <label>Energy Options</label>
                                                    <textarea id="openergia_com" class="form-control">
Batería alcalina 7.8 AH 12V, Batería de Lithium 16.5 AH 14.4V, Batería de ácido 2.5 AH 12V recargable con panel solar de 1W
                                                    </textarea>
                                                </div>
                                                <div class="form-group col-lg-12">
                                                    <label>Back Up Batery</label>
                                                    <textarea id="bat_com" class="form-control">
Litio 3.6 VDC : 10 años backup para base datos e información histórica.
                                                    </textarea>
                                                </div>
                                                <div class="form-group col-lg-12">
                                                    <label>Processor</label>
                                                    <textarea id="procesador_com" class="form-control">
Phillips P51XAS3 de 16-bit de alto desempeño a 22.1184 MHz
                                                    </textarea>
                                                </div>
                                                <div class="form-group col-lg-12">
                                                    <label>Real Time Clock</label>
                                                    <textarea id="reloj_com" class="form-control">
Sostenido con batería de Back up, controlado por cristal al +/- 1 seg/día de exactitud.
                                                    </textarea>
                                                </div>
                                                <div class="form-group col-lg-12">
                                                    <label>Internal Inputs </label>
                                                    <textarea id="entra_com" class="form-control">
Una entrada para temperatura ambiente; una entrada para voltaje
                                                    </textarea>
                                                </div>
                                                <div class="form-group col-lg-12">
                                                    <label>Pulse Inputs</label>
                                                    <textarea id="entrapul_com" class="form-control">
Cuatro entradas para pulsos tipos A o C, programables para alta o baja velocidad.
                                                    </textarea>
                                                </div>
                                                <div class="form-group col-lg-12">
                                                    <label>Digital I/O’s </label>
                                                    <textarea id="ensaldig_com" class="form-control">
Cinco entradas/salidas digitales para múltiples propósitos
                                                    </textarea>
                                                </div>
                                                <div class="form-group col-lg-12">
                                                    <label>Analog Inputs</label>
                                                    <textarea id="entraana_com" class="form-control">
Seis entradas análogas de propósito múltiple, Resolución de 12-bit, muestreo análogo, software de calibración. Entrada nominal 0-5.12 Vdc. Resistencia de 250 ohm para 4-20 mA en cada canal.
                                                    </textarea>
                                                </div>
                                                <div class="form-group col-lg-12">
                                                    <label>RTD Inputs </label>
                                                    <textarea id="entratemp_com" class="form-control">
Dos entradas de 12-bit para transductores de temperatura externa; 3 cables compensados con coraza de aislamiento eléctrico; cuatro terminales por entrada.                                        </textarea>
                                                </div>
                                                <div class="form-group col-lg-12">
                                                    <label>Communications </label>
                                                    <textarea id="comuni_com" class="form-control">
Un modem 2400 bauds interna. Dos puertos seriales RS232 con/sin hardware handshake configurables hasta 115.200 bauds. Protocolo propietario y/o modbus simultáneo por los dos puertos. Compatible MV-90
                                                    </textarea>
                                                </div>
                                                <div class="form-group col-lg-12">
                                                    <label>Status LED </label>
                                                    <textarea id="led_com" class="form-control">
Un led programable para indicación de diferentes estados.
                                                    </textarea>
                                                </div>
                                                <div class="form-group col-lg-12">
                                                    <label>Expansion Capability</label>
                                                    <textarea id="capaexp_com" class="form-control">
Permite el monitoreo de 6 presiones en total, entrada de pulsos baja o alta frecuencia de dos medidores, todo esto en la configuración Standard. Con accesorios adicionales es posible el monitoreo de una alta cantidad de presiones, temperaturas y 6 puertos adicionales RS232 de comunicación.                                        
                                                    </textarea>
                                                </div>
                                                <div class="form-group col-lg-12">
                                                    <label>Warranty </label>
                                                    <textarea id="garantia_com" class="form-control">
Cuatro años en todos los componentes fabricados por Tagle Research.
                                                    </textarea>
                                                </div>
                                            </div>
                                            <div class="panel panel-default">
                                                <div class="panel-heading">
                                                    Transducers/Sensors Accuracy Specifications 
                                                </div>
                                                <div class="panel-body">       
                                                    <div class="form-group col-lg-12">
                                                        <label>Pressure Transducer </label>
                                                        <textarea id="trans_com" class="form-control" rows="1">Exactitud: ± 0.25% FS incluyendo todos los efectos externos desde -20º F a +140º F</textarea>
                                                    </div>
                                                    <div class="form-group col-lg-12">
                                                        <label> RTD Sensor </label>
                                                        <textarea id="sentem_com" class="form-control" rows="1">Exactitud: ±1°F</textarea>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div id="div_xartu-5">
                                            <div class="panel-body" > 
                                                <div class="form-group col-lg-12">
                                                    <label>Input Power </label>
                                                    <textarea id="entener_com" class="form-control">9-30 VDC</textarea>
                                                </div>

                                                <div class="form-group col-lg-12">
                                                    <label>5 (VCC) Volt Supply</label>
                                                    <textarea id="fuente_com" class="form-control">
5V @ 500mA máximo, fuente de la conmutación de la eficacia alta</textarea>
                                                </div>
                                                <div class="form-group col-lg-12">
                                                    <label>Analog Supplies </label>
                                                    <textarea id="sumiana_com" class="form-control">Potencia de bucle del transmisor aislado de 24 VCC opcional, salida de 400 mA</textarea>
                                                </div>
                                                <div class="form-group col-lg-12">
                                                    <label>Power Monitoring</label>
                                                    <textarea id="moniener_com" class="form-control">Monitorización del voltaje de alimentación a / d con interrupción de baja tensión de alimentación</textarea>
                                                </div>
                                                <div class="form-group col-lg-12">
                                                    <label>Backup Battery </label>
                                                    <textarea id="batreser_com" class="form-control">Batería de reserva de litio 3.6V: 10 años de copia de seguridad típica de la base de datos y la hora / fecha durante
Uso normal; Baja detección de voltaje de la batería de reserva</textarea>
                                                </div>
                                                <div class="form-group col-lg-12">
                                                    <label>Processor </label>
                                                    <textarea id="proce_com" class="form-control">Phillips P51XAS3 microcontrolador de alto rendimiento de 16 bits funcionando a 24.576 Mhz</textarea>
                                                </div>
                                                <div class="form-group col-lg-12">
                                                    <label>Memory</label>
                                                    <textarea id="memoria_com" class="form-control">512K x 16 memoria de programa FLASH remotamente programable; 512 x 16 batería respaldada
Memoria de datos RAM.</textarea>
                                                </div>
                                                <div class="form-group col-lg-12">
                                                    <label>Real Time Clock</label>
                                                    <textarea id="relojtr_com" class="form-control">Batería respaldada, cristal de cuarzo controlado; +/- 1 seg / día exactitud típica; Programable
Tiempo de interrupción programada</textarea>
                                                </div>
                                                <div class="form-group col-lg-12">
                                                    <label>Pulse Inputs </label>
                                                    <textarea id="entrapuls_com" class="form-control">
Ocho (8) entradas de pulso, software programable para el Formulario A o C; Alta o baja velocidad. Cada contador es un contador de hardware de seis dígitos (0-999999) con soporte de interrupción programable. Medición de ancho de pulso de precisión es soportada utilizando el módulo de matriz de contador programable en el microcontrolador P51XAS3. Puede usarse para la acumulación de pulso simple, y para aplicaciones más complejas como lectores de tarjetas</textarea>
                                                </div>
                                                <div class="form-group col-lg-12">
                                                    <label>Digital I/O’s </label>
                                                    <textarea id="entrasaldig_com" class="form-control">Treinta y dos (32) líneas digitales de E / S mapeadas en memoria programables en grupos de ocho como entrada o salida. Las salidas digitales pueden configurarse como simples salidas discretas o como salidas de impulsos temporizadas con precisión.</textarea>
                                                </div>
                                                <div class="form-group col-lg-12">
                                                    <label>Analog Inputs </label>
                                                    <textarea id="entraanal_com" class="form-control">
Resolución de 16 bits, máx. +/- 3 LSB error de linealidad integral, software calibrado; 16 canales, solo terminado con flotante común. Rango nominal de entrada 0-5 V con +/- 4% sobre-rango medible. Posibilidad de configuración diferencial opcional de 8 canales. Impedancia de entrada mayor que 100M</textarea>
                                                </div>                                     
                                                <div class="form-group col-lg-12">
                                                    <label>Communications </label>
                                                    <textarea id="comunica_com" class="form-control">Dos puertos RS-232 con señales Rx, Tx, RTS, CTS y CMSW. Velocidad máxima 38.400 bps. Directamente interfaces a módems, radios, etc. Protocolos de comunicación seleccionables por puerto: Eagle HEXASCII, Modbus, Teledyne / Geotech, Valmet - otros a petición.</textarea>
                                                </div>
                                                <div class="form-group col-lg-12">
                                                    <label>Status LED </label>
                                                    <textarea id="ledestado_com" class="form-control">Dos LED; Uno rojo y otro verde para información de estado visual. Software controlable para diversas indicaciones de funcionamiento</textarea>
                                                </div>
                                                <div class="form-group col-lg-12">
                                                    <label>Expansion Capability</label>
                                                    <textarea id="capaexpa_com" class="form-control">
Dos conectores de 50 posiciones proporcionan acceso a todas las líneas de Entrada / Salida. Esto permite que la tarjeta del procesador SBC20 sea conectada directamente a las tarjetas de terminación de la familia compatibles. Los conectores adicionales proporcionan puntos de terminación redundantes para permitir flexibilidad de configuración. Dos conectores de 10 posiciones permiten la expansión a través del bus de comunicación i2c; Dos conectores de 6 posiciones para RS-232; Y un conector de 3 posiciones para la potencia de entrada.</textarea>
                                                </div>
                                            </div>
                                            <div class="panel panel-default">
                                                <div class="panel-heading">
                                                    Accuracy Specifications
                                                </div>
                                                <div class="panel-body">       
                                                    <div class="form-group col-lg-12">
                                                        <label>Analog to Digital (A/D)</label>
                                                        <textarea id="analogdig_com" class="form-control" rows="1">16 Bit</textarea>
                                                    </div>
                                                    <div class="form-group col-lg-12">
                                                        <label>IEEE</label>
                                                        <textarea id="ieee_com" class="form-control" rows="1">754 Formato de punto flotante de precisión simple</textarea>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>                
                    </div>

                    <div class="col-lg-3" id="div_op1_com">

                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Opciones
                            </div>
                            <div class="panel-body">
                                <div class="row">

                                    <div class="col-lg-12">

                                        <input type="button" id="saveBtn_com" name="saveBtn_com" value="Save" onclick="save_com()" class="btn btn-success btn-block">   
                                        <input type="button" id="delteBtn_com" name="delteBtn_com" value="Delete" onclick="delete_com()" class="btn btn-danger btn-block">
                                        <input type="button" id="datasheetgen_com" name="datasheetgen_com" value="Generate DataSheet" onclick="load_datasheet_com()" class="btn btn-success btn-block">    


                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    </div>

                    <div class="col-lg-3" id="div_op2_com" style="display:none">

                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Opciones
                            </div>
                            <div class="panel-body">
                                <div class="row">

                                    <div class="col-lg-12">
                                        <input type="button" id="volverBtn_com" name="volverBtn_com" value="Go Back" onclick="volver_com()" class="btn btn-info btn-block">                           
                                        <input type="button" id="descargar_com" name="descargar_com" value="Download" onclick="gen_datasheet_com()" class="btn btn-success btn-block">    


                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="load_Dialog_com" title="Basic dialog" style='display:none;'>
                        <p>Successfully uploaded data</p>
                    </div>

                    <div id="save_Dialog_com" title="Basic dialog" style='display:none;'>
                        <p>Data saved successfully</p>
                    </div>

                    <div id="error_Dialog_com" title="Basic dialog" style='display:none;'>
                        <p>An error has occurred in the process</p>
                    </div>

                    <div id="delete_Dialog_com" title="Basic dialog" style='display:none;'>
                        <p>Successfully deleted record</p>
                    </div>

                    <div id="dialog-confirm_com" title="Delete record" style='display:none;'>
                        <p><span class="ui-icon ui-icon-alert" style="float:left; margin:12px 12px 20px 0;"></span>
                            Are you sure you want to permanently delete this record?
                        </p>
                    </div>
                    <input type="hidden" id="id_com" name="id_com">  
                    <input type="hidden" id="opt_com" name="opt_com">
                </div>
            </div>
        </div>

        <script>

            $(document).ready(function () {
                $("#opt_com").val("1");
                getproyectos(<%=session.getAttribute("idusu")%>,
                        $("#proyects_sel_com"),
                        $("#error_Dialog_com"));
                load_fabricante_com();
                load_trans_com();
                load_ubtrans_com();
                load_gab_com();
                load_chas_com();
                load_sial_com();
                load_cap_com();
                load_srtd_com();
                load_trtd_com();
                load_s3_com();
                load_s4_com();
                load_s5_com();
                load_s6_com();
                load_s7_com();
                load_s8_com();
                load_mr_com();

                load_sie_com();
                load_us_com();
                load_gpt_com();
                load_mh_com();
                load_pro_com();
                load_sag_com();
                load_capg_com();
                load_rtd_com();
                load_tpg_com();
                load_cio_com();
                load_oppr_com();
                load_oprm_com();
                load_flowr_sel_com();
                load_press_sel_com();

            });

            function onchange_mod_com() {

                //document.getElementById('div_datasheet_com').style.display = 'none';
                document.getElementById('div_gfc').style.display = 'none';
                document.getElementById('div_efm').style.display = 'none';
                document.getElementById('div_gfcc').style.display = 'none';

                document.getElementById('div_xartu-1').style.display = 'none';
                document.getElementById('div_xartu-5').style.display = 'none';

                var mod = $("#modelo_sel_com").val().split(",")[1];

                document.getElementById('div_' + mod).style.display = 'block';
            }

            function load_oprm_com() {
                var parametros = {
                    "combo": 'oprmcom',
                    "opcion": "5"
                };
                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    async: false,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {

                        var newHtml = "<select class=\"form-control\" name=\"oprm_sel_com\" id= \"oprm_sel_com\" >" + data;
                        $("#div_oprm_sel_com").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_com"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });


            }

            function load_oppr_com() {
                var parametros = {
                    "combo": 'opprcom',
                    "opcion": "5"
                };
                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    async: false,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {

                        var newHtml = "<select class=\"form-control\" name=\"oppr_sel_com\" id= \"oppr_sel_com\" >" + data;
                        $("#div_oppr_sel_com").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_com"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });


            }

            function load_cio_com() {
                var parametros = {
                    "combo": 'ciocom',
                    "opcion": "5"
                };
                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    async: false,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {

                        var newHtml = "<select class=\"form-control\" name=\"cio_sel_com\" id= \"cio_sel_com\" >" + data;
                        $("#div_cio_sel_com").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_com"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });


            }

            function load_tpg_com() {
                var parametros = {
                    "combo": 'tpgcom',
                    "opcion": "5"
                };
                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    async: false,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {

                        var newHtml = "<select class=\"form-control\" name=\"tpg_sel_com\" id= \"tpg_sel_com\" >" + data;
                        $("#div_tpg_sel_com").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_com"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });


            }

            function load_rtd_com() {
                var parametros = {
                    "combo": 'rtdgcom',
                    "opcion": "5"
                };
                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    async: false,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {

                        var newHtml = "<select class=\"form-control\" name=\"rtdg_sel_com\" id= \"rtdg_sel_com\" >" + data;
                        $("#div_rtdg_sel_com").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_com"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });


            }

            function load_capg_com() {
                var parametros = {
                    "combo": 'capgcom',
                    "opcion": "5"
                };
                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    async: false,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {

                        var newHtml = "<select class=\"form-control\" name=\"capg_sel_com\" id= \"capg_sel_com\" >" + data;
                        $("#div_capg_sel_com").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_com"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });


            }

            function load_pro_com() {
                var parametros = {
                    "combo": 'progcom',
                    "opcion": "5"
                };
                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    async: false,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {

                        var newHtml = "<select class=\"form-control\" name=\"prog_sel_com\" id= \"prog_sel_com\" >" + data;
                        $("#div_prog_sel_com").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_com"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });


            }

            function load_sag_com() {
                var parametros = {
                    "combo": 'sagcom',
                    "opcion": "5"
                };
                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    async: false,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {

                        var newHtml = "<select class=\"form-control\" name=\"sag_sel_com\" id= \"sag_sel_com\" >" + data;
                        $("#div_sag_sel_com").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_com"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });


            }

            function load_mh_com() {
                var parametros = {
                    "combo": 'mhcom',
                    "opcion": "5"
                };
                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    async: false,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {

                        var newHtml = "<select class=\"form-control\" name=\"mh_sel_com\" id= \"mh_sel_com\" >" + data;
                        $("#div_mh_sel_com").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_com"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });


            }

            function load_gpt_com() {
                var parametros = {
                    "combo": 'gptcom',
                    "opcion": "5"
                };
                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    async: false,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {

                        var newHtml = "<select class=\"form-control\" name=\"gpt_sel_com\" id= \"gpt_sel_com\" >" + data;
                        $("#div_gpt_sel_com").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_com"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });


            }

            function load_sie_com() {
                var parametros = {
                    "combo": 'siecom',
                    "opcion": "5"
                };
                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    async: false,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {

                        var newHtml = "<select class=\"form-control\" name=\"sie_sel_com\" id= \"sie_sel_com\" >" + data;
                        $("#div_sie_sel_com").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_com"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });


            }

            function load_us_com() {
                var parametros = {
                    "combo": 'uscom',
                    "opcion": "5"
                };
                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    async: false,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {

                        var newHtml = "<select class=\"form-control\" name=\"us_sel_com\" id= \"us_sel_com\" >" + data;
                        $("#div_us_sel_com").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_com"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });


            }

            
            function load_mr_com() {
                var parametros = {
                    "combo": 'mrcom',
                    "opcion": "5"
                };
                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    async: false,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {

                        var newHtml = "<select class=\"form-control\" name=\"mr_sel_com\" id= \"mr_sel_com\" >" + data;
                        $("#div_mr_sel_com").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_com"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });


            }


            function load_s3_com() {
                var parametros = {
                    "combo": 's3com',
                    "opcion": "5"
                };
                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    async: false,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {

                        var newHtml = "<select class=\"form-control\" name=\"s3_sel_com\" id= \"s3_sel_com\" >" + data;
                        $("#div_s3_sel_com").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_com"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });


            }

            function load_s4_com() {
                var parametros = {
                    "combo": 's4com',
                    "opcion": "5"
                };
                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    async: false,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {

                        var newHtml = "<select class=\"form-control\" name=\"s4_sel_com\" id= \"s4_sel_com\" >" + data;
                        $("#div_s4_sel_com").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_com"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });


            }

            function load_s5_com() {
                var parametros = {
                    "combo": 's5com',
                    "opcion": "5"
                };
                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    async: false,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {

                        var newHtml = "<select class=\"form-control\" name=\"s5_sel_com\" id= \"s5_sel_com\" >" + data;
                        $("#div_s5_sel_com").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_com"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });


            }

            function load_s6_com() {
                var parametros = {
                    "combo": 's6com',
                    "opcion": "5"
                };
                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    async: false,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {

                        var newHtml = "<select class=\"form-control\" name=\"s6_sel_com\" id= \"s6_sel_com\" >" + data;
                        $("#div_s6_sel_com").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_com"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });


            }

            function load_s7_com() {
                var parametros = {
                    "combo": 's7com',
                    "opcion": "5"
                };
                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    async: false,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {

                        var newHtml = "<select class=\"form-control\" name=\"s7_sel_com\" id= \"s7_sel_com\" >" + data;
                        $("#div_s7_sel_com").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_com"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });


            }

            function load_s8_com() {
                var parametros = {
                    "combo": 's8com',
                    "opcion": "5"
                };
                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    async: false,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {

                        var newHtml = "<select class=\"form-control\" name=\"s8_sel_com\" id= \"s8_sel_com\" >" + data;
                        $("#div_s8_sel_com").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_com"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });


            }

            
            function load_trtd_com() {
                var parametros = {
                    "combo": 'trtdcom',
                    "opcion": "5"
                };
                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    async: false,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {

                        var newHtml = "<select class=\"form-control\" name=\"tp_sel_com\" id= \"tp_sel_com\" >" + data;
                        $("#div_tp_sel_com").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_com"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });


            }

            function load_srtd_com() {
                var parametros = {
                    "combo": 'srtdcom',
                    "opcion": "5"
                };
                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    async: false,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {

                        var newHtml = "<select class=\"form-control\" name=\"rtd_sel_com\" id= \"rtd_sel_com\" >" + data;
                        $("#div_rtd_sel_com").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_com"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });


            }

            function load_cap_com() {
                var parametros = {
                    "combo": 'capcom',
                    "opcion": "5"
                };
                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    async: false,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {

                        var newHtml = "<select class=\"form-control\" name=\"cap_sel_com\" id= \"cap_sel_com\" >" + data;
                        $("#div_cap_sel_com").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_com"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });


            }

            function load_sial_com() {
                var parametros = {
                    "combo": 'sialcom',
                    "opcion": "5"
                };
                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    async: false,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {

                        var newHtml = "<select class=\"form-control\" name=\"sa_sel_com\" id= \"sa_sel_com\" >" + data;
                        $("#div_sa_sel_com").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_com"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });


            }

            function load_chas_com() {
                var parametros = {
                    "combo": 'chascom',
                    "opcion": "5"
                };
                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    async: false,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {

                        var newHtml = "<select class=\"form-control\" name=\"cha_sel_com\" id= \"cha_sel_com\" >" + data;
                        $("#div_cha_sel_com").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_com"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });


            }

            function load_fabricante_com() {
                var parametros = {
                    "combo": 'compf',
                    "opcion": "5"
                };
                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    async: false,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {

                        var newHtml = "<select class=\"form-control\" name=\"fabricante_sel_com\" id= \"fabricante_sel_com\" onchange=\"onchange_fab_com()\">" + data;
                        $("#div_fabricante_sel_com").html(newHtml);

                        onchange_fab_com();
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_com"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });


            }

            function load_trans_com() {
                var parametros = {
                    "combo": 'tranefm',
                    "opcion": "5"
                };
                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    async: false,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {

                        var newHtml = "<select class=\"form-control\" name=\"trans_sel_com\" id= \"trans_sel_com\" >" + data;
                        $("#div_trans_sel_com").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_com"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });


            }

            function load_ubtrans_com() {
                var parametros = {
                    "combo": 'ubtrans',
                    "opcion": "5"
                };
                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    async: false,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {

                        var newHtml = "<select class=\"form-control\" name=\"ubtrans_sel_com\" id= \"ubtrans_sel_com\" >" + data;
                        $("#div_ubtrans_sel_com").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_com"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });


            }

            function load_gab_com() {
                var parametros = {
                    "combo": 'gabcom',
                    "opcion": "5"
                };
                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    async: false,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {

                        var newHtml = "<select class=\"form-control\" name=\"gbp_sel_com\" id= \"gbp_sel_com\" >" + data;
                        $("#div_gbp_sel_com").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_com"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });


            }

            function onchange_fab_com() {

                var fab = "";
                if ($("#fabricante_sel_com").val() == "1292,bristol") {
                    fab = "bristol";
                } else {
                    fab = "eagle";
                }

                var parametros = {
                    "combo": fab,
                    "opcion": "5"
                };
                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    async: false,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        var newHtml = "<select class=\"form-control\" name=\"modelo_sel_com\" id=\"modelo_sel_com\" onchange=\"onchange_mod_com()\" >" + data;
                        $("#div_modelo_sel_com").html(newHtml);

                        onchange_mod_com();
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_com"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_history_com() {
                var parametros = {
                    "idproyect": $("#proyects_sel_com").val(),
                    "iduser": <% out.print(session.getAttribute("idusu"));%>,
                    "opcion": "6",
                    "nombre": "historial",
                    "from": "com"
                };

                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    dataType: 'json',
                    async: false,
                    beforeSend: function (xhr) {
                        $("#opt_com").val("1");
                        $("#id_com").val("");
                        block("Cargado datos...");
                    },
                    success: function (data, status, request) {

                        if (data !== null) {
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
                            if (tamano > 0) {

                                html += '<tbody>';
                                for (var i = 0; i < tamano; i++) {
                                    html += "<tr>";
                                    html += "<td>" + data.historial[i].date + "</td>";
                                    html += "<td>" + data.historial[i].description_com + "</td>";
                                    html += "<td><a href='#' onClick=\"load_form_com(" + data.historial[i].id + ")\"><span class='glyphicon glyphicon-plus' aria-hidden='true'></span></a></td>";
                                    html += "<tr>";

                                }
                                html += '</tbody>';
                            } else {
                                html += '<p>No records available.</p>';
                            }
                            html += "</table><br><br>";

                        } else {
                            html = '<p>No records available.</p>';
                        }
                        $("#div-table_com").empty();
                        $("#div-table_com").html(html);

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_com"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_form_com(id) {

                var parametros = {
                    "id": id,
                    "opcion": "4",
                    "from": "com"
                };

                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    dataType: 'json',
                    beforeSend: function (xhr) {
                        block("Cargado datos...");
                    },
                    success: function (data, status, request) {
                        if (data != null)
                        {
                            var tags = Object.keys(data.row);

                            for (var i = 0; i < tags.length; i++) {
                                $("#" + tags[i]).val(data.row[tags[i]]);
                            }

                            onchange_fab_com();
                            $("#modelo_sel_com").val(data.row["modelo_sel_com"]);
                            onchange_mod_com();

                            $("#proyects_sel_com").val(data.row["id_proyect"]);
                            $("#opt_com").val("2");
                            $("#id_com").val(data.row.id);
                        } else {
                            $("#opt_com").val("1");
                        }

                    },
                    error: function (xhr, ajaxOptions, err) {
                        $("#opt_com").val("1");
                        show_OkDialog($("#error_Dialog_com"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function get_protocols_com() {

                var res = "";
                $("input[name^='checkpro']").each(function () {
                    if ($(this).prop('checked')) {
                        res += " / " + $(this).val();
                    }
                });

                if (document.getElementById("checkpro_5_com").checked === true) {
                    res += " / " + $("#otropro_com").val();
                }


                return res;
            }
            
            function get_ioefm_com(){
                return $('#s3_sel_com option:selected').html() + " / " + 
                       $('#s4_sel_com option:selected').html() + " / " + 
                       $('#s5_sel_com option:selected').html() + " / " + 
                       $('#s6_sel_com option:selected').html() + " / " + 
                       $('#s7_sel_com option:selected').html() + " / " + 
                       $('#s8_sel_com option:selected').html();
            }

            function get_connec_com() {

                var res = "";
                $("input[name^='checkpuer']").each(function () {
                    if ($(this).prop('checked')) {
                        res += " / " + $(this).val();
                    }
                });

                if (document.getElementById("checkpuer_5_com").checked === true) {
                    res += " / " + $("#otropuer_com").val();
                }

                return res;
            }

            function get_medidores_com() {

                var res = "";
                $("input[name^='checkmed']").each(function () {
                    if ($(this).prop('checked')) {
                        res += " / " + $(this).val();
                    }
                });


                return res;
            }

            function get_linep_com() {

                var value = parseFloat($("#presion_com").val());
                var med = $("#presion_sel_com").val().split(",")[1];
                
                var res = get_Pres(value, 0, med, "psig");
                

                if (res == null) {
                    return 0;
                }
                
                
                return res;
            }

            function get_aga_com() {

                var res = "";
                $("input[name^='checkaga']").each(function () {
                    if ($(this).prop('checked')) {
                        res += " / " + $(this).val();
                    }
                });

                return res;
            }

            

            function get_cable_com() {

                if (document.getElementById("checkcab_com").checked == true) {
                    return "YES";
                } else {
                    return "NO";
                }
            }

            function get_modelo_com() {

                if ($("#modelo_sel_com").val() == "1296,gfc") {
                    return $("#oppr_sel_com option:selected").text();
                } else { //1298,gfcc
                    return $("#cr_sel_com option:selected").text();
                }
            }

            function get_aprog_com() {

                if ($("#modelo_sel_com").val() == "1296,gfc") {
                    return $("#prog_sel_com option:selected").text();
                } else if ($("#modelo_sel_com").val() == "1297,efm") {
                    return $("#programa_com").val();
                } else { //1298,gfcc
                    return $("#proga_com").val();
                }
            }

            /*
             function calculate_com(){
             
             var variables = {
             "modelo" : $("#modelo_sel_com" ).val()
             };
             
             var vari1 = {
             "abc" : $("#trans_sel_com" ).val().split(",")[1],
             "d" : $("#ubtrans_sel_com" ).val().split(",")[1],
             "e" : $("#gbp_sel_com" ).val().split(",")[1],
             "f" : $("#cha_sel_com" ).val().split(",")[1],
             "gh" : $("#programa_com" ).val().split(",")[1],
             "j" : $("#sa_sel_com" ).val().split(",")[1],
             "k" : $("#cap_sel_com" ).val().split(",")[1],
             "l" : $("#rtd_sel_com" ).val().split(",")[1],
             "m" : $("#tp_sel_com" ).val().split(",")[1],
             "n" : $("#sav_sel_com" ).val().split(",")[1],
             "op" : $("#s3_sel_com" ).val().split(",")[1],
             "qr" : $("#s4_sel_com" ).val().split(",")[1],
             "q1" : $("#s5_sel_com" ).val().split(",")[1],
             "q2" : $("#s6_sel_com" ).val().split(",")[1],
             "q3" : $("#s7_sel_com" ).val().split(",")[1],
             "q4" : $("#s8_sel_com" ).val().split(",")[1],
             "s" : $("#tde_sel_com" ).val().split(",")[1],
             "t" : $("#tr_sel_com" ).val().split(",")[1],
             "u" : $("#mr_sel_com" ).val().split(",")[1],
             "v" : $("#pr_sel_com" ).val().split(",")[1],
             "wxy" : $("#opr_sel_com" ).val().split(",")[1]
             
             };
             
             var isOk = validate(variables);
             
             if(isOk === false){
             alert("You must complete all fields");
             }else{
             
             
             var unidades = {
             
             
             
             };
             
             var res = computadores_Form(variables, unidades);
             
             $("#referencia_com").val(res);
             
             show_OkDialog($("#calculate_Dialog_dgv"), "Satisfactory process");
             }
             }
             */


            function gen_datasheet_com() {

                var parametros = {
                    "opcion": "102",
                    "iduser": <% out.print(session.getAttribute("idusu"));%>,
                    "proyecto": $("#proyects_sel_com option:selected").text(),
                    "protocols": get_protocols_com(),
                    "connec": get_connec_com(),
                    "medidores": get_medidores_com(),
                    "linep": get_linep_com(),
                    "flujo": $("#flujo_com").val(),
                    "flujo_uni": $("#flujo_sel_com").val().split(",")[1],
                    "aga": get_aga_com(),
                    "long": $("#long_com").val(),
                    "tag_com": $("#tag_com").val(),
                    "cable": get_cable_com(),
                    "modelo": get_modelo_com(),
                    "programa": get_aprog_com(),
                    "mvt": $('#ubtrans_sel_com option:selected').html(),
                    "powers": $('#sa_sel_com option:selected').html(),
                    "hazardous": $('#cap_sel_com option:selected').html(),
                    "chassis": $('#cha_sel_com option:selected').html(),
                    "rtd": $("#rtd_sel_com").val(),    
                    
                    "trtd": $('#tpg_sel_com option:selected').html(),
                    "ioconf": $('#cio_sel_com option:selected').html(),
                    "rcable": $('#cr_sel_com option:selected').html(),
                    "prox": $('#sp_sel_com option:selected').html(),
                    "rmodem": $('#oprm_sel_com option:selected').html(),                    
                    "tkit": $('#kit_sel_com option:selected').html(),                   
                    "tblank": $('#db_sel_com option:selected').html(),                 
                    "meterf": $('#ir_sel_com option:selected').html(),                 
                    "snetwork": $('#mr_sel_com option:selected').html(),
                    
                    "producer": $('#fabricante_sel_com option:selected').html(),
                    "model": $('#modelo_sel_com option:selected').html(),
                    "optmodel": $('#modelo_sel_com').val(),
                    
                    "integral": $('#gbp_sel_com option:selected').html(),
                    
                    "ioefm": get_ioefm_com(),
                    
                    
                    
                    
            
                    
                    "from": "com"

                };
                
                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    async: false,
                    dataType: "json",
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {

                        alert("Successfully generated file");
                        var file = data.row.file;
                        var path = data.row.path;
                        window.location = "/Plataforma/bajar.jsp?filename=" + file + "&path=" + path;

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_com"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function volver_com() {
                document.getElementById('div_datos_com').style.display = 'block';
                document.getElementById('div_op1_com').style.display = 'block';
                document.getElementById('div_op2_com').style.display = 'none';
                document.getElementById('div_datasheet_com').style.display = 'none';
            }

            function load_datasheet_com() {

                document.getElementById('div_datos_com').style.display = 'none';
                document.getElementById('div_datasheet_com').style.display = 'block';
                document.getElementById('div_op1_com').style.display = 'none';
                document.getElementById('div_op2_com').style.display = 'block';


            }


            function save_com() {

                var parametros = {
                    "fabricante_sel_com": $("#fabricante_sel_com").val(),
                    "modelo_sel_com": $("#modelo_sel_com").val(),
                    "trans_sel_com": $("#trans_sel_com").val(),
                    "ubtrans_sel_com": $("#ubtrans_sel_com").val(),
                    "gbp_sel_com": $("#gbp_sel_com").val(),
                    "cha_sel_com": $("#cha_sel_com").val(),
                    "programa_com": $("#programa_com").val(),
                    "sa_sel_com": $("#sa_sel_com").val(),
                    "cap_sel_com": $("#cap_sel_com").val(),
                    "rtd_sel_com": $("#rtd_sel_com").val(),
                    "tp_sel_com": $("#tp_sel_com").val(),
                    "s3_sel_com": $("#s3_sel_com").val(),
                    "s4_sel_com": $("#s4_sel_com").val(),
                    "s5_sel_com": $("#s5_sel_com").val(),
                    "s6_sel_com": $("#s6_sel_com").val(),
                    "s7_sel_com": $("#s7_sel_com").val(),
                    "s8_sel_com": $("#s8_sel_com").val(),
                    "mr_sel_com": $("#mr_sel_com").val(),
                    "sie_sel_com": $("#sie_sel_com").val(),
                    "us_sel_com": $("#us_sel_com").val(),
                    "gpt_sel_com": $("#gpt_sel_com").val(),
                    "mh_sel_com": $("#mh_sel_com").val(),
                    "pet_com": $("#pet_com").val(),
                    "prog_sel_com": $("#prog_sel_com").val(),
                    "sag_sel_com": $("#sag_sel_com").val(),
                    "capg_sel_com": $("#capg_sel_com").val(),
                    "rtdg_sel_com": $("#rtdg_sel_com").val(),
                    "tpg_sel_com": $("#tpg_sel_com").val(),
                    "cio_sel_com": $("#cio_sel_com").val(),
                    "oppr_sel_com": $("#oppr_sel_com").val(),
                    "oprm_sel_com": $("#oprm_sel_com").val(),
                    "siegc_sel_com": $("#siegc_sel_com").val(),
                    "gbt_sel_com": $("#gbt_sel_com").val(),
                    "mhgc_sel_com": $("#mhgc_sel_com").val(),
                    "progc_com": $("#progc_com").val(),
                    "proga_com": $("#proga_com").val(),
                    "sagc_sel_com": $("#sagc_sel_com").val(),
                    "capgc_sel_com": $("#capgc_sel_com").val(),
                    "rtdgc_sel_com": $("#rtdgc_sel_com").val(),
                    "tpgc_sel_com": $("#tpgc_sel_com").val(),
                    "ciogc_sel_com": $("#ciogc_sel_com").val(),
                    "sp_sel_com": $("#sp_sel_com").val(),
                    "oprmgc_sel_com": $("#oprmgc_sel_com").val(),
                    "kit_sel_com": $("#kit_sel_com").val(),
                    "db_sel_com": $("#db_sel_com").val(),
                    "ir_sel_com": $("#ir_sel_com").val(),
                    "ec_sel_com": $("#ec_sel_com").val(),
                    "energia_com": $("#energia_com").val(),
                    "openergia_com": $("#openergia_com").val(),
                    "bat_com": $("#bat_com").val(),
                    "procesador_com": $("#procesador_com").val(),
                    "reloj_com": $("#reloj_com").val(),
                    "entra_com": $("#entra_com").val(),
                    "entrapul_com": $("#entrapul_com").val(),
                    "ensaldig_com": $("#ensaldig_com").val(),
                    "entraana_com": $("#entraana_com").val(),
                    "entratemp_com": $("#entratemp_com").val(),
                    "comuni_com": $("#comuni_com").val(),
                    "led_com": $("#led_com").val(),
                    "capaexp_com": $("#capaexp_com").val(),
                    "garantia_com": $("#garantia_com").val(),
                    "trans_com": $("#trans_com").val(),
                    "sentem_com": $("#sentem_com").val(),
                    "entener_com": $("#entener_com").val(),
                    "fuente_com": $("#fuente_com").val(),
                    "sumiana_com": $("#sumiana_com").val(),
                    "moniener_com": $("#moniener_com").val(),
                    "batreser_com": $("#batreser_com").val(),
                    "proce_com": $("#proce_com").val(),
                    "memoria_com": $("#memoria_com").val(),
                    "relojtr_com": $("#relojtr_com").val(),
                    "entrapuls_com": $("#entrapuls_com").val(),
                    "entrasaldig_com": $("#entrasaldig_com").val(),
                    "entraanal_com": $("#entraanal_com").val(),
                    "comunica_com": $("#comunica_com").val(),
                    "ledestado_com": $("#ledestado_com").val(),
                    "capaexpa_com": $("#capaexpa_com").val(),
                    "analogdig_com": $("#analogdig_com").val(),
                    "ieee_com": $("#ieee_com").val(),
                    "idproyect": $("#proyects_sel_com").val(),
                    "opcion": $("#opt_com").val(),
                    "iduser": <% out.print(session.getAttribute("idusu"));%>,
                    "id_com": 1,
                    "description_com": $("#description_com").val(),
                    "from": "com"
                };

                var isOk = validate(parametros);

                if (isOk === false) {
                    alert("You must perform the calculation and fill out the description");
                } else {

                    if ($("#opt_com").val() == 2) {
                        parametros.id_com = $("#id_com").val();
                    }

                    $.ajax({
                        type: "POST",
                        url: "../manager.jsp",
                        data: parametros,
                        dataType: 'json',
                        beforeSend: function (xhr) {
                            block("Cargando...");
                        },
                        success: function (data, status, request) {
                            $("#id_com").val(data.row.id);
                            $("#opt_com").val("2");
                            show_OkDialog($("#save_Dialog_com"), "Satisfactory process");
                        },
                        error: function (xhr, ajaxOptions, err) {
                            alert(err);
                            show_OkDialog($("#error_Dialog_com"), "Error");
                        },
                        complete: function () {
                            unBlock();
                        }
                    });
                }
            }





            function load_flowr_sel_com() {
                var parametros = {
                    "combo": "fluE",
                    "opcion": "5"
                };
                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    async: false,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        var newHtml = "<select class=\"form-control\" name=\"flujo_sel_com\" id= \"flujo_sel_com\">" + data;
                        $("#div_flujo_sel_com").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_com"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }



           function load_press_sel_com() {
                var parametros = {
                    "combo": "pres",
                    "opcion": "5"
                };
                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    async: false,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        var newHtml = "<select class=\"form-control\" name=\"presion_sel_com\" id= \"presion_sel_com\">" + data;
                        $("#div_presion_sel_com").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_com"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function deleteReg_com() {
                var parametros = {
                    "id_com": $("#id_com").val(),
                    "opcion": 3,
                    "iduser": <%=session.getAttribute("idusu")%>,
                    "from": "com"
                };


                if ($("#opt_com").val() == 2) {
                    $.ajax({
                        type: "POST",
                        url: "../manager.jsp",
                        data: parametros,
                        dataType: 'json',
                        beforeSend: function (xhr) {
                            block("Cargando...");
                        },
                        success: function (data, status, request) {
                            $("#id_com").val("");
                            $("#opt_com").val("1");
                            show_OkDialog($("#delete_Dialog_com"), "Satisfactory process");
                        },
                        error: function (xhr, ajaxOptions, err) {
                            alert(err);
                            show_OkDialog($("#error_Dialog_com"), "Error");
                        },
                        complete: function () {
                            unBlock();
                        }
                    });

                } else {
                    alert("You must load a log to be able to delete it");
                }
            }

            function delete_com() {

                //Confirmacion
                if ($("#opt_com").val() == 2) {
                    $("#dialog-confirm_com").dialog({
                        resizable: false,
                        height: "auto",
                        width: 400,
                        modal: true,
                        buttons: {
                            "Delete": function () {
                                deleteReg_com();
                                $(this).dialog("close");
                            },
                            Cancelar: function () {
                                $(this).dialog("close");
                            }
                        }
                    });
                } else {
                    alert("You must load a record to be able to delete it");
                }
            }






        </script>
    </body>
</html>