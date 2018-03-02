/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.Administracion;

import Model.Model;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.json.JSONObject;

/**
 *
 * @author kata__000
 */
public class UsuariosModel extends Model{
    
    private static final String tabla = "Users";    

    public UsuariosModel() {
      
    }

    public String getTabla() {
        return tabla;
    }
    
    public Vector<Map> getUsuarios() throws Exception{        
        //Save el nombre y las especialidades del proyecto
        Vector<Map> data = this.consultar(tabla, "id, name", "");
        return data;
    }
    
    public Vector<Map> addUsuario(Map<String, String> values) throws Exception{        
        
        try {
            this.add(tabla, values);
            Vector<Map> data = this.consultar(tabla, "id, name", "name = " + values.get("name"));
            return data;
        } catch (Exception ex) {
            throw new Exception("El nombre de usuario ya existe");
        }
    }
    
    public void editUsuario(Map<String, String> values, String iduser) throws Exception{        
        
        try {
            this.edit(tabla, values, "id = " + iduser);
        } catch (Exception ex) {
            throw new Exception("Error al editar el usuario, posible nombre de usuario duplicado");
        }
    }
    
    public void deleteUsuario(String iduser) throws Exception{    
        this.delete(tabla, "id = " + iduser);
    }
    
    public static String getUsername(String id) throws Exception{
        String where = "id = " + id;
        String username= "";
        
        Vector<Map> data = consultar(tabla, "name", where);
        
        if(data.isEmpty() == false){
            username = data.get(0).get("name").toString();
        }else{
            throw new Exception("El usuario no existe");
        }
        
        
        return username;
    }
    
    public JSONObject login(String name, String pass) throws Exception{  
        
        JSONObject json = new JSONObject();
        try {
            String where = "name = " + name + " and password = " + pass;
            
            if(pass == null){
                where = "name = " + name;
            }
            
            Vector<Map> data = this.consultar(tabla, "id, id_rol", where);
            
            if(data.isEmpty()){
                
                if(pass == null){
                     throw new Exception("El usuario no existe");
                }else{
                    throw new Exception("Error de autenticación");
                }
            }else{
                
                 String id = data.get(0).get("id").toString();
                
                if(data.get(0).get("id_rol") == null){
                    
                    where = " id_user = " + id;
                    
                    data = this.consultar("RolesUsuPro", "*", where);
                    
                    json.put("type", "2"); //Tipo 2 es de todos los lideres
                    json.put("id", id);
                    json.put("rows", data);
                    
                }else{
                    json.put("type", data.get(0).get("id_rol").toString());
                    json.put("id", id);
                }
                
            }
            
            return json;
                
                    
        } catch (Exception ex) {
            throw new Exception(ex.getMessage());
        }
    }
    
   
     
}
