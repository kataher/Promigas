/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Pipeline;

import Model.Pipeline.FanLawsModel;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
/**
 *
 * @author kata__000
 */
public class FanLawsController extends Controller.Controller{
    
    private final FanLawsModel model = new FanLawsModel();

    public FanLawsModel getModel() {
        return model;
    }
    
    public  Map<String, String> getValues(HttpServletRequest request) throws Exception{
        
         //Input Data
        String initialflowrate_fl = request.getParameter("initialflowrate_fl");
        String initialcompressorhead_fl = request.getParameter("initialcompressorhead_fl");
        String initialshafthorsepower_fl = request.getParameter("initialshafthorsepower_fl");
        String initialimpellerrotational_fl = request.getParameter("initialimpellerrotational_fl");
        String finalimpellerrotational_fl = request.getParameter("finalimpellerrotational_fl");
        String if_sel_fl = request.getParameter("if_sel_fl");
        String description_fl = request.getParameter("description_fl");
        
        //Results
        String finalflowrate_fl = request.getParameter("finalflowrate_fl");
        String finalcompressorhead_fl = request.getParameter("finalcompressorhead_fl");
        String finalshafthorsepower_fl = request.getParameter("finalshafthorsepower_fl");
        
        //ids
        String id_proyect = request.getParameter("idproyect");
        String iduser = request.getParameter("iduser");
        
        
        Map<String, String> values = new HashMap<String, String>();
            
        try
        {
            values.put("initialflowrate_fl", stringToBD(initialflowrate_fl.trim()));
            values.put("initialcompressorhead_fl", stringToBD(initialcompressorhead_fl.trim()));
            values.put("initialshafthorsepower_fl", stringToBD(initialshafthorsepower_fl.trim()));
            values.put("initialimpellerrotational_fl", stringToBD(initialimpellerrotational_fl.trim()));
            values.put("finalimpellerrotational_fl", stringToBD(finalimpellerrotational_fl.trim()));
            values.put("if_sel_fl", stringToBD(if_sel_fl.trim()));
            values.put("finalflowrate_fl", stringToBD(finalflowrate_fl.trim()));
            values.put("finalcompressorhead_fl", stringToBD(finalcompressorhead_fl.trim()));
            values.put("finalshafthorsepower_fl", stringToBD(finalshafthorsepower_fl.trim()));
            values.put("id_proyect", id_proyect.trim());
            values.put("id_user", iduser.trim());
            values.put("description_fl", stringToBD(description_fl.trim()));
            
        }catch(Exception ex){
            throw new Exception(ex.getMessage());
        }
        return values;
    }
       
}
