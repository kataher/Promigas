

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.PipelineCorrosion;

import Model.ComboModel;
import Model.PipelineCorrosion.RateofElectricalModel;
import java.util.HashMap;
import java.util.Map;
import java.util.Vector;
import javax.servlet.http.HttpServletRequest;
import org.json.JSONObject;

/**
 *
 * @author kata__000
 */
public class RateofElectricalController extends Controller.Controller{
    
    private final RateofElectricalModel model = new RateofElectricalModel();

    public RateofElectricalModel getModel() {
        return model;
    }
    
    public  Map<String, String> getValues(HttpServletRequest request) throws Exception{
        
         //Input Data
        String description_re = request.getParameter("description_re");
        String potentialc_re = request.getParameter("potentialc_re");
        String potentiala_re = request.getParameter("potentiala_re");
        String totalr_re = request.getParameter("totalr_re");
        String pc_sel_re = request.getParameter("pc_sel_re");
        String pa_sel_re = request.getParameter("pa_sel_re");
        String tr_sel_re = request.getParameter("tr_sel_re");
        String ratee_re = request.getParameter("ratee_re");
                
        //ids
        String id_proyect = request.getParameter("idproyect");
        String iduser = request.getParameter("iduser");
       
        Map<String, String> values = new HashMap<String, String>();
                
        try
        {
            values.put("description_re", stringToBD(description_re.trim()));
            values.put("potentialc_re", stringToBD(potentialc_re.trim()));
            values.put("potentiala_re",  stringToBD(potentiala_re.trim()));
            values.put("totalr_re",  stringToBD(totalr_re.trim()));
            values.put("pc_sel_re",  stringToBD(pc_sel_re.trim()));
            values.put("pa_sel_re",  stringToBD(pa_sel_re.trim()));
            values.put("tr_sel_re",  stringToBD(tr_sel_re.trim()));
            values.put("ratee_re",  stringToBD(ratee_re.trim()));
            
            values.put("id_proyect", id_proyect.trim());
            values.put("id_user", iduser.trim());
            
        }catch(Exception ex){
            throw new Exception(ex.getMessage());
        }
       
       return values;
        
    }
      
      
       
}

