/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.Selector;

import java.util.Map;
import java.util.Vector;
import org.json.JSONArray;
import org.json.JSONObject;

/**
 *
 * @author kata__000
 */
public class ReguladorModel extends Model.Model {
    
    private static String tabla = "Reguladores";    

    public ReguladorModel() {
      super();
    }
    
    public String getTabla() {
        return tabla;
    }
    
    public static JSONObject getReguladorCV(String modelo, String tamano) throws Exception{
        JSONObject res = new JSONObject();
        
        String sql = "SELECT cv\n" +
                "  FROM ["+bd+"].[dbo].[ReguladoresCV]\n" +
                "   WHERE id_modelo = "+modelo+" and id_tamano = "+tamano;
        
        Vector<Map> data = consultar(sql);
        res.put("row", data);
        
        return res;
        
        
    }
    
    public static JSONObject getReguladorSugerido(double presLl, double preg, double gesp, double temp, double flujo) throws Exception{
        JSONObject res1 = new JSONObject() ;
        JSONArray res = new JSONArray();
        
        String sql = "SELECT \n" +
                    "  c.id,t.modelo , m.modelo, cv\n" +
                    "  FROM ["+bd+"].[dbo].[ReguladoresCV] c\n" +
                    "  inner join ["+bd+"].[dbo].[ReguladoresTamano] t\n" +
                    "  on c.id_tamano = t.id\n" +
                    "  inner join ["+bd+"].[dbo].[ReguladoresModelo] m\n" +
                    "  on c.id_modelo = m.id\n" +   
                    "  where cv <> '0'\n" +
                    " group by t.modelo, m.modelo, cv, c.id";
        
        
        Vector<Map> data = consultar(sql);
        
        double max = -1;
        String modelo = "";
        
        if(data.isEmpty() == false){
            
            String mat[][] = new String[data.size()][6];
            
            modelo = data.get(0).get("modelo").toString();
            
            for(int i = 0; i< data.size(); i++){
                
                
                double cv = Double.valueOf(data.get(i).get("cv").toString());
                double capaMax = 59.64 * cv * (presLl + 14.65) * Math.pow((presLl-preg)/(presLl+14.65), 0.5) * Math.pow((520/(gesp*(temp+460))), 0.5) * 24/1000000;
                double capaCritico = cv * 32.5 * (presLl + 14.65)* Math.pow((520/(gesp *(temp+460))), 0.5) * 24/1000000;
                double real = Math.min(capaMax, capaCritico);
                
                double porcentaje = 0;            
                if(real != 0){
                    porcentaje = flujo / (real*1000000/24);
                }

                double status = porcentaje;
                if(porcentaje > 0.8){
                    status = 0;
                }
                
                mat[i][0] = data.get(i).get("cv").toString();
                mat[i][1] = capaMax+"";
                mat[i][2] = capaCritico+"";
                mat[i][3] = real+"";
                mat[i][4] = porcentaje+"";
                mat[i][5] = status+"";
                
                if(status > max){max = status;}
                
                if(data.size() -1 == i){
                    mat[i][0] = mat[i][0] + "";
                    int x= 0;
                    x = x + i;
                }
                
                if(i != data.size() - 1){
                    if(!(modelo.equals(data.get(i+1).get("modelo").toString()))){
                        
                        JSONObject jo = new JSONObject();
                        jo.put("maximo", max);
                        jo.put("modelo", modelo);
                        
                        res.put(jo);
                        
                        max = -1;
                        modelo = data.get(i+1).get("modelo").toString();
                    }
                    
                }
                
                if(i == data.size() - 1){
                    String lastM  = ((JSONObject)(res.get(res.length()-1))).get("modelo").toString();
                    
                    if(!(lastM.equals(data.get(i).get("modelo").toString()))){
                        JSONObject jo = new JSONObject();
                        jo.put("maximo", max);
                        jo.put("modelo", data.get(i).get("modelo").toString());
                        
                        res.put(jo);
                    }
                }
                
            }
            
        }
        
        res1.put("row", res);
        return res1;
        
        
    }
    
}

