/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.CathodicProtection;

import Model.CathodicProtection.EstimatedWeightModel;
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
public class EstimatedWeightController extends Controller.Controller{
    
    private final EstimatedWeightModel model = new EstimatedWeightModel();

    public EstimatedWeightModel getModel() {
        return model;
    }
    
    
    
    public  Map<String, String> getValues(HttpServletRequest request) throws Exception{
        
         //Input Data
        String description_ew = request.getParameter("description_ew");
        String assumedl_ew = request.getParameter("assumedl_ew");
        String electricalc_ew = request.getParameter("electricalc_ew");
        String polarizedp_ew = request.getParameter("polarizedp_ew");
        String polarizedae_ew = request.getParameter("polarizedae_ew");
        String averages_ew = request.getParameter("averages_ew");
        String al_sel_ew = request.getParameter("al_sel_ew");
        String ele_sel_ew = request.getParameter("ele_sel_ew");
        String polp_sel_ew = request.getParameter("polp_sel_ew");
        String pole_sel_ew = request.getParameter("pole_sel_ew");
        String ave_sel_ew = request.getParameter("ave_sel_ew");
        String estimatedw_ew = request.getParameter("estimatedw_ew");
                
        //ids
        String id_proyect = request.getParameter("idproyect");
        String iduser = request.getParameter("iduser");
       
        Map<String, String> values = new HashMap<String, String>();
                
        try
        {
            values.put("description_ew", stringToBD(description_ew.trim()));
            values.put("assumedl_ew", stringToBD(assumedl_ew.trim()));
            values.put("electricalc_ew",  stringToBD(electricalc_ew.trim()));
            values.put("polarizedp_ew",  stringToBD(polarizedp_ew.trim()));
            values.put("polarizedae_ew",  stringToBD(polarizedae_ew.trim()));
            values.put("averages_ew",  stringToBD(averages_ew.trim()));
            values.put("al_sel_ew",  stringToBD(al_sel_ew.trim()));
            values.put("ele_sel_ew",  stringToBD(ele_sel_ew.trim()));
            values.put("polp_sel_ew",  stringToBD(polp_sel_ew.trim()));
            values.put("pole_sel_ew",  stringToBD(pole_sel_ew.trim()));
            values.put("ave_sel_ew",  stringToBD(ave_sel_ew.trim()));
            values.put("estimatedw_ew",  stringToBD(estimatedw_ew.trim()));
            
            values.put("id_proyect", id_proyect.trim());
            values.put("id_user", iduser.trim());
            
        }catch(Exception ex){
            throw new Exception(ex.getMessage());
        }
       
       return values;
        
    }
      
      
       
}

