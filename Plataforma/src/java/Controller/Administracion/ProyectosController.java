/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Administracion;

import Model.Administracion.ProyectosModel;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
import java.util.Vector;
import javax.servlet.http.HttpServletRequest;
import org.apache.commons.fileupload.FileItem;
import org.json.JSONArray;
import org.json.JSONObject;

/**
 *
 * @author djabba
 */
public class ProyectosController extends Controller.Controller{
    
    private final ProyectosModel model = new ProyectosModel();

    public  Map<String, String> getValues(HttpServletRequest request) throws Exception{
        
        return null;
        
    }
    
    public JSONObject getEspecialidades() throws Exception{  
        JSONObject json = new JSONObject();
        Vector<Map> data = ((ProyectosModel)model).getEspecialidades();
        
        if(data != null){
        
            if(data.isEmpty()){
                return null;
            }else{
               json = json.put("row", data);
               return json;
            } 
        }else{
            return null;
        }
        
        
    }
    
     public JSONObject getFases() throws Exception{  
        JSONObject json = new JSONObject();
        Vector<Map> data = ((ProyectosModel)model).getFases();
        
        if(data != null){
        
            if(data.isEmpty()){
                return null;
            }else{
               json = json.put("row", data);
               return json;
            } 
        }else{
            return null;
        }
        
        
    }
     
    public JSONObject getModulos() throws Exception{  
        JSONObject json = new JSONObject();
        Vector<Map> data = ((ProyectosModel)model).getModulos();
        
        if(data != null){
        
            if(data.isEmpty()){
                return null;
            }else{
               json = json.put("row", data);
               return json;
            } 
        }else{
            return null;
        }
        
        
    }
    
    public void validateProjectName(String name, String idpro) throws Exception{  
        ((ProyectosModel)model).validateProjectName(name, idpro);
    }
    
    public void crearProyecto(String id_pro_temp, String ruta, String lider) throws Exception{  
        Map<String, String> values = new HashMap<String, String>();
        values.put("flag", "1");
        ((ProyectosModel)model).crearProyecto(id_pro_temp, values, ruta);
    }
    
    
    public JSONObject getActividades(String id_espe) throws Exception{  
        
        Vector<Map> data = ((ProyectosModel)model).getActividadesXEspe(id_espe);
        return new JSONObject().put("info", data);
        
    }
    
    public JSONObject getProyectos(String id_user, String type) throws Exception{
        
        if(type.equals("4")){        
            return ((ProyectosModel)model).getProyectosCreated(id_user); 
        }
        
        return ((ProyectosModel)model).getProyectosOrderingByRol(id_user);
    }
    
    public JSONObject getProyectosByUserIgnoringRol(String id_user) throws Exception{
        
        return ((ProyectosModel)model).getProyectosByUserIgnoringRol(id_user);
    }
    
     public JSONObject getAllProjects() throws Exception{
        
        return ((ProyectosModel)model).getAllProjects();
    }
    
    public JSONObject setEstadoActividad(String id_proyect, String id_especialidad, String id_fase, String id_actividad, String aprobado) throws Exception{ 
        
         return ((ProyectosModel)model).setEstadoActividad(id_proyect, id_especialidad, id_fase, id_actividad, aprobado);
    }
    public JSONObject getEstadoActividad(String id_user , String id_proyect) throws Exception{ 
        
         return ((ProyectosModel)model).getEstadoActividad(id_user,id_proyect);
    } 
    
    public void UpdateEstadoActvidad(String idacti, String idpro, FileItem uploadedF, String ruta, String nomE, String nomF) throws Exception{ 
        
        if(uploadedF != null){
           
            String rutaE = ruta + "\\" +  normalizar(((ProyectosModel)model).getNombreP(idpro)) + "\\" + normalizar(nomE);
            String rutaF = rutaE + "\\" + normalizar(nomF);
            
            File parent = new File(rutaE);
            boolean sw = true;
            
            if(!parent.exists()){
                sw = parent.mkdir();
            }
            
            
            File fichero = new File(rutaF, uploadedF.getName());
            uploadedF.write(fichero);
            
            ((ProyectosModel)model).UpdateEstadoActvidad(idacti,rutaF + "\\" +  uploadedF.getName());
        }
       
    }
    
    public void UpdateEstadoEspecialidad(String idpro, FileItem uploadedF, String ruta, String nomE, String idesp) throws Exception{ 
                                         
        if(uploadedF != null){
           
            String rutaE = ruta + "\\" +  normalizar(((ProyectosModel)model).getNombreP(idpro)) + "\\" + normalizar(nomE);
            
            
            File parent = new File(rutaE);
            boolean sw = true;
            
            if(!parent.exists()){
                sw = parent.mkdir();
            }
            System.out.print(sw);
            
            
            File fichero = new File(rutaE, uploadedF.getName());
            uploadedF.write(fichero);
            
            ((ProyectosModel)model).UpdateEstadoEspecialidad(idpro,idesp,rutaE + "\\" +  uploadedF.getName());
        }
       
    }        
    
    
    public JSONObject CargarInfoEspecialidad(String id_user , String id_proyect) throws Exception{ 
        
         return ((ProyectosModel)model).CargarInfoEspecialidad(id_user,id_proyect);
    }
    
    public JSONObject CargarAlertasProyectos(String id_user , String id_proyect) throws Exception{ 
        
         return ((ProyectosModel)model).CargarAlertasProyectos(id_user,id_proyect);
    }
    
    public JSONObject eliminarProyecto(String id_proyect) throws Exception{ 
        
         return ((ProyectosModel)model).eliminarProyecto(id_proyect);
    }
    
    public JSONObject UpdateEstadoActvidadE(String idpro , String file) throws Exception{ 
       
         return ((ProyectosModel)model).UpdateEstadoActvidadE(idpro,file);
    }
    
