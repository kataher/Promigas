/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.PipelineTesting;

import Model.ComboModel;
import Model.PipelineTesting.GasPipelineModel;
import java.util.HashMap;
import java.util.Map;
import java.util.Vector;
import javax.servlet.http.HttpServletRequest;
import org.json.JSONObject;
/**
 *
 * @author kata__000
 */
public class GasPipelineController extends Controller.Controller  {
    
    private final GasPipelineModel model = new GasPipelineModel();

    public GasPipelineModel getModel() {
        return model;
    }
    
    
    
    public Map<String, String> getValues(HttpServletRequest request) throws Exception{
        
         //Input Data
        String description_gp = request.getParameter("description_gp");
        String initialt_gp = request.getParameter("initialt_gp");
        String shut_gp = request.getParameter("shut_gp");
        String internalpd_gp = request.getParameter("internalpd_gp");
        
        String it_sel_gp = request.getParameter("it_sel_gp");
        String shut_sel_gp = request.getParameter("shut_sel_gp");
        String ipd_sel_gp = request.getParameter("ipd_sel_gp");
        String enteree_gp = request.getParameter("enteree_gp");
        String h_sel_gp = request.getParameter("h_sel_gp");
        
         //Results
        String acceptablep_gp = request.getParameter("acceptablep_gp");
        
        //ids
        String id_proyect = request.getParameter("idproyect");
        String iduser = request.getParameter("iduser");
       
        Map<String, String> values = new HashMap<String, String>();
                
        try
        {
            values.put("enteree_gp", stringToBD(enteree_gp.trim()));
            values.put("h_sel_gp",  stringToBD(h_sel_gp.trim()));
            values.put("description_gp", stringToBD(description_gp.trim()));
            values.put("initialt_gp",  stringToBD(initialt_gp.trim()));
            values.put("shut_gp",  stringToBD(shut_gp.trim()));
            values.put("internalpd_gp",  stringToBD(internalpd_gp.trim()));
            values.put("it_sel_gp",  stringToBD(it_sel_gp.trim()));
            values.put("shut_sel_gp",  stringToBD(shut_sel_gp.trim()));
            values.put("ipd_sel_gp",  stringToBD(ipd_sel_gp.trim()));
            
            values.put("acceptablep_gp",  stringToBD(acceptablep_gp.trim()));
            
            values.put("id_proyect", id_proyect.trim());
            values.put("id_user", iduser.trim());
            
        }catch(Exception ex){
            throw new Exception(ex.getMessage());
        }
       
       return values;
        
    }
      
       
}
