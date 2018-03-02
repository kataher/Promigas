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
public class FasesModel extends Model{
    
    private final String tabla;    

    public FasesModel() {
      this.tabla = "Fases";
    }

    public String getTabla() {
        return tabla;
    }
    
    public Vector<Map> getFases() throws Exception{        
        //Guardar el nombre y las especialidades del proyecto
        Vector<Map> data = this.consultar(tabla, "id, nombre", "");
        return data;
    }
    
    public Vector<Map> addActividad(Map<String, String> values) throws Exception{        
        
        this.add(tabla, values);
        Vector<Map> data = this.consultar(tabla, "id, nombre", "nombre = " + values.get("nombre"));
        return data;
    }
    
    public Vector<Map> editFase(Map<String, String> values, String idacti) throws Exception{        
        
        this.edit(tabla, values, "id = " + idacti);
        Vector<Map> data = this.consultar(tabla, "id, nombre", "id = " + idacti);
        return data;
    }
    
    public void deleteFase(String idacti) throws Exception{    
        this.delete(tabla, "id = " + idacti);
    }
}
