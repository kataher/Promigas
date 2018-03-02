/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.CathodicProtection;

import java.util.Map;
import java.util.Vector;
import org.json.JSONObject;

/**
 *
 * @author kata__000
 */
public class ResistanceEarthSHAModel extends Model.Model{
    
    private final String tabla;    

    public ResistanceEarthSHAModel() {
      super();
      this.tabla = "ResistanceSHA";
    }
    
    public String getTabla() {
        return tabla;
    }
}


