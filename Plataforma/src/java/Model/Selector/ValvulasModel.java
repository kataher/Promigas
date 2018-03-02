/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.Selector;

import java.util.Map;
import java.util.Vector;
import org.json.JSONObject;


/**
 *
 * @author kata__000
 */
public class ValvulasModel extends Model.Model{
    
    private static String tabla = "ValvulasReg";    

    public ValvulasModel() {
      super();
    }
    
    public String getTabla() {
        return tabla;
    }
    
    public static JSONObject getOrificioValvulas(String dim) throws Exception{
        
        Vector<Map> data = consultar("Valvulas", "distinct orificio, " + dim + " as valor", "");
        
        JSONObject res = new JSONObject();
        
        res.put("row", data);
        
        return res;
        
        
    }
    
    public static JSONObject getValorOrificioValvulas(String orificio, String type) throws Exception{
        
        Vector<Map> data = consultar("Valvulas", "valor", "orificio like " + orificio + " and typev like " + type);
        
        JSONObject res = new JSONObject();
        
        res.put("row", data);
        
        return res;
        
        
    }
     
}