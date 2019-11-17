



/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.PipelineTesting;

import Model.ComboModel;
import Model.PipelineTesting.PipelineHydrostaticModel;
import java.util.HashMap;
import java.util.Map;
import java.util.Vector;
import javax.servlet.http.HttpServletRequest;
import org.json.JSONObject;


/**
 *
 * @author kata__000
 */
public class PipelineHydrostaticController extends Controller.Controller{
    
    private final PipelineHydrostaticModel model = new PipelineHydrostaticModel();

    public PipelineHydrostaticModel getModel() {
        return model;
    }
    
    
    
    public  Map<String, String> getValues(HttpServletRequest request) throws Exception{
         
         Map<String, String[]> vals = request.getParameterMap();
        
        Map<String, String> values = new HashMap<String, String>();
        
        for (String key : vals.keySet()){
            
            if(!key.equals("opcion") && !key.equals("from") && !key.equals("opt_" + vals.get("from")[0])) {
                if(key.equals("id_" + vals.get("from")[0]))
                    values.put("id", stringToBD(vals.get(key)[0].trim()));
                else if (key.equals("proyects_sel_" + vals.get("from")[0]))
                    values.put("id_proyect", stringToBD(vals.get(key)[0].trim()));
                else
                    values.put(key, stringToBD(vals.get(key)[0].trim()));
            }
        }
        
        
        
        return values;
        
    }
    
    public JSONObject get_cambioTermico(HttpServletRequest request) throws Exception {        
        String temp = request.getParameter("temp").trim(); 
        return model.get_cambioTermico(temp);
    }
       
}

