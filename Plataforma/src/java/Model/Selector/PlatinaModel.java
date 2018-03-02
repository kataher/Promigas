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
public class PlatinaModel extends Model.Model {
    
    private static String tabla = "Platina";    

    public PlatinaModel() {
      super();
    }
    
    public String getTabla() {
        return tabla;
    }
    
    public static JSONObject getPlatina(String tipo, String nps) throws Exception{
        JSONObject res = new JSONObject();
        
        String sql = "SELECT * \n" +
                    "  FROM ["+bd+"].[dbo].[PlatinaInfo]\n" +
                    "  where type = '"+tipo+"' and nps = '"+nps+"'";
        
        Vector<Map> data = consultar(sql);
        res.put("dext", data.get(0).get("diam_out_d"));
        res.put("db", data.get(0).get("diam_bolt_d"));
        res.put("dbc", data.get(0).get("diam_bolt_c_d"));
        
        return res;
        
        
    }
    
}

