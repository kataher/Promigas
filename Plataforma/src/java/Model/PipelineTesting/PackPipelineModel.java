/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.PipelineTesting;

import java.util.Map;
import java.util.Vector;
import org.json.JSONObject;


public class PackPipelineModel extends Model.Model{
    
    private final String tabla;    

    public PackPipelineModel() {
      super();
      this.tabla = "PackPipeline";
    }
    
    public String getTabla() {
        return tabla;
    }
     
}