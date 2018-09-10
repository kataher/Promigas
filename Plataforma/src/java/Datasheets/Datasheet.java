/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Datasheets;


import java.io.Console;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.time.Instant;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFDataFormat;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/**
 *
 * @author djabba
 */
public class Datasheet {
    
    
    public static JSONObject genDSMedidores(HttpServletRequest request, String ruta, String username){
        
        System.out.println("archivo a generarse");
        
        JSONObject json = new JSONObject();       
        
        SimpleDateFormat dt = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss"); 
        Date d= new Date();
            
        
        try
        {
            POIFSFileSystem fs = new POIFSFileSystem( new FileInputStream(ruta + "\\medidores.xls"));
            HSSFWorkbook wb = new HSSFWorkbook(fs); //libro 
            HSSFSheet sheet = wb.getSheetAt(0); //hoja 0

            //Este datasheet modifica las filas de la 10 a la 51 de la columna I           
            HSSFCell cell;            
            cell = sheet.getRow(4).getCell(14);
            cell.setCellValue(dt.format(d));            
            cell = sheet.getRow(8).getCell(11);
            cell.setCellValue(username);            
            cell = sheet.getRow(6).getCell(8);
            cell.setCellValue(request.getParameter("proyecto"));
            
            cell = sheet.getRow(12).getCell(8);
            cell.setCellValue(request.getParameter("linep"));
            
            cell = sheet.getRow(16).getCell(8);
            cell.setCellValue(request.getParameter("flowr"));
            
            cell = sheet.getRow(18).getCell(8);
            cell.setCellValue(request.getParameter("size"));
            
            cell = sheet.getRow(23).getCell(8);
            cell.setCellValue(request.getParameter("size"));
            
            cell = sheet.getRow(19).getCell(8);
            cell.setCellValue(request.getParameter("outere"));
            
            cell = sheet.getRow(22).getCell(8);
            cell.setCellValue(request.getParameter("type"));
            
            cell = sheet.getRow(25).getCell(8);
            cell.setCellValue(request.getParameter("ansic"));
            
            cell = sheet.getRow(49).getCell(8);
            cell.setCellValue(request.getParameter("model"));
            
            cell = sheet.getRow(13).getCell(8);
            cell.setCellValue(request.getParameter("temp"));
            
            
            
            
            //Guardar el archivo modificado            
            String nuevoNombre = "medidores_" + d.getTime();
            
                    
            
            FileOutputStream fileOut = new FileOutputStream(ruta+ "\\" + nuevoNombre + ".xls");

            HashMap<String, String> map = new HashMap<String,String>();
            map.put("path", ruta);
            map.put("file", nuevoNombre + ".xls");
            
            json.put("row", map);
            
            
            wb.write(fileOut);
            fileOut.close();
                            
        } catch(IOException ex) { 
            System.out.println("Error al leer el fichero."); 
        } catch (JSONException ex) {
            System.out.println("Error al construrir el json."); 
        }
        
        System.out.println("archivo generado");
        
        return json;
        
    }
    
