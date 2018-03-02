/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.Selector;

import Model.ComboModel;
import java.util.Map;
import java.util.Vector;
import org.json.JSONObject;


/**
 *
 * @author kata__000
 */
public class ActuadoresModel extends Model.Model{
    
    private final String tabla;    

    public ActuadoresModel() {
      this.tabla = "Actuadores";
    }

    public String getTabla() {
        return tabla;
    }
    
    public JSONObject getTorque_Act(String id_ansi,String id_inches) throws Exception{
        String where = "id_ansi = " + id_ansi + " and id_inches = "+id_inches;
        Vector<Map> data;
        data = consultar("ComboBoxTorqueActuadores", "value", where);
        JSONObject json = new JSONObject();
         
        if(data.isEmpty()){
            json = null;
            return null;
        }else{
           json = json.put("row", data.get(0));
           return json;
        } 
    }
    
    public JSONObject getTorque_Act(String id_actuador) throws Exception{
        String where = "id_actuador = " + id_actuador;
        Vector<Map> data;
        data = consultar("TorquePorActuadores", "id, minimo, maximo, id_presion", where);
        JSONObject json = new JSONObject();
         
        if(data.isEmpty()){
            json = null;
            return null;
        }else{
           json = json.put("row", data);
           return json;
        } 
    }
    
     public JSONObject getMaximos_Act(String maxRequerido, String id_actuador) throws Exception{
         
        String tablaA = "TorquePorActuadores";
        String tablaB = "ComboBoxPresionActuadores";
        
        String columns =  "name, id_presion, maximo/" + maxRequerido + " as aux,  1/(maximo/" + maxRequerido + " + 0.0001) as maximos, maximo "; 
        String where = " (id_actuador = " + id_actuador + ")";
        String on = "[dbo].[TorquePorActuadores].id_presion = [dbo].[ComboBoxPresionActuadores].id";
        
        Vector<Map> data;
        data = consultar(null, null, columns, tablaA, "Inner", tablaB, on, where);
        JSONObject json = new JSONObject();
         
        if(data.isEmpty()){
            json = null;
            return null;
        }else{
           json = json.put("row", data);
           return json;
        } 

    }
     
    public static String addActuador(String nombre, String referencia, String accion) throws Exception{
         
        String sql = "INSERT INTO ["+bd+"].[dbo].[ComboBoxModeloActuadores]\n" +
                "           ([modelo]\n" +
                "           ,[id_referencia]\n" +
                "           ,[id_accion])\n" +
                "     VALUES\n" +
                "           ("+nombre+"\n" +
                "           ,"+referencia+"\n" +
                "           ,"+accion+")";
        
        ejecutarUpdate(sql, null);
        
        return ComboModel.load_Cmbo_ModAct(referencia, accion);
        
        

    }
      
    
}

