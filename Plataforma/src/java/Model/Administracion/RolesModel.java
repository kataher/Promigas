/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.Administracion;

import Model.Model;
import java.util.Map;
import java.util.Vector;
import org.json.JSONObject;

/**
 *
 * @author alberb
 */
public class RolesModel extends Model{
    private static final String tabla = "Roles2";    

    public RolesModel() {
      
    }

    public String getTabla() {
        return tabla;
    }
    
    public Vector<Map> getRoles() throws Exception{        
        Vector<Map> data = this.consultar(tabla, "id, nombre", "");
        return data;
    }
    
}
