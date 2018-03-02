



/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.PipelineTesting;

import Model.PipelineTesting.PackPipelineModel;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
/**
 *
 * @author kata__000
 */
public class PackPipelineController extends Controller.Controller{
    
    private final PackPipelineModel model = new PackPipelineModel();

    public PackPipelineModel getModel() {
        return model;
    }
    
    
    
    public  Map<String, String> getValues(HttpServletRequest request) throws Exception{
         
        //Input Data
        String gasavetemp_pap = request.getParameter("gasavetemp_pap");
        String basep_pap = request.getParameter("basep_pap");
        String upstreamp_pap = request.getParameter("upstreamp_pap");
        String lenghtp_pap = request.getParameter("lenghtp_pap");
        String downstreamp_pap = request.getParameter("downstreamp_pap");
        String internalp_pap = request.getParameter("internalp_pap");
        String gst_pap = request.getParameter("gst_pap");
        String description_pap = request.getParameter("description_pap");
        
        //Results
        String averagep_pap = request.getParameter("averagep_pap");
        String averagec_pap = request.getParameter("averagec_pap");
        String packg_pap = request.getParameter("packg_pap");
        
        //unidades y otros
        String pipe_rad_pap = request.getParameter("pipe_rad_pap");
        String nomps_sel_pap = request.getParameter("nomps_sel_pap");
        String lp_sel_pap = request.getParameter("lp_sel_pap");
        String dp_sel_pap = request.getParameter("dp_sel_pap");
        String ip_sel_pap = request.getParameter("ip_sel_pap");
        String wallt_sel_pap = request.getParameter("wallt_sel_pap");
        String gat_sel_pap = request.getParameter("gat_sel_pap");
        String bp_sel_pap = request.getParameter("bp_sel_pap");
        String up_sel_pap = request.getParameter("up_sel_pap");
        String h_pap = request.getParameter("h_pap");
        String h_sel_pap = request.getParameter("h_sel_pap");
        
        //ids
        String id_proyect = request.getParameter("idproyect");
        String iduser = request.getParameter("iduser");
        
        Map<String, String> values = new HashMap<String, String>();
                
        try
        {
            values.put("h_pap", stringToBD(h_pap.trim()));
            values.put("h_sel_pap", stringToBD(h_sel_pap.trim()));
            values.put("gasavetemp_pap", stringToBD(gasavetemp_pap.trim()));
            values.put("basep_pap", stringToBD(basep_pap.trim()));
            values.put("upstreamp_pap", stringToBD(upstreamp_pap.trim()));
            values.put("downstreamp_pap", stringToBD(downstreamp_pap.trim()));
            values.put("internalp_pap", stringToBD(internalp_pap.trim()));
            values.put("lenghtp_pap", stringToBD(lenghtp_pap.trim()));
            values.put("gst_pap", stringToBD(gst_pap.trim()));
            values.put("description_pap", stringToBD(description_pap.trim()));
            
            //unidades y otros
            values.put("pipe_rad_pap", stringToBD(pipe_rad_pap.trim()));
            values.put("nomps_sel_pap", stringToBD(nomps_sel_pap.trim()));
            values.put("wallt_sel_pap", stringToBD(wallt_sel_pap.trim()));
            values.put("gat_sel_pap", stringToBD(gat_sel_pap.trim()));
            values.put("bp_sel_pap", stringToBD(bp_sel_pap.trim()));
            values.put("up_sel_pap", stringToBD(up_sel_pap.trim()));
            values.put("dp_sel_pap", stringToBD(dp_sel_pap.trim()));
            values.put("ip_sel_pap", stringToBD(ip_sel_pap.trim()));
            values.put("lp_sel_pap", stringToBD(lp_sel_pap.trim()));
            
            //Results
            values.put("averagep_pap", stringToBD(averagep_pap.trim()));
            values.put("averagec_pap", stringToBD(averagec_pap.trim()));
            values.put("packg_pap", stringToBD(packg_pap.trim()));
            
            values.put("id_proyect", id_proyect.trim());
            values.put("id_user", iduser.trim());
        }catch(Exception ex){
            throw new Exception(ex.getMessage());
        }
       
       return values;
        
    }
       
}

