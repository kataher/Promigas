/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Pipeline;

import Model.ComboModel;
import Model.Pipeline.ReliefValveReactionModel;
import java.util.HashMap;
import java.util.Map;
import java.util.Vector;
import javax.servlet.http.HttpServletRequest;
import org.json.JSONObject;
/**
 *
 * @author kata__000
 */
public class ReliefValveReactionController extends Controller.Controller {
    
    private final ReliefValveReactionModel model = new ReliefValveReactionModel();

    public ReliefValveReactionModel getModel() {
        return model;
    }
    
    
    
    public  Map<String, String> getValues(HttpServletRequest request) throws Exception{
         
        String description_rvr = request.getParameter("description_rvr");
        String opsk_rvr = request.getParameter("opsk_rvr");
        
        String molecularw_rvr = request.getParameter("molecularw_rvr");
        String specifich_rvr = request.getParameter("specifich_rvr");
        String criticalf_rvr = request.getParameter("criticalf_rvr");
        String specificg_rvr = request.getParameter("specificg_rvr");
        
        String enteree_rvr = request.getParameter("enteree_rvr");
        String requiredf_rvr = request.getParameter("requiredf_rvr");
        String temperatureo_rvr = request.getParameter("temperatureo_rvr");
        String staticp_rvr = request.getParameter("staticp_rvr");
        String areao_rvr = request.getParameter("areao_rvr");
        
        String pesomolecular_rvr = request.getParameter("pesomolecular_rvr");
        String specificgra_rvr = request.getParameter("specificgra_rvr");
        String specifichs_rvr = request.getParameter("specifichs_rvr");
        String criticalfw_rvr = request.getParameter("criticalfw_rvr");

        String selectgv_sel_rvr = request.getParameter("selectgv_sel_rvr");
        String rf_sel_rvr = request.getParameter("rf_sel_rvr");
        String tempo_sel_rvr = request.getParameter("tempo_sel_rvr");
        String sp_sel_rvr = request.getParameter("sp_sel_rvr");
        String ao_sel_rvr = request.getParameter("ao_sel_rvr");
        String ee_sel_rvr = request.getParameter("ee_sel_rvr");

        String reactionf_rvr = request.getParameter("reactionf_rvr");
        
        //ids
        String id_proyect = request.getParameter("idproyect");
        String iduser = request.getParameter("iduser");
        
        Map<String, String> values = new HashMap<String, String>();
                
        try
        {
            values.put("opsk_rvr", stringToBD(opsk_rvr.trim()));
            values.put("description_rvr", stringToBD(description_rvr.trim()));
            
            values.put("molecularw_rvr", stringToBD(molecularw_rvr.trim()));
            values.put("specifich_rvr", stringToBD(specifich_rvr.trim()));
            values.put("criticalf_rvr", stringToBD(criticalf_rvr.trim()));
            
            values.put("requiredf_rvr", stringToBD(requiredf_rvr));
            values.put("temperatureo_rvr", stringToBD(temperatureo_rvr.trim()));
            values.put("staticp_rvr", stringToBD(staticp_rvr.trim()));
            values.put("areao_rvr", stringToBD(areao_rvr.trim()));
            
            values.put("specifichs_rvr", stringToBD(specifichs_rvr));
            values.put("criticalfw_rvr", stringToBD(criticalfw_rvr.trim()));
            values.put("specificg_rvr", stringToBD(specificg_rvr.trim()));
            values.put("enteree_rvr", stringToBD(enteree_rvr.trim()));
            values.put("pesomolecular_rvr", stringToBD(pesomolecular_rvr.trim()));
            values.put("specificgra_rvr", stringToBD(specificgra_rvr.trim()));
            values.put("ee_sel_rvr", stringToBD(ee_sel_rvr.trim()));
            
            values.put("selectgv_sel_rvr", stringToBD(selectgv_sel_rvr.trim()));
            values.put("tempo_sel_rvr", stringToBD(tempo_sel_rvr));
            values.put("sp_sel_rvr", stringToBD(sp_sel_rvr));
            values.put("ao_sel_rvr", stringToBD(ao_sel_rvr));
            values.put("rf_sel_rvr", stringToBD(rf_sel_rvr));
            

            //Results
            values.put("reactionf_rvr", stringToBD(reactionf_rvr.trim()));
            
            values.put("id_proyect", id_proyect.trim());
            values.put("id_user", iduser.trim());
            
       
            
        }catch(Exception ex){
            throw new Exception(ex.getMessage());
        }
       
       return values;
        
    }
       
}
