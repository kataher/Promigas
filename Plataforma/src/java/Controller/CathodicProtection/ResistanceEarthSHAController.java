/*

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.CathodicProtection;

import Model.CathodicProtection.ResistanceEarthSHAModel;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
/**
 *
 * @author kata__000
 */
public class ResistanceEarthSHAController extends Controller.Controller{
    
    private final ResistanceEarthSHAModel model = new ResistanceEarthSHAModel();

    public ResistanceEarthSHAModel getModel() {
        return model;
    }
    
    
    
    public  Map<String, String> getValues(HttpServletRequest request) throws Exception{
        
         //Input Data
        String description_rsha = request.getParameter("description_rsha");
        String soilr_rsha = request.getParameter("soilr_rsha");
        String anodel_rsha = request.getParameter("anodel_rsha");
        String anoded_rsha = request.getParameter("anoded_rsha");
        String distancee_rsha = request.getParameter("distancee_rsha");
        String so_sel_rsha = request.getParameter("so_sel_rsha");
        String al_sel_rsha = request.getParameter("al_sel_rsha");
        String ad_sel_rsha = request.getParameter("ad_sel_rsha");
        String di_sel_rsha = request.getParameter("di_sel_rsha");
        String resistancee_rsha = request.getParameter("resistancee_rsha");
                
        //ids
        String id_proyect = request.getParameter("idproyect");
        String iduser = request.getParameter("iduser");
       
        Map<String, String> values = new HashMap<String, String>();
                
        try
        {
            values.put("description_rsha", stringToBD(description_rsha.trim()));
            values.put("soilr_rsha", stringToBD(soilr_rsha.trim()));
            values.put("anodel_rsha",  stringToBD(anodel_rsha.trim()));
            values.put("anoded_rsha",  stringToBD(anoded_rsha.trim()));
            values.put("distancee_rsha",  stringToBD(distancee_rsha.trim()));
            values.put("so_sel_rsha",  stringToBD(so_sel_rsha.trim()));
            values.put("al_sel_rsha",  stringToBD(al_sel_rsha.trim()));
            values.put("ad_sel_rsha",  stringToBD(ad_sel_rsha.trim()));
            values.put("di_sel_rsha",  stringToBD(di_sel_rsha.trim()));
            values.put("resistancee_rsha",  stringToBD(resistancee_rsha.trim()));
            
            values.put("id_proyect", id_proyect.trim());
            values.put("id_user", iduser.trim());
            
        }catch(Exception ex){
            throw new Exception(ex.getMessage());
        }
       
       return values;
        
    }
      
      
       
}

