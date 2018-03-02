/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Pipeline;

import Model.ComboModel;
import Model.Pipeline.PipingPipeWallModel;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
/**
 *
 * @author kata__000
 */
public class PipingPipeWallController extends Controller.Controller{
    
    private final PipingPipeWallModel model = new PipingPipeWallModel();

    public PipingPipeWallModel getModel() {
        return model;
    }
    
    

    public  Map<String, String> getValues(HttpServletRequest request) throws Exception{
         //Input Data
        
        String description_ppw = request.getParameter("description_ppw");
        String opcpipe_ppw = request.getParameter("opcpipe_ppw");
        String nominalps_sel_ppw = request.getParameter("nominalps_sel_ppw");
        String grade_sel_ppw = request.getParameter("grade_sel_ppw");
        String design_factor_sel_ppw = request.getParameter("design_factor_sel_ppw");
        String longitudinal_jf_ppw = request.getParameter("longitudinal_jf_ppw");
        String td_sel_ppw = request.getParameter("td_sel_ppw");
        String nominalps_ppw = request.getParameter("nominalps_ppw");
        String nominalos_ppw = request.getParameter("nominalos_ppw");
        String nod_sel_ppw = request.getParameter("nod_sel_ppw");
        String designp_ppw = request.getParameter("designp_ppw");
        String dp_sel_ppw = request.getParameter("dp_sel_ppw");
        String grade_ppw = request.getParameter("grade_ppw");
        String specifiedmys_ppw = request.getParameter("specifiedmys_ppw");
        String designf_ppw = request.getParameter("designf_ppw");
        String ljf_ppw = request.getParameter("ljf_ppw"); 
        String temperaturedf_ppw = request.getParameter("temperaturedf_ppw");
                
        String especp_ppw = request.getParameter("especp_ppw");
        String ac_sel_ppw = request.getParameter("ac_sel_ppw");
        
         //Results
         
        String minimum_ppw = request.getParameter("minimum_ppw");
        
        //ids
        String id_proyect = request.getParameter("idproyect");
        String iduser = request.getParameter("iduser");
        
       
        Map<String, String> values = new HashMap<String, String>();
                
        try
        {
            values.put("description_ppw", stringToBD(description_ppw.trim()));
            values.put("nominalps_sel_ppw", stringToBD(nominalps_sel_ppw.trim()));
            values.put("grade_sel_ppw", stringToBD(grade_sel_ppw.trim()));
            values.put("opcpipe_ppw",  stringToBD(opcpipe_ppw.trim()));
            values.put("design_factor_sel_ppw",  stringToBD(design_factor_sel_ppw.trim()));
            values.put("td_sel_ppw",  stringToBD(td_sel_ppw.trim()));
            values.put("especp_ppw",  stringToBD(especp_ppw.trim()));
            values.put("longitudinal_jf_ppw",  stringToBD(longitudinal_jf_ppw.trim()));
            values.put("ac_sel_ppw",  stringToBD(ac_sel_ppw.trim()));
            values.put("nominalps_ppw",  stringToBD(nominalps_ppw.trim()));
            values.put("minimum_ppw",  stringToBD(minimum_ppw.trim()));
            values.put("nominalos_ppw",  stringToBD(nominalos_ppw.trim()));
            values.put("nod_sel_ppw",  stringToBD(nod_sel_ppw.trim()));
            values.put("designp_ppw",  stringToBD(designp_ppw.trim()));
            values.put("dp_sel_ppw",  stringToBD(dp_sel_ppw.trim()));
            values.put("dp_sel_ppw",  stringToBD(dp_sel_ppw.trim()));
            values.put("specifiedmys_ppw",  stringToBD(specifiedmys_ppw.trim()));
            values.put("designf_ppw",  stringToBD(designf_ppw.trim()));
            values.put("grade_ppw",  stringToBD(grade_ppw.trim()));
            values.put("ljf_ppw",  stringToBD(ljf_ppw.trim()));
            values.put("grade_ppw",  stringToBD(grade_ppw.trim()));
            values.put("temperaturedf_ppw",  stringToBD(temperaturedf_ppw.trim()));
            
           
            values.put("id_proyect", id_proyect.trim());
            values.put("id_user", iduser.trim());
            
        }catch(Exception ex){
            throw new Exception(ex.getMessage());
        }
       
       return values;
    }
       
}
