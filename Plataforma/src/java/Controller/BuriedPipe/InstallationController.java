/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.BuriedPipe;

import Model.BuriedPipe.InstallationModel;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author kata__000
 */
public class InstallationController extends Controller.Controller{
    
    private final InstallationModel model = new InstallationModel();

    public InstallationModel getModel() {
        return model;
    }
    public  Map<String, String> getValues(HttpServletRequest request) throws Exception{
        
        String pod_ins  = request.getParameter("pod_ins");
        String bd_ins  = request.getParameter("bd_ins");
        String eg_ins  = request.getParameter("eg_ins");
        String sgmd_ins  = request.getParameter("sgmd_ins");
        String paex_ins  = request.getParameter("paex_ins");
        String h_ins  = request.getParameter("h_ins");
        String paecro_ins  = request.getParameter("paecro_ins");
        String apaecro_ins  = request.getParameter("apaecro_ins");
        String l1_ins  = request.getParameter("l1_ins");
        String bac_ins  = request.getParameter("bac_ins");
        String hy_ins   = request.getParameter("hy_ins");
        String cf_ins  = request.getParameter("cf_ins");
        String cfb_ins  = request.getParameter("cfb_ins");
        String cro_ins  = request.getParameter("cro_ins");
        String ampaecro_ins  = request.getParameter("ampaecro_ins");
        String asps_ins  = request.getParameter("asps_ins");
        String uw_ins  = request.getParameter("uw_ins");
        String mpwt_ins  = request.getParameter("mpwt_ins");
        String perp_ins  = request.getParameter("perp_ins");
        String meluw_ins = request.getParameter("meluw_ins");
        String pr_sel_ins  = request.getParameter("pr_sel_ins");
        String pr_ins  = request.getParameter("pr_ins");
        String ae_sel_ins  = request.getParameter("ae_sel_ins");
        String ts_sel_ins = request.getParameter("ts_sel_ins");
        String ts_ins  = request.getParameter("ts_ins");


        String pod_sel_ins  = request.getParameter("pod_sel_ins");
        String h_sel_ins  = request.getParameter("h_sel_ins");
        String l1_sel_ins  = request.getParameter("l1_sel_ins");
        String bac_sel_ins  = request.getParameter("bac_sel_ins");
        String cro_sel_ins  = request.getParameter("cro_sel_ins");
        String mpwt_sel_ins  = request.getParameter("mpwt_sel_ins");

        String we_ins  = request.getParameter("we_ins");
        String wb_ins  = request.getParameter("wb_ins");
        String averex_ins  = request.getParameter("averex_ins");
        String averen_ins  = request.getParameter("averen_ins");
        String bs_ins  = request.getParameter("bs_ins");
        String bst_ins  = request.getParameter("bst_ins");
        String fa_ins  = request.getParameter("fa_ins");
        String fb_ins  = request.getParameter("fb_ins");
        String fc_ins  = request.getParameter("fc_ins");
        String fd_ins  = request.getParameter("fd_ins");
        String aa1_ins  = request.getParameter("aa1_ins");
        String ab1_ins  = request.getParameter("ab1_ins");
        String ac1_ins  = request.getParameter("ac1_ins");
        String ad1_ins  = request.getParameter("ad1_ins");
        String l2_ins  = request.getParameter("l2_ins");
        String l3_ins  = request.getParameter("l3_ins");
        String l4_ins  = request.getParameter("l4_ins");
        String ast_ins  = request.getParameter("ast_ins");
        String sh_ins  = request.getParameter("sh_ins");
        String mp_ins  = request.getParameter("mp_ins");
        String bl_ins  = request.getParameter("bl_ins");
        String oc_ins  = request.getParameter("oc_ins");

        String aa2_ins  = request.getParameter("aa2_ins");
        String ab2_ins  = request.getParameter("ab2_ins");
        String ac2_ins  = request.getParameter("ac2_ins");
        String ad2_ins  = request.getParameter("ad2_ins");
        String description_ins  = request.getParameter("description_ins");
        
        //ids
        String id_proyect = request.getParameter("idproyect");
        String iduser = request.getParameter("iduser");
        
        
        Map<String, String> values = new HashMap<String, String>();
            
        try
        {
            values.put("pod_ins",  stringToBD(pod_ins.trim()));
            values.put("bd_ins",  stringToBD(bd_ins.trim()));
            values.put("eg_ins",  stringToBD(eg_ins.trim()));
            values.put("sgmd_ins",  stringToBD(sgmd_ins.trim()));
            values.put("paex_ins",  stringToBD(paex_ins.trim()));
            values.put("h_ins",  stringToBD(h_ins.trim()));
            values.put("paecro_ins",  stringToBD(paecro_ins.trim()));
            values.put("apaecro_ins",  stringToBD(apaecro_ins.trim()));
            values.put("l1_ins",  stringToBD(l1_ins.trim()));
            values.put("bac_ins",  stringToBD(bac_ins.trim()));
            values.put("hy_ins ",  stringToBD(hy_ins.trim()));
            values.put("cf_ins",  stringToBD(cf_ins.trim()));
            values.put("cfb_ins",  stringToBD(cfb_ins.trim()));
            values.put("cro_ins",  stringToBD(cro_ins.trim()));
            values.put("ampaecro_ins",  stringToBD(ampaecro_ins.trim()));
            values.put("asps_ins",  stringToBD(asps_ins.trim()));
            values.put("uw_ins",  stringToBD(uw_ins.trim()));
            values.put("mpwt_ins",  stringToBD(mpwt_ins.trim()));
            values.put("perp_ins",  stringToBD(perp_ins.trim()));
            values.put("meluw_ins" , stringToBD(meluw_ins.trim()));
            values.put("pr_sel_ins",  stringToBD(pr_sel_ins.trim()));
            values.put("pr_ins",  stringToBD(pr_ins.trim()));
            values.put("ae_sel_ins",  stringToBD(ae_sel_ins.trim()));
            values.put("ts_sel_ins", stringToBD(ts_sel_ins.trim()));
            values.put("ts_ins",  stringToBD(ts_ins.trim()));
            values.put("pod_sel_ins",  stringToBD(pod_sel_ins.trim()));
            values.put("h_sel_ins",  stringToBD(h_sel_ins.trim()));
            values.put("l1_sel_ins",  stringToBD(l1_sel_ins.trim()));
            values.put("bac_sel_ins",  stringToBD(bac_sel_ins.trim()));
            values.put("cro_sel_ins",  stringToBD(cro_sel_ins.trim()));
            values.put("mpwt_sel_ins",  stringToBD(mpwt_sel_ins.trim()));
            values.put("we_ins",  stringToBD(we_ins.trim()));
            values.put("wb_ins",  stringToBD(wb_ins.trim()));
            values.put("averex_ins",  stringToBD(averex_ins.trim()));
            values.put("averen_ins",  stringToBD(averen_ins.trim()));
            values.put("bs_ins",  stringToBD(bs_ins.trim()));
            values.put("bst_ins",  stringToBD(bst_ins.trim()));
            values.put("fa_ins",  stringToBD(fa_ins.trim()));
            values.put("fb_ins",  stringToBD(fb_ins.trim()));
            values.put("fc_ins",  stringToBD(fc_ins.trim()));
            values.put("fd_ins",  stringToBD(fd_ins.trim()));
            values.put("aa1_ins",  stringToBD(aa1_ins.trim()));
            values.put("ab1_ins",  stringToBD(ab1_ins.trim()));
            values.put("ac1_ins",  stringToBD(ac1_ins.trim()));
            values.put("ad1_ins",  stringToBD(ad1_ins.trim()));
            values.put("l2_ins",  stringToBD(l2_ins.trim()));
            values.put("l3_ins",  stringToBD(l3_ins.trim()));
            values.put("l4_ins",  stringToBD(l4_ins.trim()));
            values.put("ast_ins",  stringToBD(ast_ins.trim()));
            values.put("sh_ins",  stringToBD(sh_ins.trim()));
            values.put("mp_ins",  stringToBD(mp_ins.trim()));
            values.put("bl_ins",  stringToBD(bl_ins.trim()));
            values.put("oc_ins",  stringToBD(oc_ins.trim()));
            values.put("aa2_ins",  stringToBD(aa2_ins.trim()));
            values.put("ab2_ins",  stringToBD(ab2_ins.trim()));
            values.put("ac2_ins",  stringToBD(ac2_ins.trim()));
            values.put("ad2_ins",  stringToBD(ad2_ins.trim()));
            values.put("description_ins",  stringToBD(description_ins.trim()));
            values.put("id_proyect", id_proyect.trim());
            values.put("id_user", iduser.trim());
            
        }catch(Exception ex){
            throw new Exception(ex.getMessage());
        }
        return values;
    }
}
