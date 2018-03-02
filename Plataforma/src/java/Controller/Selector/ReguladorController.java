/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Selector;

import Model.Selector.ReguladorModel;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.json.JSONObject;


/**
 *
 * @author kata__000
 */
public class ReguladorController extends Controller.Controller{
    
    private static final  ReguladorModel model = new ReguladorModel();

    public ReguladorModel getModel() {
        return model;
    }
    
    
    
    public  Map<String, String> getValues(HttpServletRequest request) throws Exception{
          //Input Data
        String description_reg = request.getParameter("description_reg");
        String ma_sel_reg = request.getParameter("ma_sel_reg");
        String mod_sel_reg = request.getParameter("mod_sel_reg");
        String tam_sel_reg = request.getParameter("tam_sel_reg");
        String rangomin_sel_reg = request.getParameter("rangomin_sel_reg");
        String rangomin_reg = request.getParameter("rangomin_reg");
        String rangomax_sel_reg = request.getParameter("rangomax_sel_reg");
        String rangomax_reg = request.getParameter("rangomax_reg");
        String presionr_reg = request.getParameter("presionr_reg");
        String presionr_sel_reg = request.getParameter("presionr_sel_reg");
        String presionb_reg = request.getParameter("presionb_reg");
        String pb_sel_reg = request.getParameter("pb_sel_reg");
        String flujomax_reg = request.getParameter("flujomax_reg");
        String flujomax_sel_reg = request.getParameter("flujomax_sel_reg");
        String tempope_reg = request.getParameter("tempope_reg");
        String tempope_sel_reg = request.getParameter("tempope_sel_reg");
        String grav_reg = request.getParameter("grav_reg");
        
        String modeloesp_reg = request.getParameter("modeloesp_reg");
        String portrabajo_reg = request.getParameter("portrabajo_reg");
        String capaest_reg = request.getParameter("capaest_reg");
        
        
        
        //ids
        String id_proyect = request.getParameter("idproyect");
        String iduser = request.getParameter("iduser");
       
        Map<String, String> values = new HashMap<String, String>();
                
        try
        {
            values.put("ma_sel_reg", stringToBD(ma_sel_reg.trim()));
            values.put("description_reg", stringToBD(description_reg.trim()));
            values.put("mod_sel_reg", stringToBD(mod_sel_reg.trim()));
            values.put("tam_sel_reg",  stringToBD(tam_sel_reg.trim()));
            values.put("rangomin_sel_reg",  stringToBD(rangomin_sel_reg.trim()));
            values.put("rangomin_reg",  stringToBD(rangomin_reg.trim()));
            values.put("flujomax_sel_reg",  stringToBD(flujomax_sel_reg.trim()));
            values.put("rangomax_sel_reg",  stringToBD(rangomax_sel_reg.trim()));
            values.put("rangomax_reg",  stringToBD(rangomax_reg.trim()));
            values.put("presionr_reg",  stringToBD(presionr_reg.trim()));
            values.put("presionr_sel_reg",  stringToBD(presionr_sel_reg.trim()));
            values.put("presionb_reg",  stringToBD(presionb_reg.trim()));
            values.put("pb_sel_reg",  stringToBD(pb_sel_reg.trim()));
            values.put("flujomax_reg",  stringToBD(flujomax_reg.trim()));
            values.put("tempope_reg",  stringToBD(tempope_reg.trim()));
            values.put("tempope_sel_reg",  stringToBD(tempope_sel_reg.trim()));
            values.put("grav_reg",  stringToBD(grav_reg.trim()));
            values.put("modeloesp_reg",  stringToBD(modeloesp_reg.trim()));
            values.put("portrabajo_reg",  stringToBD(portrabajo_reg.trim()));
            values.put("capaest_reg",  stringToBD(capaest_reg.trim()));
            
            values.put("id_proyect", id_proyect.trim());
            values.put("id_user", iduser.trim());
            
        }catch(Exception ex){
            throw new Exception(ex.getMessage());
        }
       
       return values;
        
    }
    
    public static JSONObject getReguladorCV(String modelo, String tamano) throws Exception{
        
       
        return model.getReguladorCV(modelo, tamano);
    }
    
     public static JSONObject getReguladorCVSugerido(double presLl, double preg, double gesp, double temp, double flujo) throws Exception{
        
       
        return model.getReguladorSugerido(presLl, preg, gesp, temp, flujo);
    }
   
    
}