    public static JSONObject genDSComputadores(HttpServletRequest request, String ruta, String username){
        
        JSONObject json = new JSONObject();       
        
        SimpleDateFormat dt = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss"); 
        Date d= new Date();
            
        
        try
        {
            POIFSFileSystem fs = new POIFSFileSystem( new FileInputStream(ruta + "\\compflujo.xls"));
            HSSFWorkbook wb = new HSSFWorkbook(fs); //libro 
            HSSFSheet sheet = wb.getSheetAt(0); //hoja 0

            //Este datasheet modifica las filas de la 10 a la 51 de la columna I
            
            HSSFCell cell;
            
            cell = sheet.getRow(5).getCell(15);
            cell.setCellValue(dt.format(d));
            
            cell = sheet.getRow(9).getCell(12);
            cell.setCellValue(username);
            
            cell = sheet.getRow(7).getCell(9);
            cell.setCellValue(request.getParameter("proyecto"));
            
            cell = sheet.getRow(10).getCell(9);
            cell.setCellValue(request.getParameter("tag_com"));
            
            cell = sheet.getRow(25).getCell(9);
            cell.setCellValue(request.getParameter("protocols"));
            
            cell = sheet.getRow(24).getCell(9);
            cell.setCellValue(request.getParameter("connec"));
            
            String vecc[] = request.getParameter("connec").split("/");
            cell = sheet.getRow(23).getCell(9);
            cell.setCellValue(vecc.length-1);
            
            cell = sheet.getRow(13).getCell(9);
            cell.setCellValue(request.getParameter("medidores"));
            
            cell = sheet.getRow(14).getCell(9);
            cell.setCellValue(request.getParameter("linep"));
            
            int pres = Integer.parseInt(request.getParameter("linep"));
            cell = sheet.getRow(35).getCell(9);
            if(pres > 1000){
               cell.setCellValue("0-1500 Psig"); 
            }else if(pres > 500){
                cell.setCellValue("0-1000 Psig");
            }else{
                cell.setCellValue("0-500 Psig");
            }
            
            cell = sheet.getRow(18).getCell(9);
            cell.setCellValue(request.getParameter("flujo"));
            
            cell = sheet.getRow(18).getCell(10);
            cell.setCellValue(request.getParameter("flujo_uni"));
            
            cell = sheet.getRow(44).getCell(9);
            cell.setCellValue(request.getParameter("aga"));
            
            cell = sheet.getRow(34).getCell(9);
            cell.setCellValue(request.getParameter("long"));
            
            cell = sheet.getRow(53).getCell(9);
            cell.setCellValue(request.getParameter("cable"));
            
            String vec[] = new String[4];
            vec[0] = "NO"; vec[1] = "NO"; vec[2] = "NO"; vec[3] = "NO";
            
            String vecp[] = request.getParameter("pulsos").split("-");
            
            for(int i = 1; i < vecp.length; i++){
                int varin = Integer.parseInt(vecp[i]);
                vec[varin] = "YES";
            }
            cell = sheet.getRow(54).getCell(9);
            cell.setCellValue(vec[0]);
            cell = sheet.getRow(55).getCell(9);
            cell.setCellValue(vec[1]);
            cell = sheet.getRow(56).getCell(9);
            cell.setCellValue(vec[2]);
            cell = sheet.getRow(57).getCell(9);
            cell.setCellValue(vec[3]);
            
            cell = sheet.getRow(49).getCell(9);
            cell.setCellValue(request.getParameter("modelo"));
            
            cell = sheet.getRow(52).getCell(9);
            cell.setCellValue(request.getParameter("programa"));
            String s = request.getParameter("programa");
            
            //Guardar el archivo modificado            
            String nuevoNombre = "compflujo_" + d.getTime();
            
            FileOutputStream fileOut = new FileOutputStream(ruta+ "\\" + nuevoNombre + ".xls");

            HashMap<String, String> map = new HashMap<String,String>();
            map.put("path", ruta);
            map.put("file", nuevoNombre + ".xls");
            
            json.put("row", map);
            
            
            wb.write(fileOut);
            fileOut.close();
                            
        } catch(IOException ex) { 
            System.out.println("Error al leer el fichero."); 
        } catch (JSONException ex) {
            System.out.println("Error al construrir el json."); 
        }
        
        return json;
        
    }
    
    public static JSONObject genDSTransmisores(HttpServletRequest request, String ruta, String username) throws Exception{
        
        JSONObject json = new JSONObject();       
        
        Date d= new Date();
        String op = request.getParameter("tipo_sel_tra");
        String nuevoNombre = "";
            
        try
        {
            POIFSFileSystem fs = null;
            
            switch(op){
                case "1":
                    fs = new POIFSFileSystem( new FileInputStream(ruta + "\\tt.xls"));
                    nuevoNombre = "tt_" + d.getTime();
                    borrarArchivos(ruta, "tt_");
                    break;
                case "2":
                    fs = new POIFSFileSystem( new FileInputStream(ruta + "\\tpe.xls"));
                    nuevoNombre = "tpe_" + d.getTime();
                    borrarArchivos(ruta, "tpe_");
                    break;
                case "3":
                    fs = new POIFSFileSystem( new FileInputStream(ruta + "\\tpd.xls"));
                    nuevoNombre = "tpd_" + d.getTime();
                    borrarArchivos(ruta, "tpd_");
                    break;
            }
            
            HSSFWorkbook wb = new HSSFWorkbook(fs); //libro 
            
            FileOutputStream fileOut = new FileOutputStream(ruta + "\\" + nuevoNombre + ".xls");

            HashMap<String, String> map = new HashMap<String,String>();
            map.put("path", ruta );
            map.put("file", nuevoNombre + ".xls");
            
            json.put("row", map);
            
            
            wb.write(fileOut);
            fileOut.close();
                            
        } catch(IOException ex) { 
            System.out.println("Error al leer el fichero."); 
        } catch (JSONException ex) {
            System.out.println("Error al construrir el json."); 
        }
        
        return json;
        
    }
    
