/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.PipelineTesting;

import java.util.Map;
import java.util.Vector;



public class PipelineBlowdownModel extends Model.Model{
    
    private final String tabla;    

    public PipelineBlowdownModel() {
      super();
      this.tabla = "LocalAtmosphericPressure";
    }
    public String getTabla() {
        return tabla;
    }
     
}