    public JSONObject AprobarActividad(String id , String state) throws Exception{ 
       
         return ((ProyectosModel)model).AprobarActividad(id,state);
    }
    
    public JSONObject getInfoProyect(String idpro) throws Exception{ 
       
         return ((ProyectosModel)model).getInfoProyect(idpro);
    }
    
    public JSONObject saveStep(HttpServletRequest request) throws Exception{  
        String step = request.getParameter("step");
        
        JSONObject json = new JSONObject();
        Vector<Map> data = null;
        String id_proyect;
        String update;
        String espe;
        JSONObject espeJson;
       
        
        switch(step){
            case "1":
                /*
                 String name = request.getParameter("nombre");
                id_proyect = request.getParameter("id_proyect");                
                String esp = request.getParameter("especialidades");   
                
                Map<String, String> values1 = new HashMap<String, String>();
                values1.put("name", stringToBD(name));
                
                espeJson = new JSONObject(esp);
                data = ((ProyectosModel)model).saveStep1(values1, espeJson.getJSONArray("info"), "1", id_proyect);
                */
                String name = request.getParameter("nombre");
                String area = request.getParameter("area");
                id_proyect = request.getParameter("id_proyect");      
                String id_user = request.getParameter("id_user");                
                String esp = request.getParameter("especialidades");                
                update = request.getParameter("update");
                
                Map<String, String> values1 = new HashMap<String, String>();
                values1.put("area", area);
                values1.put("name", stringToBD(name));
                values1.put("id_user", id_user);
                values1.put("flag", "0");
                
                espeJson = new JSONObject(esp);
                
                data = ((ProyectosModel)model).saveStep1(values1, espeJson.getJSONArray("info"), update, id_proyect);
                
                break;
            case "2":
                id_proyect = request.getParameter("id_proyect");      
                espe = request.getParameter("especialidades");               
                update = request.getParameter("update");
                
                espeJson = new JSONObject(espe);
                
                ((ProyectosModel)model).saveStep2(id_proyect, espeJson.getJSONArray("info"), update);
                break;
            case "3":
                update = request.getParameter("update");
                id_proyect = request.getParameter("id_proyect");      
                espe = request.getParameter("especialidades");
                
                espeJson = new JSONObject(espe);
                
                ((ProyectosModel)model).saveStep3(id_proyect, espeJson.getJSONArray("info"), update);
                break;
            case "4":
                update = request.getParameter("update");
                id_proyect = request.getParameter("id_proyect");      
                espe = request.getParameter("especialidades");
                
                espeJson = new JSONObject(espe);
                
                ((ProyectosModel)model).saveStep4(id_proyect, espeJson.getJSONArray("info"), update);
                break;
            case "5":
                update = request.getParameter("update");
                id_proyect = request.getParameter("id_proyect");      
                
                String lidp = request.getParameter("lidp");
                
                espe = request.getParameter("especialidades");                
                espeJson = new JSONObject(espe);
                
                data = ((ProyectosModel)model).saveStep5(id_proyect, espeJson.getJSONArray("info"), update, lidp);
                
                
                break;
        }
        
        if(data != null){
        
            if(data.isEmpty()){
                return null;
            }else{
               json = json.put("row", data);
               return json;
            } 
        }else{
            return null;
        }
        
        
    }
    
    
    public JSONObject editStep(HttpServletRequest request) throws Exception{  
        String step = request.getParameter("step");
        
        JSONObject json = new JSONObject();
        Vector<Map> data = null;
        String id_proyect;
        String update;
        String espe;
        JSONObject espeJson;
       
        
        switch(step){
            case "1":
                String name = request.getParameter("nombre");
                id_proyect = request.getParameter("id_proyect");                
                String esp = request.getParameter("especialidades");   
                
                Map<String, String> values1 = new HashMap<String, String>();
                values1.put("name", stringToBD(name));
                
                espeJson = new JSONObject(esp);
                data = ((ProyectosModel)model).saveStep1(values1, espeJson.getJSONArray("info"), "1", id_proyect);
                
                break;
            case "2":
                id_proyect = request.getParameter("id_proyect");      
                espe = request.getParameter("especialidades");               
                update = request.getParameter("update");
                
                espeJson = new JSONObject(espe);
                
                ((ProyectosModel)model).saveStep2(id_proyect, espeJson.getJSONArray("info"), "1");
                break;
            case "3":
                update = request.getParameter("update");
                id_proyect = request.getParameter("id_proyect");      
                espe = request.getParameter("especialidades");
                
                espeJson = new JSONObject(espe);
                
                ((ProyectosModel)model).saveStep3(id_proyect, espeJson.getJSONArray("info"), update);
                break;
            case "4":
                update = request.getParameter("update");
                id_proyect = request.getParameter("id_proyect");      
                espe = request.getParameter("especialidades");
                
                espeJson = new JSONObject(espe);
                
                ((ProyectosModel)model).saveStep4(id_proyect, espeJson.getJSONArray("info"), update);
                break;
            case "5":
                update = request.getParameter("update");
                id_proyect = request.getParameter("id_proyect");      
                
                String lidp = request.getParameter("lidp");
                
                espe = request.getParameter("especialidades");                
                espeJson = new JSONObject(espe);
                
                data = ((ProyectosModel)model).saveStep5(id_proyect, espeJson.getJSONArray("info"), update, lidp);
                
                
                break;
        }
        
        if(data != null){
        
            if(data.isEmpty()){
                return null;
            }else{
               json = json.put("row", data);
               return json;
            } 
        }else{
            return null;
        }
        
        
    }
    
    
    public ProyectosModel getModel(){
        return model;
    }
    
}
