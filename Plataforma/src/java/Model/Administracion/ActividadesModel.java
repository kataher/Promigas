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
import org.json.JSONObject;

/**
 *
 * @author kata__000
 */
public class ActividadesModel extends Model{
    
    private final String tabla;    

    public ActividadesModel() {
      this.tabla = "Actividades";
    }

    public String getTabla() {
        return tabla;
    }
    
    public Vector<Map> getActividades() throws Exception{        
        //Guardar el nombre y las especialidades del proyecto
        String sql = "select act.id, act.nombre, act.id_espe, esp.nombre nomesp from " + this.getBD(tabla) + " act " +
                    "inner join " + this.getBD("Especialidades") + " esp " +
                    "on act.id_espe = esp.id " + 
                    "order by act.id_espe, act.id";

        Vector<Map> data = this.consultar(sql);
        return data;
    }
    
    public Vector<Map> editActividad(Map<String, String> values, String idacti) throws Exception{        
        
        this.edit(tabla, values, "id = " + idacti);
        Vector<Map> data = this.consultar(tabla, "id, nombre", "id = " + idacti);
        return data;
    }
    
    public Vector<Map> addActividad(Map<String, String> values) throws Exception{        
        
        this.add(tabla, values);
        Vector<Map> data = this.consultar(tabla, "id, nombre", "nombre = " + values.get("nombre"));
        return data;
    }
    
    public void deleteActividad(String idacti) throws Exception{    
        this.delete(tabla, "id = " + idacti);
    }
}
