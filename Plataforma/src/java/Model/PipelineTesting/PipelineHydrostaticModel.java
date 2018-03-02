/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.PipelineTesting;

import java.util.Map;
import java.util.Vector;
import org.json.JSONObject;


public class PipelineHydrostaticModel extends Model.Model{
    
    private final String tabla;    

    public PipelineHydrostaticModel() {
      super();
      this.tabla = "PipelineHydrostatic";
    }
    
    public String getTabla() {
        return tabla;
    }
    
    public JSONObject get_cambioTermico(String temp) throws Exception{
        String where = "temp = " + temp;
        Vector<Map> data;
        data = consultar("Temperature", "fwt", where);
        JSONObject json = new JSONObject();
         
        if(data.isEmpty()){
            return null;
        }else{
           json = json.put("row", data.get(0));
           return json;
        } 
    }
     
}