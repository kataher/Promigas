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
public class ValslamshutModel extends Model.Model {
    
    private static String tabla = "ValvulasSReg";    

    public ValslamshutModel() {
      super();
    }
    
    public String getTabla() {
        return tabla;
    }
    
    public static JSONObject getEspecificacionMecanismo(String min, String max) throws Exception{
        JSONObject res = new JSONObject();
        
        String sql = "select TOP 1 *\n" +
                        "from Plataforma.dbo.ValvulasSS\n" +
                        "where maximo > "+min+"\n" +
                        "order by minimo";
        
        Vector<Map> data1 = consultar(sql);
        res.put("minimo", data1);
         
        sql = "select TOP 1 *\n" +
                "from Plataforma.dbo.ValvulasSS\n" +
                "where maximo > "+max+"\n" +
                "order by maximo";
        
        Vector<Map> data2 = consultar(sql);
        res.put("maximo", data2);
        
        return res;
        
        
    }
    
}
