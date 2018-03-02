/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.BuriedPipe;

import Model.BuriedPipe.AllowableModel;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author kata__000
 */
public class AllowableController extends Controller.Controller{
    
    private static final  AllowableModel model = new AllowableModel();

    public AllowableModel getModel() {
        return model;
    }
    
    public  Map<String, String> getValues(HttpServletRequest request) throws Exception{
          //Input Data
        String description_all = request.getParameter("description_all");
        String do_sel_all = request.getParameter("do_sel_all");
        String do_all = request.getParameter("do_all");
        String pdr_all = request.getParameter("pdr_all");
        String tyd_all = request.getParameter("tyd_all");
        String tut_all = request.getParameter("tut_all");
       
        
        //Results
        String tys_all = request.getParameter("tys_all");
        String atl_all = request.getParameter("atl_all");
        
        //ids
        String id_proyect = request.getParameter("idproyect");
        String iduser = request.getParameter("iduser");
       
        Map<String, String> values = new HashMap<String, String>();
                
        try
        {
            values.put("do_sel_all", stringToBD(do_sel_all.trim()));
            values.put("description_all", stringToBD(description_all.trim()));
            values.put("do_all", stringToBD(do_all.trim()));
            values.put("pdr_all",  stringToBD(pdr_all.trim()));
            values.put("tyd_all",  stringToBD(tyd_all.trim()));
            values.put("tut_all",  stringToBD(tut_all.trim()));
            values.put("tys_all",  stringToBD(tys_all.trim()));
            values.put("atl_all",  stringToBD(atl_all.trim()));
            
            values.put("id_proyect", id_proyect.trim());
            values.put("id_user", iduser.trim());
            
        }catch(Exception ex){
            throw new Exception(ex.getMessage());
        }
       
       return values;
        
    }
    
    
    
}
