/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Administracion;

import Model.Administracion.EspecialidadesModel;
import java.util.HashMap;
import java.util.Map;
import java.util.Vector;
import javax.servlet.http.HttpServletRequest;
import org.json.JSONObject;

/**
 *
 * @author kata__000
 */
public class EspecialidadesController extends Controller.Controller{
    
    private final EspecialidadesModel model = new EspecialidadesModel();
    
    public EspecialidadesModel getModel(){
        return model;
    }
    
    public JSONObject addEspecialidades(String name) throws Exception{  
        JSONObject json = new JSONObject();
                
        Map<String, String> values1 = new HashMap<String, String>();
        values1.put("nombre", stringToBD(name));
        
        Vector<Map> data = model.addEspecialidades(values1);
        
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
    
    public JSONObject getEspecialidades() throws Exception{  
        JSONObject json = new JSONObject();
        Vector<Map> data = model.getEspecialidades();
        
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
    
    public JSONObject editEspecialidad(String name, String iduser) throws Exception{  
        JSONObject json = new JSONObject();
                
        Map<String, String> values1 = new HashMap<String, String>();
        values1.put("nombre", stringToBD(name));
        
        Vector<Map> data = model.editEspecialidad(values1, iduser);
        
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
    
    public JSONObject deleteEspecialidad(String iduser) throws Exception{  
        JSONObject json = new JSONObject();
        
        model.deleteEspecialidad(iduser);
        json = json.put("row", "OK");
        
        return json;
        
        
    }
}
