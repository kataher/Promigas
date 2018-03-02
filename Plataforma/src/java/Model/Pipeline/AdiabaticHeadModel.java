/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.Pipeline;

import java.util.Map;
import java.util.Vector;
import org.json.JSONObject;


/**
 *
 * @author kata__000
 */
public class AdiabaticHeadModel extends Model.Model{
    
    private final String tabla;    

    public AdiabaticHeadModel() {
      this.tabla = "AdiabaticHead";
    }

    public String getTabla() {
        return tabla;
    }
      
    public String loadSuggested(String idProyect) throws Exception{
        String where = "idProyect = " + idProyect;
        Vector<Map> data = consultar("Suggested", "basetemperature, basepressure", where);
        
        if(data.isEmpty()){
            throw new Exception("No existe el proyecto asociado");
        }
        
        String res = data.get(0).get("basetemperature").toString() + "," +
                     data.get(0).get("basepressure").toString();
        
        return res;
    }
}
