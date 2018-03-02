/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Selector;

import Model.Administracion.ProyectosModel;
import Model.GeneralModel;
import Model.Selector.TransmisoresModel;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
import java.util.Vector;
import javax.servlet.http.HttpServletRequest;
import org.apache.commons.fileupload.FileItem;
import org.json.JSONObject;

/**
 *
 * @author kata__000
 */
public class TransmisoresController extends Controller.Controller {
    
    private static final TransmisoresModel model = new TransmisoresModel();
    
    public TransmisoresModel getModel() {
        return model;
    }
    
    private static Map<String, String> getValues(String idpro, String ruta, String nomArc, String tipoT, String des, String iduser) throws Exception{
        Map<String, String> values = new HashMap<String, String>();
                
        try
        {
            values.put("ruta_tra", stringToBD(ruta));
            values.put("tipo_sel_tra", stringToBD(tipoT));
            values.put("nombre_tra", stringToBD(nomArc));

            values.put("id_proyect", idpro);
            values.put("description_tra", stringToBD(des.trim()));
            values.put("id_user", iduser.trim());
            
        }catch(Exception ex){
            throw new Exception(ex.getMessage());
        }
       
       return values;
        
    }
    
    public static JSONObject saveReg(FileItem uploadedF,String idpro, String ruta, String tipoT, String des, String iduser, GeneralModel gm) throws Exception{ 
                                         
        if(uploadedF != null){
            
            File fichero = new File(ruta, uploadedF.getName());
            uploadedF.write(fichero);
        }
        
        Map<String, String> values = getValues( idpro,  ruta,  uploadedF.getName(), tipoT, des,  iduser);
        
        try
        {
            String now = gm.add(values);

            //Para devolver el id
            String where = "date = " + now;
            Vector<Map> data = gm.load("id", where);
            
            JSONObject json = new JSONObject();
            
            if(data.isEmpty()){
                return null;
            }else{
                json.put("row", data.get(0));
            }
            
            return json;
            
        }catch(Exception ex){
            throw new Exception(ex.getMessage());
        }
       
    } 
    
    
}
