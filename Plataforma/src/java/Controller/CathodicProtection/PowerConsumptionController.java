/*

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.CathodicProtection;

import Model.CathodicProtection.PowerConsumptionModel;
import Model.ComboModel;
import java.util.HashMap;
import java.util.Map;
import java.util.Vector;
import javax.servlet.http.HttpServletRequest;
import org.json.JSONObject;
/**
 *
 * @author kata__000
 */
public class PowerConsumptionController extends Controller.Controller{
    
    private final PowerConsumptionModel model = new PowerConsumptionModel();

    public PowerConsumptionModel getModel() {
        return model;
    }
    
    
    
    public  Map<String, String> getValues(HttpServletRequest request) throws Exception{
        
         //Input Data
        String description_pc = request.getParameter("description_pc");
        String rectifiero_pc = request.getParameter("rectifiero_pc");
        String rectifierc_pc = request.getParameter("rectifierc_pc");
        String utilityr_pc = request.getParameter("utilityr_pc");
        String ro_sel_pc = request.getParameter("ro_sel_pc");
        String rc_sel_pc = request.getParameter("rc_sel_pc");
        String ut_sel_pc = request.getParameter("ut_sel_pc");
        String powerc_pc = request.getParameter("powerc_pc");
        String montlyb_pc = request.getParameter("montlyb_pc");
        
        //ids
        String id_proyect = request.getParameter("idproyect");
        String iduser = request.getParameter("iduser");
       
        Map<String, String> values = new HashMap<String, String>();
                
        try
        {
            values.put("description_pc", stringToBD(description_pc.trim()));
            values.put("rectifiero_pc", stringToBD(rectifiero_pc.trim()));
            values.put("rectifierc_pc",  stringToBD(rectifierc_pc.trim()));
            values.put("utilityr_pc",  stringToBD(utilityr_pc.trim()));
            values.put("ro_sel_pc",  stringToBD(ro_sel_pc.trim()));
            values.put("rc_sel_pc",  stringToBD(rc_sel_pc.trim()));
            values.put("ut_sel_pc",  stringToBD(ut_sel_pc.trim()));
            values.put("powerc_pc",  stringToBD(powerc_pc.trim()));
            values.put("montlyb_pc",  stringToBD(montlyb_pc.trim()));
                        
            values.put("id_proyect", id_proyect.trim());
            values.put("id_user", iduser.trim());
            
        }catch(Exception ex){
            throw new Exception(ex.getMessage());
        }
       
       return values;
        
    }
      
      
       
}

