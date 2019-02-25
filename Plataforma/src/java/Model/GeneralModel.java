/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Model.Pipeline.*;
import Model.PipelineTesting.*;
import Model.PipelineCorrosion.*;
import Model.Selector.*;
import Model.CathodicProtection.*;
import java.lang.reflect.Method;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;
import java.util.Vector;
import org.json.JSONObject;


/**
 *
 * @author kata__000
 */
public class GeneralModel extends Model{
    
    private String tabla;
    private String from;
    private Object model;
    
    public GeneralModel(Object model, String from) throws Exception{
        this.model = model;
        this.from = from;
        
        Method metodo = model.getClass().getDeclaredMethod("getTabla");            
        this.tabla = metodo.invoke(model).toString();
    }
    
    public GeneralModel() throws Exception{
        
        tabla = null;
        from = null;
        model = null;
       
    }
    
    public String add(Map<String, String> values) throws Exception{   
        String date = "'" + this.getDateTime() + "'";
        values.put("date", date);
        
        this.add(tabla, values);
        return  date;
    }
     
    public void edit(Map<String, String> values, String id) throws Exception{
        values.remove("id");
        String where = "id = " + id;
        
        String idrg = values.get("id_user").trim();

        String sqlCons = "SELECT id_user\n" +
                "  FROM [" +  bd + "].[dbo].[" + tabla + "]\n" +
                "  WHERE id = " + id + " AND id_user = " + idrg; 
        
        Vector<Map> data = consultar(sqlCons);
        
        if(data.isEmpty()){
            throw new Exception("No existe un registro para este còdigo");   
        }else{
            edit(tabla, values, where);
        }
        
        
    }
      
    public void delete(String id, int id_user) throws Exception{
        String where = "id = " + id;
        
        String sqlCons = "SELECT id_user\n" +
                "  FROM [" +  bd + "].[dbo].[" + tabla + "]\n" +
                "  WHERE id = " + id; 
        
        Vector<Map> data = consultar(sqlCons);
        
        if(data.isEmpty()){
            throw new Exception("There is no record for this code");   
        }else{
            if(data.get(0).get("id_user").toString().equals(id_user+"")){
                delete(tabla, where);
            }else{
               throw new Exception("It is not possible to delete the record, it must be the owner");    
            }
        }
    }
    
    public Vector<Map> load(String where) throws Exception{
        return  consultar(tabla, "*", where);
    }
    
    public Vector<Map> load(String columns, String where) throws Exception{
        if(columns == null || columns.trim().equals("")){
            return  consultar(tabla, "*", where);
        }else{
            return  consultar(tabla, columns, where);
        }  
    }
    
    public JSONObject loadH(String iduser,String nombre) throws Exception{
        //String where = "id_user = "+iduser;
        Vector<Map> data;
        data = consultar(tabla, "*", "");
        JSONObject json = new JSONObject();
         
        if(data.isEmpty()){
            json = null;
            return null;
        }else{
           json = buildJson(nombre,data);
           return json;
        } 
    }
    
    public JSONObject loadHMedidores(String iduser,String nombre, String type) throws Exception{
        String where = "iduser = "+iduser + " and type = " + stringToBD(type);
        Vector<Map> data;
        data = consultar(tabla, "*", where);
        JSONObject json = new JSONObject();
         
        if(data.isEmpty()){
            json = null;
            return null;
        }else{
           json = buildJson(nombre,data);
           return json;
        } 
    }
    
    public JSONObject loadHTransmisores(String iduser,String nombre) throws Exception{
        Vector<Map> data;
        
        String sql = "SELECT t.id, description_tra, ruta_tra, nombre_tra, p.name, t.id_user, u.name as nuser\n" +
                    "  FROM ["+bd+"].[dbo].[Transmitters] t\n" +
                    "  inner join ["+bd+"].[dbo].ProyectsTemp p\n" +
                    "  on t.id_proyect = p.id\n" +
                    "  inner join ["+bd+"].[dbo].Users u\n" +
                    "  on u.id = t.id_user";
        data = consultar(sql);
        JSONObject json = new JSONObject();
         
        if(data.isEmpty()){
            json = null;
            return null;
        }else{
           json = buildJson(nombre,data);
           return json;
        } 
    }
    
    public JSONObject loadHMotorizedV(String iduser,String nombre) throws Exception{
        Vector<Map> data;
        
        String sql = "SELECT m.id, description_mov, ruta_mov, nombre_mov, p.name, m.id_user, u.name as nuser\n" +
"                    FROM ["+bd+"].[dbo].[MotorizedV] m\n" +
"                    inner join ["+bd+"].[dbo].ProyectsTemp p\n" +
"                    on m.id_proyect = p.id\n" +
"                    inner join ["+bd+"].[dbo].Users u\n" +
"                    on u.id = m.id_user";
        data = consultar(sql);
        JSONObject json = new JSONObject();
         
        if(data.isEmpty()){
            json = null;
            return null;
        }else{
           json = buildJson(nombre,data);
           return json;
        } 
    }
     
    protected String getDateTime(){
        Date date = new Date();
        SimpleDateFormat dt = new SimpleDateFormat("yyyyMMdd hh:mm:ss");         
        
        return dt.format(date);
    }
    
    public String loadSuggestedAdiabaticHead(String idProyect) throws Exception{
        return ((AdiabaticHeadModel)model).loadSuggested(idProyect);        
    }
    
    public String getRuta() throws Exception{
        String sql = "Select valor From ["+bd+"].[dbo].[Parametros] Where nombre = 'ruta'";
        
        Vector<Map> data = this.consultar(sql);
        
        return data.get(0).get("valor").toString();
    }
    
    
    public String getRutaDataSheet() throws Exception{
        String sql = "Select valor From ["+bd+"].[dbo].[Parametros] Where nombre = 'rutads'";
        
        Vector<Map> data = this.consultar(sql);
        
        return data.get(0).get("valor").toString();
    }
    
}
