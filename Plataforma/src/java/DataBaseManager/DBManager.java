/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DataBaseManager;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;

/**
 *
 * @author kata__000
 */
public class DBManager {
    
    private String driver="";
    private String uri="";
    private String dbName="";
    private String user="";
    private String pass="";
    private String port="";
    private String[] parametros;
    private Connection conexion;
    public static final String SQLSERVER = "jdbc:sqlserver";

    public DBManager(String driver) throws FileNotFoundException, IOException 
    {
        this.driver = driver;
       
        Path currentRelativePath = Paths.get("");
        String s = currentRelativePath.toAbsolutePath().toString() + "\\src\\conf\\dbConf.txt";
               
        File archivo = new File(s);
        FileReader fR = new FileReader(archivo);
        BufferedReader bR =  new BufferedReader(fR);

        String cadena = "";
        parametros = new String[5];
        int i = 0;
        while((cadena = bR.readLine())!=null && i<=4) 
        {
            parametros[i] = cadena.split(":")[1];
            i ++;
        }
        bR.close();

        if(i == 5)
        {
            uri = parametros[0];
            dbName = parametros[1];
            user = parametros[2];
            pass = parametros[3];
            port = parametros[4];
        }else{
            resetParametros();
        }  
        
        conexion = null;
    }
    
    public DBManager(String driver, String uri, String bd, String user, String pass, String port) throws FileNotFoundException, IOException 
    {
        this.driver = driver;
        parametros = new String[5];
        parametros[0] = uri;
        parametros[1] = bd;
        parametros[2] = user;
        parametros[3] = pass;
        parametros[4] = port;
        
        this.uri = uri;
        this.dbName = bd;
        this.user = user;
        this.port = port;
        this.pass = pass;
    }
    
    public Connection GetConnection () throws SQLException, ClassNotFoundException 
    {
        conexion = null;
        
        if(parametros != null){

            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = driver+"://" + uri + ":" + port +
                        ";databaseName=" + dbName +
                        ";user=" + user +
                        ";password=" + pass;

            System.out.println(url);
            conexion = DriverManager.getConnection(url);

        
        }
                
        return conexion;
    }
    
    private void resetParametros(){
        parametros = null;
        uri = null;
        pass = null;
        dbName = null;
        user = null;
    }

    public String getDbName() {
        return dbName;
    }
    
    
    
    

}
