/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Pipeline;

import Model.ComboModel;
import Model.Pipeline.ReinforcementWeldModel;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
/**
 *
 * @author kata__000
 */
public class ReinforcementWeldController extends Controller.Controller{
    
    private final ReinforcementWeldModel model = new ReinforcementWeldModel();
    
    public ReinforcementWeldModel getModel(){
        return model;
    }
    
    public  Map<String, String> getValues(HttpServletRequest request) throws Exception{
          //Input Data
        String description_rwb = request.getParameter("description_rwb");
        String selh_rwb = request.getParameter("selh_rwb");
        String selb_rwb = request.getParameter("selb_rwb");
        String p1_rwb = request.getParameter("p1_rwb");
        String temp_rwb = request.getParameter("temp_rwb");
        String df_rwb = request.getParameter("df_rwb");
        String h_rwb = request.getParameter("h_rwb");
        String tar_rwb = request.getParameter("tar_rwb");
        String odh_rwb = request.getParameter("odh_rwb");
        String nwtb_rwb = request.getParameter("nwtb_rwb");
        String smys_rwb = request.getParameter("smys_rwb");
        String ljf_rwb = request.getParameter("ljf_rwb");
        String bodh_rwb = request.getParameter("bodh_rwb");
        String bnwtb_rwb = request.getParameter("bnwtb_rwb");
        String smys2_rwb = request.getParameter("smys2_rwb");
        String ljf1_rwb = request.getParameter("ljf1_rwb");
        String mrod_rwb = request.getParameter("mrod_rwb");
        String rsmys_rwb = request.getParameter("rsmys_rwb");
        
        String eerr_rwb = request.getParameter("eerr_rwb");
        String lmrr_rwb = request.getParameter("lmrr_rwb");
        String dmrr_rwb = request.getParameter("dmrr_rwb");
        String rwtoth_rwb = request.getParameter("rwtoth_rwb");
        String etithw_rwb = request.getParameter("etithw_rwb");
        
        String rwtotb_rwb = request.getParameter("rwtotb_rwb");
        String etitb_rwb = request.getParameter("etitb_rwb");
        String arrr_rwb = request.getParameter("arrr_rwb");
        String a1rr_rwb = request.getParameter("a1rr_rwb");
        String lheight_rwb = request.getParameter("lheight_rwb");
        String a2eaibo_rwb = request.getParameter("a2eaibo_rwb");
        String a2cea_rwb = request.getParameter("a2cea_rwb");
        String a3ra_rwb = request.getParameter("a3ra_rwb");
        String appa_rwb = request.getParameter("appa_rwb");
        String temp_sel_rwb = request.getParameter("temp_sel_rwb");
        String df_sel_rwb = request.getParameter("df_sel_rwb");
        String p1_sel_rwb = request.getParameter("p1_sel_rwb");
        String nominalps_sel_rwb = request.getParameter("nominalps_sel_rwb");
        String grade_sel_rwb = request.getParameter("grade_sel_rwb");
        String wthi_sel_rwb = request.getParameter("wthi_sel_rwb");
        String longitudinal_jf_rwb = request.getParameter("longitudinal_jf_rwb");
        String nominalps_sel_rwb1 = request.getParameter("nominalps_sel_rwb1");
        String grade_sel_rwb1 = request.getParameter("grade_sel_rwb1");
        String wthi_sel1_rwb = request.getParameter("wthi_sel1_rwb");
        String longitudinal_jf1_rwb = request.getParameter("longitudinal_jf1_rwb");
        String mrod_sel_rwb = request.getParameter("mrod_sel_rwb");
        
        //ids
        String id_proyect = request.getParameter("idproyect");
        String iduser = request.getParameter("iduser");
       
        Map<String, String> values = new HashMap<String, String>();
                
        try
        {
            values.put("description_rwb", stringToBD(description_rwb.trim()));
            values.put("selb_rwb", stringToBD(selb_rwb.trim()));
            values.put("p1_rwb",  stringToBD(p1_rwb.trim()));
            values.put("temp_rwb",  stringToBD(temp_rwb.trim()));
            values.put("df_rwb",  stringToBD(df_rwb.trim()));
            values.put("h_rwb",  stringToBD(h_rwb.trim()));
            values.put("tar_rwb",  stringToBD(tar_rwb.trim()));
            values.put("odh_rwb",  stringToBD(odh_rwb.trim()));
            values.put("nwtb_rwb",  stringToBD(nwtb_rwb.trim()));
            values.put("smys_rwb",  stringToBD(smys_rwb.trim()));
            values.put("ljf_rwb",  stringToBD(ljf_rwb.trim()));
            values.put("bodh_rwb",  stringToBD(bodh_rwb.trim()));
            values.put("bnwtb_rwb",  stringToBD(bnwtb_rwb.trim()));
            values.put("smys2_rwb",  stringToBD(smys2_rwb.trim()));
            values.put("mrod_rwb",  stringToBD(mrod_rwb.trim()));
            values.put("rsmys_rwb",  stringToBD(rsmys_rwb.trim()));
            values.put("ljf1_rwb",  stringToBD(ljf1_rwb.trim()));
            values.put("selh_rwb",  stringToBD(selh_rwb.trim()));
            values.put("eerr_rwb",  stringToBD(eerr_rwb.trim()));
            
            values.put("lmrr_rwb",  stringToBD(lmrr_rwb.trim()));
            values.put("dmrr_rwb",  stringToBD(dmrr_rwb.trim()));
            values.put("rwtoth_rwb",  stringToBD(rwtoth_rwb.trim()));
            values.put("etithw_rwb",  stringToBD(etithw_rwb.trim()));
            
            values.put("rwtotb_rwb",  stringToBD(rwtotb_rwb.trim()));
            values.put("etitb_rwb",  stringToBD(etitb_rwb.trim()));
            values.put("arrr_rwb",  stringToBD(arrr_rwb.trim()));
            values.put("a1rr_rwb",  stringToBD(a1rr_rwb.trim()));
            values.put("lheight_rwb",  stringToBD(lheight_rwb.trim()));
            values.put("a2eaibo_rwb",  stringToBD(a2eaibo_rwb.trim()));
            values.put("a2cea_rwb",  stringToBD(a2cea_rwb.trim()));
            values.put("a3ra_rwb",  stringToBD(a3ra_rwb.trim()));
            values.put("appa_rwb",  stringToBD(appa_rwb.trim()));
            values.put("temp_sel_rwb",  stringToBD(temp_sel_rwb.trim()));
            values.put("df_sel_rwb",  stringToBD(df_sel_rwb.trim()));
            values.put("p1_sel_rwb",  stringToBD(p1_sel_rwb.trim()));
            
            values.put("nominalps_sel_rwb",  stringToBD(nominalps_sel_rwb.trim()));
            values.put("grade_sel_rwb",  stringToBD(grade_sel_rwb.trim()));
            values.put("wthi_sel_rwb",  stringToBD(wthi_sel_rwb.trim()));
            values.put("longitudinal_jf_rwb",  stringToBD(longitudinal_jf_rwb.trim()));
            values.put("nominalps_sel_rwb1",  stringToBD(nominalps_sel_rwb1.trim()));
            values.put("grade_sel_rwb1",  stringToBD(grade_sel_rwb1.trim()));
            values.put("wthi_sel1_rwb",  stringToBD(wthi_sel1_rwb.trim()));
            values.put("longitudinal_jf1_rwb",  stringToBD(longitudinal_jf1_rwb.trim()));
            values.put("mrod_sel_rwb",  stringToBD(mrod_sel_rwb.trim()));
            
            values.put("id_proyect", id_proyect.trim());
            values.put("id_user", iduser.trim());
            
        }catch(Exception ex){
            throw new Exception(ex.getMessage());
        }
       
       return values;
    }
       
}
