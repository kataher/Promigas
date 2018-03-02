/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Hydraulics;

import Model.Hydraulics.ColebrookWhiteModel;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import Model.ComboModel;
import Model.GeneralModel;
import Model.Hydraulics.ColebrookWhiteModel;
import java.util.HashMap;
import java.util.Map;
import java.util.Vector;
import javax.servlet.http.HttpServletRequest;
import org.json.JSONObject;
/**
 *
 * @author kata__000
 */
public class ColebrookWhiteController extends Controller.Controller  {
    
    private final ColebrookWhiteModel model = new ColebrookWhiteModel();
    
    public  Map<String, String> getValues(HttpServletRequest request) throws Exception{
        
         //Input Data
        String description = request.getParameter("description_cfr");
        String basetemperature = request.getParameter("basetemperature_cfr");
        String basepressure = request.getParameter("basepressure_cfr");
        String unknown = request.getParameter("unknown_cfr");
        String gasflowingtemp = request.getParameter("gasflowingtemp_cfr");
        String gasspecificgra = request.getParameter("gasspecificgra_cfr");
        String roughness = request.getParameter("roughness_cfr");
        String pipelineroughness = request.getParameter("pipelineroughness_cfr");
        String pipelineefficiency = request.getParameter("pipelineefficiency_cfr");
        String flowrate = request.getParameter("flowrate_cfr");
        String upstreampressure = request.getParameter("upstreampressure_cfr");
        String downstreampressure = request.getParameter("downstreampressure_cfr");
        String internalpipe = request.getParameter("internalpipe_cfr");
        String lengthof = request.getParameter("lengthof_cfr");
        String upstreamelevation = request.getParameter("upstreamelevation_cfr");
        String downstreamelevation = request.getParameter("downstreamelevation_cfr");
        
        //Results
        String resultado_cfr = request.getParameter("resultado_cfr");
        
        //ids
        String id_proyect = request.getParameter("idproyect");
        String iduser = request.getParameter("iduser");
       
        Map<String, String> values = new HashMap<String, String>();
                
        try
        {
            values.put("description_cfr", stringToBD(description.trim()));
            values.put("basepressure_cfr", stringToBD(basepressure.trim()));
            values.put("unknown_cfr",  stringToBD(unknown.trim()));
            values.put("basetemperature_cfr",  stringToBD(basetemperature.trim()));
            values.put("gasflowingtemp_cfr",  stringToBD(gasflowingtemp.trim()));
            values.put("basepressure_cfr",  stringToBD(basepressure.trim()));
            values.put("gasspecificgra_cfr",  stringToBD(gasspecificgra.trim()));
            values.put("roughness_cfr",  stringToBD(roughness.trim()));
            values.put("pipelineroughness_cfr",  stringToBD(pipelineroughness.trim()));
            values.put("pipelineefficiency_cfr",  stringToBD(pipelineefficiency.trim()));
            values.put("flowrate_cfr",  stringToBD(flowrate.trim()));
            values.put("upstreampressure_cfr",  stringToBD(upstreampressure.trim()));
            values.put("downstreampressure_cfr",  stringToBD(downstreampressure.trim()));
            values.put("internalpipe_cfr",  stringToBD(internalpipe.trim()));
            values.put("upstreamelevation_cfr",  stringToBD(upstreamelevation.trim()));
            values.put("downstreamelevation_cfr",  stringToBD(downstreamelevation.trim()));
            values.put("lengthof_cfr",  stringToBD(lengthof.trim()));
            values.put("basetemperature_cfr",  stringToBD(basetemperature.trim()));
            values.put("resultado_cfr",  stringToBD(resultado_cfr.trim()));
            
            values.put("id_proyect", id_proyect.trim());
            values.put("id_user", iduser.trim());
            
        }catch(Exception ex){
            throw new Exception(ex.getMessage());
        }
       
       return values;
        
    }
    
    public ColebrookWhiteModel getModel(){
        return model;
    }
     
}
