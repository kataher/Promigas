/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.PipelineCorrosion;

import java.util.Map;
import java.util.Vector;
import org.json.JSONObject;



public class RelationshipModel extends Model.Model{
    
    private final String tabla;    

    public RelationshipModel() {
      super();
      this.tabla = "RelationshipRand";
    }
    
    public String getTabla() {
        return tabla;
    }
     
}