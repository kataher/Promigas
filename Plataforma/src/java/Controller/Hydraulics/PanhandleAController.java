/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Hydraulics;

import Model.Hydraulics.PanhandleAModel;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
/**
 *
 * @author kata__000
 */
public class PanhandleAController {
    
    private final PanhandleAModel model = new PanhandleAModel();

    public boolean load(String columns, String where) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public String add (HttpServletRequest request) throws Exception {
        
        //Datos Sugeridos
        String basepressure_pha = request.getParameter("basetemperature_pha");
        String basetemperature_pha = request.getParameter("basepressure_pha");

        //Input Data
        String gasflowing_pha = request.getParameter("gasflowingtemp_pha");
        String gasspecific_pha = request.getParameter("gasspecificgra_pha");
        String pipelineefficiency_pha = request.getParameter("pipelineefficiency_pha");
        String upstreampressure_pha = request.getParameter("upstreampressure_pha");
        String flowrate_pha = request.getParameter("flowrate_pha");
        String internalpipe_pha = request.getParameter("internalpipe_pha");                
        String lengthof_pha = request.getParameter("lengthof_pha");
        String upstreamelevation_pha = request.getParameter("upstreamelevation_pha");
        String downstreamelevation_pha = request.getParameter("downstreamelevation_pha");
                
        //Results
        String downstreampressure_pha = request.getParameter("downstreampressure_pha");
        String transmissionfactor_pha = request.getParameter("transmissionfactor_pha");
        String velocity_pha = request.getParameter("velocity_pha");
                
        if (basepressure_pha == null || basetemperature_pha ==  null || gasflowing_pha == null || 
           gasspecific_pha == null || pipelineefficiency_pha ==null || 
           upstreampressure_pha == null || flowrate_pha == null || internalpipe_pha == null ||                 
           lengthof_pha == null || upstreamelevation_pha == null || downstreamelevation_pha == null || 
           downstreampressure_pha == null || transmissionfactor_pha == null || velocity_pha == null ){

            throw new Exception("Diligencie todos los datos");

        }else{
            if(basepressure_pha.trim().equals("") || basetemperature_pha.trim().equals("") || gasflowing_pha.trim().equals("") || 
                gasspecific_pha.trim().equals("") || pipelineefficiency_pha.trim().equals("") || 
                upstreampressure_pha.trim().equals("")|| flowrate_pha.trim().equals("") || internalpipe_pha.trim().equals("") ||                 
                lengthof_pha.trim().equals("") || upstreamelevation_pha.trim().equals("") || downstreamelevation_pha.trim().equals("") || 
                downstreampressure_pha.trim().equals("") || transmissionfactor_pha.trim().equals("") || velocity_pha.trim().equals("") ){
                
                throw new Exception("Diligencie todos los datos");
                
            }else{
                
                Map<String, String> values = new HashMap<String, String>();
                String id_proyect = request.getParameter("idproyect").trim();
                String form = request.getParameter("form").trim();
                
                values.put("temperatureBase", basetemperature_pha.trim());
                values.put("pressureBase", basepressure_pha.trim());
                values.put("gasFlowing", gasflowing_pha.trim());
                values.put("gasSpecific", gasspecific_pha.trim());
                values.put("pipelineEfficiency", pipelineefficiency_pha.trim());
                values.put("upstreamPressure", upstreampressure_pha.trim());
                values.put("flowRate", flowrate_pha.trim());
                values.put("internalPipe", internalpipe_pha.trim());
                values.put("lengthOf", lengthof_pha.trim());
                values.put("upstreamElevation", upstreamelevation_pha.trim());
                values.put("downstreamElevation", downstreamelevation_pha.trim());
                values.put("downstreamPressure", downstreampressure_pha.trim());
                values.put("transmissionFactor", transmissionfactor_pha.trim());
                values.put("velocity", velocity_pha.trim());
                values.put("id_proyect", id_proyect.trim());
                values.put("idType", form); // 1 = From Downstream Pressure
                
                model.add(values);
                
                String res = model.load(id_proyect, form);
                return res.split("-")[14];
            }
        }
    }

