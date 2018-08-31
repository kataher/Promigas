/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.util.HashMap;
import java.util.Map;
import java.util.Vector;
import javax.print.DocFlavor;

/**
 *
 * @author kata__000
 */
public class  ComboModel extends Model{

    public String load_Cmbo(String comboId) throws Exception{
           
        String where = "id_combo = '" + comboId + "'";
        Vector<Map> data= consultar("ComboBox", "*", where);

        if(data.isEmpty()){
            return "";
        }else{
            int tam = data.size();
            String res = "";


            for(int i = 0; i < tam; i ++){
                res +=  "<option value=\"" + data.get(i).get("codigo").toString() + "," + data.get(i).get("value").toString() + "\">"+ data.get(i).get("name").toString() +  " </option>";                        
            }

            res += "</select>";

            return res;
        } 
    }
    
    public String load_Cmbo_NPS(String type) throws Exception{
        String columns = "distinct cast(diameter AS float) as diam, diameter as diamt, NPS";
        String where = " typec = " + stringToBD(type);
        Vector<Map> data= consultar("ComboBoxNPS", columns, where);
        
        if(data.isEmpty()){
            return "";
        }else{
            
            
            int tam = data.size();
            String res = "";
           
              
            for(int i = 0; i < tam; i ++){
                res +=  "<option value=\"" + data.get(i).get("diamt").toString() + "\">"+ data.get(i).get("NPS").toString() +  " </option>";                        
            }
            
            res += "</select>";
           
            return res;
        } 
        
    }
    
    public String load_Cmbo_WT(String nps, String type) throws Exception{
        nps = stringToBD(nps);
        type = stringToBD(type);
        
        String columns = "wall_thickness, NPS";
        String where = "diameter = "+nps + " AND typec = " + type;
        Vector<Map> data= consultar("ComboBoxNPS", columns, where);
        
        if(data.isEmpty()){
            return "";
        }else{
            
            
            int tam = data.size();
            String res = "";
           
              
            for(int i = 0; i < tam; i ++){
               res +=  "<option value=\"" + data.get(i).get("NPS").toString() + "," + data.get(i).get("wall_thickness").toString() + "\">"+ data.get(i).get("wall_thickness").toString() +  " </option>";                        
            }
            
            res += "</select>";
           
            return res;
        } 
        
    }
    
    public String load_Cmbo_Mod(String serie, String tipo) throws Exception{
        
        String columns = "modelo, capref, diametro_pulg";
        String where = "serie = "+ stringToBD(serie) + " and tipo = " + stringToBD(tipo);
        Vector<Map> data= consultar("ComboBoxMedidores", columns, where);
        
        if(data.isEmpty()){
            return "";
        }else{
            
            
            int tam = data.size();
            String res = "";
           
              
            for(int i = 0; i < tam; i ++){
               res +=  "<option value=\"" + data.get(i).get("modelo").toString() + "," + data.get(i).get("capref").toString() + "," + data.get(i).get("diametro_pulg").toString() +  "\">"+ data.get(i).get("modelo").toString() +  " </option>";                        
            }
            
            res += "</select>";
           
            return res;
        } 
        
    }
    
    public String load_Cmbo_Ref(String marca) throws Exception{
        
        String columns = "id, referencia, id_marca";
        String where = "id_marca = "+ marca;
        Vector<Map> data= consultar("ComboBoxRefeActuadores", columns, where);
        
        if(data.isEmpty()){
            return "";
        }else{
            
            
            int tam = data.size();
            String res = "";
           
              
            for(int i = 0; i < tam; i ++){
               res +=  "<option value=\"" + data.get(i).get("id").toString() + "\">"+ data.get(i).get("referencia").toString() +  " </option>";                        
            }
            
            res += "</select>";
           
            return res;
        } 
        
    }
    
    public String load_Cmbo_Marca() throws Exception{
        
        String columns = "id, marca";
        Vector<Map> data= consultar("ComboBoxMarcaActuadores", columns, "");
        
        if(data.isEmpty()){
            return "";
        }else{
            
            
            int tam = data.size();
            String res = "";
           
              
            for(int i = 0; i < tam; i ++){
               res +=  "<option value=\"" + data.get(i).get("id").toString() + "\">"+ data.get(i).get("marca").toString() +  " </option>";                        
            }
            
            res += "</select>";
           
            return res;
        } 
        
    }
    
