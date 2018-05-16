<% int tipo = Integer.parseInt(session.getAttribute("tipo").toString());

    if (tipo != 6 && tipo != 7 && tipo != 1) {
%>
<li>
    <a href="myproject.jsp"><i class="fa fa-dashboard fa-fw"></i> Mis Proyectos</a>
</li>
<%
    }
    if (tipo == 1) {
%>
<li>
    <a href="#" ><i class="fa fa-dashboard fa-fw"></i> Administración<span class="fa arrow"></span></a>
    <ul class="nav nav-third-level"><li>
            <a href="#" onClick="cargarFormula('Administration/user.jsp');"><i class="fa fa-sitemap fa-fw"></i>Usuarios</a>
        </li>
        <li>
            <a href="#" onClick="cargarFormula('Administration/activities.jsp');"><i class="fa fa-sitemap fa-fw"></i>Actividades</a>
        </li>
        <li>
            <a href="#" onClick="cargarFormula('Administration/phases.jsp');"><i class="fa fa-sitemap fa-fw"></i>Fases</a>
        </li>
        <li>
            <a href="#" onClick="cargarFormula('Administration/specialties.jsp');"><i class="fa fa-sitemap fa-fw"></i>Especialidades</a>
        </li>
    </ul>
</li>
<% }
    if (tipo == 4) {
%>
<li>
    <a href="createproject.jsp"><i class="fa fa-dashboard fa-fw"></i> Crear Proyecto</a>

</li>
<% }
    if (tipo == 7 || tipo == 2) {
%>
<li>
    <a href="#">
        <i class="fa fa-sitemap fa-fw"></i>Componentes de Diseño<span class="fa arrow"></span>
    </a>



<li>
    <a href="#">1. Pipeline Facilities <span class="fa arrow"></span></a>
    <ul class="nav nav-third-level">
        <li>
            <a href="#">1.1 Pipeline Compressors <span class="fa arrow"></span></a>
            <ul class="nav nav-third-level">
                <li><a href="#" onClick="cargarFormula('Modules/Pipeline/adiabatichead.jsp', this);">1.1.1. Centrifugal Compressor-Adiabatic Head</p></a> </li>
                <li><a href="#" onClick="cargarFormula('Modules/Pipeline/adiabatichorsepower.jsp', this);">1.1.2. Centrifugal Compressor-Required
                        Adiabatic Horsepower</a> </li>
                <li><a href="#" onClick="cargarFormula('Modules/Pipeline/polytropichorsepower.jsp', this);">1.1.3. Centrifugal Compressor- Required
                        Polytropic Horsepower</a> </li>
                <li><a href="#" onClick="cargarFormula('Modules/Pipeline/fanlaws.jsp', this);">1.1.4. Centrifugal Compressor-Fan Laws</a> </li>
                <li><a href="#" onClick="cargarFormula('Modules/Pipeline/capacityhorsepower.jsp', this);">1.1.5. Reciprocating Compressor-Cylinder
                        Equivalent Capacity & HP</a> </li>
                <li><a href="#" onClick="cargarFormula('Modules/Pipeline/diametergasvelocity.jsp', this);">1.1.6.  Compressor Station Piping-Gas Velocity & Pipe Diameter </a> </li>
                <li><a href="#" onClick="cargarFormula('Modules/Pipeline/pipingpipewall.jsp', this);">1.1.7. Piping-Pipe Wall Thickness</a> </li>
            </ul>
        </li>

        <li><a href="#" onClick="cargarFormula('Modules/Pipeline/reinforcementwelded.jsp', this);">1.2. Reinforcement of Welded Branch Connection</a> </li>
        <li><a href="#" onClick="cargarFormula('Modules/Pipeline/regulatorstation.jsp', this);">1.3. Regulator & Station Piping Sizing</a> </li>
        <li><a href="#" onClick="cargarFormula('Modules/Pipeline/reliefvalvesizing.jsp', this);">1.4. Relief Valve Sizing</a> </li>
        <li><a href="#" onClick="cargarFormula('Modules/Pipeline/reliefvalvereaction.jsp', this);">1.5. Relief Valve-Reaction Force</a> </li>
        <li><a href="#" onClick="cargarFormula('Modules/Pipeline/hottapsizing.jsp', this);">1.6. Hot-Tap Sizing</a> </li>

    </ul>
</li>
<li>
    <a href="#">2. Hydraulics <span class="fa arrow"></span></a> 
    <ul class="nav nav-third-level">
        <li><a href="#" onClick="cargarFormula('Modules/Hydraulics/PanhandleA.jsp', this);">2.1. PanhandleA</a> </li>
        <li><a href="#" onClick="cargarFormula('Modules/Hydraulics/PanhandleB.jsp', this);">2.2. PanhandleB</a> </li>
        <li><a href="#" onClick="cargarFormula('Modules/Hydraulics/colebrookwhite.jsp', this);">2.3. ColebrookWhite</a> </li>
        <li><a href="#" onClick="cargarFormula('Modules/Hydraulics/weymouth.jsp', this);">2.4. Weymouth</a> </li>
        <li><a href="#" onClick="cargarFormula('Modules/Hydraulics/aga.jsp', this);">2.5. A.G.A.FullyTurbulent</a> </li>
        <li><a href="#" onClick="cargarFormula('Modules/Hydraulics/igt.jsp', this);">2.6. IGT Distribution</a> </li>    
        <li><a href="#" onClick="cargarFormula('Modules/Hydraulics/mueller.jsp', this);">2.7. Muller High Pressure</a> </li>   
        <li><a href="#" onClick="cargarFormula('Modules/Hydraulics/fritzche.jsp', this);">2.8. Fritzche</a> </li> 
        <li><a href="#" onClick="cargarFormula('Modules/Hydraulics/spitzglass.jsp', this);">2.9 Spitzglass</a> </li>
    </ul>
</li>
<li>
    <a href="#">3. Steel Pipe Design & Stress Analysis  <span class="fa arrow"></span></a> 
    <ul class="nav nav-third-level"> 
        <li><a href="#" onClick="cargarFormula('Modules/StellPipeDesing/bendingstress.jsp', this);">3.1. Bending Stress & Deflection</a> </li>
        <li><a href="#" onClick="cargarFormula('Modules/StellPipeDesing/bendingstressfluid.jsp', this);">3.2. Bending Stress Caused by Fluid Flowing Around Pipeline</a> </li>
        <li><a href="#" onClick="cargarFormula('Modules/StellPipeDesing/buoyancyanalisiscoating.jsp', this);">3.3. Buoyancy Analysis & Concrete Coating Requeriments</a> </li>
        <li><a href="#" onClick="cargarFormula('Modules/StellPipeDesing/buoyancyanalisisweights.jsp', this);">3.4. Buoyancy Analysis & Concrete Weights Spacing</a> </li>
        <li><a href="#" onClick="cargarFormula('Modules/StellPipeDesing/designpressure.jsp', this);">3.5. Design Pressure</a> </li>
        <li><a href="#" onClick="cargarFormula('Modules/StellPipeDesing/desingpressurepolyethylene.jsp', this);">3.6. Design Pressure Polyethylene Pipe</a> </li>
        <li><a href="#" onClick="cargarFormula('Modules/StellPipeDesing/gaspipeline.jsp', this);">3.7. Gas Pipeline Rupture Analysis Depth, Radius and Width of Crater</a> </li>
        <li><a href="#" onClick="cargarFormula('Modules/StellPipeDesing/hoopstress.jsp', this);">3.8. Hoop Stress & Longitudinal Stress</a> </li>
        <li><a href="#" onClick="cargarFormula('Modules/StellPipeDesing/installmentpipelines.jsp', this);">3.9. Installment of Pipelines by Horizontal Directional Drilling - Full Force and Installation Stress Analysis</a> </li>
        <li><a href="#" onClick="cargarFormula('Modules/StellPipeDesing/installmentpipelinesoperating.jsp', this);">3.10. Installment of Pipelines by Horizontal Directional Drilling - Operation Stress Analysis</a> </li>
        <li><a href="#" onClick="cargarFormula('Modules/StellPipeDesing/internalpressure.jsp', this);">3.11. Internal Pressure - % SMYS</a> </li>
        <li><a href="#" onClick="cargarFormula('Modules/StellPipeDesing/linearthermal.jsp', this);">3.12. Linear Thermal Pipeline Expansion</a> </li>
        <li><a href="#" onClick="cargarFormula('Modules/StellPipeDesing/longitudinalstress.jsp', this);">3.13. Longitudinal Stress in Movement of in-Service Pipelines</a> </li>
        <li><a href="#" onClick="cargarFormula('Modules/StellPipeDesing/maximunallowable.jsp', this);">3.14. Maximun Allowable Pipe Span Lenght</a> </li>
        <li><a href="#" onClick="cargarFormula('Modules/StellPipeDesing/maximunimpact.jsp', this);">3.16. Maximun Impact Load & Penetration Depth</a> </li>
        <li><a href="#" onClick="cargarFormula('Modules/StellPipeDesing/pipeanchorforce.jsp', this);">3.15. Pipe Anchor Force Analysis</a> </li>
        <li><a href="#" onClick="cargarFormula('Modules/StellPipeDesing/restrainedpl.jsp', this);">3.16. Restrained PL Stress Analysis</a> </li>
        <li><a href="#" onClick="cargarFormula('Modules/StellPipeDesing/unpressuredpipe.jsp', this);">3.17. Requeriments to move Unpressure Pipe</a> </li>
        <li><a href="#" onClick="cargarFormula('Modules/StellPipeDesing/unrestrainedpl.jsp', this);">3.18. Unrestrained PL Stress Analysis</a> </li>
        <li><a href="#" onClick="cargarFormula('Modules/StellPipeDesing/wallthickness.jsp', this);">3.19. Espesor de pared - Straight Steel Pipe</a> </li>
        <li><a href="#" onClick="cargarFormula('Modules/StellPipeDesing/wallthicknesspolyethylene.jsp', this);">3.20. Wall Thickness Polyethylene Pipe</a> </li>

    </ul>
</li>
<li>
    <a href="#">4. Steel Pipeline Crossings  <span class="fa arrow"></span></a> 
    <ul class="nav nav-third-level">
        <li><a href="#" onClick="cargarFormula('Modules/SteelPipeline/DesignUncasedCrossings.jsp', this);">4.1. Design of Uncased Crossings</a> </li>
        <li><a href="#" onClick="cargarFormula('Modules/SteelPipeline/SteelPipelinesCH.jsp', this);">4.2. API 1102 - Gas Pipeline Crossing Railroad </a> </li>
        <li><a href="#" onClick="cargarFormula('Modules/SteelPipeline/SteelPipelinesCR.jsp', this);">4.3. API 1102 - Gas Pipeline Crossing Highway </a> </li>
        <li><a href="#" onClick="cargarFormula('Modules/SteelPipeline/TrackLoadAnalysis.jsp', this);">4.4. Track Load Analysis </a> </li>
        <li><a href="#" onClick="cargarFormula('Modules/SteelPipeline/WheelLoadAnalysis.jsp', this);">4.5. Wheel Load Analysis </a> </li>

    </ul>
</li>
<li>
    <a href="#">5. External Corrosion direct assessment toolset <span class="fa arrow"></span></a>
    <ul class="nav nav-third-level">
        <li><a href="#" onClick="cargarFormula('Modules/ExternalCorrosion/erf.jsp', this);">5.1. Calculo de ERF</a> </li>


    </ul>
</li>
<li>
    <a href="#">6. Pipeline Testing <span class="fa arrow"></span></a>
    <ul class="nav nav-third-level">
        <li><a href="#" onClick="cargarFormula('Modules/PipelingTesting/pipelinehydrostatic.jsp', this);">6.1. Pipeline Hydrostatic Testing</a> </li>
        <li><a href="#" onClick="cargarFormula('Modules/PipelingTesting/gaspipeline.jsp', this);">6.2. Pipeline Pressure Testing - Maximun Pressure Drop</a> </li>           
        <li><a href="#" onClick="cargarFormula('Modules/PipelingTesting/packpipeline.jsp', this);">6.3. Pack in Pipeline</a> </li>

    </ul>
</li>
<li>
    <a href="#">7. Pipeline Corrosion <span class="fa arrow"></span></a>
    <ul class="nav nav-third-level">
        <li><a href="#" onClick="cargarFormula('Modules/PipelineCorrosion/maop.jsp', this);">7.1. MAOP</a> </li>
        <li><a href="#" onClick="cargarFormula('Modules/PipelineCorrosion/maximunallowable.jsp', this);">7.2. Maximun Allowable Longitudinal Extent of Corrosion </a> </li>
        <li><a href="#" onClick="cargarFormula('Modules/PipelineCorrosion/rateofelectrical.jsp', this);">7.3. Rate of Electrical Current Flow Througth the Corrosion Cell</a> </li>
        <li><a href="#" onClick="cargarFormula('Modules/PipelineCorrosion/relationship.jsp', this);">7.4. Relationship Between Resistance and Resistivity</a> </li>
        <li><a href="#" onClick="cargarFormula('Modules/PipelineCorrosion/electrolyteresistance.jsp', this);">7.5. Electrolyte Resistnce From The Surface of an Elecctrode to any Distance</a> </li>
        <li><a href="#" onClick="cargarFormula('Modules/PipelineCorrosion/ohm.jsp', this);">7.6. Ohm´s Law For Corrosion Current</a> </li>
        <li><a href="#" onClick="cargarFormula('Modules/PipelineCorrosion/electrialresistance.jsp', this);">7.7. Electrical Resistance of a Conductor</a> </li>

    </ul>
</li>
<li>
    <a href="#">8. Cathodic Protection <span class="fa arrow"></span></a>
    <ul class="nav nav-third-level">
        <li><a href="#" onClick="cargarFormula('Modules/CathodicProtection/estimatedweight.jsp', this);">8.1. Estimated Weight of a Magnesium Anode</a> </li>
        <li><a href="#" onClick="cargarFormula('Modules/CathodicProtection/resistanceearthiagb.jsp', this);">8.2. Resistance to Earth of an Impressed Anode Ground Bed</a> </li>
        <li><a href="#" onClick="cargarFormula('Modules/CathodicProtection/rudenbergfomula.jsp', this);">8.3. Rudenbergs Formula For the Placement of an Anode Ground Bed</a> </li>
        <li><a href="#" onClick="cargarFormula('Modules/CathodicProtection/resistanceearthsva.jsp', this);">8.4. Resistance to Earth of a Single Vertical Anode</a> </li>
        <li><a href="#" onClick="cargarFormula('Modules/CathodicProtection/resistanceearthmva.jsp', this);">8.5. Resistance to Earth Multiple Vertical Anode</a> </li>
        <li><a href="#" onClick="cargarFormula('Modules/CathodicProtection/resistanceearthsha.jsp', this);">8.6. Resistance to Earth of a Single Horizontal Anode</a> </li>
        <li><a href="#" onClick="cargarFormula('Modules/CathodicProtection/requirednumberanodes.jsp', this);">8.7. Required Number of Anodes & the Total Current Requirement</a> </li>
        <li><a href="#" onClick="cargarFormula('Modules/CathodicProtection/powerconsumption.jsp', this);">8.8. Power Consumption of a Cathodic Protection Rectifier</a> </li>
        <!-- <li><a href="#" onClick="cargarFormula('Modules/CathodicProtection/cathodicprotection.jsp', this);">8.9. Cathodic Protection Attenuation Calculation</a> </li> !-->

    </ul>
</li>

<li>
    <a href="#">9. Surcharge Live Load on Buried PE Pipe & Pipeline Crossings<span class="fa arrow"></span></a> 
    <ul class="nav nav-third-level">
        <li><a href="#" onClick="cargarFormula('Modules/BuriedPipe/installation.jsp', this);">9.1. PE Pipe - Pull Force & Installation Stress Analysis</a> </li>
        <li><a href="#" onClick="cargarFormula('Modules/BuriedPipe/allowable.jsp', this);">9.2. HDD PE Pipe - ATL Allowable Tensile Load During Pull-In Installation</a> </li>
        <li><a href="#" onClick="cargarFormula('Modules/BuriedPipe/postinstallation.jsp', this);">9.3. PE Pipe - Post-Installation Stress Analysis</a> </li>
    </ul>
</li>
<li>
    <a href="#">10. Major Equipment Selector <span class="fa arrow"></span></a>
    <ul class="nav nav-third-level">
        <li>
            <a href="#">10.1. Meters <span class="fa arrow"></span></a>
            <ul class="nav nav-third-level">
                <li><a href="#" onClick="cargarFormula('Modules/Selector/Medidores/medmasicos.jsp', this);">10.1.1. Mass Meters</a> </li>
                <li><a href="#" onClick="cargarFormula('Modules/Selector/Medidores/medrotatorios.jsp', this);">10.1.2. Rotary Meters</a> </li>
                <li><a href="#" onClick="cargarFormula('Modules/Selector/Medidores/medultrasonicos.jsp', this);">10.1.3. Ultrasonic Meters</a> </li>
                <li><a href="#" onClick="cargarFormula('Modules/Selector/Medidores/turbina.jsp', this);">10.1.4. Turbine Type Meters</a> </li>
                <li><a href="#" onClick="cargarFormula('Modules/Selector/platina.jsp', this);">10.1.5. Limiting Platina</a> </li>
            </ul>
        </li>
        <li><a href="#" onClick="cargarFormula('Modules/Selector/computadores.jsp', this);">10.2. Computers</a> </li>
        <li><a href="#" onClick="cargarFormula('Modules/Selector/valvulas.jsp', this);">10.3. Safety and Relief Valves</a> </li>
        <li>
            <a href="#">10.4. Actuators<span class="fa arrow"></span></a>
            <ul class="nav nav-third-level">
                <li><a href="#" onClick="cargarFormula('Modules/Selector/Actuadores/actuadores.jsp', this);">10.4.1 Actuators</a> </li>
                <li><a href="#" onClick="cargarFormula('Modules/Selector/Actuadores/actuadoresadmin.jsp', this);">10.4.2 Administration</a> </li>
            </ul>
        </li>
        <li><a href="#" onClick="cargarFormula('Modules/Selector/valslamshut.jsp', this);">10.5. Slam Shut Valves</a> </li>
        <li><a href="#" onClick="cargarFormula('Modules/Selector/mototized.jsp', this);">10.6. Motorized Valves</a> </li>
        <li><a href="#" onClick="cargarFormula('Modules/Selector/transmisores.jsp', this);">10.7. Transmitters</a> </li>
        <li><a href="#" onClick="cargarFormula('Modules/Selector/reguladores.jsp', this);">10.9. Fisher Regulators</a> </li>







    </ul>
</li>
<% }

%>