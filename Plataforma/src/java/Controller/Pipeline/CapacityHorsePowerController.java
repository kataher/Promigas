/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Pipeline;

import Model.Pipeline.CapacityHorsePowerModel;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author kata__000
 */
public class CapacityHorsePowerController extends Controller.Controller{
    
    private final CapacityHorsePowerModel model = new CapacityHorsePowerModel();

    public CapacityHorsePowerModel getModel() {
        return model;
    }
   
    
    
    public  Map<String, String> getValues(HttpServletRequest request) throws Exception{
        
       //Input Data
        String description_chp = request.getParameter("description_chp");
        String z1s_chp = request.getParameter("z1s_chp");
        String z2d_chp = request.getParameter("z2d_chp");
        String opz_chp = request.getParameter("opz_chp");
        
        String ee_sel_chp = request.getParameter("ee_sel_chp");
        String enteree_chp = request.getParameter("enteree_chp");
        String basetemperature_chp = request.getParameter("basetemperature_chp");
        String bt_sel_chp = request.getParameter("bt_sel_chp");        
        String basepressure_chp = request.getParameter("basepressure_chp");
        String bp_sel_chp = request.getParameter("bp_sel_chp");        
        String suctionp_chp = request.getParameter("suctionp_chp");
        String sp_sel_chp = request.getParameter("sp_sel_chp");        
        String suctiont_chp = request.getParameter("suctiont_chp");
        String st_sel_chp = request.getParameter("st_sel_chp");        
        String dischargep_chp = request.getParameter("dischargep_chp");
        String dp_sel_chp = request.getParameter("dp_sel_chp");
        
        String borec_chp = request.getParameter("borec_chp");
        String bc_sel_chp = request.getParameter("bc_sel_chp");
        String stroket_chp = request.getParameter("stroket_chp");
        String str_sel_chp = request.getParameter("str_sel_chp");
        String pistonrd_chp = request.getParameter("pistonrd_chp");
        String prd_sel_chp = request.getParameter("prd_sel_chp");
        String pact_sel_chp = request.getParameter("pact_sel_chp");
        String cylindercl_chp = request.getParameter("cylindercl_chp");
        String rs_sel_chp = request.getParameter("rs_sel_chp");
        String gass_chp = request.getParameter("gass_chp");
        String gs_sel_chp = request.getParameter("gs_sel_chp");
        String gst_chp = request.getParameter("gst_chp");        
        String mechanicale_chp = request.getParameter("mechanicale_chp");
        String rotationals_chp = request.getParameter("rotationals_chp");   
        String effect_chp = request.getParameter("effect_chp");
        String effect2_chp = request.getParameter("effect2_chp");
        
         //Results
        String pistond_chp = request.getParameter("pistond_chp");
        String discharget_chp = request.getParameter("discharget_chp");
        String z1_chp = request.getParameter("z1_chp");
        String z2_chp = request.getParameter("z2_chp");
        String volumetrice_chp = request.getParameter("volumetrice_chp");
        String cylinderc_chp = request.getParameter("cylinderc_chp");
        String equivalentc_chp = request.getParameter("equivalentc_chp");
        String cylinderb_chp = request.getParameter("cylinderb_chp");
        
        //ids
        String id_proyect = request.getParameter("idproyect");
        String iduser = request.getParameter("iduser");
        
       
        Map<String, String> values = new HashMap<String, String>();
                
        try
        {
            values.put("ee_sel_chp",  stringToBD(ee_sel_chp.trim()));
            values.put("enteree_chp",  stringToBD(enteree_chp.trim()));
            values.put("mechanicale_chp", stringToBD(mechanicale_chp.trim()));
            values.put("rs_sel_chp", stringToBD(rs_sel_chp.trim()));
            values.put("cylindercl_chp", stringToBD(cylindercl_chp.trim()));
            values.put("pact_sel_chp", stringToBD(pact_sel_chp.trim()));
            values.put("prd_sel_chp", stringToBD(prd_sel_chp.trim()));
            values.put("pistonrd_chp", stringToBD(pistonrd_chp.trim()));
            values.put("borec_chp", stringToBD(borec_chp.trim()));
            values.put("pistonrd_chp", stringToBD(pistonrd_chp.trim()));
            values.put("bc_sel_chp", stringToBD(bc_sel_chp.trim()));
            values.put("str_sel_chp", stringToBD(str_sel_chp.trim()));
            values.put("z2d_chp", stringToBD(z2d_chp.trim()));
            values.put("stroket_chp", stringToBD(stroket_chp.trim()));
            values.put("pistond_chp", stringToBD(pistond_chp.trim()));
            values.put("z2_chp", stringToBD(z2_chp.trim()));
            values.put("volumetrice_chp", stringToBD(volumetrice_chp.trim()));
            values.put("cylinderc_chp", stringToBD(cylinderc_chp.trim()));
            values.put("equivalentc_chp", stringToBD(equivalentc_chp.trim()));
            values.put("cylinderb_chp", stringToBD(cylinderb_chp.trim()));
            values.put("effect_chp", stringToBD(effect_chp.trim()));
            values.put("effect2_chp", stringToBD(effect2_chp.trim()));
            
            values.put("description_chp", stringToBD(description_chp.trim()));
            values.put("z1s_chp", stringToBD(z1s_chp.trim()));
            values.put("opz_chp",  stringToBD(opz_chp.trim()));
            values.put("basetemperature_chp",  stringToBD(basetemperature_chp.trim()));
            values.put("bt_sel_chp",  stringToBD(bt_sel_chp.trim()));
            values.put("basepressure_chp",  stringToBD(basepressure_chp.trim()));
            values.put("bp_sel_chp",  stringToBD(bp_sel_chp.trim()));
            values.put("suctionp_chp",  stringToBD(suctionp_chp.trim()));
            values.put("sp_sel_chp",  stringToBD(sp_sel_chp.trim()));
            values.put("suctiont_chp",  stringToBD(suctiont_chp.trim()));
            values.put("st_sel_chp",  stringToBD(st_sel_chp.trim()));
            values.put("dischargep_chp",  stringToBD(dischargep_chp.trim()));
            values.put("dp_sel_chp",  stringToBD(dp_sel_chp.trim()));
            values.put("gass_chp",  stringToBD(gass_chp.trim()));
            values.put("gs_sel_chp",  stringToBD(gs_sel_chp.trim()));
            values.put("gst_chp",  stringToBD(gst_chp.trim()));            
            values.put("discharget_chp",  stringToBD(discharget_chp.trim()));
            values.put("z1_chp",  stringToBD(z1_chp.trim()));
            values.put("rotationals_chp",stringToBD(rotationals_chp.trim()));
            
            values.put("id_proyect", id_proyect.trim());
            values.put("id_user", iduser.trim());
            
        }catch(Exception ex){
            throw new Exception(ex.getMessage());
        }
       
       return values;
        
    }

       
}
