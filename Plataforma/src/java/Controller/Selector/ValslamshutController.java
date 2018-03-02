/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Selector;

import Model.Selector.ValslamshutModel;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.json.JSONObject;

/**
 *
 * @author kata__000
 */
public class ValslamshutController extends Controller.Controller{
    
    private static final ValslamshutModel model = new ValslamshutModel();

    public ValslamshutModel getModel() {
        return model;
    }
    
    
    
    public  Map<String, String> getValues(HttpServletRequest request) throws Exception{
        
         //Input Data
        String description_sh = request.getParameter("description_sh");
        String ma_sel_sh = request.getParameter("ma_sel_sh");
        String tam_sel_sh = request.getParameter("tam_sel_sh");
        String conex_sel_sh = request.getParameter("conex_sel_sh");
        String material_sh = request.getParameter("material_sh");
        String mecanismo_sel_sh = request.getParameter("mecanismo_sel_sh");
        String pmin_sh = request.getParameter("pmin_sh");
        String pmax_sh = request.getParameter("pmax_sh");
        String pmin_sel_sh = request.getParameter("pmin_sel_sh");
        String pmax_sel_sh = request.getParameter("pmax_sel_sh");
        String prest_sel_sh = request.getParameter("prest_sel_sh");
        String prest_sh = request.getParameter("prest_sh");
        
        //Results        
        String capamax_sh = request.getParameter("capamax_sh");
        String partenum1_sh = request.getParameter("partenum1_sh");
        String color1_sh = request.getParameter("color1_sh");
        String maxpres1_sh = request.getParameter("maxpres1_sh");
        String partenum2_sh = request.getParameter("partenum2_sh");
        String color2_sh = request.getParameter("color2_sh");
        String maxpres2_sh = request.getParameter("maxpres2_sh");
        
        //ids
        String id_proyect = request.getParameter("idproyect");
        String iduser = request.getParameter("iduser");
       
        Map<String, String> values = new HashMap<String, String>();
                
        try
        {
            values.put("description_sh", stringToBD(description_sh.trim()));
            values.put("tam_sel_sh", stringToBD(tam_sel_sh.trim()));
            values.put("conex_sel_sh",  stringToBD(conex_sel_sh.trim()));
            values.put("material_sh",  stringToBD(material_sh.trim()));
            values.put("mecanismo_sel_sh",  stringToBD(mecanismo_sel_sh.trim()));
            values.put("color1_sh",  stringToBD(color1_sh.trim()));
            values.put("pmin_sh",  stringToBD(pmin_sh.trim()));
            values.put("pmax_sh",  stringToBD(pmax_sh.trim()));
            values.put("pmin_sel_sh",  stringToBD(pmin_sel_sh.trim()));
            values.put("pmax_sel_sh",  stringToBD(pmax_sel_sh.trim()));
            values.put("prest_sh",  stringToBD(prest_sh.trim()));
            values.put("capamax_sh",  stringToBD(capamax_sh.trim()));
            values.put("partenum1_sh",  stringToBD(partenum1_sh.trim()));
            values.put("maxpres1_sh",  stringToBD(maxpres1_sh.trim()));
            values.put("partenum2_sh",  stringToBD(partenum2_sh.trim()));
            values.put("maxpres2_sh",  stringToBD(maxpres2_sh.trim()));
            values.put("ma_sel_sh",  stringToBD(ma_sel_sh.trim()));
            values.put("prest_sel_sh",  stringToBD(prest_sel_sh.trim())); 
            values.put("color2_sh",  stringToBD(color2_sh.trim())); 
            
            values.put("id_proyect", id_proyect.trim());
            values.put("id_user", iduser.trim());
            
        }catch(Exception ex){
            throw new Exception(ex.getMessage());
        }
       
       return values;
        
    }
    
    
    
    public static JSONObject getEspecificacionMecanismo(String min, String max) throws Exception{
        return model.getEspecificacionMecanismo(min, max);
    }
   
    
}
