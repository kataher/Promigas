



/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.PipelineTesting;

import Model.ComboModel;
import Model.PipelineTesting.PipelineHydrostaticModel;
import java.util.HashMap;
import java.util.Map;
import java.util.Vector;
import javax.servlet.http.HttpServletRequest;
import org.json.JSONObject;


/**
 *
 * @author kata__000
 */
public class PipelineHydrostaticController extends Controller.Controller{
    
    private final PipelineHydrostaticModel model = new PipelineHydrostaticModel();

    public PipelineHydrostaticModel getModel() {
        return model;
    }
    
    
    
    public  Map<String, String> getValues(HttpServletRequest request) throws Exception{
         
        //Input Data
        String pipeo_phy = request.getParameter("pipeo_phy");
        String pipew_phy = request.getParameter("pipew_phy");
        String pipei_phy = request.getParameter("pipei_phy");
        String testp_phy = request.getParameter("testp_phy");
        String testt_phy = request.getParameter("testt_phy");
        String pipelinel_phy = request.getParameter("pipelinel_phy");
        String description_phy = request.getParameter("description_phy");
        String enteree_phy = request.getParameter("enteree_phy");
        String h_sel_phy = request.getParameter("h_sel_phy");
       
        
        //Results
        String waterc_phy = request.getParameter("waterc_phy");
        String volumec_phy = request.getParameter("volumec_phy");
        String thermalc_phy = request.getParameter("thermalc_phy");
        String volumect_phy = request.getParameter("volumect_phy");
        String volumecr_phy = request.getParameter("volumecr_phy");
        String pipelinef_phy = request.getParameter("pipelinef_phy");
        String volumer_phy = request.getParameter("volumer_phy");
        String incrementalv_phy = request.getParameter("incrementalv_phy");
        String compf_phy = request.getParameter("compf_phy");
        String pressurec_phy = request.getParameter("pressurec_phy");
        
        //unidades y otros
        String pipe_rad_phy = request.getParameter("pipe_rad_phy");
        String nomps_sel_phy = request.getParameter("nomps_sel_phy");
        String wallt_sel_phy = request.getParameter("wallt_sel_phy");
        String po_sel_phy = request.getParameter("po_sel_phy");
        String pi_sel_phy = request.getParameter("pi_sel_phy");
        String tp_sel_phy = request.getParameter("tp_sel_phy");
        String tt_sel_phy = request.getParameter("tt_sel_phy");
        String pl_sel_phy = request.getParameter("pl_sel_phy");
        
        //ids
        String id_proyect = request.getParameter("idproyect");
        String iduser = request.getParameter("iduser");
        
        Map<String, String> values = new HashMap<String, String>();
                
        try
        {
            values.put("enteree_phy", stringToBD(enteree_phy.trim()));
            values.put("h_sel_phy", stringToBD(h_sel_phy.trim()));
            values.put("pipeo_phy", stringToBD(pipeo_phy.trim()));
            values.put("pipew_phy", stringToBD(pipew_phy.trim()));
            values.put("pipei_phy", stringToBD(pipei_phy.trim()));
            values.put("testp_phy", stringToBD(testp_phy.trim()));
            values.put("testt_phy", stringToBD(testt_phy.trim()));
            values.put("pipelinel_phy", stringToBD(pipelinel_phy));
            values.put("description_phy", stringToBD(description_phy.trim()));
            
            //unidades y otros
            values.put("pipe_rad_phy", stringToBD(pipe_rad_phy.trim()));
            values.put("nomps_sel_phy", stringToBD(nomps_sel_phy));
            values.put("wallt_sel_phy", stringToBD(wallt_sel_phy));
            values.put("po_sel_phy", stringToBD(po_sel_phy.trim()));
            values.put("pi_sel_phy", stringToBD(pi_sel_phy.trim()));
            values.put("tp_sel_phy", stringToBD(tp_sel_phy.trim()));
            values.put("tt_sel_phy", stringToBD(tt_sel_phy.trim()));
            values.put("pl_sel_phy", stringToBD(pl_sel_phy.trim()));

            //Results
            values.put("waterc_phy", stringToBD(waterc_phy.trim()));
            values.put("volumec_phy", stringToBD(volumec_phy.trim()));
            values.put("thermalc_phy", stringToBD(thermalc_phy.trim()));
            values.put("volumect_phy", stringToBD(volumect_phy.trim()));
            values.put("volumecr_phy", stringToBD(volumecr_phy.trim()));
            values.put("pipelinef_phy", stringToBD(pipelinef_phy.trim()));
            values.put("volumer_phy", stringToBD(volumer_phy.trim()));
            values.put("incrementalv_phy", stringToBD(incrementalv_phy.trim()));
            values.put("compf_phy", stringToBD(compf_phy.trim()));
            values.put("pressurec_phy", stringToBD(pressurec_phy.trim()));
            
            values.put("id_proyect", id_proyect.trim());
            values.put("id_user", iduser.trim());
        }catch(Exception ex){
            throw new Exception(ex.getMessage());
        }
       
       return values;
        
    }
    
    public JSONObject get_cambioTermico(HttpServletRequest request) throws Exception {        
        String temp = request.getParameter("temp").trim(); 
        return model.get_cambioTermico(temp);
    }
       
}

