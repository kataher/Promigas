/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Administracion;

import Model.Administracion.UsuariosModel;
import java.util.HashMap;
import java.util.Map;
import java.util.Vector;
import javax.servlet.http.HttpServletRequest;
import org.json.JSONObject;

/**
 *
 * @author kata__000
 */
public class UsuariosController extends Controller.Controller{
    
    private final UsuariosModel model = new UsuariosModel();
    
    public UsuariosModel getModel(){
        return model;
    }
    
    public JSONObject getUsuarios() throws Exception{  
        JSONObject json = new JSONObject();
        Vector<Map> data = model.getUsuarios();
        
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
    
    public JSONObject addUsuario(String nombre, String roles) throws Exception{  
        Map<String, String> values1 = new HashMap<String, String>();
        JSONObject json = new JSONObject();
         
        values1.put("name", stringToBD(nombre));
        values1.put("password", stringToBD(nombre));
        values1.put("isadmsitio", "0");
        values1.put("isadmpro", "0");
        values1.put("roles", roles);
        
        Vector<Map> data = model.addUsuario(values1);
        
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
    
    public void editUsuario(String name, String iduser, String roles) throws Exception{  
        Map<String, String> values1 = new HashMap<String, String>();
        values1.put("name", stringToBD(name));
        values1.put("roles", roles);
        
        model.editUsuario(values1, iduser);
    }
    
    public JSONObject deleteUsuario(String iduser) throws Exception{  
        JSONObject json = new JSONObject();
        
        model.deleteUsuario(iduser);
        json = json.put("row", "OK");
        
        return json;
    }
    
    public JSONObject login(String user, String pass) throws Exception{  
        JSONObject json = new JSONObject();
        json = model.login(stringToBD(user),stringToBD(pass));
        return json;
       
    }
    
    public JSONObject getRolUser(String user, String pass) throws Exception{  
        JSONObject json = new JSONObject();
        json = model.login(stringToBD(user),stringToBD(pass));
        return json;
       
    }
    
    public JSONObject getUsuarioRoles(String user) throws Exception{  
        JSONObject json = new JSONObject();
        Vector<Map> data = model.getUsuarioRoles(user);
        
        if(data != null){        
            json = json.put("data", data);
            return json;
        }else{
            return null;
        }
       
    }
}
