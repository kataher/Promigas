package Model;

import DataBaseManager.DBManager;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.Normalizer;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/**
 *
 * @author kata__000
 */
public class Model {
    
    private static Connection miConexion;
    protected static String bd;
    private static DBManager dbManager;
    private static String ruta;
    
    public Model() {
        try {
            miConexion = null;
            this.bd = "Plataforma"; //OJO corregir
            
            //dbManager = new DBManager(DBManager.SQLSERVER, "MARTIN\\SQLEXPRESS", "Plataforma", "sa", "promigas2016", "1433");
            //dbManager = new DBManager(DBManager.SQLSERVER, "096834-DOCENT-O\\SQLEXPRESS", "Plataforma", "sa", "promigas2016", "1433");
            //dbManager = new DBManager(DBManager.SQLSERVER, "TAGUA\\SQLEXPRESS", "Plataforma", "sa", "promigas", "1433");
            //dbManager = new DBManager(DBManager.SQLSERVER, "DESKTOP-49A22JB\\SQLSERVER", "Plataforma", "sa", "123456", "1433");
            //dbManager = new DBManager(DBManager.SQLSERVER, "097699-DOCENT-P\\PROMIGAS", "Plataforma", "sa", "123", "1433");
            dbManager = new DBManager(DBManager.SQLSERVER, "SEBAS-PC\\SQLEXPRESS", "Plataforma", "sa", "12345", "1433");
          
        } catch (IOException ex) {
            Logger.getLogger(Model.class.getName()).log(Level.SEVERE, null, ex);
        }
            
    }
    
    private static void conectar() throws Exception{
        try {            
            miConexion = dbManager.GetConnection();
            
            if(miConexion!=null)
            {
                bd = dbManager.getDbName();
                System.out.println("Conexión Realizada Correctamente");
            }
            
        } catch (Exception ex) {
            throw new Exception("Error en la Conexión con la BD "+ex.getMessage());
        } 
        
    }
    
    public Connection getConnection()throws Exception{
        try {
            return dbManager.GetConnection();
        } catch (Exception ex) {
            throw new Exception("Error en la Conexión con la BD "+ex.getMessage());
        }

    }
    
    private static void desconectar()throws Exception{
        if ( miConexion != null)
        {
            try {
                miConexion.close();
            } catch (SQLException ex) {
                 throw new Exception("No fue posible cerrar la conexión "+ex.getMessage());
            }
        }
            
    }
    
    protected static Vector<Map> consultar(String tabla, String columns, String where) throws Exception{
        String sql = getSqlStatamet(tabla, columns, where);
        return ejecutarSQL(sql);
    }
    
    protected Vector<Map> consultar(String tabla, String columns, String where, Connection conn) throws SQLException{
        String sql = this.getSqlStatamet(tabla, columns, where);
        return ejecutarSQL(sql, conn);
    }
    
    protected Vector<Map> consultar(String[] columnsTA, String[] columnsTB, String otherColumns, String tablaA, String join, String tableB, String on, String where) throws Exception{
        String sql = this.getSqlStatametJoin(columnsTA, columnsTB, otherColumns, tablaA, join, tableB, on, where);
        return ejecutarSQL(sql);
    }
    
    protected static Vector<Map> consultar(String consulta) throws Exception{
        return ejecutarSQL(consulta);
    }
    
    protected Vector<Map> consultar(String consulta, Connection conn) throws SQLException{
        return ejecutarSQL(consulta, conn);
    }
    
    protected int add(String tabla, Map<String, String> values) throws Exception{
        String sql = getSqlStatametAgregar(tabla, values);
        return ejecutarUpdate(sql, null);
    }
    
    protected int edit(String tabla, Map<String, String> info, String where) throws Exception{
        String sql = getSqlStatametEdit(tabla, info, where);
        return ejecutarUpdate(sql,null);
    }
    
    protected int delete(String tabla, String where) throws Exception{
        String sql = getSqlStatametDelete(tabla, where);
        return ejecutarUpdate(sql, null);
    }
    
    protected int add(String tabla, Map<String, String> values, Connection conn) throws Exception{
        String sql = getSqlStatametAgregar(tabla, values);
        return ejecutarUpdate(sql, conn);
    }
    
    protected int edit(String tabla, Map<String, String> info, String where, Connection conn) throws Exception{
        String sql = getSqlStatametEdit(tabla, info, where);
        return ejecutarUpdate(sql, conn);
    }
    
    protected int delete(String tabla, String where, Connection conn) throws Exception{
        String sql = getSqlStatametDelete(tabla, where);
        return ejecutarUpdate(sql, conn);
    }
    
    protected String stringToBD(String s){
        return "'" + s + "'";
    }  
    
    protected Vector<Map> ejecutarSQL(String sql, Connection conn) throws SQLException{
        ResultSet res = null;  
        
        Statement st =  conn.createStatement();
        res = st.executeQuery(sql);            
        Vector<Map> resO = format(res);
        st.close();
        return resO;
    }
    
    
    
    //Metodos Privados
    private static Vector<Map> ejecutarSQL(String sql) throws Exception{
        ResultSet res = null;  
        
        conectar();            
        Statement st =  miConexion.createStatement();
        res = st.executeQuery(sql);            
        Vector<Map> resO = format(res);
        st.close();
        desconectar();
        return resO;
    }
    
