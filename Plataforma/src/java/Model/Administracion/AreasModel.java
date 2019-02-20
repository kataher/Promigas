/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.Administracion;

import Model.Model;
import java.util.Map;
import java.util.Vector;

/**
 *
 * @author alberb
 */
public class AreasModel extends Model  {
    private final String tabla;    

    public AreasModel()  {
      this.tabla = "Areas";
    }

    public String getTabla() {
        return tabla;
    }
    
    public Vector<Map> getAreas() throws Exception{        
        //Guardar el nombre y las especialidades del proyecto
        Vector<Map> data = this.consultar(tabla, "id, name, descripcion", "");
        return data;
    }
    
    public Vector<Map> addArea(Map<String, String> values) throws Exception{        
        
        this.add(tabla, values);
        Vector<Map> data = this.consultar(tabla, "id, nombre", "nombre = " + values.get("nombre"));
        return data;
    }
    
    public Vector<Map> editArea(Map<String, String> values, String idacti) throws Exception{        
        
        this.edit(tabla, values, "id = " + idacti);
        Vector<Map> data = this.consultar(tabla, "id, nombre", "id = " + idacti);
        return data;
    }
    
    public void deleteArea(String idacti) throws Exception{    
        this.delete(tabla, "id = " + idacti);
    }
}
