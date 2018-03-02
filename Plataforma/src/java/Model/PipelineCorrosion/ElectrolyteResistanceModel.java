/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.PipelineCorrosion;

import java.util.Map;
import java.util.Vector;
import org.json.JSONObject;



public class ElectrolyteResistanceModel extends Model.Model{
    
    private final String tabla;    

    public ElectrolyteResistanceModel() {
      super();
      this.tabla = "ElectrolyteResistance";
    }
    
    public String getTabla() {
        return tabla;
    }
     
}