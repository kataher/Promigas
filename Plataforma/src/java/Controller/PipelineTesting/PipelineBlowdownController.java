



/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.PipelineTesting;

import Model.ComboModel;
import Model.PipelineTesting.PipelineBlowdownModel;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author kata__000
 */
public class PipelineBlowdownController {
    
    private final PipelineBlowdownModel model = new PipelineBlowdownModel();

    public PipelineBlowdownModel getModel() {
        return model;
    }
    
    

     public  Map<String, String> getValues(HttpServletRequest request) throws Exception{
         return null;
     }
       
}

