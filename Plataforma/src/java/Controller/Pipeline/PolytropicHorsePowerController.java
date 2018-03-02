/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Pipeline;

import Model.Pipeline.PolytropicHorsePowerModel;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
/**
 *
 * @author kata__000
 */
public class PolytropicHorsePowerController extends Controller.Controller {
    
    private final PolytropicHorsePowerModel model = new PolytropicHorsePowerModel();

    public PolytropicHorsePowerModel getModel() {
        return model;
    }
    
    
    public  Map<String, String> getValues(HttpServletRequest request) throws Exception{
        
         //Input Data
        
        String description_php = request.getParameter("description_php");
        String opz_php = request.getParameter("opz_php");
        String z1s_php = request.getParameter("z1s_php");
        String z2d_php = request.getParameter("z2d_php");
        String enteree_php = request.getParameter("enteree_php");
        String basepressure_php = request.getParameter("basepressure_php");
        String basetemperature_php = request.getParameter("basetemperature_php");
        String suctionp_php = request.getParameter("suctionp_php");
        String suctiont_php = request.getParameter("suctiont_php");
        String dischargep_php = request.getParameter("dischargep_php");
        String capacityr_php = request.getParameter("capacityr_php");
        String gass_php = request.getParameter("gass_php");
        String adiabatice_php = request.getParameter("adiabatice_php");
        String gs_sel_php = request.getParameter("gs_sel_php");
        String gst_php = request.getParameter("gst_php");
        String mechanicale_php = request.getParameter("mechanicale_php"); 
        String polytropice_php = request.getParameter("polytropice_php");
                
        String bt_sel_php = request.getParameter("bt_sel_php");
        String bp_sel_php = request.getParameter("bp_sel_php");
        String sp_sel_php = request.getParameter("sp_sel_php");
        String st_sel_php = request.getParameter("st_sel_php");
        String dp_sel_php = request.getParameter("dp_sel_php");
        String cr_sel_php = request.getParameter("cr_sel_php");
        
        //Results
        
        String polytropicex_php = request.getParameter("polytropicex_php");        
        String discharget_php = request.getParameter("discharget_php");        
        String z1_php = request.getParameter("z1_php");        
        String adiabatich_php = request.getParameter("adiabatich_php");        
        String adiabaticghp_php = request.getParameter("adiabaticghp_php");        
        String ghp_php = request.getParameter("ghp_php");        
        String bhp_php = request.getParameter("bhp_php");       
        String acfm_php = request.getParameter("acfm_php");
        
        //ids
        String id_proyect = request.getParameter("idproyect");
        String iduser = request.getParameter("iduser");
        
       
        Map<String, String> values = new HashMap<String, String>();
                
        try
        {
            values.put("description_php", stringToBD(description_php.trim()));
            values.put("z1s_php", stringToBD(z1s_php.trim()));
            values.put("z2d_php", stringToBD(z2d_php.trim()));
            values.put("opz_php",  stringToBD(opz_php.trim()));
            values.put("enteree_php",  stringToBD(enteree_php.trim()));
            values.put("basetemperature_php",  stringToBD(basetemperature_php.trim()));
            values.put("bt_sel_php",  stringToBD(bt_sel_php.trim()));
            values.put("basepressure_php",  stringToBD(basepressure_php.trim()));
            values.put("bp_sel_php",  stringToBD(bp_sel_php.trim()));
            values.put("suctionp_php",  stringToBD(suctionp_php.trim()));
            values.put("sp_sel_php",  stringToBD(sp_sel_php.trim()));
            values.put("suctiont_php",  stringToBD(suctiont_php.trim()));
            values.put("st_sel_php",  stringToBD(st_sel_php.trim()));
            values.put("dischargep_php",  stringToBD(dischargep_php.trim()));
            values.put("capacityr_php",  stringToBD(capacityr_php.trim()));
            values.put("dp_sel_php",  stringToBD(dp_sel_php.trim()));
            values.put("gass_php",  stringToBD(gass_php.trim()));
            values.put("gs_sel_php",  stringToBD(gs_sel_php.trim()));
            values.put("gst_php",  stringToBD(gst_php.trim()));
            values.put("adiabatice_php",  stringToBD(adiabatice_php.trim()));
            values.put("mechanicale_php",  stringToBD(mechanicale_php.trim()));
            values.put("adiabatice_php",  stringToBD(adiabatice_php.trim()));
            values.put("polytropice_php",  stringToBD(polytropice_php.trim()));
            
            values.put("ghp_php",  stringToBD(ghp_php.trim()));
            values.put("bhp_php",  stringToBD(bhp_php.trim()));
            values.put("acfm_php",  stringToBD(acfm_php.trim()));
            values.put("acfm_php",  stringToBD(acfm_php.trim()));            
            values.put("discharget_php",  stringToBD(discharget_php.trim()));
            values.put("z1_php",  stringToBD(z1_php.trim()));
            values.put("adiabatich_php",  stringToBD(adiabatich_php.trim()));
            values.put("cr_sel_php",  stringToBD(cr_sel_php.trim()));
            values.put("adiabaticghp_php",  stringToBD(adiabaticghp_php.trim()));
            values.put("polytropicex_php",  stringToBD(polytropicex_php.trim()));
            
            values.put("id_proyect", id_proyect.trim());
            values.put("id_user", iduser.trim());
            
            values.put("id_proyect", id_proyect.trim());
            values.put("id_user", iduser.trim());
            
        }catch(Exception ex){
            throw new Exception(ex.getMessage());
        }
       
       return values;
        
    }

       
}
