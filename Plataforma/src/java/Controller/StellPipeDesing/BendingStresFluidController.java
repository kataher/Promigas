/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.StellPipeDesing;


import Model.ComboModel;
import Model.GeneralModel;
import Model.StellPipeDesing.BendingStresFluidModel;
import java.util.HashMap;
import java.util.Map;
import java.util.Vector;
import javax.servlet.http.HttpServletRequest;
import org.json.JSONObject;
/**
 *
 * @author kata__000
 */
public class BendingStresFluidController extends Controller.Controller  {
    
    private final BendingStresFluidModel model = new BendingStresFluidModel();

    public  Map<String, String> getValues(HttpServletRequest request) throws Exception{
        
         //Input Data
        String description_bdsf = request.getParameter("description_bdsf");
        String nps_sel_bdsf = request.getParameter("nps_sel_bdsf");
        String wt_sel_bdsf = request.getParameter("wt_sel_bdsf");
        String unit_weight_bdsf = request.getParameter("unit_weight_bdsf");
        String pipe_dia_bdsf = request.getParameter("pipe_dia_bdsf");
        String vel_fluid_bdsf = request.getParameter("vel_fluid_bdsf");
        String lenght_pipe_bdsf = request.getParameter("lenght_pipe_bdsf");
        String bend_stress_bdsf = request.getParameter("bend_stress_bdsf");
        String lenght_pipe_sel_bdsf = request.getParameter("lenght_pipe_sel_bdsf");
        String pipe_in_dia_bdsf = request.getParameter("pipe_in_dia_bdsf");
        
        //ids
        String id_proyect = request.getParameter("idproyect");
        String iduser = request.getParameter("iduser");
       
        Map<String, String> values = new HashMap<String, String>();
                
        try
        {
            values.put("description_bdsf", stringToBD(description_bdsf.trim()));
            values.put("pipe_in_dia_bdsf", stringToBD(pipe_in_dia_bdsf.trim()));
            values.put("wt_sel_bdsf", stringToBD(wt_sel_bdsf.trim()));
            values.put("unit_weight_bdsf",  stringToBD(unit_weight_bdsf.trim()));
            values.put("pipe_dia_bdsf",  stringToBD(pipe_dia_bdsf.trim()));
            values.put("vel_fluid_bdsf",  stringToBD(vel_fluid_bdsf.trim()));
            values.put("lenght_pipe_bdsf",  stringToBD(lenght_pipe_bdsf.trim()));
            values.put("bend_stress_bdsf",  stringToBD(bend_stress_bdsf.trim()));
            values.put("lenght_pipe_sel_bdsf",  stringToBD(lenght_pipe_sel_bdsf.trim()));
            values.put("nps_sel_bdsf",  stringToBD(nps_sel_bdsf.trim()));        
            
            values.put("id_proyect", id_proyect.trim());
            values.put("id_user", iduser.trim());
            
        }catch(Exception ex){
            throw new Exception(ex.getMessage());
        }
       
       return values;
        
    }
    
    public BendingStresFluidModel getModel(){
        return model;
    }
     
}

