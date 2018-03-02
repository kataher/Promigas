/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Pipeline;

import Model.ComboModel;
import Model.Pipeline.ReliefValveSizingModel;
import java.util.HashMap;
import java.util.Map;
import java.util.Vector;
import javax.servlet.http.HttpServletRequest;
import org.json.JSONObject;
/**
 *
 * @author kata__000
 */
public class ReliefValveSizingController extends Controller.Controller {
    
    private final ReliefValveSizingModel model = new ReliefValveSizingModel();
    
    
    
    public  Map<String, String> getValues(HttpServletRequest request) throws Exception{
         
        String description_rvs = request.getParameter("description_rvs");
        String opso_rvs = request.getParameter("opso_rvs");
        String opsk_rvs = request.getParameter("opsk_rvs");
        String specifich_rvs = request.getParameter("specifich_rvs");
        String criticalf_rvs = request.getParameter("criticalf_rvs");
        String relief_rvs = request.getParameter("relief_rvs");
        String gasvaporf_rvs = request.getParameter("gasvaporf_rvs");
        String gasp_rvs = request.getParameter("gasp_rvs");
        String requiredf_rvs = request.getParameter("requiredf_rvs");
        String requiredeff_rvs = request.getParameter("requiredeff_rvs");
        String effectivec_rvs = request.getParameter("effectivec_rvs");
        String capacityc_rvs = request.getParameter("capacityc_rvs");
        String compressibilityf_rvs = request.getParameter("compressibilityf_rvs");
        String molecularws_rvs = request.getParameter("molecularws_rvs");
        String specificg_rvs = request.getParameter("specificg_rvs");

        String selectgv_sel_rvs = request.getParameter("selectgv_sel_rvs");
        String rv_sel_rvs = request.getParameter("rv_sel_rvs");
        String gfv_sel_rvs = request.getParameter("gfv_sel_rvs");
        String bp_sel_rvs = request.getParameter("bp_sel_rvs");
        String rf_sel_rvs = request.getParameter("rf_sel_rvs");
        String cc_sel_rvs = request.getParameter("cc_sel_rvs");
        String re_sel_rvs = request.getParameter("re_sel_rvs");

        String criticafr_rvs = request.getParameter("criticafr_rvs");
        String flowingc_rvs = request.getParameter("flowingc_rvs");
        String requirede_rvs = request.getParameter("requirede_rvs");
        String requiredfo_rvs = request.getParameter("requiredfo_rvs");
        String ccoefficient_rvs = request.getParameter("ccoefficient_rvs");
        
        //ids
        String id_proyect = request.getParameter("idproyect");
        String iduser = request.getParameter("iduser");
        
        Map<String, String> values = new HashMap<String, String>();
                
        try
        {
            values.put("description_rvs", stringToBD(description_rvs.trim()));
            values.put("specifich_rvs", stringToBD(specifich_rvs.trim()));
            values.put("criticalf_rvs", stringToBD(criticalf_rvs.trim()));
            values.put("compressibilityf_rvs", stringToBD(compressibilityf_rvs.trim()));
            values.put("molecularws_rvs", stringToBD(molecularws_rvs.trim()));
            values.put("specificg_rvs", stringToBD(specificg_rvs.trim()));
            values.put("opso_rvs", stringToBD(opso_rvs.trim()));
            values.put("opsk_rvs", stringToBD(opsk_rvs.trim()));
            values.put("relief_rvs", stringToBD(relief_rvs));
            values.put("gasvaporf_rvs", stringToBD(gasvaporf_rvs));
            values.put("gasp_rvs", stringToBD(gasp_rvs));
            values.put("requiredf_rvs", stringToBD(requiredf_rvs));
            values.put("requiredeff_rvs", stringToBD(requiredeff_rvs.trim()));
            values.put("effectivec_rvs", stringToBD(effectivec_rvs));            
            values.put("capacityc_rvs", stringToBD(capacityc_rvs));
            
            values.put("selectgv_sel_rvs", stringToBD(selectgv_sel_rvs.trim()));
            values.put("rv_sel_rvs", stringToBD(rv_sel_rvs));
            values.put("gfv_sel_rvs", stringToBD(gfv_sel_rvs));
            values.put("bp_sel_rvs", stringToBD(bp_sel_rvs));
            values.put("rf_sel_rvs", stringToBD(rf_sel_rvs));
            values.put("cc_sel_rvs", stringToBD(cc_sel_rvs));
            values.put("re_sel_rvs", stringToBD(re_sel_rvs));
            

            //Results
            values.put("criticafr_rvs", stringToBD(criticafr_rvs.trim()));
            values.put("flowingc_rvs", stringToBD(flowingc_rvs.trim()));
            values.put("requirede_rvs", stringToBD(requirede_rvs.trim()));
            values.put("requiredfo_rvs", stringToBD(requiredfo_rvs.trim()));
            values.put("ccoefficient_rvs", stringToBD(ccoefficient_rvs.trim()));
            
            values.put("id_proyect", id_proyect.trim());
            values.put("id_user", iduser.trim());
            
       
            
        }catch(Exception ex){
            throw new Exception(ex.getMessage());
        }
       
       return values;
        
    }
    
     public ReliefValveSizingModel getModel(){
        return model;
    }
       
}
