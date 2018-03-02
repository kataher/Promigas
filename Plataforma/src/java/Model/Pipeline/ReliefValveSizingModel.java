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
public class ReliefValveSizingModel extends Model.Model{
    
   private final String tabla;    

    public ReliefValveSizingModel() {
      super();
      this.tabla = "ReliefValveSizing";
    }
    
    public String getTabla() {
        return tabla;
    }
     
}