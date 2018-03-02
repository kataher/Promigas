

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.PipelineTesting;

import Model.ComboModel;
import Model.PipelineTesting.AlternativeAcceptanceModel;
import java.util.HashMap;
import java.util.Map;
import java.util.Vector;
import javax.servlet.http.HttpServletRequest;
import org.json.JSONObject;

/**
 *
 * @author kata__000
 */
public class AlternativeAcceptanceController extends Controller.Controller{
    
    private final AlternativeAcceptanceModel model = new AlternativeAcceptanceModel();

    public AlternativeAcceptanceModel getModel() {
        return model;
    }
    
    
    
    public  Map<String, String> getValues(HttpServletRequest request) throws Exception{
        
         //Input Data
        String description_alc = request.getParameter("description_alc");
        String poissonr_alc = request.getParameter("poissonr_alc");
        String young_alc = request.getParameter("young_alc");
        String nps_alc = request.getParameter("nps_alc");
        String nominalo_alc = request.getParameter("nominalo_alc");
        String nominalt_alc = request.getParameter("nominalt_alc");
        String grade_alc = request.getParameter("grade_alc");
        String specificmy_alc = request.getParameter("specificmy_alc");
        String minctod_alc = request.getParameter("minctod_alc");
        String applieds_alc = request.getParameter("applieds_alc");
        String pipe_rad_alc = request.getParameter("pipe_rad_alc");
        String nomps_sel_alc = request.getParameter("nomps_sel_alc");
        String grade_sel_alc = request.getParameter("grade_sel_alc");
        String wallt_sel_alc = request.getParameter("wallt_sel_alc");
        String nt_sel_alc = request.getParameter("nt_sel_alc");
        String young_sel_alc = request.getParameter("young_sel_alc");
        String no_sel_alc = request.getParameter("no_sel_alc");
        String my_sel_alc = request.getParameter("my_sel_alc");
        String mctod_sel_alc = request.getParameter("mctod_sel_alc");
        String as_sel_alc = request.getParameter("as_sel_alc");
                
        //ids
        String id_proyect = request.getParameter("idproyect");
        String iduser = request.getParameter("iduser");
       
        Map<String, String> values = new HashMap<String, String>();
                
        try
        {
            values.put("description_alc", stringToBD(description_alc.trim()));
            values.put("poissonr_alc", stringToBD(poissonr_alc.trim()));
            values.put("young_alc",  stringToBD(young_alc.trim()));
            values.put("nps_alc",  stringToBD(nps_alc.trim()));
            values.put("nominalo_alc",  stringToBD(nominalo_alc.trim()));
            values.put("nominalt_alc",  stringToBD(nominalt_alc.trim()));
            values.put("grade_alc",  stringToBD(grade_alc.trim()));
            values.put("specificmy_alc",  stringToBD(specificmy_alc.trim()));
            values.put("minctod_alc",  stringToBD(minctod_alc.trim()));
            values.put("applieds_alc",  stringToBD(applieds_alc.trim()));
            values.put("pipe_rad_alc",  stringToBD(pipe_rad_alc.trim()));
            values.put("nomps_sel_alc",  stringToBD(nomps_sel_alc.trim()));
            values.put("grade_sel_alc",  stringToBD(grade_sel_alc.trim()));
            values.put("wallt_sel_alc",  stringToBD(wallt_sel_alc.trim()));
            values.put("young_sel_alc",  stringToBD(young_sel_alc.trim()));
            values.put("nt_sel_alc",  stringToBD(nt_sel_alc.trim()));
            values.put("no_sel_alc",  stringToBD(no_sel_alc.trim()));
            values.put("my_sel_alc",  stringToBD(my_sel_alc.trim()));
            values.put("mctod_sel_alc",  stringToBD(mctod_sel_alc.trim()));
            values.put("as_sel_alc",  stringToBD(as_sel_alc.trim()));
            
            values.put("id_proyect", id_proyect.trim());
            values.put("id_user", iduser.trim());
            
        }catch(Exception ex){
            throw new Exception(ex.getMessage());
        }
       
       return values;
        
    }
      
      
       
}