    public static JSONObject genDSMotorizedV(HttpServletRequest request, String ruta, String username) throws Exception{
        
        JSONObject json = new JSONObject();       
        
        SimpleDateFormat dt = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss"); 
        Date d= new Date();
            
        
        try
        {
            POIFSFileSystem fs = new POIFSFileSystem( new FileInputStream(ruta + "\\mov.xls"));
            HSSFWorkbook wb = new HSSFWorkbook(fs); //libro 
            HSSFSheet sheet = wb.getSheetAt(0); //hoja 0

            //Este datasheet modifica las filas de la 10 a la 51 de la columna I
            
            HSSFCell cell;
            
            cell = sheet.getRow(5).getCell(34);
            cell.setCellValue(dt.format(d));
            
            cell = sheet.getRow(9).getCell(28);
            cell.setCellValue(username);
            
            cell = sheet.getRow(7).getCell(28);
            cell.setCellValue(request.getParameter("proyecto"));
            
            //Guardar el archivo modificado            
            String nuevoNombre = "mov_" + d.getTime();
            
            FileOutputStream fileOut = new FileOutputStream(ruta+ "\\" + nuevoNombre + ".xls");

            HashMap<String, String> map = new HashMap<String,String>();
            map.put("path", ruta);
            map.put("file", nuevoNombre + ".xls");
            
            json.put("row", map);
            
            
            wb.write(fileOut);
            fileOut.close();
            
            borrarArchivos(ruta, "mov_");
                            
        } catch(IOException ex) { 
            throw new Exception("Error al leer el fichero.");
        } catch (JSONException ex) {
            throw new Exception("Error al construrir el json.");
        }
        
        return json;
        
    }
    
    public static JSONObject genDSValvulasSA(HttpServletRequest request, String ruta, String username) throws Exception{
        
         JSONObject json = new JSONObject();       
        
        SimpleDateFormat dt = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss"); 
        Date d= new Date();
            
        
        try
        {
            POIFSFileSystem fs = new POIFSFileSystem( new FileInputStream(ruta + "\\valsa.xls"));
            HSSFWorkbook wb = new HSSFWorkbook(fs); //libro 
            HSSFSheet sheet = wb.getSheetAt(0); //hoja 0

            //Este datasheet modifica las filas de la 10 a la 51 de la columna I
            
            HSSFCell cell;
            
            cell = sheet.getRow(4).getCell(10);
            cell.setCellValue(dt.format(d));
            
            cell = sheet.getRow(8).getCell(8);
            cell.setCellValue(username);
            
            cell = sheet.getRow(4).getCell(8);
            cell.setCellValue(request.getParameter("proyecto"));
            
            //Guardar el archivo modificado            
            String nuevoNombre = "valsa_" + d.getTime();
            
            FileOutputStream fileOut = new FileOutputStream(ruta+ "\\" + nuevoNombre + ".xls");

            HashMap<String, String> map = new HashMap<String,String>();
            map.put("path", ruta);
            map.put("file", nuevoNombre + ".xls");
            
            json.put("row", map);
            
            
            wb.write(fileOut);
            fileOut.close();
            
            borrarArchivos(ruta, "valsa_");
                            
        } catch(IOException ex) { 
            throw new Exception("Error al leer el fichero.");
        } catch (JSONException ex) {
            throw new Exception("Error al construrir el json.");
        }
        
        return json;
        
    }
    
