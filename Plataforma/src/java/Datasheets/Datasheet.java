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
    
    
    public static JSONObject genDSMedidores(HttpServletRequest request, String ruta, String username)throws Exception {
        
        System.out.println("archivo a generarse");
        
        JSONObject json = new JSONObject();       
        
        SimpleDateFormat dt = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss"); 
        Date d= new Date();
            
        
        try
        {
            POIFSFileSystem fs = new POIFSFileSystem( new FileInputStream(ruta + "\\Selector\\medidores.xls"));
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
            
            FileOutputStream fileOut = new FileOutputStream(ruta+ "\\Selector\\" + nuevoNombre + ".xls");

            HashMap<String, String> map = new HashMap<String,String>();
            map.put("path", ruta + "\\Selector");
            map.put("file", nuevoNombre + ".xls");
            
            json.put("row", map);
            
            
            wb.write(fileOut);
            fileOut.close();
            
            borrarArchivos(ruta + "\\Selector", "medidores_");
                            
        } catch(IOException ex) { 
            throw new Exception("Error al leer el fichero.");
        } catch (JSONException ex) {
            throw new Exception("Error al construrir el json."); 
        } catch (Exception ex) {
            throw new Exception(ex.getMessage()); 
        }
        
        return json;
        
    }
    
    public static JSONObject genDSComputadores(HttpServletRequest request, String ruta, String username) throws Exception{
        
        JSONObject json = new JSONObject();       
        
        SimpleDateFormat dt = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss"); 
        Date d= new Date();
            
        
        try
        {
            POIFSFileSystem fs = new POIFSFileSystem( new FileInputStream(ruta + "\\Selector\\compflujo.xls"));
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
            
            cell = sheet.getRow(24).getCell(9);
            cell.setCellValue(request.getParameter("protocols"));
            
            cell = sheet.getRow(25).getCell(9);
            cell.setCellValue(request.getParameter("connec"));
            
            String vecc[] = request.getParameter("connec").split("/");
            cell = sheet.getRow(23).getCell(9);
            cell.setCellValue(vecc.length-1);
            
            cell = sheet.getRow(13).getCell(9);
            cell.setCellValue(request.getParameter("medidores"));
            
            cell = sheet.getRow(14).getCell(9);
            cell.setCellValue(request.getParameter("linep"));
            
            double pres = Double.parseDouble(request.getParameter("linep"));
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
            
            cell = sheet.getRow(18).getCell(12);
            cell.setCellValue(request.getParameter("flujo_uni"));
            
            cell = sheet.getRow(44).getCell(9);
            cell.setCellValue(request.getParameter("aga"));
            
            cell = sheet.getRow(34).getCell(9);
            cell.setCellValue(request.getParameter("long"));
            
            cell = sheet.getRow(53).getCell(9);
            cell.setCellValue(request.getParameter("cable"));
            
            cell = sheet.getRow(49).getCell(9);
            cell.setCellValue(request.getParameter("modelo"));
            
            cell = sheet.getRow(52).getCell(9);
            cell.setCellValue(request.getParameter("programa"));
            
            cell = sheet.getRow(68).getCell(3);
            cell.setCellValue("MVT Wet End: " + request.getParameter("mvt"));
            
            String s = request.getParameter("powers");            
            cell = sheet.getRow(32).getCell(9);
            String ss[] = s.split(",");
            if(ss.length == 2 || ss.length > 2){                
                cell.setCellValue(ss[0] + ", " + ss[1]);
            }
            
            if(ss.length > 2){    
                cell = sheet.getRow(33).getCell(9);
                cell.setCellValue(ss[2] + ", " + ss[3]);
            }
                        
            cell = sheet.getRow(27).getCell(9);
            cell.setCellValue(request.getParameter("hazardous"));
            
            cell = sheet.getRow(70).getCell(3);
            cell.setCellValue("Chassis, Processor and Control System: " + request.getParameter("chassis"));
            
            if(request.getParameter("rtd").equals("1327,0")){
                cell = sheet.getRow(25+12).getCell(9);
                cell.setCellValue("None");
                cell = sheet.getRow(25+12).getCell(12);
                cell.setCellValue("None");
            }
            
            cell = sheet.getRow(48).getCell(9);
            cell.setCellValue(request.getParameter("trtd"));
            
            cell = sheet.getRow(61).getCell(3);
            cell.setCellValue("Configuración de I/O: " + request.getParameter("ioconf"));
            
            cell = sheet.getRow(27).getCell(9);
            cell.setCellValue(request.getParameter("rcable"));
            
            cell = sheet.getRow(72).getCell(3);
            cell.setCellValue("Proximity Sesnor and board interface: " + request.getParameter("prox"));
            
            cell = sheet.getRow(66).getCell(3);
            cell.setCellValue("Opción de Radio o Modem: " + request.getParameter("rmodem"));
            
            cell = sheet.getRow(55).getCell(9);
            cell.setCellValue(request.getParameter("tkit"));
            
            cell = sheet.getRow(70).getCell(3);
            cell.setCellValue("Telecounter blank digits: " + request.getParameter("tblank"));
            
            cell = sheet.getRow(56).getCell(9);
            cell.setCellValue(request.getParameter("meterf"));
            
            cell = sheet.getRow(51).getCell(9);
            cell.setCellValue(request.getParameter("snetwork"));
            
            cell = sheet.getRow(58).getCell(9);
            cell.setCellValue(request.getParameter("producer"));
      
            cell = sheet.getRow(59).getCell(9);
            cell.setCellValue(request.getParameter("model"));
            
            if(request.getParameter("optmodel").equals("1297,efm")){
                cell = sheet.getRow(61).getCell(3);
                cell.setCellValue(request.getParameter("ioefm"));
                
                cell = sheet.getRow(54).getCell(9);
                cell.setCellValue(request.getParameter("integral"));
            }
            
            
            
            //Guardar el archivo modificado            
            String nuevoNombre = "compflujo_" + d.getTime();
            
            FileOutputStream fileOut = new FileOutputStream(ruta+ "\\Selector\\" + nuevoNombre + ".xls");

            HashMap<String, String> map = new HashMap<String,String>();
            map.put("path", ruta + "\\Selector");
            map.put("file", nuevoNombre + ".xls");
            
            json.put("row", map);
            
            
            wb.write(fileOut);
            fileOut.close();
            
            borrarArchivos(ruta + "\\Selector", "compflujo_");
                            
        } catch(IOException ex) { 
            throw new Exception("Error al leer el fichero.");
        } catch (JSONException ex) {
            throw new Exception("Error al construrir el json."); 
        } catch (Exception ex) {
            throw new Exception(ex.getMessage()); 
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
                    fs = new POIFSFileSystem( new FileInputStream(ruta + "\\Selector\\tt.xls"));
                    nuevoNombre = "tt_" + d.getTime();
                    borrarArchivos(ruta + "\\Selector", "tt_");
                    break;
                case "2":
                    fs = new POIFSFileSystem( new FileInputStream(ruta + "\\Selector\\tpe.xls"));
                    nuevoNombre = "tpe_" + d.getTime();
                    borrarArchivos(ruta + "\\Selector", "tpe_");
                    break;
                case "3":
                    fs = new POIFSFileSystem( new FileInputStream(ruta + "\\Selector\\tpd.xls"));
                    nuevoNombre = "tpd_" + d.getTime();
                    borrarArchivos(ruta + "\\Selector", "tpd_");
                    break;
            }
            
            HSSFWorkbook wb = new HSSFWorkbook(fs); //libro 
            
            FileOutputStream fileOut = new FileOutputStream(ruta + "\\Selector\\" + nuevoNombre + ".xls");

            HashMap<String, String> map = new HashMap<String,String>();
            map.put("path", ruta + "\\Selector");
            map.put("file", nuevoNombre + ".xls");
            
            json.put("row", map);
            
            
            wb.write(fileOut);
            fileOut.close();
                            
        } catch(IOException ex) { 
            throw new Exception("Error al leer el fichero.");
        } catch (JSONException ex) {
            throw new Exception("Error al construrir el json."); 
        } catch (Exception ex) {
            throw new Exception(ex.getMessage()); 
        }
        
        return json;
        
    }
    
    public static JSONObject genDSMotorizedV(HttpServletRequest request, String ruta, String username) throws Exception{
        
        JSONObject json = new JSONObject();       
        
        SimpleDateFormat dt = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss"); 
        Date d= new Date();
            
        
        try
        {
            POIFSFileSystem fs = new POIFSFileSystem( new FileInputStream(ruta + "\\Selector\\mov.xls"));
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
            
            FileOutputStream fileOut = new FileOutputStream(ruta+ "\\Selector\\" + nuevoNombre + ".xls");

            HashMap<String, String> map = new HashMap<String,String>();
            map.put("path", ruta + "\\Selector");
            map.put("file", nuevoNombre + ".xls");
            
            json.put("row", map);
            
            
            wb.write(fileOut);
            fileOut.close();
            
            borrarArchivos(ruta + "\\Selector", "mov_");
                            
        } catch(IOException ex) { 
            throw new Exception("Error al leer el fichero.");
        } catch (JSONException ex) {
            throw new Exception("Error al construrir el json."); 
        } catch (Exception ex) {
            throw new Exception(ex.getMessage()); 
        }
        
        return json;
        
    }
    
    public static JSONObject genDSValvulasSA(HttpServletRequest request, String ruta, String username) throws Exception{
        
         JSONObject json = new JSONObject();       
        
        SimpleDateFormat dt = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss"); 
        Date d= new Date();
            
        
        try
        {
            POIFSFileSystem fs = new POIFSFileSystem( new FileInputStream(ruta + "\\Selector\\valsa.xls"));
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
            map.put("path", ruta + "\\Selector");
            map.put("file", nuevoNombre + ".xls");
            
            json.put("row", map);
            
            
            wb.write(fileOut);
            fileOut.close();
            
            borrarArchivos(ruta + "\\Selector", "valsa_");
                            
        } catch(IOException ex) { 
            throw new Exception("Error al leer el fichero.");
        } catch (JSONException ex) {
            throw new Exception("Error al construrir el json."); 
        } catch (Exception ex) {
            throw new Exception(ex.getMessage()); 
        }
        
        return json;
        
    }
    
    public static JSONObject genDSActuadores(HttpServletRequest request, String ruta, String username) throws Exception{
        
         JSONObject json = new JSONObject();       
        
        SimpleDateFormat dt = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss"); 
        Date d= new Date();
            
        
        try
        {
            POIFSFileSystem fs = new POIFSFileSystem( new FileInputStream(ruta + "\\Selector\\act.xls"));
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
            
            FileOutputStream fileOut = new FileOutputStream(ruta+ "\\Selector\\" + nuevoNombre + ".xls");

            HashMap<String, String> map = new HashMap<String,String>();
            map.put("path", ruta + "\\Selector");
            map.put("file", nuevoNombre + ".xls");
            
            json.put("row", map);
            
            
            wb.write(fileOut);
            fileOut.close();
            
            borrarArchivos(ruta + "\\Selector", "act_");
                            
        } catch(IOException ex) { 
            throw new Exception("Error al leer el fichero.");
        } catch (JSONException ex) {
            throw new Exception("Error al construrir el json."); 
        } catch (Exception ex) {
            throw new Exception(ex.getMessage()); 
        }
        
        return json;
        
    }
    
    public static JSONObject genDSValvesSH(HttpServletRequest request, String ruta, String username) throws Exception{
        
         JSONObject json = new JSONObject();       
        
        SimpleDateFormat dt = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss"); 
        Date d= new Date();
            
        
        try
        {
            POIFSFileSystem fs = new POIFSFileSystem( new FileInputStream(ruta + "\\Selector\\valslam.xls"));
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
            
            FileOutputStream fileOut = new FileOutputStream(ruta+ "\\Selector\\" + nuevoNombre + ".xls");

            HashMap<String, String> map = new HashMap<String,String>();
            map.put("path", ruta + "\\Selector");
            map.put("file", nuevoNombre + ".xls");
            
            json.put("row", map);
            
            
            wb.write(fileOut);
            fileOut.close();
            
            borrarArchivos(ruta + "\\Selector", "sh_");
                            
        } catch(IOException ex) { 
            throw new Exception("Error al leer el fichero.");
        } catch (JSONException ex) {
            throw new Exception("Error al construrir el json."); 
        } catch (Exception ex) {
            throw new Exception(ex.getMessage()); 
        }
        
        return json;
        
    }
    
    public static JSONObject genDSValvesReg(HttpServletRequest request, String ruta, String username) throws Exception{
        
         JSONObject json = new JSONObject();       
        
        SimpleDateFormat dt = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss"); 
        Date d= new Date();
            
        
        try
        {
            POIFSFileSystem fs = new POIFSFileSystem( new FileInputStream(ruta + "\\Selector\\reg.xls"));
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
            
            FileOutputStream fileOut = new FileOutputStream(ruta+ "\\Selector\\" + nuevoNombre + ".xls");

            HashMap<String, String> map = new HashMap<String,String>();
            map.put("path", ruta + "\\Selector");
            map.put("file", nuevoNombre + ".xls");
            
            json.put("row", map);
            
            
            wb.write(fileOut);
            fileOut.close();
            
            borrarArchivos(ruta + "\\Selector", "reg_");
                            
        } catch(IOException ex) { 
            throw new Exception("Error al leer el fichero.");
        } catch (JSONException ex) {
            throw new Exception("Error al construrir el json."); 
        } catch (Exception ex) {
            throw new Exception(ex.getMessage()); 
        }
        
        return json;
        
    }
    
    public static JSONObject genDSValvesPlatina(HttpServletRequest request, String ruta, String username) throws Exception{
        
         JSONObject json = new JSONObject();       
        
        SimpleDateFormat dt = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss"); 
        Date d= new Date();
            
        
        try
        {
            POIFSFileSystem fs = new POIFSFileSystem( new FileInputStream(ruta + "\\Selector\\pla.xls"));
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
            
            FileOutputStream fileOut = new FileOutputStream(ruta+ "\\Selector\\" + nuevoNombre + ".xls");

            HashMap<String, String> map = new HashMap<String,String>();
            map.put("path", ruta + "\\Selector");
            map.put("file", nuevoNombre + ".xls");
            
            json.put("row", map);
            
            
            wb.write(fileOut);
            fileOut.close();
            
            borrarArchivos(ruta + "\\Selector", "pla_");
                            
        } catch(IOException ex) { 
            throw new Exception("Error al leer el fichero.");
        } catch (JSONException ex) {
            throw new Exception("Error al construrir el json."); 
        } catch (Exception ex) {
            throw new Exception(ex.getMessage()); 
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
            throw new Exception("La ruta para la eliminacion de archivos no existe");
        }
    }
    
    
}
