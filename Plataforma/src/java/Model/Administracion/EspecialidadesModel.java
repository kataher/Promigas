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
public class EspecialidadesModel extends Model{
    
    private final String tabla;    

    public EspecialidadesModel() {
      this.tabla = "Especialidades";
    }

    public String getTabla() {
        return tabla;
    }
    
    public Vector<Map> getEspecialidades() throws Exception{        
        //Guardar el nombre y las especialidades del proyecto
        Vector<Map> data = this.consultar(tabla, "id, nombre", "");
        return data;
    }
    
    public Vector<Map> addEspecialidades(Map<String, String> values) throws Exception{        
        
        this.add(tabla, values);
        Vector<Map> data = this.consultar(tabla, "id, nombre", "nombre = " + values.get("nombre"));
        return data;
    }
    
    public Vector<Map> editEspecialidad(Map<String, String> values, String idacti) throws Exception{        
        
        this.edit(tabla, values, "id = " + idacti);
        Vector<Map> data = this.consultar(tabla, "id, nombre", "id = " + idacti);
        return data;
    }
    
    public void deleteEspecialidad(String idacti) throws Exception{    
        this.delete(tabla, "id = " + idacti);
    }
}
