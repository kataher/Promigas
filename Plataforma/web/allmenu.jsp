<%-- 
    Document   : almenu
    Created on : 26/09/2018, 02:21:47 PM
    Author     : alberb
--%>
<%@page import="org.json.JSONObject"%>
<%

    session = request.getSession();
    if (session.getAttribute("fullname") != null) {
        String fname = session.getAttribute("fullname").toString();
        //String name = session.getAttribute("name").toString();
        //String idusu = session.getAttribute("idusu").toString();
        String roles = session.getAttribute("roles").toString();
        //String tipo = session.getAttribute("tipo").toString();
%>
<nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
    <div class="navbar-header">
        <a class="navbar-brand"><% out.print(fname);%></a>
    </div>
    <!-- /.navbar-header -->
    <ul class="nav navbar-top-links navbar-right">
        <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i>
            </a>
            <ul class="dropdown-menu dropdown-user">
                <li><a href="#"><i class="fa fa-user fa-fw"></i> <% out.print(fname);%> </a>
                </li>
                <li><a href="#"><i class="fa fa-gear fa-fw"></i> Opciones</a>
                </li>
                <li class="divider"></li>
                <li><a href="/Plataforma/index.jsp"><i class="fa fa-sign-out fa-fw"></i> Salir</a>
                </li>
            </ul>
            <!-- /.dropdown-user -->
        </li>
        <!-- /.dropdown -->
    </ul>
    <!-- /.navbar-top-links -->

    <div class="navbar-default sidebar" role="navigation">
        <div class="sidebar-nav navbar-collapse">
            <ul class="nav" id="side-menu">
                <li>
                    <a href="/Plataforma/projects.jsp"><i class="fa fa-dashboard fa-fw"></i> Mis Proyectos</a>
                </li>

                <%
                    if (roles.contains("-3-") || roles.contains("-1-") ) {
                %>
                <li>
                    <a href="createproject.jsp"><i class="fa fa-dashboard fa-fw"></i> Crear Proyecto</a>
                </li>
                <%
                    }
                %>
                <!-- /Administracion -->
                <%
                    if (roles.contains("-1-")) {
                %>
                <li>
                    <a href="#" ><i class="fa fa-dashboard fa-fw"></i> Administración<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="/Plataforma/Administration/user.jsp"><i class="fa fa-sitemap fa-fw"></i>Usuarios</a>
                        </li>
                        <li>
                            <a href="/Plataforma/Administration/activities.jsp"><i class="fa fa-sitemap fa-fw"></i>Actividades</a>
                        </li>
                        <li>
                            <a href="/Plataforma/Administration/phases.jsp"><i class="fa fa-sitemap fa-fw"></i>Fases</a>
                        </li>
                        <li>
                            <a href="/Plataforma/Administration/specialties.jsp"><i class="fa fa-sitemap fa-fw"></i>Especialidades</a>
                        </li>
                        <li>
                            <a href="/Plataforma/Administration/areas.jsp"><i class="fa fa-sitemap fa-fw"></i>Areas</a>
                        </li>
                    </ul>
                </li>
                <%
                    }
                %>
                <!-- /Componentes de diseño -->
                <li>
                    <a href="#" ><i class="fa fa-sitemap fa-fw"></i>Componentes de Diseño<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="#">1. Pipeline Facilities <span class="fa arrow"></span></a> 
                            <ul class="nav nav-third-level">
                                <li> 
                                    <a href="#">1.1 Pipeline Compressors <span class="fa arrow"></span></a>  
                                    <ul class="nav nav-third-level"> 
                                        <li><a href="/Plataforma/Modules/Pipeline/adiabatichead.jsp">1.1.1. Centrifugal Compressor-Adiabatic Head</p></a> </li>
                                        <li><a href="/Plataforma/Modules/Pipeline/adiabatichorsepower.jsp">1.1.2. Centrifugal Compressor-Required
                                                Adiabatic Horsepower</a> </li>
                                        <li><a href="/Plataforma/Modules/Pipeline/polytropichorsepower.jsp">1.1.3. Centrifugal Compressor- Required
                                                Polytropic Horsepower</a> </li>
                                        <li><a href="/Plataforma/Modules/Pipeline/fanlaws.jsp">1.1.4. Centrifugal Compressor-Fan Laws</a> </li>
                                        <li><a href="/Plataforma/Modules/Pipeline/capacityhorsepower.jsp">1.1.5. Reciprocating Compressor-Cylinder
                                                Equivalent Capacity & HP</a> </li>
                                        <li><a href="/Plataforma/Modules/Pipeline/diametergasvelocity.jsp">1.1.6.  Compressor Station Piping-Gas Velocity & Pipe Diameter </a> </li>
                                        <li><a href="/Plataforma/Modules/Pipeline/pipingpipewall.jsp">1.1.7. Piping-Pipe Wall Thickness</a> </li>
                                    </ul>
                                </li> 
                                <li><a href="/Plataforma/Modules/Pipeline/reinforcementwelded.jsp">1.2. Reinforcement of Welded Branch Connection</a> </li>
                                <li><a href="/Plataforma/Modules/Pipeline/regulatorstation.jsp">1.3. Regulator & Station Piping Sizing</a> </li>
                                <li><a href="/Plataforma/Modules/Pipeline/reliefvalvesizing.jsp">1.4. Relief Valve Sizing</a> </li>
                                <li><a href="/Plataforma/Modules/Pipeline/reliefvalvereaction.jsp">1.5. Relief Valve-Reaction Force</a> </li>
                                <li><a href="/Plataforma/Modules/Pipeline/hottapsizing.jsp">1.6. Hot-Tap Sizing</a> </li>

                            </ul>
                        </li>
                        <li>
                            <a href="#">2. Hydraulics <span class="fa arrow"></span> </a> 
                            <ul class="nav nav-third-level">
                                <li><a href="/Plataforma/Modules/Hydraulics/PanhandleA.jsp">2.1. PanhandleA</a> </li>
                                <li><a href="/Plataforma/Modules/Hydraulics/PanhandleB.jsp">2.2. PanhandleB</a> </li>
                                <li><a href="/Plataforma/Modules/Hydraulics/colebrookwhite.jsp">2.3. ColebrookWhite</a> </li>
                                <li><a href="/Plataforma/Modules/Hydraulics/weymouth.jsp">2.4. Weymouth</a> </li>
                                <li><a href="/Plataforma/Modules/Hydraulics/aga.jsp">2.5. A.G.A.FullyTurbulent</a> </li>
                                <li><a href="/Plataforma/Modules/Hydraulics/igt.jsp">2.6. IGT Distribution</a> </li>    
                                <li><a href="/Plataforma/Modules/Hydraulics/mueller.jsp">2.7. Mueller High Pressure</a> </li>   
                                <li><a href="/Plataforma/Modules/Hydraulics/fritzche.jsp">2.8. Fritzche</a> </li> 
                                <li><a href="/Plataforma/Modules/Hydraulics/spitzglass.jsp">2.9 Spitzglass</a> </li>
                            </ul>
                        </li>
                        <li>
                            <a href="#">3. Pipe Design & Stress Analysis <span class="fa arrow"></span></a> 
                            <ul class="nav nav-third-level">
                                <li><a href="/Plataforma/Modules/StellPipeDesing/bendingstress.jsp">3.1. Bending Stress & Deflection</a> </li>
                                <li><a href="/Plataforma/Modules/StellPipeDesing/bendingstressfluid.jsp">3.2. Bending Stress Caused by Fluid Flowing Around Pipeline</a> </li>
                                <li><a href="/Plataforma/Modules/StellPipeDesing/buoyancyanalisiscoating.jsp">3.3. Buoyancy Analysis & Concrete Coating Requirements</a> </li>
                                <li><a href="/Plataforma/Modules/StellPipeDesing/buoyancyanalisisweights.jsp">3.4. Buoyancy Analysis & Concrete Weights Spacing</a> </li>
                                <li><a href="/Plataforma/Modules/StellPipeDesing/designpressure.jsp">3.5. Design Pressure</a> </li>
                                <li><a href="/Plataforma/Modules/StellPipeDesing/desingpressurepolyethylene.jsp">3.6. Design Pressure Polyethylene Pipe</a> </li>
                                <!--li><a href="/Plataforma/Modules/StellPipeDesing/gaspipeline.jsp">3.7. Gas Pipeline Rupture Analysis Depth, Radius and Width of Crater</a> </li-->
                                <li><a href="/Plataforma/Modules/StellPipeDesing/hoopstress.jsp">3.7. Hoop Stress & Longitudinal Stress</a> </li>
                                <li><a href="/Plataforma/Modules/StellPipeDesing/installmentpipelines.jsp">3.8. Installment of Pipelines by Horizontal Directional Drilling - Full Force and Installation Stress Analysis</a> </li>
                                <li><a href="/Plataforma/Modules/StellPipeDesing/installmentpipelinesoperating.jsp">3.9. Installment of Pipelines by Horizontal Directional Drilling - Operation Stress Analysis</a> </li>
                                <li><a href="/Plataforma/Modules/StellPipeDesing/internalpressure.jsp">3.10. Internal Pressure - % SMYS</a> </li>
                                <li><a href="/Plataforma/Modules/StellPipeDesing/linearthermal.jsp">3.11. Linear Thermal Pipeline Expansion</a> </li>
                                <li><a href="/Plataforma/Modules/StellPipeDesing/longitudinalstress.jsp">3.12. Longitudinal Stress in Movement of in-Service Pipelines</a> </li>
                                <li><a href="/Plataforma/Modules/StellPipeDesing/maximunallowable.jsp">3.13. Maximum Allowable Pipe Span Length</a> </li>
                                <li><a href="/Plataforma/Modules/StellPipeDesing/maximunimpact.jsp">3.14. Maximum, Impact Load & Penetration Depth</a> </li>
                                <li><a href="/Plataforma/Modules/StellPipeDesing/pipeanchorforce.jsp">3.15. Pipe Anchor Force Analysis</a> </li>
                                <li><a href="/Plataforma/Modules/StellPipeDesing/restrainedpl.jsp">3.16. Restrained PL Stress Analysis</a> </li>
                                <!--li><a href="/Plataforma/Modules/StellPipeDesing/unpressuredpipe.jsp">3.18. Requirements to move Unpressured Pipe</a> </li-->
                                <li><a href="/Plataforma/Modules/StellPipeDesing/unrestrainedpl.jsp">3.17. Unrestrained PL Stress Analysis</a> </li>
                                <li><a href="/Plataforma/Modules/StellPipeDesing/wallthickness.jsp">3.18. Wall Thickness - Straight Steel Pipe</a> </li>
                                <li><a href="/Plataforma/Modules/StellPipeDesing/wallthicknesspolyethylene.jsp">3.19. Wall Thickness Polyethylene Pipe</a> </li>

                            </ul>
                        </li>
                        <li>
                            <a href="#">4. Steel Pipeline Crossings <span class="fa arrow"></span></a> 
                            <ul class="nav nav-third-level">
                                <li><a href="/Plataforma/Modules/SteelPipeline/DesignUncasedCrossings.jsp">4.1. Design of Uncased Crossings</a> </li>
                                <li><a href="/Plataforma/Modules/SteelPipeline/SteelPipelinesCH.jsp">4.2. API 1102 - Gas Pipeline Crossing Railroad </a> </li>
                                <li><a href="/Plataforma/Modules/SteelPipeline/SteelPipelinesCR.jsp">4.3. API 1102 - Gas Pipeline Crossing Highway </a> </li>
                                <li><a href="/Plataforma/Modules/SteelPipeline/TrackLoadAnalysis.jsp">4.4. Track Load Analysis </a> </li>
                                <li><a href="/Plataforma/Modules/SteelPipeline/WheelLoadAnalysis.jsp">4.5. Wheel Load Analysis </a> </li>

                            </ul>
                        </li>
                        <li>
                            <a href="#">5. External Corrosion direct assessment toolset<span class="fa arrow"></span></a> 
                            <ul class="nav nav-third-level">
                                <li><a href="/Plataforma/Modules/ExternalCorrosion/erf.jsp">5.1. Calculo de ERF</a> </li>


                            </ul>
                        </li>
                        <li>
                            <a href="#">6. Pipeline Testing <span class="fa arrow"></span></a> 
                            <ul class="nav nav-third-level">
                                <li><a href="/Plataforma/Modules/PipelingTesting/pipelinehydrostatic.jsp">6.1. Pipeline Hydrostatic Testing</a> </li>
                                <li><a href="/Plataforma/Modules/PipelingTesting/gaspipeline.jsp">6.2. Pipeline Pressure Testing - Maximun Pressure Drop</a> </li>           
                                <li><a href="/Plataforma/Modules/PipelingTesting/packpipeline.jsp">6.3. Pack in Pipeline</a> </li>

                            </ul>
                        </li>
                        <li>
                            <a href="#">7. Pipeline Corrosion<span class="fa arrow"></span></a> 
                            <ul class="nav nav-third-level">
                                <li><a href="/Plataforma/Modules/PipelineCorrosion/maop.jsp">7.1. MAOP</a> </li>
                                <li><a href="/Plataforma/Modules/PipelineCorrosion/maximunallowable.jsp">7.2. Maximum Allowable Longitudinal Extent of Corrosion </a> </li>
                                <li><a href="/Plataforma/Modules/PipelineCorrosion/rateofelectrical.jsp">7.3. Rate of Electrical Current Flow Through the Corrosion Cell</a> </li>
                                <li><a href="/Plataforma/Modules/PipelineCorrosion/relationship.jsp">7.4. Relationship Between Resistance and Resistivity</a> </li>
                                <li><a href="/Plataforma/Modules/PipelineCorrosion/electrolyteresistance.jsp">7.5. Electrolyte Resistance From The Surface of an Electrode to any Distance</a> </li>
                                <li><a href="/Plataforma/Modules/PipelineCorrosion/ohm.jsp">7.6. Ohm´s Law For Corrosion Current</a> </li>
                                <li><a href="/Plataforma/Modules/PipelineCorrosion/electrialresistance.jsp">7.7. Electrical Resistance of a Conductor</a> </li>

                            </ul>
                        </li>
                        <li>
                            <a href="#">8. Cathodic Protection <span class="fa arrow"></span></a> 
                            <ul class="nav nav-third-level">
                                <li><a href="/Plataforma/Modules/CathodicProtection/estimatedweight.jsp">8.1. Estimated Weight of a Magnesium Anode</a> </li>
                                <li><a href="/Plataforma/Modules/CathodicProtection/resistanceearthiagb.jsp">8.2. Resistance to Earth of an Impressed Anode Ground Bed</a> </li>
                                <li><a href="/Plataforma/Modules/CathodicProtection/rudenbergfomula.jsp">8.3. Rudenbergs Formula For the Placement of an Anode Ground Bed</a> </li>
                                <li><a href="/Plataforma/Modules/CathodicProtection/resistanceearthsva.jsp">8.4. Resistance to Earth of a Single Vertical Anode</a> </li>
                                <li><a href="/Plataforma/Modules/CathodicProtection/resistanceearthmva.jsp">8.5. Resistance to Earth Multiple Vertical Anode</a> </li>
                                <li><a href="/Plataforma/Modules/CathodicProtection/resistanceearthsha.jsp">8.6. Resistance to Earth of a Single Horizontal Anode</a> </li>
                                <li><a href="/Plataforma/Modules/CathodicProtection/requirednumberanodes.jsp">8.7. Required Number of Anodes & the Total Current Requirement</a> </li>
                                <li><a href="/Plataforma/Modules/CathodicProtection/powerconsumption.jsp">8.8. Power Consumption of a Cathodic Protection Rectifier</a> </li>

                            </ul>
                        </li>
                        <li>
                            <a href="#">9. Surcharge Live Load on Buried PE Pipe & Pipeline Crossings<span class="fa arrow"></span></a> 
                            <ul class="nav nav-third-level">
                                <li><a href="/Plataforma/Modules/BuriedPipe/installation.jsp">9.1. PE Pipe - Pull Force & Installation Stress Analysis</a> </li>
                                <li><a href="/Plataforma/Modules/BuriedPipe/allowable.jsp">9.2. HDD PE Pipe - ATL Allowable Tensile Load During Pull-In Installation</a> </li>
                                <li><a href="/Plataforma/Modules/BuriedPipe/postinstallation.jsp">9.3. PE Pipe - Post-Installation Stress Analysis</a> </li>
                            </ul>
                        </li>
                        <li>
                            <a href="#">10. Major Equipment Selector <span class="fa arrow"></span></a> 
                            <ul class="nav nav-third-level">
                                <li> 
                                    <a href="#">10.1. Meters <span class="fa arrow"></span></a>  
                                    <ul class="nav nav-third-level"> 
                                        <li><a href="/Plataforma/Modules/Selector/Medidores/medmasicos.jsp">10.1.1. Mass Meters</a> </li>
                                        <li><a href="/Plataforma/Modules/Selector/Medidores/medrotatorios.jsp">10.1.2. Rotary Meters</a> </li>
                                        <li><a href="/Plataforma/Modules/Selector/Medidores/medultrasonicos.jsp">10.1.3. Ultrasonic Meters</a> </li>
                                        <li><a href="/Plataforma/Modules/Selector/Medidores/turbina.jsp">10.1.4. Turbine Type Meters</a> </li>
                                        <li><a href="/Plataforma/Modules/Selector/platina.jsp">10.1.5. Limiting Platina</a> </li>
                                    </ul>
                                </li> 
                                <li><a href="/Plataforma/Modules/Selector/computadores.jsp">10.2. Computers</a> </li>
                                <li><a href="/Plataforma/Modules/Selector/valvulas.jsp">10.3. Safety and Relief Valves</a> </li>
                                <li><a href="/Plataforma/Modules/Selector/Actuadores/actuadores.jsp">10.4. Actuators</a> </li>
                                 <!-- <li> 
                                    <a href="#">10.4. Actuators<span class="fa arrow"></span></a>  
                                    <ul class="nav nav-third-level"> 
                                        <li><a href="/Plataforma/Modules/Selector/Actuadores/actuadores.jsp">10.4.1 Actuators</a> </li>
                                        <li><a href="/Plataforma/Modules/Selector/Actuadores/actuadoresadmin.jsp">10.4.2 Administration</a> </li>
                                    </ul>
                                </li>-->
                                <li><a href="/Plataforma/Modules/Selector/valslamshut.jsp">10.5. Slam Shut Valves</a> </li>
                                <li><a href="/Plataforma/Modules/Selector/mototized.jsp">10.6. Motorized Valves</a> </li>
                                <li><a href="/Plataforma/Modules/Selector/transmisores.jsp">10.7. Transmitters</a> </li>
                                <li><a href="/Plataforma/Modules/Selector/reguladores.jsp">10.9. Regulators</a> </li>
                            </ul>
                        </li>

                    </ul>
                </li>
            </ul>
        </div>
        <!-- /.sidebar-collapse -->
    </div>
    <!-- /.navbar-static-side -->
</nav>


<%
} else {
%>
<script type="text/javascript">
    window.location = "/Plataforma/index.jsp";
</script>
<%
    }
%>