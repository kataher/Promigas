/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Hydraulics;

import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
/**
 *
 * @author kata__000
 */
public class AgaController extends Controller.Controller{
    
    public  Map<String, String> getValues(HttpServletRequest request) throws Exception{
        
         //Input Data
        String description_rf = request.getParameter("description_rf");
        String grounda_rf = request.getParameter("grounda_rf");
        String actuals_rf = request.getParameter("actuals_rf");
        String lengtha_rf = request.getParameter("lengtha_rf");
        String xdistance_rf = request.getParameter("xdistance_rf");
        String gr_sel_rf = request.getParameter("gr_sel_rf");
        String act_sel_rf = request.getParameter("act_sel_rf");
        String len_sel_rf = request.getParameter("len_sel_rf");
        String xdi_sel_rf = request.getParameter("xdi_sel_rf");
        String potentialx_rf = request.getParameter("potentialx_rf");
        
        //ids
        String id_proyect = request.getParameter("idproyect");
        String iduser = request.getParameter("iduser");
       
        Map<String, String> values = new HashMap<String, String>();
                
        try
        {
            values.put("description_rf", stringToBD(description_rf.trim()));
            values.put("grounda_rf", stringToBD(grounda_rf.trim()));
            values.put("actuals_rf",  stringToBD(actuals_rf.trim()));
            values.put("lengtha_rf",  stringToBD(lengtha_rf.trim()));
            values.put("xdistance_rf",  stringToBD(xdistance_rf.trim()));
            values.put("gr_sel_rf",  stringToBD(gr_sel_rf.trim()));
            values.put("act_sel_rf",  stringToBD(act_sel_rf.trim()));
            values.put("len_sel_rf",  stringToBD(len_sel_rf.trim()));
            values.put("xdi_sel_rf",  stringToBD(xdi_sel_rf.trim()));
            values.put("potentialx_rf",  stringToBD(potentialx_rf.trim()));
            
            values.put("id_proyect", id_proyect.trim());
            values.put("id_user", iduser.trim());
            
        }catch(Exception ex){
            throw new Exception(ex.getMessage());
        }
       
       return values;
        
    }
      
      
       
}

