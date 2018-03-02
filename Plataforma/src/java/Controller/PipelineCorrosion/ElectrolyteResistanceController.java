

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.PipelineCorrosion;


import Model.PipelineCorrosion.ElectricalResistanceModel;
import Model.PipelineCorrosion.ElectrolyteResistanceModel;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author kata__000
 */
public class ElectrolyteResistanceController extends Controller.Controller{
    
    private final ElectrolyteResistanceModel model = new ElectrolyteResistanceModel();

    public ElectrolyteResistanceModel getModel() {
        return model;
    }
    
    
    
    public  Map<String, String> getValues(HttpServletRequest request) throws Exception{
        
         //Input Data
        String description_ere = request.getParameter("description_ere");
        String electrolyter_ere = request.getParameter("electrolyter_ere");
        String distancec_ere = request.getParameter("distancec_ere");
        String geof_ere = request.getParameter("geof_ere");
        
        String er_sel_ere = request.getParameter("er_sel_ere");
        String dc_sel_ere = request.getParameter("dc_sel_ere");
        String dr_sel_ere = request.getParameter("dr_sel_ere");
        String resise_ere = request.getParameter("resise_ere");
        
        //ids
        String id_proyect = request.getParameter("idproyect");
        String iduser = request.getParameter("iduser");
       
        Map<String, String> values = new HashMap<String, String>();
                
        try
        {
            values.put("description_ere", stringToBD(description_ere.trim()));
            values.put("electrolyter_ere", stringToBD(electrolyter_ere.trim()));
            values.put("distancec_ere",  stringToBD(distancec_ere.trim()));
            values.put("geof_ere",  stringToBD(geof_ere.trim()));
            values.put("er_sel_ere",  stringToBD(er_sel_ere.trim()));
            values.put("dc_sel_ere",  stringToBD(dc_sel_ere.trim()));
            values.put("dr_sel_ere",  stringToBD(dr_sel_ere.trim()));
            values.put("resise_ere",  stringToBD(resise_ere.trim()));
            
            values.put("id_proyect", id_proyect.trim());
            values.put("id_user", iduser.trim());
            
        }catch(Exception ex){
            throw new Exception(ex.getMessage());
        }
       
       return values;
        
    }
      
      
       
}

