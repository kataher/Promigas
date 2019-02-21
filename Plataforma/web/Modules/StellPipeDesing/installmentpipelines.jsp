<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>
<!DOCTYPE html>

<html lang="en">
    <head>  
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>::PROMIGAS::</title>  
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

            <!-- Navigation -->
            <jsp:include page="../../allmenu.jsp"/>

            <div id="page-wrapper">
                <div class="row">
                    <div id="content">
                        <div class="row">
                            <div class="col-lg-9">
                                <h2><strong>Stell Pipe Design:</strong>  Installment of Pipelines by Horizontal Directional Drilling - Full Force and Installation Stress Analysis </h2>
                            </div>
                            <div class="col-lg-3"> 
                                <br>
                                <!-- Button trigger modal -->
                                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_inpp()">
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
                                                <div id="div-table_inpp"></div>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- FIN MODAL -->
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-12">
                                Description: 
                                <input  class="form-control" type="text" id="description_inpp" name="description_inpp"><br>
                                Projects: 
                                <select class="form-control" id="proyects_sel_inpp" name="proyects_sel_inpp"> </select>
                            </div>
                        </div>

                        <hr>
                        <div class="row">

                            <div class="col-lg-9">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        Data
                                    </div>
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-lg-12" id="vista1">
                                                <div class="panel panel-default">
                                                    <div class="panel-heading">
                                                        Pipe and Operational Characteristics
                                                    </div>

                                                    <div class="panel-body  col-lg-6" >
                                                        <div class="panel panel-default">

                                                            <div class="panel-body">
                                                                <div class="row">
                                                                    <div class="col-lg-12">

                                                                        <div class="panel panel-default">
                                                                            <div class="panel-heading">
                                                                                Line Pipe API 5L
                                                                            </div>
                                                                            <div class="panel-body">
                                                                                <div class="form-group">
                                                                                    <div class="col-lg-6">
                                                                                        <label>Nominal pipe size:</label>
                                                                                    </div> 
                                                                                    <div class="col-lg-6">
                                                                                        <div id="div_nomps_sel_inpp">
                                                                                            <select class="form-control" id="nominalps_sel_inpp" name="nominalps_sel_inpp"> </select>
                                                                                        </div>
                                                                                    </div> <br>
                                                                                    <div class="col-lg-6">                      
                                                                                        <label>Wall Thickness [.in]:</label>
                                                                                    </div> 
                                                                                    <div class="col-lg-6">
                                                                                        <div id="div_wallt_sel_inpp">
                                                                                            <select class="form-control" id="wthi_sel_inpp" name="wthi_sel_inpp"> </select>
                                                                                        </div>
                                                                                    </div> <br>                      
                                                                                    <div class="col-lg-6">                      
                                                                                        <label>Grade:</label>
                                                                                    </div> 
                                                                                    <div class="col-lg-6">
                                                                                        <div id="div_grade_sel_inpp">
                                                                                            <select class="form-control" id="grade_sel_inpp" name="grade_sel_inpp"> </select>
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
                                                    <div class="panel-body  col-lg-6" >
                                                        <div class="panel panel-default">

                                                            <div class="panel-body">
                                                                <div class="row">
                                                                    <div class="col-lg-12">
                                                                        <div class="panel-body">
                                                                            <div class="form-group">
                                                                                <div class="panel panel-default ">
                                                                                    <div class="panel-body">
                                                                                        <div class="form-group">
                                                                                            <div class="col-lg-7">
                                                                                                <label>Pipe outside diameter [in.]:</label>
                                                                                            </div> 
                                                                                            <div class="col-lg-5">
                                                                                                <input type="text" name="pipe_dia_inpp" id="pipe_dia_inpp" class="form-control" >
                                                                                            </div>                       
                                                                                            <div class="col-lg-7">
                                                                                                <label>Wall Thickness [in.]:</label> 
                                                                                            </div> 
                                                                                            <div class="col-lg-5">
                                                                                                <input type="text" name="pipe_wall_inpp" id="pipe_wall_inpp" class="form-control">
                                                                                            </div> 
                                                                                            <div class="col-lg-7">
                                                                                                <label>Specified Minimun Yield Strength [psi]:</label>
                                                                                            </div> 
                                                                                            <div class="col-lg-5">
                                                                                                <input type="text" name="min_yield_inpp" id="min_yield_inpp" class="form-control">
                                                                                            </div> 
                                                                                            <div class="col-lg-7">
                                                                                                <label>Young's Modulus for Steel [ksi]:</label>
                                                                                            </div> 
                                                                                            <div class="col-lg-5">
                                                                                                <input type="text" name="youn_steel_inpp" id="youn_steel_inpp" class="form-control" value="29000000">
                                                                                            </div> 
                                                                                            <div class="col-lg-7">
                                                                                                <label>Poisson's Ratio for Steel:</label>
                                                                                            </div> 
                                                                                            <div class="col-lg-5">
                                                                                                <input type="text" name="poi_rat_inpp" id="poi_rat_inpp" class="form-control" value="0.3">
                                                                                            </div>                           
                                                                                        </div> 
                                                                                    </div>
                                                                                </div>
                                                                                <div class="panel panel-default">
                                                                                    <div class="panel-body">
                                                                                        <div class="form-group">
                                                                                            <div class="col-lg-7">
                                                                                                <label>Mud Wight [lbs/ft<sup>3</sup>]:</label>
                                                                                            </div> 
                                                                                            <div class="col-lg-5">
                                                                                                <input type="text" name="mud_weight_inpp" id="mud_weight_inpp" class="form-control" value="89.76">
                                                                                            </div>                       
                                                                                            <div class="col-lg-7">
                                                                                                <label>Soil Friction Coefficient:</label>
                                                                                            </div> 
                                                                                            <div class="col-lg-5">
                                                                                                <input type="text" name="soil_frict_inpp" id="soil_frict_inpp" class="form-control" value="0.3">
                                                                                            </div> 
                                                                                            <div class="col-lg-7">
                                                                                                <label>Fluid Drag Coefficient [psi]:</label>
                                                                                            </div> 
                                                                                            <div class="col-lg-5">
                                                                                                <input type="text" name="fluid_drag_inpp" id="fluid_drag_inpp" class="form-control" value="0.05">
                                                                                            </div> 

                                                                                            <div class="col-lg-12">
                                                                                                <BR>                           

                                                                                            </div>
                                                                                        </div> 
                                                                                    </div>
                                                                                </div>           
                                                                            </div> 
                                                                        </div>
                                                                        <div class="col-md-3">
                                                                            <input type="button" id="next_inpp" name="next_inpp" value="Siguiente " onclick="showN()" class="btn btn-primary btn-block">
                                                                        </div>                      

                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-12"  id="vista2" name="vista2" style="display:none;">
                                                <div class="col-lg-12">
                                                    <div class="panel panel-default">
                                                        <div class="panel-heading">
                                                            Installation and Site Characteristics:
                                                        </div>
                                                        <div class="panel-body">
                                                            <div class="row">
                                                                <div class="col-lg-6">                                    
                                                                    <div class="panel panel-default">
                                                                        <div class="panel-heading">
                                                                            Straight Section "A - B" Downslope:
                                                                        </div>                      
                                                                        <div class="panel-body">
                                                                            <div class="form-group">
                                                                                <div class="col-lg-7">
                                                                                    <label>Measured Lenght [ft]:</label>
                                                                                </div> 
                                                                                <div class="col-lg-5">
                                                                                    <input type="text" name="mea_length_en_inpp" id="mea_length_en_inpp" class="form-control">
                                                                                </div>                       
                                                                                <div class="col-lg-7">
                                                                                    <label>Angle of Inclination [°]:</label>
                                                                                </div> 
                                                                                <div class="col-lg-5">
                                                                                    <input type="text" name="ang_incl_en_inpp" id="ang_incl_en_inpp" class="form-control">
                                                                                </div>                            
                                                                            </div> 
                                                                        </div>
                                                                    </div>
                                                                    <div class="panel panel-default">
                                                                        <div class="panel-heading">
                                                                            Curved Section "B - C" Downslope:
                                                                        </div>                      
                                                                        <div class="panel-body">
                                                                            <div class="form-group">
                                                                                <div class="col-lg-7">
                                                                                    <label>Measured Lenght [ft]:</label>
                                                                                </div> 
                                                                                <div class="col-lg-5">
                                                                                    <input type="text" name="mea_length_sl_inpp" id="mea_length_sl_inpp" class="form-control"> 
                                                                                </div>                       
                                                                                <div class="col-lg-7">
                                                                                    <label>Hall of Angle of Inclination [°]:</label>
                                                                                </div> 
                                                                                <div class="col-lg-5">
                                                                                    <input type="text" name="hall_ang_sl_inpp" id="hall_ang_sl_inpp" class="form-control">
                                                                                </div>                            
                                                                                <div class="col-lg-7">
                                                                                    <label>Radius of Curvature [ft]:</label>
                                                                                </div> 
                                                                                <div class="col-lg-5">
                                                                                    <input type="text" name="rad_cur_sl_inpp" id="rad_cur_sl_inpp" class="form-control">
                                                                                </div>                          
                                                                            </div> 
                                                                        </div>
                                                                    </div>
                                                                    <div class="panel panel-default">
                                                                        <div class="panel-heading">
                                                                            Straight Section "C - D" Downslope:
                                                                        </div>                      
                                                                        <div class="panel-body">
                                                                            <div class="form-group">
                                                                                <div class="col-lg-7">
                                                                                    <label>Measured Lenght [ft]:</label>
                                                                                </div> 
                                                                                <div class="col-lg-5">
                                                                                    <input type="text" name="mea_length_straight_inpp" id="mea_length_straight_inpp" class="form-control">
                                                                                </div>                                              
                                                                            </div> 
                                                                        </div>
                                                                    </div>
                                                                    <div class="panel panel-default">
                                                                        <div class="panel-heading">
                                                                            Curved Section "D - E" Upslope:
                                                                        </div>                      
                                                                        <div class="panel-body">
                                                                            <div class="form-group">
                                                                                <div class="col-lg-7">
                                                                                    <label>Measured Lenght [ft]:</label>
                                                                                </div> 
                                                                                <div class="col-lg-5">
                                                                                    <input type="text" name="mea_length_up_inpp" id="mea_length_up_inpp" class="form-control">
                                                                                </div>                       
                                                                                <div class="col-lg-7">
                                                                                    <label>Hall of Angle of Inclination [°]:</label>
                                                                                </div> 
                                                                                <div class="col-lg-5">
                                                                                    <input type="text" name="hall_ang_incl_up_inpp" id="hall_ang_incl_up_inpp" class="form-control">
                                                                                </div>                            
                                                                                <div class="col-lg-7">
                                                                                    <label>Radius of Curvature [ft]:</label>
                                                                                </div> 
                                                                                <div class="col-lg-5">
                                                                                    <input type="text" name="rad_cur_up_inpp" id="rad_cur_up_inpp" class="form-control">
                                                                                </div>                          
                                                                            </div> 
                                                                        </div>
                                                                    </div>
                                                                    <div class="panel panel-default">
                                                                        <div class="panel-heading">
                                                                            Straight Section "E - F" Upslope:
                                                                        </div>                      
                                                                        <div class="panel-body">
                                                                            <div class="form-group">
                                                                                <div class="col-lg-7">
                                                                                    <label>Measured Lenght [ft]:</label>
                                                                                </div> 
                                                                                <div class="col-lg-5">
                                                                                    <input type="text" name="mea_length_upEF_inpp" id="mea_length_upEF_inpp" class="form-control">
                                                                                </div>                       
                                                                                <div class="col-lg-7">
                                                                                    <label>Angle of Inclination [°]:</label>
                                                                                </div> 
                                                                                <div class="col-lg-5">
                                                                                    <input type="text" name="ang_incl_upEF_inpp" id="ang_incl_upEF_inpp" class="form-control">
                                                                                </div>                            
                                                                            </div> 
                                                                        </div>
                                                                    </div>

                                                                </div>

                                                                <div class="col-lg-6">
                                                                    <div class="col-lg-12">                                    
                                                                        <div class="panel panel-default">
                                                                            <div class="panel-heading">
                                                                                Determinción del perfil:
                                                                            </div>                      
                                                                            <div class="panel-body">
                                                                                <div class="panel panel-default">
                                                                                    <div class="panel-heading">
                                                                                        Datos de Entrada-Punto F
                                                                                    </div>                      
                                                                                    <div class="panel-body">
                                                                                        <div class="col-lg-12">
                                                                                            <label>Abscisa de Entrada [ft]:</label>
                                                                                            <input type="text" name="abs_entra_inpp" id="abs_entra_inpp" class="form-control">
                                                                                        </div> 
                                                                                        <div class="col-lg-12">
                                                                                            <label> Cota de Entrada [ft]:</label>
                                                                                            <input type="text" name="cota_entra_inpp" id="cota_entra_inpp" class="form-control">
                                                                                        </div>  
                                                                                        <div class="col-lg-12">
                                                                                            <label>Ángulo de Entrada [°]:</label>
                                                                                            <input type="text" name="ang_entra_inpp" id="ang_entra_inpp" class="form-control">
                                                                                        </div>  
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="panel-body">
                                                                                <div class="panel panel-default">
                                                                                    <div class="panel-heading">
                                                                                        Datos de Salida-Punto A
                                                                                    </div>                      
                                                                                    <div class="panel-body">
                                                                                        <div class="col-lg-12">
                                                                                            <label>Abscisa de Salida [ft]:</label>
                                                                                            <input type="text" name="abs_sali_inpp" id="abs_sali_inpp" class="form-control">
                                                                                        </div> 
                                                                                        <div class="col-lg-12">
                                                                                            <label> Cota de Salida [ft]:</label>
                                                                                            <input type="text" name="cota_sali_inpp" id="cota_sali_inpp" class="form-control">
                                                                                        </div>  
                                                                                        <div class="col-lg-12">
                                                                                            <label>Ángulo de Salida [°]:</label>
                                                                                            <input type="text" name="ang_sali_inpp" id="ang_sali_inpp" class="form-control">
                                                                                        </div>  
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="panel panel-default">
                                                                            <div class="panel-heading">

                                                                            </div>                      
                                                                            <div class="panel-body">
                                                                                <div class="form-group">
                                                                                    <div class="col-lg-12">
                                                                                        <label>Radio de Curvatura [ft]:</label>
                                                                                        <input type="text" name="rad_curv_inpp" id="rad_curv_inpp" class="form-control">
                                                                                    </div> 
                                                                                    <div class="col-lg-12">
                                                                                        <label>Cota más Baja [ft]:</label>
                                                                                        <input type="text" name="cota_mbaja_inpp" id="cota_mbaja_inpp" class="form-control">
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
                                                        <input type="button" id="calculateBtn3_inpp" name="calculateBtn3_inpp" value="Esquematico" onclick="calculate_inpp()" class="btn btn-info btn-block">
                                                    </div>

                                                    <div class="col-lg-4">
                                                        <input type="button" id="calculateBtn3_inpp" name="calculateBtn3_inpp" value="Calculate" onclick="calculate_inpp()" class="btn btn-info btn-block">

                                                    </div>
                                                    <div class="col-lg-4">
                                                        <input type="button" id="calculateBtn3_inpp" name="calculateBtn3_inpp" value="Determinar Perfil" onclick="calculate_perfil_inpp()" class="btn btn-info btn-block">
                                                    </div>
                                                    <br>
                                                </div>

                                            </div>

                                            <div class="col-lg-12"  id="vista3" name="vista3" style="display:none;">
                                                <div class="col-lg-12">
                                                    <div class="panel panel-default">
                                                        <div class="panel-heading">
                                                            Resultados, Analisis de Fuerza de Tracción:
                                                        </div>
                                                        <div class="panel-body">
                                                            <div class="row">
                                                                <div class="col-lg-6">                                    
                                                                    <div class="panel panel-default">
                                                                        <div class="panel-heading">

                                                                        </div>                      
                                                                        <div class="panel-body">
                                                                            <div class="form-group">
                                                                                <div class="col-lg-7">
                                                                                    <label>Peso de la Tubería en Aire[lbs/ft]</label>
                                                                                </div> 
                                                                                <div class="col-lg-5">
                                                                                    <input type="text" name="peso_tub_aire_inpp" id="peso_tub_aire_inpp" class="form-control" readonly>
                                                                                </div>                       
                                                                                <div class="col-lg-7">
                                                                                    <label>Volúmen Exterior de la Tubería [ft3/ft]:</label>
                                                                                </div> 
                                                                                <div class="col-lg-5">
                                                                                    <input type="text" name="vol_ext_tub_inpp" id="vol_ext_tub_inpp" class="form-control" readonly>
                                                                                </div>  
                                                                                <div class="col-lg-7">
                                                                                    <label>Volúmen Interior de la Tubería [ft3/ft]::</label>
                                                                                </div> 
                                                                                <div class="col-lg-5">
                                                                                    <input type="text" name="vol_int_tub_inpp" id="vol_int_tub_inpp" class="form-control" readonly>
                                                                                </div> 
                                                                                <div class="col-lg-7">
                                                                                    <label>Peso del Lodo Desplazado [lbs/ft]:</label>
                                                                                </div> 
                                                                                <div class="col-lg-5">
                                                                                    <input type="text" name="pes_lob_des_inpp" id="pes_lob_des_inpp" class="form-control" readonly>
                                                                                </div> 
                                                                                <div class="col-lg-7">
                                                                                    <label>Peso Efectivo de la Tubería [lbs/ft]:</label>
                                                                                </div> 
                                                                                <div class="col-lg-5">
                                                                                    <input type="text" name="pes_efe_tub_inpp" id="pes_efe_tub_inpp" class="form-control" readonly>
                                                                                </div>                             
                                                                            </div> 
                                                                        </div>
                                                                    </div>
                                                                    <div class="panel panel-default">
                                                                        <div class="panel-heading">
                                                                            Sección Recta "A-B" Pendiente Negativa:
                                                                        </div>                      
                                                                        <div class="panel-body">
                                                                            <div class="form-group">
                                                                                <div class="col-lg-7">
                                                                                    <label>Fricción del Suelo [lbs]:</label>
                                                                                </div> 
                                                                                <div class="col-lg-5">
                                                                                    <input type="text" name="fri_suelAB_inpp" id="fri_suelAB_inpp" class="form-control" readonly> 
                                                                                </div>                       
                                                                                <div class="col-lg-7">
                                                                                    <label>Fuerza de arrastre del lodo[lbs]:</label>
                                                                                </div> 
                                                                                <div class="col-lg-5">
                                                                                    <input type="text" name="fue_arr_lodAB_inpp" id="fue_arr_lodAB_inpp" class="form-control" readonly>
                                                                                </div>                            
                                                                                <div class="col-lg-7">
                                                                                    <label>Tensión en la Sección[lbs]:</label>
                                                                                </div> 
                                                                                <div class="col-lg-5">
                                                                                    <input type="text" name="ten_secAB_inpp" id="ten_secAB_inpp" class="form-control" readonly>
                                                                                </div>
                                                                                <div class="col-lg-7">
                                                                                    <label>Carga de Tracción Acumulativa[lbs/ft]:</label>
                                                                                </div> 
                                                                                <div class="col-lg-5">
                                                                                    <input type="text" name="car_tra_acuAB_inpp" id="car_tra_acuAB_inpp" class="form-control" readonly>
                                                                                </div>                           
                                                                            </div> 
                                                                        </div>
                                                                    </div>
                                                                    <div class="panel panel-default">
                                                                        <div class="panel-heading">
                                                                            Sección Curva "B-C" Pendiente Negativa:
                                                                        </div>                      
                                                                        <div class="panel-body">
                                                                            <div class="form-group">
                                                                                <div class="col-lg-7">
                                                                                    <label>Fuerza Normal[lbs]:</label>
                                                                                </div> 
                                                                                <div class="col-lg-5">
                                                                                    <input type="text" name="fue_nor_inpp" id="fue_nor_inpp" class="form-control" readonly>
                                                                                </div>
                                                                                <div class="col-lg-7">
                                                                                    <label>Fricción del Suelo[lbs]:</label>
                                                                                </div> 
                                                                                <div class="col-lg-5">
                                                                                    <input type="text" name="fri_del_suelBC_inpp" id="fri_del_suelBC_inpp" class="form-control" readonly>
                                                                                </div> 
                                                                                <div class="col-lg-7">
                                                                                    <label>Fuerza de Arrastre del lodo[lbs]:</label>
                                                                                </div> 
                                                                                <div class="col-lg-5">
                                                                                    <input type="text" name="fue_arr_lobBC_inpp" id="fue_arr_lobBC_inpp" class="form-control" readonly>
                                                                                </div> 
                                                                                <div class="col-lg-7">
                                                                                    <label>Tensión en la Sección[lbs]:</label>
                                                                                </div> 
                                                                                <div class="col-lg-5">
                                                                                    <input type="text" name="ten_secBC_inpp" id="ten_secBC_inpp" class="form-control" readonly>
                                                                                </div> 
                                                                                <div class="col-lg-7">
                                                                                    <label>Carga de Tracción Acumulativa[lbs/ft]:</label>
                                                                                </div> 
                                                                                <div class="col-lg-5">
                                                                                    <input type="text" name="car_tra_acuBC_inpp" id="car_tra_acuBC_inpp" class="form-control" readonly>
                                                                                </div>                                               
                                                                            </div> 
                                                                        </div>
                                                                    </div>


                                                                </div>

                                                                <div class="col-lg-6">
                                                                    <div class="col-lg-12">                                    
                                                                        <div class="panel panel-default">
                                                                            <div class="panel-heading">
                                                                                Sección Recta "C-D":
                                                                            </div>                      
                                                                            <div class="panel-body">
                                                                                <div class="form-group">
                                                                                    <div class="col-lg-7">
                                                                                        <label>Fricción del Suelo [lbs]:</label>
                                                                                    </div> 
                                                                                    <div class="col-lg-5">
                                                                                        <input type="text" name="fri_del_sueCD_inpp" id="fri_del_sueCD_inpp" class="form-control" readonly>
                                                                                    </div>                       
                                                                                    <div class="col-lg-7">
                                                                                        <label>Fuerza de arrastre del lodo[lbs]:</label>
                                                                                    </div> 
                                                                                    <div class="col-lg-5">
                                                                                        <input type="text" name="fue_arr_lobCD_inpp" id="fue_arr_lobCD_inpp" class="form-control" readonly>
                                                                                    </div> 
                                                                                    <div class="col-lg-7">
                                                                                        <label>Tensión en la Sección[lbs]:</label>
                                                                                    </div> 
                                                                                    <div class="col-lg-5">
                                                                                        <input type="text" name="ten_secCD_inpp" id="ten_secCD_inpp" class="form-control" readonly>
                                                                                    </div> 
                                                                                    <div class="col-lg-7">
                                                                                        <label>Carga de Tracción Acumulativa [lbs/ft]:</label>
                                                                                    </div> 
                                                                                    <div class="col-lg-5">
                                                                                        <input type="text" name="car_tra_acuCD_inpp" id="car_tra_acuCD_inpp" class="form-control" readonly>
                                                                                    </div>                    
                                                                                </div> 
                                                                            </div>
                                                                        </div>


                                                                        <div class="panel panel-default">
                                                                            <div class="panel-heading">
                                                                                Sección Curva "D-E" Pendiente Positiva:
                                                                            </div>                      
                                                                            <div class="panel-body">
                                                                                <div class="form-group">
                                                                                    <div class="col-lg-7">
                                                                                        <label>Fuerza Normal[lbs]:</label>
                                                                                    </div> 
                                                                                    <div class="col-lg-5">
                                                                                        <input type="text" name="fue_norDE_inpp" id="fue_norDE_inpp" class="form-control" readonly>
                                                                                    </div> 
                                                                                    <div class="col-lg-7">
                                                                                        <label>Fricción del Suelo[lbs]:</label>
                                                                                    </div> 
                                                                                    <div class="col-lg-5">
                                                                                        <input type="text" name="fri_sueDE_inpp" id="fri_sueDE_inpp" class="form-control" readonly>
                                                                                    </div> 
                                                                                    <div class="col-lg-7">
                                                                                        <label>Fuerza de Arrastre del lodo[lbs]:</label>
                                                                                    </div> 
                                                                                    <div class="col-lg-5">
                                                                                        <input type="text" name="fue_arr_lodDE_inpp" id="fue_arr_lodDE_inpp" class="form-control" readonly>
                                                                                    </div> 
                                                                                    <div class="col-lg-7">
                                                                                        <label>Tensión en la Sección[lbs]:</label>
                                                                                    </div> 
                                                                                    <div class="col-lg-5">
                                                                                        <input type="text" name="ten_secDE_inpp" id="ten_secDE_inpp" class="form-control" readonly>
                                                                                    </div> 
                                                                                    <div class="col-lg-7">
                                                                                        <label>Carga de Tracción Acumulativa[lbs/ft]:</label>
                                                                                    </div> 
                                                                                    <div class="col-lg-5">
                                                                                        <input type="text" name="car_tra_acuDE_inpp" id="car_tra_acuDE_inpp" class="form-control" readonly>
                                                                                    </div>                            
                                                                                </div> 
                                                                            </div>
                                                                        </div>


                                                                        <div class="panel panel-default">
                                                                            <div class="panel-heading">
                                                                                Sección Recta "E-F" Pendiente Positiva:
                                                                            </div>                      
                                                                            <div class="panel-body">
                                                                                <div class="form-group">
                                                                                    <div class="col-lg-7">
                                                                                        <label>Fricción del Suelo [lbs]:</label>
                                                                                    </div> 
                                                                                    <div class="col-lg-5">
                                                                                        <input type="text" name="fri_sueEF_inpp" id="fri_sueEF_inpp" class="form-control" readonly>
                                                                                    </div> 
                                                                                    <div class="col-lg-7">
                                                                                        <label>Fuerza de arrastre del lodo[lbs]:</label>
                                                                                    </div> 
                                                                                    <div class="col-lg-5">
                                                                                        <input type="text" name="fue_arr_lodEF_inpp" id="fue_arr_lodEF_inpp" class="form-control" readonly>
                                                                                    </div> 
                                                                                    <div class="col-lg-7">
                                                                                        <label>Tensión en la Sección[lbs]:</label>
                                                                                    </div> 
                                                                                    <div class="col-lg-5">
                                                                                        <input type="text" name="ten_secEF_inpp" id="ten_secEF_inpp" class="form-control" readonly>
                                                                                    </div> 
                                                                                    <div class="col-lg-7">
                                                                                        <label>Carga de Tracción Acumulativa[lbs/ft]:</label>
                                                                                    </div> 
                                                                                    <div class="col-lg-5">
                                                                                        <input type="text" name="car_tra_acuEF_inpp" id="car_tra_acuEF_inpp" class="form-control" readonly>
                                                                                    </div>                            
                                                                                </div> 
                                                                            </div>
                                                                        </div>

                                                                        <div class="col-lg-7">
                                                                            <label>Carga de Tracción Total [lbs]:</label>
                                                                        </div> 
                                                                        <div class="col-lg-5">
                                                                            <input type="text" name="car_tra_total_inpp" id="car_tra_total_inpp" class="form-control" readonly>
                                                                        </div>   

                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <input type="button" id="next_inpp" name="next_inpp" value="Siguiente " onclick="showN2()" class="btn btn-primary btn-block">
                                                    <br>
                                                </div>

                                            </div>

                                            <div class="col-lg-12" name="vista4"  id="vista4" style="display:none;">  
                                                <div class="col-md-6">
                                                    <div class="panel panel-default">
                                                        <div class="panel-heading">
                                                            Results Stress Analysis
                                                        </div>
                                                        <div class="panel-body">
                                                            <div class="row">
                                                                <div class="col-lg-12">

                                                                    <div class="form-group">        
                                                                        <table class="table table-hover">
                                                                            <tr>
                                                                                <th width="49%"><center>Point:"B"</center></th>
                                                                            <th widht="17%"><center>This Project</center></th>
                                                                            <th widht="17%"><center>Allowable</center></th>
                                                                            <th widht="17%"><center>PASS/FAIL</center></th>                                            
                                                                            </tr>
                                                                            <tr>
                                                                                <td><label>Tensile Stress [psi]</label></td>
                                                                                <td><input class="form-control" type="text" name="Bproject1" id="Bproject1"></td>
                                                                                <td><input class="form-control" type="text" name="Ballow1" id="Ballow1"></td>
                                                                                <td><input class="form-control" type="text" name="Bpass1" id="Bpass1"></td>
                                                                            </tr>
                                                                            <tr>  
                                                                                <td><label>Bending Stress [psi]</label></td>
                                                                                <td><input class="form-control" type="text" name="Bproject2" id="Bproject2"></td>
                                                                                <td><input class="form-control" type="text" name="Ballow2" id="Ballow2"></td>
                                                                                <td><input class="form-control" type="text" name="Bpass2" id="Bpass2"></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td><label>External Hoop Stress [psi]</label></td>
                                                                                <td><input class="form-control" type="text" name="Bproject3" id="Bproject3"></td>
                                                                                <td><input class="form-control" type="text" name="Ballow3" id="Ballow3"></td>
                                                                                <td><input class="form-control" type="text" name="Bpass3" id="Bpass3"></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td><label>Unity Check: Tensile & Bending Stress</label></td>
                                                                                <td><input class="form-control" type="text" name="Bproject4" id="Bproject4"></td>
                                                                                <td><input class="form-control" type="text" name="Ballow4" id="Ballow4"></td>
                                                                                <td><input class="form-control" type="text" name="Bpass4" id="Bpass4"></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td><label>Unity Check: Tensile, Bending & Hoop Stress</label></td>
                                                                                <td><input class="form-control" type="text" name="Bproject5" id="Bproject5"></td>
                                                                                <td><input class="form-control" type="text" name="Ballow5" id="Ballow5"></td>
                                                                                <td><input class="form-control" type="text" name="Bpass5" id="Bpass5"></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td><div>&nbsp;</div></td>
                                                                                <td><div>&nbsp;</div></td>
                                                                                <td><div>&nbsp;</div></td>
                                                                                <td><div>&nbsp;</div></td>                        
                                                                            </tr>                                                                  
                                                                            <tr>
                                                                                <th width="49%"><center>Point:"C"</center></th>
                                                                            <th widht="17%"><center>This Project</center></th>
                                                                            <th widht="17%"><center>Allowable</center></th>
                                                                            <th widht="17%"><center>PASS/FAIL</center></th>                                            
                                                                            </tr>                      
                                                                            <tr>
                                                                                <td><label>Tensile Stress [psi]</label></td>
                                                                                <td><input class="form-control" type="text" name="Cproject1" id="Cproject1"></td>
                                                                                <td><input class="form-control" type="text" name="Callow1" id="Callow1"></td>
                                                                                <td><input class="form-control" type="text" name="Cpass1" id="Cpass1"></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td><label>Bending Stress [psi]</label></td>
                                                                                <td><input class="form-control" type="text" name="Cproject2" id="Cproject2"></td>
                                                                                <td><input class="form-control" type="text" name="Callow2" id="Callow2"></td>
                                                                                <td><input class="form-control" type="text" name="Cpass2" id="Cpass2"></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td><label>External Hoop Stress [psi]</label></td>
                                                                                <td><input class="form-control" type="text" name="Cproject3" id="Cproject3"></td>
                                                                                <td><input class="form-control" type="text" name="Callow3" id="Callow3"></td>
                                                                                <td><input class="form-control" type="text" name="Cpass3" id="Cpass3"></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td><label>Unity Check: Tensile & Bending Stress</label></td>
                                                                                <td><input class="form-control" type="text" name="Cproject4" id="Cproject4"></td>
                                                                                <td><input class="form-control" type="text" name="Callow4" id="Callow4"></td>
                                                                                <td><input class="form-control" type="text" name="Cpass4" id="Cpass4"></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td><label>Unity Check: Tensile, Bending & Hoop Stress</label></td>
                                                                                <td><input class="form-control" type="text" name="Cproject5" id="Cproject5"></td>
                                                                                <td><input class="form-control" type="text" name="Callow5" id="Callow5"></td>
                                                                                <td><input class="form-control" type="text" name="Cpass5" id="Cpass5"></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td><div>&nbsp;</div></td>
                                                                                <td><div>&nbsp;</div></td>
                                                                                <td><div>&nbsp;</div></td>
                                                                                <td><div>&nbsp;</div></td>                        
                                                                            </tr>                      
                                                                            <tr>
                                                                                <th width="49%"><center>Point:"D"</center></th>
                                                                            <th widht="17%"><center>This Project</center></th>
                                                                            <th widht="17%"><center>Allowable</center></th>
                                                                            <th widht="17%"><center>PASS/FAIL</center></th>                                            
                                                                            </tr>                      
                                                                            <tr>
                                                                                <td><label>Tensile Stress [psi]</label></td>
                                                                                <td><input class="form-control" type="text" name="Dproject1" id="Dproject1"></td>
                                                                                <td><input class="form-control" type="text" name="Dallow1" id="Dallow1"></td>
                                                                                <td><input class="form-control" type="text" name="Dpass1" id="Dpass1"></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td><label>Bending Stress [psi]</label></td>
                                                                                <td><input class="form-control" type="text" name="Dproject2" id="Dproject2"></td>
                                                                                <td><input class="form-control" type="text" name="Dallow2" id="Dallow2"></td>
                                                                                <td><input class="form-control" type="text" name="Dpass2" id="Dpass2"></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td><label>External Hoop Stress [psi]</label></td>
                                                                                <td><input class="form-control" type="text" name="Dproject3" id="Dproject3"></td>
                                                                                <td><input class="form-control" type="text" name="Dallow3" id="Dallow3"></td>
                                                                                <td><input class="form-control" type="text" name="Dpass3" id="Dpass3"></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td><label>Unity Check: Tensile & Bending Stress</label></td>
                                                                                <td><input class="form-control" type="text" name="Dproject4" id="Dproject4"></td>
                                                                                <td><input class="form-control" type="text" name="Dallow4" id="Dallow4"></td>
                                                                                <td><input class="form-control" type="text" name="Dpass4" id="Dpass4"></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td><label>Unity Check: Tensile, Bending & Hoop Stress</label></td>
                                                                                <td><input class="form-control" type="text" name="Dproject5" id="Dproject5"></td>
                                                                                <td><input class="form-control" type="text" name="Dallow5" id="Dallow5"></td>
                                                                                <td><input class="form-control" type="text" name="Dpass5" id="Dpass5"></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td><div>&nbsp;</div></td>
                                                                                <td><div>&nbsp;</div></td>
                                                                                <td><div>&nbsp;</div></td>
                                                                                <td><div>&nbsp;</div></td>                        
                                                                            </tr>                      
                                                                            <tr>
                                                                                <th width="49%"><center>Point:"E"</center></th>
                                                                            <th widht="17%"><center>This Project</center></th>
                                                                            <th widht="17%"><center>Allowable</center></th>
                                                                            <th widht="17%"><center>PASS/FAIL</center></th>                                            
                                                                            </tr>                      
                                                                            <tr>
                                                                                <td><label>Tensile Stress [psi]</label></td>
                                                                                <td><input class="form-control" type="text" name="Eproject1" id="Eproject1"></td>
                                                                                <td><input class="form-control" type="text" name="Eallow1" id="Eallow1"></td>
                                                                                <td><input class="form-control" type="text" name="Epass1" id="Epass1"></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td><label>Bending Stress [psi]</label></td>
                                                                                <td><input class="form-control" type="text" name="Eproject2" id="Eproject2"></td>
                                                                                <td><input class="form-control" type="text" name="Eallow2" id="Eallow2"></td>
                                                                                <td><input class="form-control" type="text" name="Epass2" id="Epass2"></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td><label>External Hoop Stress [psi]</label></td>
                                                                                <td><input class="form-control" type="text" name="Eproject3" id="Eproject3"></td>
                                                                                <td><input class="form-control" type="text" name="Eallow3" id="Eallow3"></td>
                                                                                <td><input class="form-control" type="text" name="Epass3" id="Epass3"></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td><label>Unity Check: Tensile & Bending Stress</label></td>
                                                                                <td><input class="form-control" type="text" name="Eproject4" id="Eproject4"></td>
                                                                                <td><input class="form-control" type="text" name="Eallow4" id="Eallow4"></td>
                                                                                <td><input class="form-control" type="text" name="Epass4" id="Epass4"></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td><label>Unity Check: Tensile, Bending & Hoop Stress</label></td>
                                                                                <td><input class="form-control" type="text" name="Eproject5" id="Eproject5"></td>
                                                                                <td><input class="form-control" type="text" name="Eallow5" id="Eallow5"></td>
                                                                                <td><input class="form-control" type="text" name="Epass5" id="Epass5"></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td><div>&nbsp;</div></td>
                                                                                <td><div>&nbsp;</div></td>
                                                                                <td><div>&nbsp;</div></td>
                                                                                <td><div>&nbsp;</div></td>                        
                                                                            </tr>                      
                                                                            <tr>
                                                                                <th width="49%"><center>Point:"F"</center></th>
                                                                            <th widht="17%"><center>This Project</center></th>
                                                                            <th widht="17%"><center>Allowable</center></th>
                                                                            <th widht="17%"><center>PASS/FAIL</center></th>                                            
                                                                            </tr>                      
                                                                            <tr>
                                                                                <td><label>Tensile Stress [psi]</label></td>
                                                                                <td><input class="form-control" type="text" name="Fproject1" id="Fproject1"></td>
                                                                                <td><input class="form-control" type="text" name="Fallow1" id="Fallow1"></td>
                                                                                <td><input class="form-control" type="text" name="Fpass1" id="Fpass1"></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td><label>Bending Stress [psi]</label></td>
                                                                                <td><input class="form-control" type="text" name="Fproject2" id="Fproject2"></td>
                                                                                <td><input class="form-control" type="text" name="Fallow2" id="Fallow2"></td>
                                                                                <td><input class="form-control" type="text" name="Fpass2" id="Fpass2"></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td><label>External Hoop Stress [psi]</label></td>
                                                                                <td><input class="form-control" type="text" name="Fproject3" id="Fproject3"></td>
                                                                                <td><input class="form-control" type="text" name="Fallow3" id="Fallow3"></td>
                                                                                <td><input class="form-control" type="text" name="Fpass3" id="Fpass3"></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td><label>Unity Check: Tensile & Bending Stress</label></td>
                                                                                <td><input class="form-control" type="text" name="Fproject4" id="Fproject4"></td>
                                                                                <td><input class="form-control" type="text" name="Fallow4" id="Fallow4"></td>
                                                                                <td><input class="form-control" type="text" name="Fpass4" id="Fpass4"></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td><label>Unity Check: Tensile, Bending & Hoop Stress</label></td>
                                                                                <td><input class="form-control" type="text" name="Fproject5" id="Fproject5"></td>
                                                                                <td><input class="form-control" type="text" name="Fallow5" id="Fallow5"></td>
                                                                                <td><input class="form-control" type="text" name="Fpass5" id="Fpass5"></td>
                                                                            </tr>                                                                                         
                                                                        </table>
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
                            </div>  

                            <div class="col-lg-3">

                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        Actions
                                    </div>
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <input type="button" id="cleanAllBtn_inpp" name="cleanBtn_inpp" value="Clean All" onclick="cleanAll_inpp()" class="btn btn-warning btn-block">
                                                <input type="button" id="cleanInputBtn_inpp" name="cleanBtn_inpp" value="Clean Input Data" onclick="cleanIn_inpp()" class="btn btn-warning btn-block">
                                                <input type="button" id="cleanOutputBtn_inpp" name="cleanBtn_inpp" value="Clean Output Data" onclick="cleanOut_inpp()" class="btn btn-warning btn-block">

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <input type="hidden" id="opt_inpp" name="opt_inpp"> 
                            <input type="hidden" id="id_inpp" name="id_inpp">  
                        </div>
                        <div id="load_Dialog_inpp" title="Basic dialog" style='display:none;'>
                            <p>Successfully uploaded data</p>
                        </div>

                        <div id="save_Dialog_inpp" title="Basic dialog" style='display:none;'>
                            <p>Data saved successfully</p>
                        </div>

                        <div id="error_Dialog_inpp" title="Basic dialog" style='display:none;'>
                            <p>An error has occurred in the process</p>
                        </div>

                        <div id="calculate_Dialog_inpp" title="Basic dialog" style='display:none;'>
                            <p>Calculation done successfully</p>
                        </div>

                        <div id="delete_Dialog_inpp" title="Basic dialog" style='display:none;'>
                            <p>Successfully deleted record</p>
                        </div>

                        <div id="dialog-confirm_inpp" title="Delete record" style='display:none;'>
                            <p><span class="ui-icon ui-icon-alert" style="float:left; margin:12px 12px 20px 0;"></span>
                                Are you sure you want to permanently delete this record?
                            </p>
                        </div>
                    </div>
                </div>

            </div>
            <!-- /#page-wrapper -->

        </div>
        <!-- /#wrapper -->
    </body>

    <script>
            $(document).ready(function () {
                getproyectos(<%=session.getAttribute("idusu")%>,
                        $("#proyects_sel_inpp"),
                        $("#error_Dialog_inpp"));

                $("#opt_inpp").val("1");
                load_grade_sel_inpp("gra5l", 0);
                load_np_sel_inpp("npsn");

            });
            function showN(val) {
                document.getElementById("vista1").style.display = "none";
                document.getElementById("vista2").style.display = "block";
            }
            function showN2(val) {
                document.getElementById("vista3").style.display = "none";
                document.getElementById("vista4").style.display = "block";
            }


            function load_grade_sel_inpp(idcombo, opcion) {
                var parametros = {
                    "combo": idcombo,
                    "opcion": "5"
                };
                // alert("Entro");
                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    async: false,
                    data: parametros,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {

                        var newHtml = "<select class=\"form-control\" name=\"grade_sel_inpp\" id=\"grade_sel_inpp\" onchange=\"onchange_gra_inpp()\">" + data;
                        $("#div_grade_sel_inpp").html(newHtml);
                        $("#min_yield_inpp").val($("#grade_sel_inpp").val().split(",")[1]);


                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_inpp"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function onchange_gra_inpp() {
                var x = $("#grade_sel_inpp").val();
                $("#min_yield_inpp").val(x.split(",")[1]);
            }
            function cleanOut_inpp() {
                $("#waterc_inpp").val("");
                $("#volumec_inpp").val("");
                $("#volumect_inpp").val("");
                $("#thermalc_inpp").val("");
                $("#volumecr_inpp").val("");
                $("#pipelinef_inpp").val("");
                $("#volumer_inpp").val("");
                $("#incrementalv_inpp").val("");
                $("#compf_inpp").val("");
                $("#pressurec_inpp").val("");
            }

            function cleanIn_inpp() {
                $("#pipeo_inpp").val("");
                $("#pipew_inpp").val("");
                $("#pipei_inpp").val("");
                $("#testp_inpp").val("");
                $("#testt_inpp").val("");
                $("#pipelinel_inpp").val("");
            }

            function cleanAll_inpp() {
                cleanIn_inpp();
                cleanOut_inpp();
            }

            function onchange_Input_inpp(inp) {
                var sw = validateDecimal(inp.value);

                if (sw != true) {
                    inp.value = "";
                    cleanOut_inpp();
                }
                onchange_Input_zero(inp);
            }
            function calculate_perfil_inpp() {
                var C12 = $("#abs_entra_inpp").val();
                var C13 = $("#cota_entra_inpp").val();
                var C14 = $("#ang_entra_inpp").val();

                var I12 = $("#abs_sali_inpp").val();
                var I13 = $("#cota_sali_inpp").val();
                var I14 = $("#ang_sali_inpp").val();

                var C16 = $("#rad_curv_inpp").val();
                var C15 = $("#cota_mbaja_inpp").val();

                var T57 = $("#ang_entra_inpp").val();
                var T61 = $("#ang_sali_inpp").val();
                var T63 = $("#rad_curv_inpp").val();

                var a = (12 * 25.4 / 1000);

                C12 = C12 * a;
                C13 = C13 * a;

                I12 = I12 * a;
                I13 = I13 * a;

                C16 = C16 * a;
                C15 = C15 * a;

                // parametros
                var I37 = I12;
                var E19 = (I13 - C15) / Math.tan(I14 * Math.PI / 180);
                var E12 = 0;
                if (C12 > I12) {
                    E12 = -1;
                } else {
                    E12 = 1;
                }
                var E20 = C16 * Math.tan(I14 / 2 * Math.PI / 180);
                var E21 = C16 * Math.sin(I14 * Math.PI / 180);
                var I45 = I12 - (E19 * E12 + E20 * E12) + E21 * E12;
                var E13 = (C13 - C15) / Math.tan(C14 * Math.PI / 180);
                var E14 = C16 * Math.tan(C14 / 2 * Math.PI / 180);
                var G19 = C12 + E13 * E12 + E14 * E12;
                var G20 = I12 - (E19 * E12 + E20 * E12);
                var F48 = (G19 - G20) * -1 * E12;
                var E15 = C16 * Math.sin(C14 * Math.PI / 180);
                var B44 = C12 + E13 * E12 + E14 * E12 - E15 * E12;
                var E16 = C16 * (1 - Math.cos(C14 * Math.PI / 180));
                var B45 = E16 + C15;
                // fin parametros
                var T13 = 0;
                if (C12 < I12) {
                    T13 = (I37 - I45) * 3.28;
                } else {
                    T13 = (I45 - I37) * 3.28;
                }
                var J55 = 3.28 * C16 * I14 * Math.PI / 180;

                var J56 = 3.28 * F48;

                var J57 = 3.28 * C16 * C14 * Math.PI / 180;

                var J58 = 0;

                if (C12 < I12) {
                    J58 = (B44 - C12) * 3.28;
                } else {
                    J58 = (C12 - B44) * 3.28;
                }
                //Salidas
                $("#mea_length_en_inpp").val(T13);
                $("#ang_incl_en_inpp").val(T61);

                $("#mea_length_sl_inpp").val(J55);
                $("#hall_ang_sl_inpp").val(T61 / 2);
                $("#rad_cur_sl_inpp").val(T63);

                $("#mea_length_straight_inpp").val(J56);

                $("#mea_length_up_inpp").val(J57);
                $("#hall_ang_incl_up_inpp").val(T57 / 2);
                $("#rad_cur_up_inpp").val(T63);

                $("#mea_length_upEF_inpp").val(J58);
                $("#ang_incl_upEF_inpp").val(T57);
            }
            function calculate_inpp() {
                document.getElementById("vista2").style.display = "none";
                document.getElementById("vista3").style.display = "block";

                var variables = {
                    "E11": $("#pipe_dia_inpp").val(),
                    "E12": $("#pipe_wall_inpp").val(),
                    "E13": $("#min_yield_inpp").val(),
                    "E14": $("#mud_weight_inpp").val(),
                    "G11": $("#soil_frict_inpp").val(),
                    "G12": $("#fluid_drag_inpp").val(),
                    "E18": $("#mea_length_en_inpp").val(),
                    "E19": $("#ang_incl_en_inpp").val(),
                    "E22": $("#mea_length_sl_inpp").val(),
                    "E23": $("#hall_ang_sl_inpp").val(),
                    "E24": $("#rad_cur_sl_inpp").val(),
                    "E27": $("#mea_length_straight_inpp").val(),
                    "E30": $("#mea_length_up_inpp").val(),
                    "E31": $("#hall_ang_incl_up_inpp").val(),
                    "E32": $("#rad_cur_up_inpp").val(),
                    "E35": $("#mea_length_upEF_inpp").val(),
                    "E36": $("#ang_incl_upEF_inpp").val(),
                    "TextBox8": $("#youn_steel_inpp").val()


                };

                var isOk = validate(variables);

                if (isOk === false) {
                    alert("Debe diligenciar todos los campos");
                } else {
                    var unidades = {

                    };
                    var res = install_pipelines_Form(variables);

                    $("#peso_tub_aire_inpp").val(res[0]);
                    $("#vol_ext_tub_inpp").val(res[1]);
                    $("#vol_int_tub_inpp").val(res[2]);
                    $("#pes_lob_des_inpp").val(res[3]);
                    $("#pes_efe_tub_inpp").val(res[4]);
                    $("#fri_suelAB_inpp").val(res[5]);
                    $("#fue_arr_lodAB_inpp").val(res[6]);
                    $("#ten_secAB_inpp").val(res[7]);
                    $("#car_tra_acuAB_inpp").val(res[8]);
                    $("#fue_nor_inpp").val(res[9]);
                    $("#fri_del_suelBC_inpp").val(res[10]);
                    $("#fue_arr_lobBC_inpp").val(res[11]);
                    $("#ten_secBC_inpp").val(res[12]);
                    $("#car_tra_acuBC_inpp").val(res[13]);
                    $("#fri_del_sueCD_inpp").val(res[14]);
                    $("#fue_arr_lobCD_inpp").val(res[15]);
                    $("#ten_secCD_inpp").val(res[16]);
                    $("#car_tra_acuCD_inpp").val(res[17]);
                    $("#fue_norDE_inpp").val(res[18]);
                    $("#fri_sueDE_inpp").val(res[19]);
                    $("#fue_arr_lodDE_inpp").val(res[20]);
                    $("#ten_secDE_inpp").val(res[21]);
                    $("#car_tra_acuDE_inpp").val(res[22]);
                    $("#fri_sueEF_inpp").val(res[23]);
                    $("#fue_arr_lodEF_inpp").val(res[24]);
                    $("#ten_secEF_inpp").val(res[25]);
                    $("#car_tra_acuEF_inpp").val(res[26]);
                    $("#car_tra_total_inpp").val(res[27]);
                    $("#Bproject1").val(res[28]);
                    $("#Bproject2").val(res[29]);
                    $("#Bproject3").val(res[30]);
                    $("#Bproject4").val(res[31]);
                    $("#Bproject5").val(res[32]);
                    $("#Cproject1").val(res[33]);
                    $("#Cproject2").val(res[34]);
                    $("#Cproject3").val(res[35]);
                    $("#Cproject4").val(res[36]);
                    $("#Cproject5").val(res[37]);
                    $("#Dproject1").val(res[38]);
                    $("#Dproject2").val(res[39]);
                    $("#Dproject3").val(res[40]);
                    $("#Dproject4").val(res[41]);
                    $("#Dproject5").val(res[42]);
                    $("#Eproject1").val(res[43]);
                    $("#Eproject2").val(res[44]);
                    $("#Eproject3").val(res[45]);
                    $("#Eproject4").val(res[46]);
                    $("#Eproject5").val(res[47]);
                    $("#Fproject1").val(res[48]);
                    $("#Fproject2").val(res[49]);
                    $("#Fproject3").val(res[50]);
                    $("#Fproject4").val(res[51]);
                    $("#Fproject5").val(res[52]);

                    $("#Ballow1").val(res[53]);
                    $("#Callow1").val(res[58]);
                    $("#Ballow2").val(res[54]);
                    $("#Callow2").val(res[59]);
                    $("#Ballow3").val(res[55]);
                    $("#Callow3").val(res[60]);
                    $("#Ballow4").val(res[56]);
                    $("#Callow4").val(res[61]);
                    $("#Ballow5").val(res[57]);
                    $("#Callow5").val(res[62]);

                    $("#Dallow1").val(res[63]);
                    $("#Eallow1").val(res[68]);
                    $("#Dallow2").val(res[64]);
                    $("#Eallow2").val(res[69]);
                    $("#Dallow3").val(res[65]);
                    $("#Eallow3").val(res[70]);
                    $("#Dallow4").val(res[66]);
                    $("#Eallow4").val(res[71]);
                    $("#Dallow5").val(res[67]);
                    $("#Eallow5").val(res[72]);

                    $("#Fallow1").val(res[73]);
                    $("#Bpass1").val(res[78]);
                    $("#Fallow2").val(res[74]);
                    $("#Bpass2").val(res[79]);
                    $("#Fallow3").val(res[75]);
                    $("#Bpass3").val(res[80]);
                    $("#Fallow4").val(res[76]);
                    $("#Bpass4").val(res[81]);
                    $("#Fallow5").val(res[77]);
                    $("#Bpass5").val(res[82]);

                    $("#Cpass1").val(res[83]);
                    $("#Dpass1").val(res[88]);
                    $("#Cpass2").val(res[84]);
                    $("#Dpass2").val(res[89]);
                    $("#Cpass3").val(res[85]);
                    $("#Dpass3").val(res[90]);
                    $("#Cpass4").val(res[86]);
                    $("#Dpass4").val(res[91]);
                    $("#Cpass5").val(res[87]);
                    $("#Dpass5").val(res[92]);

                    $("#Epass1").val(res[93]);
                    $("#Fpass1").val(res[98]);
                    $("#Epass2").val(res[94]);
                    $("#Fpass2").val(res[99]);
                    $("#Epass3").val(res[95]);
                    $("#Fpass3").val(res[100]);
                    $("#Epass4").val(res[96]);
                    $("#Fpass4").val(res[101]);
                    $("#Epass5").val(res[97]);
                    $("#Fpass5").val(res[102]);

                    show_OkDialog($("#calculate_Dialog_inpp"), "Proceso satisfactorio");
                }
            }

            function save_inpp() {
                var sel = $("input[type='radio'][name='pipe_rad_inpp']:checked");

                var parametros = {
                    "E11": $("#pipe_dia_inpp").val(),
                    "E12": $("#pipe_wall_inpp").val(),
                    "E13": $("#min_yield_inpp").val(),
                    "E14": $("#mud_weight_inpp").val(),
                    "G11": $("#soil_frict_inpp").val(),
                    "G12": $("#fluid_drag_inpp").val(),
                    "F10": $("#pipe_dia_inpp").val(),

                    "pip": $("#pip").val()



                };

                var isOk = validate(parametros);

                if (isOk === false) {
                    alert("Debe realizar el càlculo");
                } else {

                    var des = prompt("Digite la descripción del cálculo:", "");

                    if (des != null) {
                        if (des.trim() == "") {
                            alert("Debe diligenciar una descripciòn");
                        } else {
                            parametros.description_inpp = des;

                            $.ajax({
                                type: "POST",
                                url: "../manager.jsp",
                                data: parametros,
                                beforeSend: function (xhr) {
                                    block("Cargando...");
                                },
                                success: function (data, status, request) {
                                    $("#id_inpp").val(data);
                                    $("#description_inpp").html(parametros.description_inpp);
                                    show_OkDialog($("#save_Dialog_inpp"), "Proceso satisfactorio");
                                },
                                error: function (xhr, ajaxOptions, err) {
                                    alert(err);
                                    show_OkDialog($("#error_Dialog_inpp"), "Error");
                                },
                                complete: function () {
                                    unBlock();
                                }
                            });

                        }
                    }
                }

            }

            function deleteReg_inpp() {
                var parametros = {
                    "id_inpp": $("#id_inpp").val(),
                    "opcion": "3"
                };
                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        $("#id_inpp").val("");
                        $("#description_inpp").val("");
                        cleanAll_inpp();
                        show_OkDialog($("#delete_Dialog_inpp"), "Proceso satisfactorio");
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_inpp"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_np_sel_inpp(idcombo) {
                var parametros = {
                    "combo": idcombo,
                    "type": "5l",
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
                        var newHtml = "<select class=\"form-control\" name=\"nomps_sel_inpp\" id= \"nomps_sel_inpp\" onchange=\"onchange_nps_inpp()\">" + data;

                        $("#div_nomps_sel_inpp").html(newHtml);
                        // pipe_dia_inpp pipe_wall_inpp 

                        var po = $("#nomps_sel_inpp").val();

                        $("#pipe_dia_inpp").val(po);
                        // $("#bodh_inpp").val(po1);

                        load_wt_sel_inpp();
                        onchange_nps_inpp();
                        onchange_wt_inpp();
                        onchange_gra_inpp();


                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_inpp"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            function load_wt_sel_inpp() {
                var idOp = $("#nomps_sel_inpp").val();
                //alert(idOp);
                var parametros = {
                    "combo": "wtn",
                    "nps": idOp,
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
                        //alert(data); wthi_sel_inpp1
                        var newHtml = "<select class=\"form-control\" name=\"wthi_sel_inpp\" id= \"wthi_sel_inpp\" onchange=\"onchange_wt_inpp()\">" + data;

                        $("#div_wallt_sel_inpp").html(newHtml);


                        if (data.trim() != "") {
                            var val = $("#wthi_sel_inpp").val().trim().split(",");
                            $("#pipe_wall_inpp").val(val[1]);
                            // $("#pipei_inpp").val(val[2]); 
                        }

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_inpp"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function onchange_nps_inpp() {
                //cleanOut_inpp();
                var po = $("#nomps_sel_inpp").val();
                $("#pipe_dia_inpp").val(po);
                load_wt_sel_inpp();
            }



            function onchange_wt_inpp() {
                //cleanOut_inpp();
                var val = $("#wthi_sel_inpp").val().trim().split(",");
                $("#pipe_wall_inpp").val(val[1]);
            }



        </script>  

</html>