    public String load_Cmbo_Accion() throws Exception{
        
        String columns = "id, accion";
        Vector<Map> data= consultar("ComboBoxAccionActuadores", columns, "");
        
        if(data.isEmpty()){
            return "";
        }else{
            
            
            int tam = data.size();
            String res = "";
           
              
            for(int i = 0; i < tam; i ++){
               res +=  "<option value=\"" + data.get(i).get("id").toString() + "\">"+ data.get(i).get("accion").toString() +  " </option>";                        
            }
            
            res += "</select>";
           
            return res;
        } 
        
    }
    
    public static String load_Cmbo_ModAct(String referencia, String accion) throws Exception{
        
        String columns = "id, modelo";
        String where = "id_referencia = " + referencia + " and id_accion = " + accion;
        Vector<Map> data= consultar("ComboBoxModeloActuadores", columns, where);
        
        if(data.isEmpty()){
            return "";
        }else{
            
            
            int tam = data.size();
            String res = "";
           
              
            for(int i = 0; i < tam; i ++){
               res +=  "<option value=\"" + data.get(i).get("id").toString() + "\">"+ data.get(i).get("modelo").toString() +  " </option>";                        
            }
            
            res += "</select>";
           
            return res;
        } 
        
    }
    
    public String load_Cmbo_TamAct() throws Exception{
        
        String columns = "id, inches, value";
        String where = "";
        Vector<Map> data= consultar("ComboBoxInchesActuadores", columns, where);
        
        if(data.isEmpty()){
            return "";
        }else{
            
            
            int tam = data.size();
            String res = "";
           
              
            for(int i = 0; i < tam; i ++){
               res +=  "<option value=\"" + data.get(i).get("id").toString() + ","+ data.get(i).get("value").toString() + "\">"+ data.get(i).get("inches").toString() +  " </option>";                        
            }
            
            res += "</select>";
           
            return res;
        } 
        
    }
    
    public String load_Cmbo_AnsiAct() throws Exception{
        
        String columns = "id, ansi";
        String where = "";
        Vector<Map> data= consultar("ComboBoxAnsiActuadores", columns, where);
        
        if(data.isEmpty()){
            return "";
        }else{
            
            
            int tam = data.size();
            String res = "";
           
              
            for(int i = 0; i < tam; i ++){
               res +=  "<option value=\"" + data.get(i).get("id").toString() + "\">"+ data.get(i).get("ansi").toString() +  " </option>";                        
            }
            
            res += "</select>";
           
            return res;
        } 
        
    }
    
    public String load_Cmbo_PresionAct() throws Exception{
        
        String columns = "id, name, value";
        String where = "";
        Vector<Map> data= consultar("ComboBoxPresionActuadores", columns, where);
        
        if(data.isEmpty()){
            return "";
        }else{            
            int tam = data.size();
            String res = "";
           
              
            for(int i = 0; i < tam; i ++){
               res +=  "<option value=\"" + data.get(i).get("id").toString() + "," + data.get(i).get("value").toString() + "\">"+ data.get(i).get("name").toString() +  " </option>";                        
            }
            
            res += "</select>";
           
            return res;
        } 
        
    }
    
    public String load_Cmbo_AllActuadores() throws Exception{
        
         String sql = "SELECT modelos.id, modelo, modelos.id_referencia, modelos.id_accion, referencias.id_marca\n" +
"  FROM ["+bd+"].[dbo].[ComboBoxModeloActuadores] modelos\n" +
"  inner join ["+bd+"].[dbo].[ComboBoxRefeActuadores]   referencias\n" +
"  on referencias.id = modelos.id_referencia";
        
        
        Vector<Map> data= consultar(sql);
        
        if(data.isEmpty()){
            return "";
        }else{            
            int tam = data.size();
            String res = "";
           
              
            for(int i = 0; i < tam; i ++){
               res +=  "<option value=\"" + data.get(i).get("id").toString() + "," +data.get(i).get("id_referencia").toString() + "," + data.get(i).get("id_accion").toString() + "," + data.get(i).get("id_marca").toString() + "\">"+ data.get(i).get("modelo").toString() +  " </option>";                        
            }
            
            res += "</select>";
           
            return res;
        } 
        
    }
    
