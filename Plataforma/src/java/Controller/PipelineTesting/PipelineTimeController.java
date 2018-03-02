



/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.PipelineTesting;

import Model.ComboModel;
import Model.PipelineTesting.PipelineTimeModel;
import java.util.HashMap;
import java.util.Map;
import java.util.Vector;
import javax.servlet.http.HttpServletRequest;
import org.json.JSONObject;


/**
 *
 * @author kata__000
 */
public class PipelineTimeController extends Controller.Controller{
    
    private final  PipelineTimeModel model = new PipelineTimeModel();

    public PipelineTimeModel getModel() {
        return model;
    }
    
    
    
    public  Map<String, String> getValues(HttpServletRequest request) throws Exception{
         
        //Input Data
        String averagei_pt = request.getParameter("averagei_pt");
        String pipei_pt = request.getParameter("pipei_pt");
        String insided_pt = request.getParameter("insided_pt");
        String lenghtp_pt = request.getParameter("lenghtp_pt");
        String numbersb_pt = request.getParameter("numbersb_pt");
        String chokef_pt = request.getParameter("chokef_pt");
        String gst_pt = request.getParameter("gst_pt");
        String description_pt = request.getParameter("description_pt");
       
        
        //Results
        String blowndownt_pt = request.getParameter("blowndownt_pt");
        String volumel_pt = request.getParameter("volumel_pt");
        
        //unidades y otros
        String ai_sel_pt = request.getParameter("ai_sel_pt");
        String pi_sel_pt = request.getParameter("pi_sel_pt");
        String lp_sel_pt = request.getParameter("lp_sel_pt");
        String id_sel_pt = request.getParameter("id_sel_pt");
        String cf_sel_pt = request.getParameter("cf_sel_pt");
        
        //ids
        String id_proyect = request.getParameter("idproyect");
        String iduser = request.getParameter("iduser");
        
        Map<String, String> values = new HashMap<String, String>();
                
        try
        {
            values.put("averagei_pt", stringToBD(averagei_pt.trim()));
            values.put("pipei_pt", stringToBD(pipei_pt.trim()));
            values.put("insided_pt", stringToBD(insided_pt.trim()));
            values.put("lenghtp_pt", stringToBD(lenghtp_pt.trim()));
            values.put("numbersb_pt", stringToBD(numbersb_pt.trim()));
            values.put("chokef_pt", stringToBD(chokef_pt));
            values.put("gst_pt", stringToBD(gst_pt.trim()));
            values.put("description_pt", stringToBD(description_pt.trim()));
            
            //unidades y otros
            values.put("ai_sel_pt", stringToBD(ai_sel_pt.trim()));
            values.put("pi_sel_pt", stringToBD(pi_sel_pt));
            values.put("lp_sel_pt", stringToBD(lp_sel_pt));
            values.put("id_sel_pt", stringToBD(id_sel_pt));
            values.put("cf_sel_pt", stringToBD(cf_sel_pt));

            //Results
            values.put("blowndownt_pt", stringToBD(blowndownt_pt.trim()));
            values.put("volumel_pt", stringToBD(volumel_pt.trim()));
            
            values.put("id_proyect", id_proyect.trim());
            values.put("id_user", iduser.trim());
        }catch(Exception ex){
            throw new Exception(ex.getMessage());
        }
       
       return values;
        
    }
       
}

