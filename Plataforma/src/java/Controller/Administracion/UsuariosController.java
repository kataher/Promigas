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
    
    public JSONObject addUsuario(String nombre, String alias, String roles, String areas) throws Exception{  
        Map<String, String> values1 = new HashMap<String, String>();
        JSONObject json = new JSONObject();
         
        values1.put("name", stringToBD(alias));
        values1.put("fullname", stringToBD(nombre));
        values1.put("password", stringToBD(alias));
        values1.put("isadmsitio", "0");
        values1.put("isadmpro", "0");
        values1.put("roles", roles);
        values1.put("areas", areas);
        
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
    
    public void editUsuario(String name, String iduser, String roles, String areas) throws Exception{  
        Map<String, String> values1 = new HashMap<String, String>();
        values1.put("fullname", stringToBD(name));
        values1.put("roles", roles);
        values1.put("areas", areas);
        
        model.editUsuario(values1, iduser);
    }
    
    public JSONObject deleteUsuario(String iduser) throws Exception{  
        JSONObject json = new JSONObject();
        
        model.deleteUsuario(iduser);
        json = json.put("row", "OK");
        
        return json;
    }
    
    public JSONObject login(String user, String pass, String ip) throws Exception{  
        JSONObject json = new JSONObject();
        json = model.login(stringToBD(user),stringToBD(pass), stringToBD(ip));
        return json;
       
    }
    
    public JSONObject getRolUser(String user, String pass) throws Exception{  
        JSONObject json = new JSONObject();
        json = model.login(stringToBD(user),stringToBD(pass), null);
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
    
     public JSONObject getUsuarioAreas(String user) throws Exception{  
        JSONObject json = new JSONObject();
        Vector<Map> data = model.getUsuarioAreas2(user);
        
        if(data != null){        
            json = json.put("data", data);
            return json;
        }else{
            return null;
        }
       
    }
    
    public JSONObject getInfoUser(String user) throws Exception{  
        JSONObject json = new JSONObject();
        Vector<Map> info = model.getUserInfo(user);        
        Vector<Map> roles = model.getUsuarioRoles(user);
        Vector<Map> areas = model.getUsuarioAreas(user);
        
        if(roles != null && info != null){    
            json = json.put("fullname", info.get(0).get("fullname").toString());
            json = json.put("roles", roles);
             json = json.put("areas", areas);
            return json;
        }else{
            return null;
        }
       
    }
}
