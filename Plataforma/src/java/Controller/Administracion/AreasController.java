/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Administracion;

import Model.Administracion.AreasModel;
import java.util.HashMap;
import java.util.Map;
import java.util.Vector;
import org.json.JSONObject;

/**
 *
 * @author alberb
 */
public class AreasController extends Controller.Controller {
     private final AreasModel model = new AreasModel();
    
    public AreasModel getModel(){
        return model;
    }
    
    public JSONObject getAreas() throws Exception{  
        JSONObject json = new JSONObject();
        Vector<Map> data = model.getAreas();
        
        if(data != null){
        
            if(data.isEmpty()){
                return null;
            }else{
               json = json.put("data", data);
               return json;
            } 
        }else{
            return null;
        }
        
        
    }
    
    public JSONObject editArea(String name, String iduser) throws Exception{  
        JSONObject json = new JSONObject();
                
        Map<String, String> values1 = new HashMap<String, String>();
        values1.put("nombre", stringToBD(name));
        
        Vector<Map> data = model.editArea(values1, iduser);
        
        if(data != null){
        
            if(data.isEmpty()){
                return null;
            }else{
               json = json.put("row", data);
               return json;
            } 
        }else{
            return null;
        }
        
        
    }
    
    public JSONObject addArea(String name) throws Exception{  
        JSONObject json = new JSONObject();
                
        Map<String, String> values1 = new HashMap<String, String>();
        values1.put("nombre", stringToBD(name));
        
        Vector<Map> data = model.addArea(values1);
        
        if(data != null){
        
            if(data.isEmpty()){
                return null;
            }else{
               json = json.put("row", data);
               return json;
            } 
        }else{
            return null;
        }
        
        
    }
    
    public JSONObject deleteArea(String iduser) throws Exception{  
        JSONObject json = new JSONObject();
        
        model.deleteArea(iduser);
        json = json.put("row", "OK");
        
        return json;
        
        
    }
}
