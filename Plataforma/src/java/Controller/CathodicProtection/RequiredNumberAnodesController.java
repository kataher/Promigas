/*

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.CathodicProtection;


import Model.CathodicProtection.RequiredNumberAnodesModel;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author kata__000
 */
public class RequiredNumberAnodesController extends Controller.Controller{
    
    
    private final RequiredNumberAnodesModel model = new RequiredNumberAnodesModel();

    public RequiredNumberAnodesModel getModel() {
        return model;
    }
    
    
    public  Map<String, String> getValues(HttpServletRequest request) throws Exception{
        
         //Input Data
        String description_rn = request.getParameter("description_rn");
        String drivingv_rn = request.getParameter("drivingv_rn");
        String anoder_rn = request.getParameter("anoder_rn");
        String totalc_rn = request.getParameter("totalc_rn");
        String dr_sel_rn = request.getParameter("dr_sel_rn");
        String an_sel_rn = request.getParameter("an_sel_rn");
        String to_sel_rn = request.getParameter("to_sel_rn");
        String requiredn_rn = request.getParameter("requiredn_rn");
                
        //ids
        String id_proyect = request.getParameter("idproyect");
        String iduser = request.getParameter("iduser");
       
        Map<String, String> values = new HashMap<String, String>();
                
        try
        {
            values.put("description_rn", stringToBD(description_rn.trim()));
            values.put("drivingv_rn", stringToBD(drivingv_rn.trim()));
            values.put("anoder_rn",  stringToBD(anoder_rn.trim()));
            values.put("totalc_rn",  stringToBD(totalc_rn.trim()));
            values.put("dr_sel_rn",  stringToBD(dr_sel_rn.trim()));
            values.put("an_sel_rn",  stringToBD(an_sel_rn.trim()));
            values.put("to_sel_rn",  stringToBD(to_sel_rn.trim()));
            values.put("requiredn_rn",  stringToBD(requiredn_rn.trim()));
            
            values.put("id_proyect", id_proyect.trim());
            values.put("id_user", iduser.trim());
            
        }catch(Exception ex){
            throw new Exception(ex.getMessage());
        }
       
       return values;
        
    }
      
      
       
}

