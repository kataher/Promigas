/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.PipelineTesting;

import Model.ComboModel;
import Model.PipelineTesting.PurgingCalculationsModel;
import java.util.HashMap;
import java.util.Map;
import java.util.Vector;
import javax.servlet.http.HttpServletRequest;
import org.json.JSONObject;
/**
 *
 * @author kata__000
 */
public class PurgingCalculationsController extends Controller.Controller  {
    
    private final PurgingCalculationsModel model = new PurgingCalculationsModel();

    public PurgingCalculationsModel getModel() {
        return model;
    }
    
    
    
    public  Map<String, String> getValues(HttpServletRequest request) throws Exception{
        
         //Input Data
        String description_pca = request.getParameter("description_pca");
        String recopurgeb_pca = request.getParameter("recopurgeb_pca");
        String blowoffc_pca = request.getParameter("blowoffc_pca");
        String blowoffp_pca = request.getParameter("blowoffp_pca");
        String internald_pca = request.getParameter("internald_pca");
        String lenghtp_pca = request.getParameter("lenghtp_pca");
        
        String blowoffs_sel_pca = request.getParameter("blowoffs_sel_pca");
        String sb_sel_pca = request.getParameter("sb_sel_pca");
        String lp_sel_pca = request.getParameter("lp_sel_pca");
        String bop_sel_pca = request.getParameter("bop_sel_pca");
        String idp_sel_pca = request.getParameter("idp_sel_pca");
        String h_pca = request.getParameter("h_pca");
        String h_sel_pca = request.getParameter("h_sel_pca");
        
         //Results
        String flowr_pca = request.getParameter("flowr_pca");
        String purgeg_pca = request.getParameter("purgeg_pca");
        String actualv_pca = request.getParameter("actualv_pca");
        String minpurgea_pca = request.getParameter("minpurgea_pca");
        String recopurgea_pca = request.getParameter("recopurgea_pca");
        String minpurgeb_pca = request.getParameter("minpurgeb_pca");
        String volumegasma_pca = request.getParameter("volumegasma_pca");
        String volumegasra_pca = request.getParameter("volumegasra_pca");
        String volumegasmb_pca = request.getParameter("volumegasmb_pca");
        String volumegasrb_pca = request.getParameter("volumegasrb_pca");
         
        //ids
        String id_proyect = request.getParameter("idproyect");
        String iduser = request.getParameter("iduser");
       
        Map<String, String> values = new HashMap<String, String>();
                
        try
        {
            values.put("h_pca", stringToBD(h_pca.trim()));
            values.put("h_sel_pca", stringToBD(h_sel_pca.trim()));
            values.put("description_pca", stringToBD(description_pca.trim()));
            values.put("blowoffc_pca", stringToBD(blowoffc_pca.trim()));
            values.put("blowoffp_pca", stringToBD(blowoffp_pca.trim()));
            values.put("internald_pca",  stringToBD(internald_pca.trim()));
            values.put("lenghtp_pca",  stringToBD(lenghtp_pca.trim()));
            values.put("blowoffs_sel_pca",  stringToBD(blowoffs_sel_pca.trim()));
            values.put("sb_sel_pca",  stringToBD(sb_sel_pca.trim()));
            values.put("lp_sel_pca",  stringToBD(lp_sel_pca.trim()));
            values.put("bop_sel_pca",  stringToBD(bop_sel_pca.trim()));
            values.put("idp_sel_pca",  stringToBD(idp_sel_pca.trim()));
            values.put("flowr_pca",  stringToBD(flowr_pca.trim()));
            values.put("purgeg_pca",  stringToBD(purgeg_pca.trim()));
            values.put("actualv_pca",  stringToBD(actualv_pca.trim()));
            values.put("minpurgea_pca",  stringToBD(minpurgea_pca.trim()));
            values.put("recopurgea_pca",  stringToBD(recopurgea_pca.trim()));
            values.put("volumegasma_pca",  stringToBD(volumegasma_pca.trim()));
            values.put("volumegasra_pca",  stringToBD(volumegasra_pca.trim()));
            values.put("minpurgeb_pca",  stringToBD(minpurgeb_pca.trim()));
            values.put("recopurgeb_pca",  stringToBD(recopurgeb_pca.trim()));
            values.put("volumegasmb_pca",  stringToBD(volumegasmb_pca.trim()));
            values.put("volumegasrb_pca",  stringToBD(volumegasrb_pca.trim()));
            
            values.put("id_proyect", id_proyect.trim());
            values.put("id_user", iduser.trim());
            
        }catch(Exception ex){
            throw new Exception(ex.getMessage());
        }
       
       return values;
        
    }
      
       
}
