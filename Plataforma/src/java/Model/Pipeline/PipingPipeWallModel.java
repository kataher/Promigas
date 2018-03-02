/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.Pipeline;

import java.util.Map;
import java.util.Vector;


public class PipingPipeWallModel extends Model.Model{
    
    private final String tabla;    

    public PipingPipeWallModel() {
      super();
      this.tabla = "PipingPipe";
    }
    
    public String getTabla() {
        return tabla;
    }
     
}