/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.StellPipeDesing;


import Model.ComboModel;
import Model.GeneralModel;
import Model.StellPipeDesing.BendingStressModel;
import java.util.HashMap;
import java.util.Map;
import java.util.Vector;
import javax.servlet.http.HttpServletRequest;
import org.json.JSONObject;
/**
 *
 * @author kata__000
 */
public class BendingStressController extends Controller.Controller  {
    
    private final BendingStressModel model = new BendingStressModel();

    public  Map<String, String> getValues(HttpServletRequest request) throws Exception{
        
         //Input Data
        String description_bds = request.getParameter("description_bds");
        String nps_sel_bds = request.getParameter("nps_sel_bds");
        String wt_sel_bds = request.getParameter("wt_sel_bds");
        String pipe_dia_bds = request.getParameter("pipe_dia_bds");
        String pipe_wt_bds = request.getParameter("pipe_wt_bds");
        String pipe_lenght_bds = request.getParameter("pipe_lenght_bds");
        String mod_elas_bds = request.getParameter("mod_elas_bds");
        String max_stress_bds = request.getParameter("max_stress_bds");
        String max_defl_bds = request.getParameter("max_defl_bds");
        String max_stress2_bds = request.getParameter("max_stress2_bds");
        String max_defl2_bds = request.getParameter("max_defl2_bds");
        String max_stress3_bds = request.getParameter("max_stress3_bds");
        String max_defl3_bds = request.getParameter("max_defl3_bds"); 
        String pipe_lenght_sel_bds = request.getParameter("pipe_lenght_sel_bds"); 
        
        //ids
        String id_proyect = request.getParameter("idproyect");
        String iduser = request.getParameter("iduser");
       
        Map<String, String> values = new HashMap<String, String>();
                
        try
        {
            values.put("description_bds", stringToBD(description_bds.trim()));
            values.put("wt_sel_bds", stringToBD(wt_sel_bds.trim()));
            values.put("pipe_dia_bds",  stringToBD(pipe_dia_bds.trim()));
            values.put("pipe_wt_bds",  stringToBD(pipe_wt_bds.trim()));
            values.put("pipe_lenght_bds",  stringToBD(pipe_lenght_bds.trim()));
            values.put("mod_elas_bds",  stringToBD(mod_elas_bds.trim()));
            values.put("max_stress_bds",  stringToBD(max_stress_bds.trim()));
            values.put("max_defl_bds",  stringToBD(max_defl_bds.trim()));
            values.put("max_stress2_bds",  stringToBD(max_stress2_bds.trim()));
            values.put("max_defl2_bds",  stringToBD(max_defl2_bds.trim()));
            values.put("max_stress3_bds",  stringToBD(max_stress3_bds.trim()));
            values.put("max_defl3_bds",  stringToBD(max_defl3_bds.trim()));            
            values.put("nps_sel_bds",  stringToBD(nps_sel_bds.trim()));           
            values.put("pipe_lenght_sel_bds",  stringToBD(pipe_lenght_sel_bds.trim()));
            
            values.put("id_proyect", id_proyect.trim());
            values.put("id_user", iduser.trim());
            
        }catch(Exception ex){
            throw new Exception(ex.getMessage());
        }
       
       return values;
        
    }
    
    public BendingStressModel getModel(){
        return model;
    }
     
}

