/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.PipelineTesting;

import java.util.Map;
import java.util.Vector;
import org.json.JSONObject;



public class AlternativeAcceptanceModel extends Model.Model{
    
    private final String tabla;    

    public AlternativeAcceptanceModel() {
      super();
      this.tabla = "AlternativeAcceptance";
    }
    
    public String getTabla() {
        return tabla;
    }
     
}