    public static JSONObject genDSActuadores(HttpServletRequest request, String ruta, String username) throws Exception{
        
         JSONObject json = new JSONObject();       
        
        SimpleDateFormat dt = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss"); 
        Date d= new Date();
            
        
        try
        {
            POIFSFileSystem fs = new POIFSFileSystem( new FileInputStream(ruta + "\\act.xls"));
            HSSFWorkbook wb = new HSSFWorkbook(fs); //libro 
            HSSFSheet sheet = wb.getSheetAt(0); //hoja 0

            //Este datasheet modifica las filas de la 10 a la 51 de la columna I
            
            HSSFCell cell;
            
            cell = sheet.getRow(5).getCell(33);
            cell.setCellValue(dt.format(d));
            
            cell = sheet.getRow(9).getCell(25);
            cell.setCellValue(username);
            
            cell = sheet.getRow(7).getCell(25);
            cell.setCellValue(request.getParameter("proyecto"));
            
            //Guardar el archivo modificado            
            String nuevoNombre = "act_" + d.getTime();
            
            FileOutputStream fileOut = new FileOutputStream(ruta+ "\\" + nuevoNombre + ".xls");

            HashMap<String, String> map = new HashMap<String,String>();
            map.put("path", ruta);
            map.put("file", nuevoNombre + ".xls");
            
            json.put("row", map);
            
            
            wb.write(fileOut);
            fileOut.close();
            
            borrarArchivos(ruta, "act_");
                            
        } catch(IOException ex) { 
            throw new Exception("Error al leer el fichero.");
        } catch (JSONException ex) {
            throw new Exception("Error al construrir el json.");
        }
        
        return json;
        
    }
    
    public static JSONObject genDSValvesSH(HttpServletRequest request, String ruta, String username) throws Exception{
        
         JSONObject json = new JSONObject();       
        
        SimpleDateFormat dt = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss"); 
        Date d= new Date();
            
        
        try
        {
            POIFSFileSystem fs = new POIFSFileSystem( new FileInputStream(ruta + "\\valslam.xls"));
            HSSFWorkbook wb = new HSSFWorkbook(fs); //libro 
            HSSFSheet sheet = wb.getSheetAt(0); //hoja 0

            //Este datasheet modifica las filas de la 10 a la 51 de la columna I
            
            HSSFCell cell;
            
            cell = sheet.getRow(5).getCell(11);
            cell.setCellValue(dt.format(d));
            
            cell = sheet.getRow(9).getCell(9);
            cell.setCellValue(username);
            
            cell = sheet.getRow(5).getCell(9);
            cell.setCellValue(request.getParameter("proyecto"));
            
            //Guardar el archivo modificado            
            String nuevoNombre = "sh_" + d.getTime();
            
            FileOutputStream fileOut = new FileOutputStream(ruta+ "\\" + nuevoNombre + ".xls");

            HashMap<String, String> map = new HashMap<String,String>();
            map.put("path", ruta);
            map.put("file", nuevoNombre + ".xls");
            
            json.put("row", map);
            
            
            wb.write(fileOut);
            fileOut.close();
            
            borrarArchivos(ruta, "sh_");
                            
        } catch(IOException ex) { 
            throw new Exception("Error al leer el fichero.");
        } catch (JSONException ex) {
            throw new Exception("Error al construrir el json.");
        }
        
        return json;
        
    }
    
    public static JSONObject genDSValvesReg(HttpServletRequest request, String ruta, String username) throws Exception{
        
         JSONObject json = new JSONObject();       
        
        SimpleDateFormat dt = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss"); 
        Date d= new Date();
            
        
        try
        {
            POIFSFileSystem fs = new POIFSFileSystem( new FileInputStream(ruta + "\\reg.xls"));
            HSSFWorkbook wb = new HSSFWorkbook(fs); //libro 
            HSSFSheet sheet = wb.getSheetAt(0); //hoja 0

            //Este datasheet modifica las filas de la 10 a la 51 de la columna I
            
            HSSFCell cell;
            
            cell = sheet.getRow(5).getCell(11);
            cell.setCellValue(dt.format(d));
            
            cell = sheet.getRow(9).getCell(9);
            cell.setCellValue(username);
            
            cell = sheet.getRow(5).getCell(9);
            cell.setCellValue(request.getParameter("proyecto"));
            
            //Guardar el archivo modificado            
            String nuevoNombre = "reg_" + d.getTime();
            
            FileOutputStream fileOut = new FileOutputStream(ruta+ "\\" + nuevoNombre + ".xls");

            HashMap<String, String> map = new HashMap<String,String>();
            map.put("path", ruta);
            map.put("file", nuevoNombre + ".xls");
            
            json.put("row", map);
            
            
            wb.write(fileOut);
            fileOut.close();
            
            borrarArchivos(ruta, "reg_");
                            
        } catch(IOException ex) { 
            throw new Exception("Error al leer el fichero.");
        } catch (JSONException ex) {
            throw new Exception("Error al construrir el json.");
        }
        
        return json;
        
    }
    
