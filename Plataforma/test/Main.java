
import DataBaseManager.DBManager;
import java.io.IOException;
import java.sql.Connection;
import java.util.Date;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author kata__000()
 */
public class Main {
    
    static int[] V;
    static int[] inc;
    public static void main(String[] args)
    {
        /*try {
            Connection miConexion;
            DBManager dbManager = new DBManager(DBManager.SQLSERVER, "097699-DOCENT-P\\PROMIGAS", "Plataforma", "sa", "123", "1433");
            //DBManager dbManager = new DBManager(DBManager.SQLSERVER);
            
            miConexion=dbManager.GetConnection();
            
            if(miConexion!=null)
            {
                JOptionPane.showMessageDialog(null, "Conexión Realizada Correctamente");
            }
        } catch (IOException | SQLException | ClassNotFoundException ex) {
            Logger.getLogger(Main.class.getName()).log(Level.SEVERE, null, ex);
        }*/
        
        inc = new int[3];
        inc[0] = 1;
        inc[1] = 3;
        inc[2] = 5;
        
        V = new int[5];
        V[0] = 50;
        V[1] = 40;
        V[2] = 10;
        V[3] = 20;
        V[4] = -10;
        
        //qsort(0, 4);
        ordenacionShell();
               
        for(int i=0;i<=4;i+=1)
        {//Notemos que escribir i+=2 es similar a escribir i = i + 2
                System.err.println(V[i] + " @ ");
        }
        
        
        
    }
    
    public static void qsort(int li, int ls){
        
        if(li < ls){
            int A = V[li];
            int j = li;            
            int li1 = li;
            int ls1 = ls;
            
            while(ls1 != li1){
                while(ls1 > li1 && V[ls1] >= A){
                    ls1 = ls1 - 1;
                }
                j = ls1;
                
                if(ls1 != li1){
                    V[li1] = V[ls1];
                    
                    while(li1 < ls1 && V[li1] <= A){ 
                        li1 = li1 + 1;
                    }
                    
                    j = li1;
                    
                    if(ls1 != li1){
                        V[ls1] = V[li1];
                        ls1 = ls1 - 1;
                    }
                }
            }
            
            V[j] = A;            
            qsort(li, j-1);
            qsort(j+1, ls);
        }
		
    }
    
    public static void ordenacionShell() {
        final int N = V.length;
        int incremento = N;
        
        int a = 0;
        while (a < 3){
            incremento = inc[a];
            for (int k = 0; k < incremento; k++) {
                for (int i = incremento + k; i < N; i += incremento) {
                    int j = i;
                    while (j - incremento >= 0 && V[j] < V[j - incremento]) {
                        int tmp = V[j];
                        V[j] = V[j - incremento];
                        V[j - incremento] = tmp;
                        j -= incremento;
                    }
                }
            }
            
            a ++;
        }
    }
    
}