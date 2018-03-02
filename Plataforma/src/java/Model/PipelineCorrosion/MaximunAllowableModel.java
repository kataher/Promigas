/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.PipelineCorrosion;

import java.util.Map;
import java.util.Vector;
import org.json.JSONObject;



public class MaximunAllowableModel extends Model.Model{
    
    private final String tabla;    

    public MaximunAllowableModel() {
      super();
      this.tabla = "MaximunAllowable";
    }
    
    public String getTabla() {
        return tabla;
    }
     
}