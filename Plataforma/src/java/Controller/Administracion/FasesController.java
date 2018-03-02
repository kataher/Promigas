/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Administracion;

import Model.Administracion.FasesModel;
import java.util.HashMap;
import java.util.Map;
import java.util.Vector;
import javax.servlet.http.HttpServletRequest;
import org.json.JSONObject;

/**
 *
 * @author kata__000
 */
public class FasesController extends Controller.Controller{
    
    private final FasesModel model = new FasesModel();
    
    public FasesModel getModel(){
        return model;
    }
    
    public JSONObject getFases() throws Exception{  
        JSONObject json = new JSONObject();
        Vector<Map> data = model.getFases();
        
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
    
    public JSONObject editFase(String name, String iduser) throws Exception{  
        JSONObject json = new JSONObject();
                
        Map<String, String> values1 = new HashMap<String, String>();
        values1.put("nombre", stringToBD(name));
        
        Vector<Map> data = model.editFase(values1, iduser);
        
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
    
    public JSONObject addFase(String name) throws Exception{  
        JSONObject json = new JSONObject();
                
        Map<String, String> values1 = new HashMap<String, String>();
        values1.put("nombre", stringToBD(name));
        
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
    
    public JSONObject deleteFase(String iduser) throws Exception{  
        JSONObject json = new JSONObject();
        
        model.deleteFase(iduser);
        json = json.put("row", "OK");
        
        return json;
        
        
    }
}
