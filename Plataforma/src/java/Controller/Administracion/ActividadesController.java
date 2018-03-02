/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Administracion;

import Model.Administracion.ActividadesModel;
import java.util.HashMap;
import java.util.Map;
import java.util.Vector;
import javax.servlet.http.HttpServletRequest;
import org.json.JSONObject;

/**
 *
 * @author kata__000
 */
public class ActividadesController extends Controller.Controller{
    
    private final ActividadesModel model = new ActividadesModel();
    
    public ActividadesModel getModel(){
        return model;
    }
    
    public JSONObject getActividades() throws Exception{  
        JSONObject json = new JSONObject();
        Vector<Map> data = model.getActividades();
        
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
    
    public JSONObject editActividad(String name, String iduser, String id_espe) throws Exception{  
        JSONObject json = new JSONObject();
                
        Map<String, String> values1 = new HashMap<String, String>();
        values1.put("nombre", stringToBD(name));
        values1.put("id_espe", id_espe);
        
        Vector<Map> data = model.editActividad(values1, iduser);
        
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
    
    public JSONObject addActividad(String name, String id_espe) throws Exception{  
        JSONObject json = new JSONObject();
                
        Map<String, String> values1 = new HashMap<String, String>();
        values1.put("nombre", stringToBD(name));
        values1.put("id_espe", id_espe);
        
        Vector<Map> data = model.addActividad(values1);
        
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
    
    public JSONObject deleteActividad(String iduser) throws Exception{  
        JSONObject json = new JSONObject();
        
        model.deleteActividad(iduser);
        json = json.put("row", "OK");
        
        return json;
        
        
    }
}
