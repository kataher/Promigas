/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Model.Hydraulics;


/**
 *
 * @author kata__000
 */
public class ColebrookWhiteModel extends Model.Model {
    
    private final String tabla;  

    public ColebrookWhiteModel() {
        this.tabla = "ColebrookWhite";
    }
    
    public String getTabla() {
        return tabla;
    }
}

