/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Pipeline;

import Model.ComboModel;
import Model.GeneralModel;
import Model.Pipeline.AdiabaticHeadModel;
import java.util.HashMap;
import java.util.Map;
import java.util.Vector;
import javax.servlet.http.HttpServletRequest;
import org.json.JSONObject;
/**
 *
 * @author kata__000
 */
public class AdiabaticHeadController extends Controller.Controller  {
    
    private final AdiabaticHeadModel model = new AdiabaticHeadModel();

    public  Map<String, String> getValues(HttpServletRequest request) throws Exception{
        
        Map<String, String[]> val = request.getParameterMap();
        
         //Input Data
        String description_ah = request.getParameter("description_ah");
        String enteree_ah = request.getParameter("enteree_ah");
        String z1s_ah = request.getParameter("z1s_ah");
        String opz_ah = request.getParameter("opz_ah");
        String basetemperature_ah = request.getParameter("basetemperature_ah");
        String bt_sel_ah = request.getParameter("bt_sel_ah");
        String basepressure_ah = request.getParameter("basepressure_ah");
        String bp_sel_ah = request.getParameter("bp_sel_ah");
        String suctionp_ah = request.getParameter("suctionp_ah");
        String sp_sel_ah = request.getParameter("sp_sel_ah");
        String suctiont_ah = request.getParameter("suctiont_ah");
        String st_sel_ah = request.getParameter("st_sel_ah");
        String dischargep_ah = request.getParameter("dischargep_ah");
        String dp_sel_ah = request.getParameter("dp_sel_ah");
        String gass_ah = request.getParameter("gass_ah");
        String adiabatice_ah = request.getParameter("adiabatice_ah");
        String gs_sel_ah = request.getParameter("gs_sel_ah");
        String gst_ah = request.getParameter("gst_ah");
        String na_ah = request.getParameter("na_ah");
                
        
         //Results
        String discharget_ah = request.getParameter("discharget_ah");
        String z1_ah = request.getParameter("z1_ah");
        String adiabatich_ah = request.getParameter("adiabatich_ah");
        String adiabaticghp_ah = request.getParameter("adiabaticghp_ah");
        
        //ids
        String id_proyect = request.getParameter("idproyect");
        String iduser = request.getParameter("iduser");
       
        Map<String, String> values = new HashMap<String, String>();
                
        try
        {
            values.put("description_ah", stringToBD(description_ah.trim()));
            values.put("z1s_ah", stringToBD(z1s_ah.trim()));
            values.put("opz_ah",  stringToBD(opz_ah.trim()));
            values.put("basetemperature_ah",  stringToBD(basetemperature_ah.trim()));
            values.put("bt_sel_ah",  stringToBD(bt_sel_ah.trim()));
            values.put("basepressure_ah",  stringToBD(basepressure_ah.trim()));
            values.put("bp_sel_ah",  stringToBD(bp_sel_ah.trim()));
            values.put("suctionp_ah",  stringToBD(suctionp_ah.trim()));
            values.put("sp_sel_ah",  stringToBD(sp_sel_ah.trim()));
            values.put("suctiont_ah",  stringToBD(suctiont_ah.trim()));
            values.put("st_sel_ah",  stringToBD(st_sel_ah.trim()));
            values.put("dischargep_ah",  stringToBD(dischargep_ah.trim()));
            values.put("dp_sel_ah",  stringToBD(dp_sel_ah.trim()));
            values.put("gass_ah",  stringToBD(gass_ah.trim()));
            values.put("gs_sel_ah",  stringToBD(gs_sel_ah.trim()));
            values.put("gst_ah",  stringToBD(gst_ah.trim()));
            values.put("adiabatice_ah",  stringToBD(adiabatice_ah.trim()));
            values.put("enteree_ah",  stringToBD(enteree_ah.trim()));
            values.put("na_ah",  stringToBD(na_ah.trim()));
            
            values.put("discharget_ah",  stringToBD(discharget_ah.trim()));
            values.put("z1_ah",  stringToBD(z1_ah.trim()));
            values.put("adiabatich_ah",  stringToBD(adiabatich_ah.trim()));
            values.put("adiabaticghp_ah",  stringToBD(adiabaticghp_ah.trim()));
            
            values.put("id_proyect", id_proyect.trim());
            values.put("id_user", iduser.trim());
            
        }catch(Exception ex){
            throw new Exception(ex.getMessage());
        }
       
       return values;
        
    }
    
    public String loadSuggestedAdiabaticHead(String idProyect) throws Exception{  
        return ((AdiabaticHeadModel)model).loadSuggested(idProyect);
    }
    
    public AdiabaticHeadModel getModel(){
        return model;
    }
     
}
