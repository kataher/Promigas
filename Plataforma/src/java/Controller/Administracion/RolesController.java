/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Administracion;

import Model.Administracion.RolesModel;
import java.util.HashMap;
import java.util.Map;
import java.util.Vector;
import org.json.JSONObject;

/**
 *
 * @author djabba
 */
public class RolesController {
     private final RolesModel model = new RolesModel();
    
    public RolesModel getModel(){
        return model;
    }
    
    public JSONObject getRoles() throws Exception{  
        JSONObject json = new JSONObject();
        Vector<Map> data = model.getRoles();
        
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
}
