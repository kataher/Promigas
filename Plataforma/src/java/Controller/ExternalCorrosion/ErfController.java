/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.ExternalCorrosion;

import Model.ExternalCorrosion.ErfModel;
import Model.Pipeline.AdiabaticHeadModel;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author Labsistemas
 */
public class ErfController extends Controller.Controller  {
    
    private final ErfModel model = new ErfModel();
    
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
    
    public ErfModel getModel(){
        return model;
    }
    
    
    
}
