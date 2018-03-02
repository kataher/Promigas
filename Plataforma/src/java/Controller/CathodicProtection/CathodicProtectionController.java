/*

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.CathodicProtection;

import Model.CathodicProtection.CathodicProtectionModel;
import Model.ComboModel;
import java.util.HashMap;
import java.util.Map;
import java.util.Vector;
import javax.servlet.http.HttpServletRequest;
import org.json.JSONObject;
/**
 *
 * @author kata__000
 */
public class CathodicProtectionController extends Controller.Controller{
    
    private final CathodicProtectionModel model = new CathodicProtectionModel();

    public CathodicProtectionModel getModel() {
        return model;
    }
    
    
    
    public  Map<String, String> getValues(HttpServletRequest request) throws Exception{
        
         //Input Data
        String description_cc = request.getParameter("description_cc");
        String pipeod_cc = request.getParameter("pipeod_cc");
        String pipew_cc = request.getParameter("pipew_cc");
        String halfd_cc = request.getParameter("halfd_cc");
        String specificr_cc = request.getParameter("specificr_cc");
        String pipeel_cc = request.getParameter("pipeel_cc");
        String pipeep_cc = request.getParameter("pipeep_cc");
        String xdistance_cc = request.getParameter("xdistance_cc");
        String pi_sel_cc = request.getParameter("pi_sel_cc");
        String pip_sel_cc = request.getParameter("pip_sel_cc");
        String ha_sel_cc = request.getParameter("ha_sel_cc");
        String pil_sel_cc = request.getParameter("pil_sel_cc");
        String pie_sel_cc = request.getParameter("pie_sel_cc");
        String xd_sel_cc = request.getParameter("xd_sel_cc");
        
        String linear_cc = request.getParameter("linear_cc");
        String leakage_cc = request.getParameter("leakage_cc");
        String characteristicsr_cc = request.getParameter("characteristicsr_cc");
        String attenuationc_cc = request.getParameter("attenuationc_cc");
        String pipee_cc = request.getParameter("pipee_cc");
                
        //ids
        String id_proyect = request.getParameter("idproyect");
        String iduser = request.getParameter("iduser");
       
        Map<String, String> values = new HashMap<String, String>();
                
        try
        {
            values.put("description_cc", stringToBD(description_cc.trim()));
            values.put("pipeod_cc", stringToBD(pipeod_cc.trim()));
            values.put("pipew_cc",  stringToBD(pipew_cc.trim()));
            values.put("halfd_cc",  stringToBD(halfd_cc.trim()));
            values.put("specificr_cc",  stringToBD(specificr_cc.trim()));
            values.put("pipeel_cc",  stringToBD(pipeel_cc.trim()));
            values.put("pipeep_cc",  stringToBD(pipeep_cc.trim()));
            values.put("xdistance_cc",  stringToBD(xdistance_cc.trim()));
            values.put("pi_sel_cc",  stringToBD(pi_sel_cc.trim()));
            values.put("pip_sel_cc",  stringToBD(pip_sel_cc.trim()));
            values.put("ha_sel_cc",  stringToBD(ha_sel_cc.trim()));
            values.put("pil_sel_cc",  stringToBD(pil_sel_cc.trim()));
            values.put("pie_sel_cc",  stringToBD(pie_sel_cc.trim()));
            values.put("xd_sel_cc",  stringToBD(xd_sel_cc.trim()));
            values.put("linear_cc",  stringToBD(linear_cc.trim()));
            values.put("leakage_cc",  stringToBD(leakage_cc.trim()));
            values.put("characteristicsr_cc",  stringToBD(characteristicsr_cc.trim()));
            values.put("attenuationc_cc",  stringToBD(attenuationc_cc.trim()));
            values.put("pipee_cc",  stringToBD(pipee_cc.trim()));
            
            values.put("id_proyect", id_proyect.trim());
            values.put("id_user", iduser.trim());
            
        }catch(Exception ex){
            throw new Exception(ex.getMessage());
        }
       
       return values;
        
    }
      
      
       
}

