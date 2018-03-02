

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.PipelineCorrosion;

import Model.PipelineCorrosion.OhmModel;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author kata__000
 */
public class OhmController extends Controller.Controller{
    
    private final OhmModel model = new OhmModel();

    public OhmModel getModel() {
        return model;
    }
    
    
    
    public  Map<String, String> getValues(HttpServletRequest request) throws Exception{
        
         //Input Data
        String description_ohm = request.getParameter("description_ohm");
        String potentiald_ohm = request.getParameter("potentiald_ohm");
        String potentiale_ohm = request.getParameter("potentiale_ohm");
        String geometryc_ohm = request.getParameter("geometryc_ohm");
        String geometrya_ohm = request.getParameter("geometrya_ohm");
        String averages_ohm = request.getParameter("averages_ohm");
        String pd_sel_ohm = request.getParameter("pd_sel_ohm");
        String pe_sel_ohm = request.getParameter("pe_sel_ohm");
        String as_sel_ohm = request.getParameter("as_sel_ohm");
        String corrosionc_ohm = request.getParameter("corrosionc_ohm");
                
        //ids
        String id_proyect = request.getParameter("idproyect");
        String iduser = request.getParameter("iduser");
       
        Map<String, String> values = new HashMap<String, String>();
                
        try
        {
            values.put("description_ohm", stringToBD(description_ohm.trim()));
            values.put("potentiald_ohm", stringToBD(potentiald_ohm.trim()));
            values.put("potentiale_ohm",  stringToBD(potentiale_ohm.trim()));
            values.put("geometryc_ohm",  stringToBD(geometryc_ohm.trim()));
            values.put("geometrya_ohm",  stringToBD(geometrya_ohm.trim()));
            values.put("averages_ohm",  stringToBD(averages_ohm.trim()));
            values.put("pd_sel_ohm",  stringToBD(pd_sel_ohm.trim()));
            values.put("pe_sel_ohm",  stringToBD(pe_sel_ohm.trim()));
            values.put("as_sel_ohm",  stringToBD(as_sel_ohm.trim()));
            values.put("corrosionc_ohm",  stringToBD(corrosionc_ohm.trim()));
            
            values.put("id_proyect", id_proyect.trim());
            values.put("id_user", iduser.trim());
            
        }catch(Exception ex){
            throw new Exception(ex.getMessage());
        }
       
       return values;
        
    }
      
      
       
}

