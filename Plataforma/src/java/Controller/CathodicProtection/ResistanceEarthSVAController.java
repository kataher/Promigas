/*

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.CathodicProtection;

import Model.CathodicProtection.ResistanceEarthSVAModel;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;

/**ResistanceEarthSVAModel
 *
 * @author kata__000
 */
public class ResistanceEarthSVAController extends Controller.Controller{
    
    
    private final  ResistanceEarthSVAModel model = new ResistanceEarthSVAModel();

    public ResistanceEarthSVAModel getModel() {
        return model;
    }
    
    
    
    public  Map<String, String> getValues(HttpServletRequest request) throws Exception{
        
         //Input Data
        String description_rsva = request.getParameter("description_rsva");
        String soilr_rsva = request.getParameter("soilr_rsva");
        String anodel_rsva = request.getParameter("anodel_rsva");
        String anoded_rsva = request.getParameter("anoded_rsva");
        String so_sel_rsva = request.getParameter("so_sel_rsva");
        String al_sel_rsva = request.getParameter("al_sel_rsva");
        String ad_sel_rsva = request.getParameter("ad_sel_rsva");
        String verticala_rsva = request.getParameter("verticala_rsva");
                
        //ids
        String id_proyect = request.getParameter("idproyect");
        String iduser = request.getParameter("iduser");
       
        Map<String, String> values = new HashMap<String, String>();
                
        try
        {
            values.put("description_rsva", stringToBD(description_rsva.trim()));
            values.put("soilr_rsva", stringToBD(soilr_rsva.trim()));
            values.put("anodel_rsva",  stringToBD(anodel_rsva.trim()));
            values.put("anoded_rsva",  stringToBD(anoded_rsva.trim()));
            values.put("so_sel_rsva",  stringToBD(so_sel_rsva.trim()));
            values.put("al_sel_rsva",  stringToBD(al_sel_rsva.trim()));
            values.put("ad_sel_rsva",  stringToBD(ad_sel_rsva.trim()));
            values.put("verticala_rsva",  stringToBD(verticala_rsva.trim()));
            
            values.put("id_proyect", id_proyect.trim());
            values.put("id_user", iduser.trim());
            
        }catch(Exception ex){
            throw new Exception(ex.getMessage());
        }
       
       return values;
        
    }
      
      
       
}