    public static JSONObject genDSValvesPlatina(HttpServletRequest request, String ruta, String username) throws Exception{
        
         JSONObject json = new JSONObject();       
        
        SimpleDateFormat dt = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss"); 
        Date d= new Date();
            
        
        try
        {
            POIFSFileSystem fs = new POIFSFileSystem( new FileInputStream(ruta + "\\pla.xls"));
            HSSFWorkbook wb = new HSSFWorkbook(fs); //libro 
            HSSFSheet sheet = wb.getSheetAt(0); //hoja 0

            //Este datasheet modifica las filas de la 10 a la 51 de la columna I
            
            HSSFCell cell;
            
            cell = sheet.getRow(57).getCell(1);
            cell.setCellValue(dt.format(d));
            
            cell = sheet.getRow(57).getCell(2);
            cell.setCellValue(username);
            
            cell = sheet.getRow(38).getCell(2);
            cell.setCellValue(request.getParameter("d").replace(".", ","));
            
            cell = sheet.getRow(39).getCell(2);
            cell.setCellValue(request.getParameter("t").replace(".", ","));
            
            cell = sheet.getRow(41).getCell(2);
            cell.setCellValue(request.getParameter("D").replace(".", ","));
            
            cell = sheet.getRow(42).getCell(2);
            cell.setCellValue(request.getParameter("L").replace(".", ","));
            
            cell = sheet.getRow(17).getCell(6);
            cell.setCellValue(request.getParameter("flujo1_pla").replace(".", ","));
            
            cell = sheet.getRow(31).getCell(6);
            cell.setCellValue(request.getParameter("flujo2_pla").replace(".", ","));
            
            cell = sheet.getRow(18).getCell(6);
            cell.setCellValue(request.getParameter("flujo2_pla").replace(".", ","));
            
            cell = sheet.getRow(32).getCell(6);
            cell.setCellValue(request.getParameter("flujo3_pla").replace(".", ","));
            
            cell = sheet.getRow(20).getCell(6);
            cell.setCellValue(request.getParameter("nps_sel_pla").replace(".", ","));
            
            //Guardar el archivo modificado            
            String nuevoNombre = "pla_" + d.getTime();
            
            FileOutputStream fileOut = new FileOutputStream(ruta+ "\\" + nuevoNombre + ".xls");

            HashMap<String, String> map = new HashMap<String,String>();
            map.put("path", ruta);
            map.put("file", nuevoNombre + ".xls");
            
            json.put("row", map);
            
            
            wb.write(fileOut);
            fileOut.close();
            
            borrarArchivos(ruta, "pla_");
                            
        } catch(IOException ex) { 
            throw new Exception("Error al leer el fichero.");
        } catch (JSONException ex) {
            throw new Exception("Error al construrir el json.");
        }
        
        return json;
        
    }
    
    private static void borrarArchivos(String ruta, String inicio) throws Exception{
        
        //FEcha actual
        Date date = new Date();      
        
        //Restar un dia a la fecha
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date); 
        calendar.add(Calendar.DAY_OF_YEAR, -1);
        date = calendar.getTime();
        
        
        
        File carpeta = new File(ruta);
        
        if (carpeta.exists()){ 
            //Borrar archivos anteriores
            File[] archivos = carpeta.listFiles();
                for (int i = 0; i < archivos.length; i++){
                    String nombre = archivos[i].getName();

                    if(nombre.contains(inicio) &&   archivos[i].lastModified() < date.getTime()){
                        archivos[i].delete();
                    }
                }
        }else{ 
            throw new Exception("La ruta no existe");
        }
    }
    
    
}
