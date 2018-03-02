/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.Hydraulics;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Map;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author kata__000
 */
public class PanhandleAModel extends Model.Model{
    
    private String tabla;    

    public PanhandleAModel() {
      super();
      this.tabla = "PanhandleA";
    }
    
      
    public void add(Map<String, String> values) throws Exception{        
        this.add(tabla, values);
    }
     
    public void edit(Map<String, String> values, String idp, String idr) throws Exception{
        String where = "id_proyect = " + idp + " and id = " + idr;
        this.edit(tabla, values, where);
    }
      
    public void delete(String[] id) throws Exception{
        String idProyect = id[0];
        String form = id[1];
        String where = "id = " + idProyect + " and idType = " + form;
        this.delete(tabla, where);
    }
    
    public String loadSuggested(String idProyect) throws Exception{
        String where = "idProyect = " + idProyect;
        Vector<Map> data =consultar("Suggested", "basetemperature_dp, basepressure_dp", where);
        
        if(data.isEmpty()){
            throw new Exception("No existe el proyecto asociado");
        }
        
        
        String res = data.get(0).get("basetemperature_dp").toString() + "-" +
                     data.get(0).get("basepressure_dp").toString();
        
        return res;
    }
    
    public String load(String idProyect, String form) throws Exception{
        String where = "id_proyect = " + idProyect + " and idType = " + form;
        Vector<Map> data = consultar(tabla, "*", where);
        
        if(data.isEmpty()){
            return "";
        }else{
            
            String res = data.get(0).get("temperatureBase").toString() + "-" +
                        data.get(0).get("pressureBase").toString() + "-" +
                        data.get(0).get("gasFlowing").toString() + "-" +
                        data.get(0).get("gasSpecific").toString() + "-" +
                        data.get(0).get("pipelineEfficiency").toString() + "-" +
                        data.get(0).get("upstreamPressure").toString() + "-" +
                        data.get(0).get("flowRate").toString() + "-" +
                        data.get(0).get("internalPipe").toString() + "-" +
                        data.get(0).get("lengthOf").toString() + "-" +
                        data.get(0).get("upstreamElevation").toString() + "-" +
                        data.get(0).get("downstreamElevation").toString() + "-" +
                        data.get(0).get("downstreamPressure").toString() + "-" +
                        data.get(0).get("transmissionFactor").toString()+ "-" +
                        data.get(0).get("velocity").toString() + "-" + 
                        data.get(0).get("id").toString();
            return res;
        } 
    }
    
}
