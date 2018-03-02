

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.PipelineCorrosion;

import Model.ComboModel;
import Model.PipelineCorrosion.ElectricalResistanceModel;
import java.util.HashMap;
import java.util.Map;
import java.util.Vector;
import javax.servlet.http.HttpServletRequest;
import org.json.JSONObject;

/**
 *
 * @author kata__000
 */
public class ElectricalResistanceController extends Controller.Controller{
    
    private final ElectricalResistanceModel model = new ElectricalResistanceModel();

    public ElectricalResistanceModel getModel() {
        return model;
    }
    
    

    public  Map<String, String> getValues(HttpServletRequest request) throws Exception{
        
         //Input Data
        String description_elr = request.getParameter("description_elr");
        String cross_elr = request.getParameter("cross_elr");
        String length_elr = request.getParameter("length_elr");
        String conductorr_elr = request.getParameter("conductorr_elr");
        String le_sel_elr = request.getParameter("le_sel_elr");
        String cs_sel_elr = request.getParameter("cs_sel_elr");
        String cr_sel_elr = request.getParameter("cr_sel_elr");
        String elecr_elr = request.getParameter("elecr_elr");
        
                
        //ids
        String id_proyect = request.getParameter("idproyect");
        String iduser = request.getParameter("iduser");
       
        Map<String, String> values = new HashMap<String, String>();
                
        try
        {
            values.put("description_elr", stringToBD(description_elr.trim()));
            values.put("cross_elr", stringToBD(cross_elr.trim()));
            values.put("length_elr",  stringToBD(length_elr.trim()));
            values.put("conductorr_elr",  stringToBD(conductorr_elr.trim()));
            values.put("le_sel_elr",  stringToBD(le_sel_elr.trim()));
            values.put("cs_sel_elr",  stringToBD(cs_sel_elr.trim()));
            values.put("cr_sel_elr",  stringToBD(cr_sel_elr.trim()));
            values.put("elecr_elr",  stringToBD(elecr_elr.trim()));
            
            values.put("id_proyect", id_proyect.trim());
            values.put("id_user", iduser.trim());
            
        }catch(Exception ex){
            throw new Exception(ex.getMessage());
        }
       
       return values;
        
    }
      
      
       
}

