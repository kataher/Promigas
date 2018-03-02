/*

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.CathodicProtection;

import Model.CathodicProtection.ResistanceEarthMVAModel;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
/**
 *
 * @author kata__000
 */
public class ResistanceEarthMVAController extends Controller.Controller{
    
    private final ResistanceEarthMVAModel model = new ResistanceEarthMVAModel();

    public ResistanceEarthMVAModel getModel() {
        return model;
    }
    
    public  Map<String, String> getValues(HttpServletRequest request) throws Exception{
        
         //Input Data
        String description_rmva = request.getParameter("description_rmva");
        String soilr_rmva = request.getParameter("soilr_rmva");
        String anodel_rmva = request.getParameter("anodel_rmva");
        String anoded_rmva = request.getParameter("anoded_rmva");
        String numbera_rmva = request.getParameter("numbera_rmva");
        String anodes_rmva = request.getParameter("anodes_rmva");
        String so_sel_rmva = request.getParameter("so_sel_rmva");
        String al_sel_rmva = request.getParameter("al_sel_rmva");
        String ad_sel_rmva = request.getParameter("ad_sel_rmva");
        String as_sel_rmva = request.getParameter("as_sel_rmva");
        String anoder_rmva = request.getParameter("anoder_rmva");
                
        //ids
        String id_proyect = request.getParameter("idproyect");
        String iduser = request.getParameter("iduser");
       
        Map<String, String> values = new HashMap<String, String>();
                
        try
        {
            values.put("description_rmva", stringToBD(description_rmva.trim()));
            values.put("soilr_rmva", stringToBD(soilr_rmva.trim()));
            values.put("anodel_rmva",  stringToBD(anodel_rmva.trim()));
            values.put("anoded_rmva",  stringToBD(anoded_rmva.trim()));
            values.put("numbera_rmva",  stringToBD(numbera_rmva.trim()));
            values.put("anodes_rmva",  stringToBD(anodes_rmva.trim()));
            values.put("so_sel_rmva",  stringToBD(so_sel_rmva.trim()));
            values.put("al_sel_rmva",  stringToBD(al_sel_rmva.trim()));
            values.put("ad_sel_rmva",  stringToBD(ad_sel_rmva.trim()));
            values.put("as_sel_rmva",  stringToBD(as_sel_rmva.trim()));
            values.put("anoder_rmva",  stringToBD(anoder_rmva.trim()));
            
            values.put("id_proyect", id_proyect.trim());
            values.put("id_user", iduser.trim());
            
        }catch(Exception ex){
            throw new Exception(ex.getMessage());
        }
       
       return values;
        
    }
      
      
       
}

