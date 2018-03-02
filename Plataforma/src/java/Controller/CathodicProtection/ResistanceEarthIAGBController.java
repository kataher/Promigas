/*

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.CathodicProtection;

import Model.CathodicProtection.ResistanceEarthIAGBModel;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
/**
 *
 * @author kata__000
 */
public class ResistanceEarthIAGBController extends Controller.Controller{
    
    private final ResistanceEarthIAGBModel model = new ResistanceEarthIAGBModel();

    public ResistanceEarthIAGBModel getModel() {
        return model;
    }
    
    
    
    public  Map<String, String> getValues(HttpServletRequest request) throws Exception{
        
         //Input Data
        String description_riagb = request.getParameter("description_riagb");
        String resistancee_riagb = request.getParameter("resistancee_riagb");
        String actuals_riagb = request.getParameter("actuals_riagb");
        String correctionf_riagb = request.getParameter("correctionf_riagb");
        String numbera_riagb = request.getParameter("numbera_riagb");
        String res_sel_riagb = request.getParameter("res_sel_riagb");
        String act_sel_riagb = request.getParameter("act_sel_riagb");
        String totalg_riagb = request.getParameter("totalg_riagb");
       
                
        //ids
        String id_proyect = request.getParameter("idproyect");
        String iduser = request.getParameter("iduser");
       
        Map<String, String> values = new HashMap<String, String>();
                
        try
        {
            values.put("description_riagb", stringToBD(description_riagb.trim()));
            values.put("resistancee_riagb", stringToBD(resistancee_riagb.trim()));
            values.put("actuals_riagb",  stringToBD(actuals_riagb.trim()));
            values.put("correctionf_riagb",  stringToBD(correctionf_riagb.trim()));
            values.put("numbera_riagb",  stringToBD(numbera_riagb.trim()));
            values.put("res_sel_riagb",  stringToBD(res_sel_riagb.trim()));
            values.put("act_sel_riagb",  stringToBD(act_sel_riagb.trim()));
            values.put("totalg_riagb",  stringToBD(totalg_riagb.trim()));
            
            values.put("id_proyect", id_proyect.trim());
            values.put("id_user", iduser.trim());
            
        }catch(Exception ex){
            throw new Exception(ex.getMessage());
        }
       
       return values;
        
    }
      
      
       
}