    public void edit(HttpServletRequest request) throws Exception {
         //Datos Sugeridos
        String basepressure_pha = request.getParameter("basetemperature_pha");
        String basetemperature_pha = request.getParameter("basepressure_pha");

        //Input Data
        String gasflowing_pha = request.getParameter("gasflowingtemp_pha");
        String gasspecific_pha = request.getParameter("gasspecificgra_pha");
        String pipelineefficiency_pha = request.getParameter("pipelineefficiency_pha");
        String upstreampressure_pha = request.getParameter("upstreampressure_pha");
        String flowrate_pha = request.getParameter("flowrate_pha");
        String internalpipe_pha = request.getParameter("internalpipe_pha");                
        String lengthof_pha = request.getParameter("lengthof_pha");
        String upstreamelevation_pha = request.getParameter("upstreamelevation_pha");
        String downstreamelevation_pha = request.getParameter("downstreamelevation_pha");
                
        //Results
        String downstreampressure_pha = request.getParameter("downstreampressure_pha");
        String transmissionfactor_pha = request.getParameter("transmissionfactor_pha");
        String velocity_pha = request.getParameter("velocity_pha");
        
        String id = request.getParameter("id_pha");
                
        if (basepressure_pha == null || basetemperature_pha ==  null || gasflowing_pha == null || 
           gasspecific_pha == null || pipelineefficiency_pha ==null || 
           upstreampressure_pha == null || flowrate_pha == null || internalpipe_pha == null ||                 
           lengthof_pha == null || upstreamelevation_pha == null || downstreamelevation_pha == null || 
           downstreampressure_pha == null || transmissionfactor_pha == null || velocity_pha == null || id == null ){

            throw new Exception("Diligencie todos los datos");

        }else{
            if(basepressure_pha.trim().equals("") || basetemperature_pha.trim().equals("") || gasflowing_pha.trim().equals("") || 
                gasspecific_pha.trim().equals("") || pipelineefficiency_pha.trim().equals("") || 
                upstreampressure_pha.trim().equals("")|| flowrate_pha.trim().equals("") || internalpipe_pha.trim().equals("") ||                 
                lengthof_pha.trim().equals("") || upstreamelevation_pha.trim().equals("") || downstreamelevation_pha.trim().equals("") || 
                downstreampressure_pha.trim().equals("") || transmissionfactor_pha.trim().equals("") || velocity_pha.trim().equals("") || 
                id.trim().equals("")){
                
                throw new Exception("Diligencie todos los datos");
                
            }else{
                
                Map<String, String> values = new HashMap<String, String>();
                
                values.put("temperatureBase", basetemperature_pha);
                values.put("pressureBase", basepressure_pha);
                values.put("gasFlowing", gasflowing_pha);
                values.put("gasSpecific", gasspecific_pha);
                values.put("pipelineEfficiency", pipelineefficiency_pha);
                values.put("upstreamPressure", upstreampressure_pha);
                values.put("flowRate", flowrate_pha);
                values.put("internalPipe", internalpipe_pha);
                values.put("lengthOf", lengthof_pha);
                values.put("upstreamElevation", upstreamelevation_pha);
                values.put("downstreamElevation", downstreamelevation_pha);
                values.put("downstreamPressure", downstreampressure_pha);
                values.put("transmissionFactor", transmissionfactor_pha);
                values.put("velocity", velocity_pha);
                
                model.edit(values, request.getParameter("idproyect"), id.trim());
            }
        }
    }

    public void delete(HttpServletRequest request) throws Exception {
        String id_dp = request.getParameter("id_dp").trim();
        String form = request.getParameter("form").trim();
        if (id_dp == null || form == null){
            throw new Exception("Error al verificar el codigo del registro");
        }else{
            if(id_dp.equals("") || form.equals("")){                
                throw new Exception("El codigo del registro no puede ser vacío");                
            }else{
                String ids[] = new String[2];
                ids[0] = id_dp;
                ids[1] = form;
                
                model.delete(ids);
            }
        }
    }
    
    public String loadSuggested(HttpServletRequest request) throws Exception{  
        String idProyect = request.getParameter("idproyect").trim();     
        return model.loadSuggested(idProyect);
    }
    
    public String load(HttpServletRequest request) throws Exception{  
        String idProyect = request.getParameter("idproyect").trim(); 
        String form = request.getParameter("form").trim();
        return model.load(idProyect, form);
    }
    
}
