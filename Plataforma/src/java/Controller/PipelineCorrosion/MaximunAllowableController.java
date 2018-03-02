

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.PipelineCorrosion;

import Model.ComboModel;
import Model.PipelineCorrosion.MaximunAllowableModel;
import java.util.HashMap;
import java.util.Map;
import java.util.Vector;
import javax.servlet.http.HttpServletRequest;
import org.json.JSONObject;

/**
 *
 * @author kata__000
 */
public class MaximunAllowableController extends Controller.Controller{
    
    private final MaximunAllowableModel model = new MaximunAllowableModel();

    public MaximunAllowableModel getModel() {
        return model;
    }
    
    public  Map<String, String> getValues(HttpServletRequest request) throws Exception{
        
         //Input Data
        String description_mal = request.getParameter("description_mal");
        String maximund_mal = request.getParameter("maximund_mal");
        String pipeo_mal = request.getParameter("pipeo_mal");
        String nomip_mal = request.getParameter("nomip_mal");
        String md_sel_mal = request.getParameter("md_sel_mal");
        String po_sel_mal = request.getParameter("po_sel_mal");
        String np_sel_mal = request.getParameter("np_sel_mal");
        String maximuna_mal = request.getParameter("maximuna_mal");
                
        //ids
        String id_proyect = request.getParameter("idproyect");
        String iduser = request.getParameter("iduser");
       
        Map<String, String> values = new HashMap<String, String>();
                
        try
        {
            values.put("description_mal", stringToBD(description_mal.trim()));
            values.put("maximund_mal", stringToBD(maximund_mal.trim()));
            values.put("pipeo_mal",  stringToBD(pipeo_mal.trim()));
            values.put("nomip_mal",  stringToBD(nomip_mal.trim()));
            values.put("md_sel_mal",  stringToBD(md_sel_mal.trim()));
            values.put("po_sel_mal",  stringToBD(po_sel_mal.trim()));
            values.put("np_sel_mal",  stringToBD(np_sel_mal.trim()));
            values.put("maximuna_mal",  stringToBD(maximuna_mal.trim()));
            
            
            values.put("id_proyect", id_proyect.trim());
            values.put("id_user", iduser.trim());
            
        }catch(Exception ex){
            throw new Exception(ex.getMessage());
        }
       
       return values;
        
    }
      
      
       
}