    public String load_Cmbo_AllReferenciasAct() throws Exception{
        
        
        String columns = "id, id_marca, referencia";
        String where = "";
        Vector<Map> data= consultar("ComboBoxRefeActuadores", columns, where);
        
        if(data.isEmpty()){
            return "";
        }else{            
            int tam = data.size();
            String res = "";
           
              
            for(int i = 0; i < tam; i ++){
               res +=  "<option value=\"" + data.get(i).get("id").toString() + "," + data.get(i).get("id_marca").toString() + "\">"+ data.get(i).get("referencia").toString() +  " </option>";                        
            }
            
            res += "</select>";
           
            return res;
        } 
        
    }
    
    public String load_Cmbo_SensorIntegrado() throws Exception{
        
        
        
        String sql = "SELECT TOP (200) id, name, value, codigo, id_combo\n" +
        "FROM     ["+bd+"].[dbo].[ComboBox] \n" +
        "WHERE  (id_combo = 'siecom')\n" +
        "ORDER BY CAST(value AS int)";
        
        Vector<Map> data= consultar(sql);

        if(data.isEmpty()){
            return "";
        }else{
            int tam = data.size();
            String res = "";


            for(int i = 0; i < tam; i ++){
                res +=  "<option value=\"" + data.get(i).get("codigo").toString() + "," + data.get(i).get("value").toString() + "\">"+ data.get(i).get("name").toString() +  " </option>";                        
            }

            res += "</select>";

            return res;
        } 
       
        
    }
    
    public String load_Cmbo_TamValvulas() throws Exception{
        
        String sql = "SELECT id, [tam]\n" +
                    "      ,[x0]\n" +
                    "      ,[x1]\n" +
                    "      ,[x2]\n" +
                    "      ,[x3]\n" +
                    "      ,[x4]\n" +
                    "      ,[x5]\n" +
                    "      ,[x6]\n" +
                    "  FROM ["+bd+"].[dbo].[FunSlamShut]";
        
        Vector<Map> data= consultar(sql);

        if(data.isEmpty()){
            return "";
        }else{
            int tam = data.size();
            String res = "";


            for(int i = 0; i < tam; i ++){
                res +=  "<option value=\"" + data.get(i).get("x0") + "," + data.get(i).get("x1") + "," + data.get(i).get("x2") + "," 
                        + data.get(i).get("x3") + "," + data.get(i).get("x4")
                        + "," + data.get(i).get("x5") + "," + data.get(i).get("x6") + "\">"+ data.get(i).get("tam") +  " </option>";                        
            }

            res += "</select>";

            return res;
        } 
       
        
    }
    
    public String load_Cmbo_NpsPlatina(String type) throws Exception{
        
        String sql = "SELECT nps " +
                    "  FROM ["+bd+"].[dbo].[PlatinaInfo]" + 
                    " WHERE type = " + stringToBD(type);
        
        Vector<Map> data= consultar(sql);

        if(data.isEmpty()){
            return "";
        }else{
            int tam = data.size();
            String res = "";


            for(int i = 0; i < tam; i ++){
                res +=  "<option value=\"" + data.get(i).get("nps") + "\">"+ data.get(i).get("nps") +  " </option>";                        
            }

            res += "</select>";

            return res;
        } 
       
        
    }
    
    public String load_Cmbo_ModeloReg() throws Exception{
        
        String sql = "SELECT [id]\n" +
            "      ,[modelo]\n" +
            "  FROM [" +  bd + "].[dbo].[ReguladoresModelo]";
        
        Vector<Map> data= consultar(sql);

        if(data.isEmpty()){
            return "";
        }else{
            int tam = data.size();
            String res = "";


            for(int i = 0; i < tam; i ++){
                res +=  "<option value=\"" + data.get(i).get("id") + "\">"+ data.get(i).get("modelo") +  " </option>";                        
            }

            res += "</select>";

            return res;
        } 
       
        
    }
    
    public String load_Cmbo_TamanoReg(String op) throws Exception{
        
        String sql = "SELECT [id]\n" +
            "      ,[modelo]\n" +
            "  FROM [" +  bd + "].[dbo].[ReguladoresTamano] \n" +
            " WHERE opcion <> " + op;
        
        Vector<Map> data= consultar(sql);

        if(data.isEmpty()){
            return "";
        }else{
            int tam = data.size();
            String res = "";


            for(int i = 0; i < tam; i ++){
                res +=  "<option value=\"" + data.get(i).get("id") + "\">"+ data.get(i).get("modelo") +  " </option>";                        
            }

            res += "</select>";

            return res;
        } 
       
        
    }
    
   
    
}
