/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Pipeline;

import Model.Pipeline.HotTapSizingModel;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
/**
 *
 * @author kata__000
 */
public class HotTapSizingController extends Controller.Controller {
    
    private final HotTapSizingModel model = new HotTapSizingModel();

    public HotTapSizingModel getModel() {
        return model;
    }
    
    
    
    public  Map<String, String> getValues(HttpServletRequest request) throws Exception{
        
          //Input Data
        String description_htz = request.getParameter("description_htz");
        String specifich_htz =  request.getParameter("specifich_htz");
        String criticalf_htz =  request.getParameter("criticalf_htz");
        String holec_htz =  request.getParameter("holec_htz");
        String pressure_htz =  request.getParameter("pressure_htz");
        String flowingt_htz =  request.getParameter("flowingt_htz");
        String pressurel_htz =  request.getParameter("pressurel_htz");
        String flowrate_htz =  request.getParameter("flowrate_htz");
        String orificec_htz =  request.getParameter("orificec_htz");
        String gsg_htz =  request.getParameter("gsg_htz");
        String compressibilityf_htz =  request.getParameter("compressibilityf_htz");
        String molecularws_htz =  request.getParameter("molecularws_htz");

        String selectgv_sel_htz =  request.getParameter("selectgv_sel_htz");
        String nominalb_sel_htz =  request.getParameter("nominalb_sel_htz");
        String oc_sel_htz =  request.getParameter("oc_sel_htz");
        String pre_sel_htz =  request.getParameter("pre_sel_htz");
        String flowt_sel_htz =  request.getParameter("flowt_sel_htz");
        String fr_sel_htz =  request.getParameter("fr_sel_htz");

        //Results
        String branchgv_htz =  request.getParameter("branchgv_htz");
        String calculatedoa_htz =  request.getParameter("calculatedoa_htz");
        String calculatedtd_htz =  request.getParameter("calculatedtd_htz");
        
        //ids
        String id_proyect = request.getParameter("idproyect");
        String iduser = request.getParameter("iduser");
        
        
        Map<String, String> values = new HashMap<String, String>();
            
        try
        {
            values.put("description_htz", stringToBD(description_htz.trim()));
            values.put("specifich_htz", stringToBD(specifich_htz.trim()));
            values.put("criticalf_htz", stringToBD(criticalf_htz.trim()));
            values.put("holec_htz", stringToBD(holec_htz.trim()));
            values.put("pressure_htz", stringToBD(pressure_htz.trim()));
            values.put("flowingt_htz", stringToBD(flowingt_htz.trim()));
            values.put("pressurel_htz", stringToBD(pressurel_htz.trim()));
            values.put("flowrate_htz", stringToBD(flowrate_htz.trim()));
            values.put("orificec_htz", stringToBD(orificec_htz.trim()));
            values.put("gsg_htz", stringToBD(gsg_htz.trim()));
            values.put("compressibilityf_htz", stringToBD(compressibilityf_htz.trim()));
            values.put("molecularws_htz", stringToBD(molecularws_htz.trim()));

            values.put("selectgv_sel_htz", stringToBD(selectgv_sel_htz.trim()));
            values.put("nominalb_sel_htz", stringToBD(nominalb_sel_htz.trim()));
            values.put("oc_sel_htz", stringToBD(oc_sel_htz.trim()));
            values.put("pre_sel_htz", stringToBD(pre_sel_htz.trim()));
            values.put("flowt_sel_htz", stringToBD(flowt_sel_htz.trim()));
            values.put("fr_sel_htz", stringToBD(fr_sel_htz.trim()));

            //Results
            values.put("branchgv_htz", stringToBD(branchgv_htz.trim()));
            values.put("calculatedoa_htz", stringToBD(calculatedoa_htz.trim()));
            values.put("calculatedtd_htz", stringToBD(calculatedtd_htz.trim()));
            
            values.put("id_proyect", id_proyect.trim());
            values.put("id_user", iduser.trim());
            
        }catch(Exception ex){
            throw new Exception(ex.getMessage());
        }
        return values;
    }
    
}
