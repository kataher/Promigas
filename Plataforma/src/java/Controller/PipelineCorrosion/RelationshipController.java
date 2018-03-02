

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.PipelineCorrosion;

import Model.ComboModel;
import Model.PipelineCorrosion.RelationshipModel;
import java.util.HashMap;
import java.util.Map;
import java.util.Vector;
import javax.servlet.http.HttpServletRequest;
import org.json.JSONObject;

/**
 *
 * @author kata__000
 */
public class RelationshipController extends Controller.Controller{
    
    private final RelationshipModel model = new RelationshipModel();

    public RelationshipModel getModel() {
        return model;
    }
    
    public  Map<String, String> getValues(HttpServletRequest request) throws Exception{
        
         //Input Data
        String description_rel = request.getParameter("description_rel");
        String electrolyter_rel = request.getParameter("electrolyter_rel");
        String distancee_rel = request.getParameter("distancee_rel");
        String crosss_rel = request.getParameter("crosss_rel");
        String er_sel_rel = request.getParameter("er_sel_rel");
        String de_sel_rel = request.getParameter("de_sel_rel");
        String cs_sel_rel = request.getParameter("cs_sel_rel");
        String electr_rel = request.getParameter("electr_rel");
                
        //ids
        String id_proyect = request.getParameter("idproyect");
        String iduser = request.getParameter("iduser");
       
        Map<String, String> values = new HashMap<String, String>();
                
        try
        {
            values.put("description_rel", stringToBD(description_rel.trim()));
            values.put("electrolyter_rel", stringToBD(electrolyter_rel.trim()));
            values.put("distancee_rel",  stringToBD(distancee_rel.trim()));
            values.put("crosss_rel",  stringToBD(crosss_rel.trim()));
            values.put("er_sel_rel",  stringToBD(er_sel_rel.trim()));
            values.put("de_sel_rel",  stringToBD(de_sel_rel.trim()));
            values.put("cs_sel_rel",  stringToBD(cs_sel_rel.trim()));
            values.put("electr_rel",  stringToBD(electr_rel.trim()));
            
            values.put("id_proyect", id_proyect.trim());
            values.put("id_user", iduser.trim());
            
        }catch(Exception ex){
            throw new Exception(ex.getMessage());
        }
       
       return values;
        
    }
      
      
       
}

