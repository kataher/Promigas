/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.Pipeline;

import java.util.Map;
import java.util.Vector;
import org.json.JSONObject;


public class DiameterGasVelocityModel extends Model.Model{
    
    private final String tabla;    

    public DiameterGasVelocityModel() {
      super();
      this.tabla = "DiameterGVel";
    }
    
      
    public String getTabla() {
        return tabla;
    }
     
}