    protected static int ejecutarUpdate(String sql, Connection conn) throws Exception{
        
       
        int res = -1;  
        Statement st;
        try {
            if(conn == null){
                conectar();    
                st =  miConexion.createStatement();
                res = st.executeUpdate(sql);
                st.close();
                desconectar();
            }else{
                st =  conn.createStatement();
                res = st.executeUpdate(sql);
                st.close();
            }
            
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, ex, "Error al consultar la base de datos "+ex.getMessage(), JOptionPane.ERROR_MESSAGE);
            throw new Exception("Error al conectar con la BD");
        }
         
         
         return res;
    }
    
    protected static String getBD(String tabla){
        return  "[" +  bd + "].[dbo].[" + tabla + "]";
    }
    
    private static String getSqlStatamet(String tabla, String columns, String where){
        
        String col = columns==null?"*":columns;
        String sql = "Select " + col + " from " + "[" +  bd + "].[dbo].[" + tabla + "]" + " where 1 = 1 " + (where.equals("")?"":"and " + where); 
        
        return sql;
    }
    
    private String getSqlStatametJoin(String columnsTA[], String columnsTB[], String otherColumns, String tablaA, String join, String tableB, String on, String where){
        String select = "";
        
        if(columnsTA != null){
            for (String colTA : columnsTA) {
                select += "[" + bd + "].[dbo].[" + tablaA + "]." + colTA + ", ";
            }
        }
        
        if(columnsTB != null){
            for (String colTB : columnsTB) {
                select += "[" + bd + "].[dbo].[" + tableB + "]." + colTB + ", ";
            }
        }
        
        select = (select.equals("")? "" : select.substring(0, select.length()-2));
        
        on = on.replace("[dbo]", "[" +  bd + "].[dbo]");
        
        if(otherColumns.equals("")){
            if(select.equals("")){
                select = "*";
            }
        }else{
            if(select.equals("")){
                select = otherColumns;
            }else{
                select = "," + otherColumns;
            }
        }
        
        String sql = "Select " + select ;
        sql += " From " + "[" +  bd + "].[dbo].[" + tablaA + "] ";
        sql +=  join + " Join " + "[" +  bd + "].[dbo].[" + tableB + "] ";
        sql += "On " + on;
        sql += " Where 1 = 1" + (where.equals("")?"":"and " + where); 
        
        return sql;
    }
    
    private String getSqlStatametAgregar(String tabla, Map<String, String> info){
        
        String columns="";
        String values="";
        
        int i = 0;
        
        for (Map.Entry<String, String> reg : info.entrySet()) {
            i++;
            
            if(i != info.size()){
                columns += reg.getKey() + ", ";
                values += reg.getValue() + ", ";
            }else{
                columns += reg.getKey();
                values += reg.getValue();
            }
            
        }
        
        String sql = "INSERT INTO [" +  bd + "].[dbo].[" + tabla + "] (" + columns + ") VALUES (" + values + ")";         
        return sql;
    }
    
    private String getSqlStatametEdit(String tabla, Map<String, String> info, String where){
        
        String values = "";
        
        int i = 0;
        
        for (Map.Entry<String, String> reg : info.entrySet()) {
            i++;
            
            if(i != info.size()){
                values += reg.getKey() + " = " + reg.getValue() + ", ";
            }else{
                values += reg.getKey() + " = " + reg.getValue();
            }
            
        }
        String sql = "UPDATE [" +  bd + "].[dbo].[" + tabla + "] SET " + values + " WHERE " + where;         
        return sql; 
    }
     
    private String getSqlStatametDelete(String tabla, String where){
        String sql = "DELETE FROM [" +  bd + "].[dbo].[" + tabla + "]" + " where " + where; 
        return sql;
    }
    
    private static Vector<Map> format(ResultSet res) throws SQLException{
        
        Vector<Map> rows = new Vector();
        int numColumns = res.getMetaData().getColumnCount();
        
        String[] columns = new String[numColumns];

        while (res.next())
        {
            Map<String, String> row = new HashMap<String, String>();
          
            for(int i = 0; i < numColumns; i++){
                row.put(res.getMetaData().getColumnName(i+1), res.getString(i+1));
                columns[i] = res.getMetaData().getColumnName(i+1);
            }
            
            rows.add(row);
        }
        
        return rows;
        
    }
    
    protected String[] getColumns(Map<String, String> row){
        String[] cols = new String[row.keySet().size()];
        Iterator it = row.keySet().iterator();
        while(it.hasNext()){
            String key = (String) it.next();
            System.out.println("Clave: " + key + " -> Valor: " + row.get(key));
        }
        
        return cols;
        
    }
    
    protected JSONObject buildJson(String nombre, Vector<Map> data) throws JSONException{
        Map<String,String> row ;
        JSONObject resul = new JSONObject();
        JSONArray array = new JSONArray();
        //System.out.println(data.toString());
        for(int i =0 ; i < data.size(); i++){
             row = data.get(i);
             array.put(row);
        }
        resul.put(nombre,array);
        resul.put("size",data.size());
        System.out.println("Model.Model.buildJson()"+resul.toString());
        return resul;
    }
    
    protected String normalizar(String valor){
        valor = Normalizer.normalize(valor, Normalizer.Form.NFD);
        valor = valor.replaceAll("[\\p{InCombiningDiacriticalMarks}]", "");
        return valor;
    
    }
    
    
}
