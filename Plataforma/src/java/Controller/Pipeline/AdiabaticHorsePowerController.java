/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Pipeline;

import Model.Pipeline.AdiabaticHeadModel;
import Model.Pipeline.AdiabaticHorsePowerModel;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
/**
 *
 * @author kata__000
 */
public class AdiabaticHorsePowerController extends Controller.Controller{
    
    private final AdiabaticHorsePowerModel model = new AdiabaticHorsePowerModel();

    public AdiabaticHorsePowerModel getModel() {
        return model;
    }
    
    public  Map<String, String> getValues(HttpServletRequest request) throws Exception{
        
        //Input Data
        
        String description_ahp = request.getParameter("description_ahp");
        String opz_ahp = request.getParameter("opz_ahp");
        String z1s_ahp = request.getParameter("z1s_ahp");
        String z2d_ahp = request.getParameter("z2d_ahp");
        String basepressure_ahp = request.getParameter("basepressure_ahp");
        String basetemperature_ahp = request.getParameter("basetemperature_ahp");
        String suctionp_ahp = request.getParameter("suctionp_ahp");
        String suctiont_ahp = request.getParameter("suctiont_ahp");
        String dischargep_ahp = request.getParameter("dischargep_ahp");
        String capacityr_ahp = request.getParameter("capacityr_ahp");
        String gass_ahp = request.getParameter("gass_ahp");
        String adiabatice_ahp = request.getParameter("adiabatice_ahp");
        String gs_sel_ahp = request.getParameter("gs_sel_ahp");
        String gst_ahp = request.getParameter("gst_ahp");
        String mechanicale_ahp = request.getParameter("mechanicale_ahp"); 
        String bt_sel_ahp = request.getParameter("bt_sel_ahp");
        String bp_sel_ahp = request.getParameter("bp_sel_ahp");
        String sp_sel_ahp = request.getParameter("sp_sel_ahp");
        String st_sel_ahp = request.getParameter("st_sel_ahp");
        String dp_sel_ahp = request.getParameter("dp_sel_ahp");
        String cr_sel_ahp = request.getParameter("cr_sel_ahp");
        String enteree_ahp = request.getParameter("enteree_ahp");
        
        //Results
        String discharget_ahp = request.getParameter("discharget_ahp");        
        String z1_ahp = request.getParameter("z1_ahp");        
        String adiabatich_ahp = request.getParameter("adiabatich_ahp");        
        String adiabaticghp_ahp = request.getParameter("adiabaticghp_ahp");        
        String ghp_ahp = request.getParameter("ghp_ahp");        
        String bhp_ahp = request.getParameter("bhp_ahp");       
        String acfm_ahp = request.getParameter("acfm_ahp");
        
        //ids
        String id_proyect = request.getParameter("idproyect");
        String iduser = request.getParameter("iduser");
        
       
        Map<String, String> values = new HashMap<String, String>();
                
        try
        {
            values.put("description_ahp", stringToBD(description_ahp.trim()));
            values.put("z1s_ahp", stringToBD(z1s_ahp.trim()));
            values.put("z2d_ahp", stringToBD(z2d_ahp.trim()));
            values.put("opz_ahp",  stringToBD(opz_ahp.trim()));
            values.put("basetemperature_ahp",  stringToBD(basetemperature_ahp.trim()));
            values.put("bt_sel_ahp",  stringToBD(bt_sel_ahp.trim()));
            values.put("basepressure_ahp",  stringToBD(basepressure_ahp.trim()));
            values.put("bp_sel_ahp",  stringToBD(bp_sel_ahp.trim()));
            values.put("suctionp_ahp",  stringToBD(suctionp_ahp.trim()));
            values.put("sp_sel_ahp",  stringToBD(sp_sel_ahp.trim()));
            values.put("suctiont_ahp",  stringToBD(suctiont_ahp.trim()));
            values.put("st_sel_ahp",  stringToBD(st_sel_ahp.trim()));
            values.put("dischargep_ahp",  stringToBD(dischargep_ahp.trim()));
            values.put("capacityr_ahp",  stringToBD(capacityr_ahp.trim()));
            values.put("dp_sel_ahp",  stringToBD(dp_sel_ahp.trim()));
            values.put("gass_ahp",  stringToBD(gass_ahp.trim()));
            values.put("gs_sel_ahp",  stringToBD(gs_sel_ahp.trim()));
            values.put("gst_ahp",  stringToBD(gst_ahp.trim()));
            values.put("adiabatice_ahp",  stringToBD(adiabatice_ahp.trim()));
            values.put("mechanicale_ahp",  stringToBD(mechanicale_ahp.trim()));
            values.put("adiabatice_ahp",  stringToBD(adiabatice_ahp.trim()));
            
            values.put("ghp_ahp",  stringToBD(ghp_ahp.trim()));
            values.put("bhp_ahp",  stringToBD(bhp_ahp.trim()));
            values.put("acfm_ahp",  stringToBD(acfm_ahp.trim()));
            values.put("acfm_ahp",  stringToBD(acfm_ahp.trim()));            
            values.put("discharget_ahp",  stringToBD(discharget_ahp.trim()));
            values.put("z1_ahp",  stringToBD(z1_ahp.trim()));
            values.put("adiabatich_ahp",  stringToBD(adiabatich_ahp.trim()));
            values.put("cr_sel_ahp",  stringToBD(cr_sel_ahp.trim()));
            values.put("adiabaticghp_ahp",  stringToBD(adiabaticghp_ahp.trim()));
            values.put("enteree_ahp",  stringToBD(enteree_ahp.trim()));
            
            values.put("id_proyect", id_proyect.trim());
            values.put("id_user", iduser.trim());
            
        }catch(Exception ex){
            throw new Exception(ex.getMessage());
        }
       
       return values;
        
    }
}
