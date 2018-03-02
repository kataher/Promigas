/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.BuriedPipe;

import Model.BuriedPipe.PostInstallationModel;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author kata__000
 */
public class PostInstallationController extends Controller.Controller{
    
    private final PostInstallationModel model = new PostInstallationModel();

    public PostInstallationModel getModel() {
        return model;
    }
    public  Map<String, String> getValues(HttpServletRequest request) throws Exception{
        
        String intb_poi  = request.getParameter("intb_poi");
        String dbo_poi  = request.getParameter("dbo_poi");
        String uwf_poi  = request.getParameter("uwf_poi");
        String uws_poi  = request.getParameter("uws_poi");
        String ifa_poi  = request.getParameter("ifa_poi");
        String pod_poi  = request.getParameter("pod_poi");
        String sdr_poi  = request.getParameter("sdr_poi");
        String po_poi  = request.getParameter("po_poi");
        String ame_poi  = request.getParameter("ame_poi");
        String pr_poi  = request.getParameter("pr_poi");
        String rac_poi   = request.getParameter("rac_poi");
        String ll_poi  = request.getParameter("ll_poi");
        
        String ep_poi  = request.getParameter("ep_poi");
        String af_poi  = request.getParameter("af_poi");
        String ef_poi  = request.getParameter("ef_poi");
        String bd_poi  = request.getParameter("bd_poi");
        String ocf_poi  = request.getParameter("ocf_poi");
        
        String intb_sel_poi  = request.getParameter("intb_sel_poi");
        String dbo_sel_poi  = request.getParameter("dbo_sel_poi");
        String pod_sel_poi = request.getParameter("pod_sel_poi");
        String rac_sel_poi  = request.getParameter("rac_sel_poi");
        
        
        String description_poi  = request.getParameter("description_poi");
        
        //ids
        String id_proyect = request.getParameter("idproyect");
        String iduser = request.getParameter("iduser");
        
        
        Map<String, String> values = new HashMap<String, String>();
            
        try
        {
            values.put("intb_poi",  stringToBD(intb_poi.trim()));
            values.put("dbo_poi",  stringToBD(dbo_poi.trim()));
            values.put("uwf_poi",  stringToBD(uwf_poi.trim()));
            values.put("uws_poi",  stringToBD(uws_poi.trim()));
            values.put("ifa_poi",  stringToBD(ifa_poi.trim()));
            values.put("pod_poi",  stringToBD(pod_poi.trim()));
            values.put("sdr_poi",  stringToBD(sdr_poi.trim()));
            values.put("po_poi",  stringToBD(po_poi.trim()));
            values.put("ame_poi",  stringToBD(ame_poi.trim()));
            values.put("pr_poi",  stringToBD(pr_poi.trim()));
            values.put("rac_poi ",  stringToBD(rac_poi.trim()));
            values.put("ll_poi",  stringToBD(ll_poi.trim()));
            values.put("ep_poi",  stringToBD(ep_poi.trim()));
            values.put("af_poi",  stringToBD(af_poi.trim()));
            values.put("ef_poi",  stringToBD(ef_poi.trim()));
            values.put("bd_poi",  stringToBD(bd_poi.trim()));
            values.put("ocf_poi",  stringToBD(ocf_poi.trim()));
            values.put("intb_sel_poi",  stringToBD(intb_sel_poi.trim()));
            values.put("dbo_sel_poi",  stringToBD(dbo_sel_poi.trim()));
            values.put("pod_sel_poi" , stringToBD(pod_sel_poi.trim()));
            values.put("rac_sel_poi",  stringToBD(rac_sel_poi.trim()));
            values.put("pr_poi",  stringToBD(pr_poi.trim()));
            
            values.put("description_poi",  stringToBD(description_poi.trim()));
            values.put("id_proyect", id_proyect.trim());
            values.put("id_user", iduser.trim());
            
        }catch(Exception ex){
            throw new Exception(ex.getMessage());
        }
        return values;
    }
}
