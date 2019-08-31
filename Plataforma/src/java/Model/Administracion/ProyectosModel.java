/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.Administracion;

import java.io.File;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.json.JSONArray;
import org.json.JSONObject;

/**
 *
 * @author kata__000
 */
public class ProyectosModel extends Model.Model {

    private final String tabla;

    public ProyectosModel() {
        this.tabla = "Proyects";
    }

    public String getTabla() {
        return tabla;
    }

    public Vector<Map> getEspecialidades() throws Exception {
        //Guardar el nombre y las especialidades del proyecto
        Vector<Map> data = this.consultar("Especialidades", "id, nombre", "");
        return data;
    }

    public Vector<Map> getEspecialidades(String idpro) throws Exception {
        //Guardar el nombre y las especialidades del proyecto
        Vector<Map> data = this.consultar("EspecialidadProyects", "id_especialidad", "id_proyect =" + idpro);
        return data;
    }

    public Vector<Map> getFases() throws Exception {
        //Guardar el nombre y las especialidades del proyecto
        Vector<Map> data = this.consultar("Fases", "id, nombre", "");
        return data;
    }

    public Vector<Map> getModulos() throws Exception {
        //Guardar el nombre y las especialidades del proyecto
        Vector<Map> data = this.consultar("Modulos", "id, nombre", "");
        return data;
    }

    public Vector<Map> getActividades() throws Exception {
        //Guardar el nombre y las especialidades del proyecto
        Vector<Map> data = this.consultar("Actividades", "id, nombre, id_espe", "");
        return data;
    }

    public Vector<Map> getActividadesXEspe(String idespe) throws Exception {
        //Guardar el nombre y las especialidades del proyecto asociadas a una especialidad
        Vector<Map> data = this.consultar("Actividades", "id, nombre, id_espe", "id_espe = " + idespe);
        return data;
    }

    public void validateProjectName(String name, String idpro) throws Exception {
        //Guardar el nombre y las especialidades del proyecto
        String where1 = "name = " + stringToBD(name);
        String where2 = where1;

        if (idpro != null && !idpro.trim().equals("")) {
            where1 += " and id != " + idpro;
            where2 += " and id_proyecttemp != " + idpro;
        }

        Vector<Map> data1 = this.consultar("ProyectsTemp", "id, name", where1);

        Vector<Map> data2 = this.consultar("Proyects", "id, name", where2);

        if (data1.size() != 0 || data2.size() != 0) {
            throw new Exception("El nombre del proyecto ya existe");
        }
    }

    public void crearProyecto(String id_pro_temp, Map<String, String> values, String ruta) throws Exception {
        //Guardar el nombre y las especialidades del proyecto
        Connection conn = null;
        Vector<Map> data = null;

        String sql;

        try {
            conn = getConnection();
            conn.setAutoCommit(false);

            sql = "SELECT [id_user] FROM [" + bd + "].[dbo].[RolesUsuPro] WHERE id_proyecto = " + id_pro_temp + " and id_rol = 5";
            data = consultar(sql);

            String where = "id = " + id_pro_temp;
            values.put("lider", stringToBD(data.get(0).get("id_user").toString()));
            this.edit("ProyectsTemp", values, where, conn);
            data = this.consultar("ProyectsTemp", "name, id_user", where, conn);
            values.clear();

            values.put("name", stringToBD(data.get(0).get("name").toString()));
            values.put("id_user", data.get(0).get("id_user").toString());
            values.put("id_proyecttemp", id_pro_temp);

            this.add("Proyects", values, conn);

            sql = "UPDATE [" + bd + "].[dbo].[EspecialidadFaseActPro]  set [fecha_inicio] = getdate()\n"
                    + "  where id_proyect = " + id_pro_temp;

            this.ejecutarUpdate(sql, conn);

            conn.commit();
            conn.close();

            //Crear carpeta de proyecto
            String rutapro = ruta + "/" + normalizar(data.get(0).get("name").toString());

            File folder = new File(rutapro);

            if (!folder.exists()) {
                folder.mkdir();
            } else {
                folder.delete();
                folder.mkdir();
            }

            //Consultar Especialidades y Fases
            sql = "SELECT esp.nombre nomesp, fases.nombre nomfase\n"
                    + "  FROM [" + bd + "].[dbo].[EspecialidadFase] espfa  \n"
                    + "  inner join [" + bd + "].[dbo].[Especialidades] esp\n"
                    + "  on esp.id = espfa.id_especialidad\n"
                    + "  inner join [" + bd + "].[dbo].[Fases] fases\n"
                    + "  on espfa.id_fase = fases.id\n"
                    + "  where id_proyect = " + id_pro_temp;

            //Consultar Especialidades y Fases
            sql = "SELECT esp.nombre nomesp, fases.nombre nomfase\n"
                    + "  FROM [" + bd + "].[dbo].[EspecialidadFase] espfa  \n"
                    + "  inner join [" + bd + "].[dbo].[Especialidades] esp\n"
                    + "  on esp.id = espfa.id_especialidad\n"
                    + "  inner join [" + bd + "].[dbo].[Fases] fases\n"
                    + "  on espfa.id_fase = fases.id\n"
                    + "  where id_proyect = " + id_pro_temp;

            data = consultar(sql);

            for (int i = 0; i < data.size(); i++) {

                //Crear esp
                String rutaesp = rutapro + "/" + normalizar(data.get(i).get("nomesp").toString());
                folder = new File(rutaesp);
                folder.mkdirs();

                //Crear fase
                folder = new File(rutaesp + "/" + normalizar(data.get(i).get("nomfase").toString()));
                folder.mkdirs();
            }

        } catch (Exception ex) {
            if (conn != null) {
                try {
                    conn.rollback();
                    conn.close();
                } catch (SQLException ex1) {
                    Logger.getLogger(ProyectosModel.class.getName()).log(Level.SEVERE, null, ex1);
                }
            }
        }
    }

    public Vector<Map> saveStep1(Map<String, String> values1, JSONArray espe, String update, String id_proyect) {
        Connection conn = null;
        Vector<Map> data = null;
        String sql;
        try {
            //Guardar el nombre y las especialidades del proyecto
            conn = getConnection();
            conn.setAutoCommit(false);

            if (update.equals("1")) {
                //Editar nombre del proyecto

                //Consultar si existe otro proyecto con el nombre:
                sql = "SELECT id as cantidad\n"
                        + "  FROM [" + bd + "].[dbo].[ProyectsTemp]\n"
                        + "	where name = " + values1.get("name").toString() + " and id != " + id_proyect;
                data = this.consultar(sql, conn);

                if (data.size() != 0) {
                    throw new Exception("El nombre del proyecto ya existe");
                }

                this.edit("ProyectsTemp", values1, "id = " + id_proyect, conn);
                
                //Verificar especialidades
                String ids_espe = "(";
                for (int i = 0; i < espe.length(); i++) {
                    if (i == espe.length() - 1) {
                        ids_espe += espe.getJSONObject(i).get("id").toString();
                    } else {
                        ids_espe += espe.getJSONObject(i).get("id").toString() + ",";
                    }
                }
                ids_espe += ")";

                //Especialidades a eliminar
                if (!(ids_espe.equals("()"))) {
                    //Borrar actividades
                    sql = "DELETE FROM [" + bd + "].[dbo].[EspecialidadFaseActPro]\n"
                            + "WHERE id_proyect = " + id_proyect + " and id_especialidad IN \n"
                            + "(SELECT id_especialidad as id\n"
                            + "FROM [" + bd + "].[dbo].[EspecialidadProyects]\n"
                            + "WHERE id_proyect = " + id_proyect + "\n"
                            + "EXCEPT\n"
                            + "SELECT id\n"
                            + "FROM [" + bd + "].[dbo].[Especialidades] esppro\n"
                            + "WHERE id in " + ids_espe + ")";

                    this.ejecutarUpdate(sql, conn);

                    //Borrar fases
                    sql = "DELETE FROM [" + bd + "].[dbo].[EspecialidadFase]\n"
                            + "WHERE id_proyect = " + id_proyect + " and id_especialidad  IN \n"
                            + "(SELECT id_especialidad as id\n"
                            + "FROM [" + bd + "].[dbo].[EspecialidadProyects]\n"
                            + "WHERE id_proyect = " + id_proyect + "\n"
                            + "EXCEPT\n"
                            + "SELECT id\n"
                            + "FROM [" + bd + "].[dbo].[Especialidades] esppro\n"
                            + "WHERE id in " + ids_espe + ")";
                    this.ejecutarUpdate(sql, conn);

                    //Borrar especialidades
                    sql = "DELETE FROM [" + bd + "].[dbo].[EspecialidadProyects]\n"
                            + "WHERE id_proyect = " + id_proyect + " and id_especialidad IN \n"
                            + "(SELECT id_especialidad as id\n"
                            + "FROM [" + bd + "].[dbo].[EspecialidadProyects]\n"
                            + "WHERE id_proyect = " + id_proyect + "\n"
                            + "EXCEPT\n"
                            + "SELECT id\n"
                            + "FROM [" + bd + "].[dbo].[Especialidades] esppro\n"
                            + "WHERE id in " + ids_espe + ")";
                    this.ejecutarUpdate(sql, conn);

                    //Especialidades a agregar
                    sql = "SELECT id\n"
                            + "  FROM [" + bd + "].[dbo].[Especialidades] esppro\n"
                            + "  WHERE id in " + ids_espe + "\n"
                            + "EXCEPT\n"
                            + "SELECT id_especialidad as id\n"
                            + "FROM [" + bd + "].[dbo].[EspecialidadProyects]\n"
                            + "WHERE id_proyect = " + id_proyect;
                    data = this.consultar(sql, conn);

                    //Agregar especialidades nuevas
                    String values = "";
                    for (int i = 0; i < data.size(); i++) {
                        if (i == data.size() - 1) {
                            values += "(" + id_proyect + "," + data.get(i).get("id").toString() + ")";
                            //values += "(" + id_proyect + "," + espe.getJSONObject(i).get("id").toString() + ")";
                        } else {
                            values += "(" + id_proyect + "," + data.get(i).get("id").toString() + "),";
                        }
                    }

                    if (!(values.equals(""))) {
                        sql = "INSERT INTO [" + bd + "].[dbo].[EspecialidadProyects] ([id_proyect] ,[id_especialidad] ) VALUES " + values;
                        this.ejecutarUpdate(sql, conn);
                    }

                }

                //Devolver el id del proyecto
                String where = " name = " + values1.get("name");
                data = this.consultar("ProyectsTemp", "id, name", where, conn);

            } else {

                //Agregar el proyecto
                
                values1.put("date", "getdate()");
                this.add("ProyectsTemp", values1, conn);

                //Devolver el id del proyecto
                String where = " name = " + values1.get("name");
                data = this.consultar("ProyectsTemp", "id, name", where, conn);

                //Agregar especialidades nuevas
                for (int i = 0; i < espe.length(); i++) {
                    Map<String, String> values2 = new HashMap<>();
                    values2.put("id_proyect", data.get(0).get("id").toString());
                    values2.put("id_especialidad", espe.getJSONObject(i).get("id").toString());
                    this.add("EspecialidadProyects", values2, conn);
                }
            }

            conn.commit();
            conn.close();
        } catch (Exception ex) {
            if (conn != null) {
                try {
                    conn.rollback();
                    conn.close();
                } catch (SQLException ex1) {
                    Logger.getLogger(ProyectosModel.class.getName()).log(Level.SEVERE, null, ex1);
                }
            }
        }

        return data;
    }

    public void saveStep2(String id_proyect, JSONArray espe, String update) {

        //Guardar Fases
        Connection conn = null;
        Vector<Map> data = null;

        try {

            conn = getConnection();
            conn.setAutoCommit(false);

            /*if(update.equals("1")){
                this.delete("EspecialidadFase", "id_proyect = " + id_proyect, conn);
            }*/
            String values = "";

            for (int i = 0; i < espe.length(); i++) {

                JSONArray fases = espe.getJSONObject(i).getJSONArray("fases");

                values = "(";

                for (int j = 0; j < fases.length(); j++) {

                    if (j == fases.length() - 1) {
                        values += fases.getJSONObject(j).get("id").toString();
                    } else {
                        values += fases.getJSONObject(j).get("id").toString() + ",";
                    }
                }

                values += ")";

                //ids especialidad-fases
                //Eliminar actividades de las fases a eliminanar
                String sql = "DELETE FROM [" + bd + "].[dbo].[EspecialidadFaseActPro]\n"
                        + "WHERE id_proyect = " + id_proyect + " and id_especialidad = " + espe.getJSONObject(i).get("id").toString() + " and  id_fase in (\n"
                        + "SELECT id_fase\n"
                        + "FROM [" + bd + "].[dbo].[EspecialidadFase]\n"
                        + "WHERE id_proyect = " + id_proyect + " and id_especialidad = " + espe.getJSONObject(i).get("id").toString() + "\n"
                        + "EXCEPT\n"
                        + "SELECT id\n"
                        + "FROM [" + bd + "].[dbo].[Fases]\n"
                        + "WHERE id in " + values + " )";
                this.ejecutarUpdate(sql, conn);

                //Verificar para eliminacion
                sql = "DELETE FROM [" + bd + "].[dbo].[EspecialidadFase]\n"
                        + "WHERE id_proyect = " + id_proyect + " and id_especialidad = " + espe.getJSONObject(i).get("id").toString() + " and  id_fase in ("
                        + "SELECT id_fase\n"
                        + "FROM [" + bd + "].[dbo].[EspecialidadFase]\n"
                        + "WHERE id_proyect = " + id_proyect + " and id_especialidad = " + espe.getJSONObject(i).get("id").toString() + "\n"
                        + "EXCEPT\n"
                        + "SELECT id\n"
                        + "FROM [" + bd + "].[dbo].[Fases]\n"
                        + "WHERE id in " + values + ")";
                this.ejecutarUpdate(sql, conn);

                //Verificar para agregacion
                sql = "SELECT id\n"
                        + "FROM [" + bd + "].[dbo].[Fases]\n"
                        + "WHERE id in " + values + "\n"
                        + "EXCEPT\n"
                        + "SELECT id_fase\n"
                        + "FROM [" + bd + "].[dbo].[EspecialidadFase]\n"
                        + "WHERE id_proyect = " + id_proyect + " and id_especialidad = " + espe.getJSONObject(i).get("id").toString();

                data = this.consultar(sql, conn);
                values = "";
                for (int j = 0; j < data.size(); j++) {
                    if (j == data.size() - 1) {
                        values += "(" + id_proyect + "," + espe.getJSONObject(i).get("id").toString() + "," + data.get(j).get("id").toString() + ")";
                    } else {
                        values += "(" + id_proyect + "," + espe.getJSONObject(i).get("id").toString() + "," + data.get(j).get("id").toString() + "),";
                    }
                }

                if (!(values.equals(""))) {
                    sql = "INSERT INTO [" + bd + "].[dbo].[EspecialidadFase] ([id_proyect] ,[id_especialidad],[id_fase] ) VALUES " + values;
                    this.ejecutarUpdate(sql, conn);
                }
            }

            conn.commit();
            conn.close();
        } catch (Exception ex) {
            if (conn != null) {
                try {
                    conn.rollback();
                    conn.close();
                } catch (SQLException ex1) {
                    Logger.getLogger(ProyectosModel.class.getName()).log(Level.SEVERE, null, ex1);
                }
            }
        }

    }

    public void saveStep3(String id_proyect, JSONArray espe, String update) throws Exception {

        //Guardar Actividades
        Connection conn = null;
        Map<String, String> values = null;
        String[] resumenVec = null;
        String where = "";

        try {

            conn = getConnection();
            conn.setAutoCommit(false);

            for (int i = 0; i < espe.length(); i++) {

                JSONArray fases = espe.getJSONObject(i).getJSONArray("fases");
                for (int j = 0; j < fases.length(); j++) {

                    String valuesAct = "(";

                    JSONArray acti = fases.getJSONObject(j).getJSONArray("acti");
                    Map<String, String> resumenActi = new HashMap<String, String>();
                    for (int k = 0; k < acti.length(); k++) {
                        if (k == acti.length() - 1) {
                            valuesAct += acti.getJSONObject(k).get("id").toString();
                        } else {
                            valuesAct += acti.getJSONObject(k).get("id").toString() + ",";

                        }

                        resumenActi.put(acti.getJSONObject(k).get("id").toString(), acti.getJSONObject(k).get("peso").toString() + "-" + acti.getJSONObject(k).get("tiempo").toString());
                    }
                    valuesAct += ")";

                    //Eliminar actividades
                    String sql = "DELETE FROM [" + bd + "].[dbo].[EspecialidadFaseActPro]\n"
                            + "WHERE id_proyect = " + id_proyect + " and id_especialidad = " + espe.getJSONObject(i).get("id").toString()
                            + " and id_fase = " + fases.getJSONObject(j).get("id").toString()
                            + " and id_actividad in ("
                            + "SELECT id_actividad\n"
                            + "FROM [" + bd + "].[dbo].[EspecialidadFaseActPro]\n"
                            + "WHERE id_proyect = " + id_proyect + " and id_especialidad = " + espe.getJSONObject(i).get("id").toString()
                            + " and id_fase = " + fases.getJSONObject(j).get("id").toString() + "\n"
                            + "EXCEPT\n"
                            + "SELECT id\n"
                            + "FROM [" + bd + "].[dbo].[Actividades]\n"
                            + "WHERE id in " + valuesAct + ")";

                    this.ejecutarUpdate(sql, conn);

                    //Verificar para editar
                    sql = "SELECT id_actividad, id\n"
                            + "FROM [" + bd + "].[dbo].[EspecialidadFaseActPro]\n"
                            + "WHERE id_proyect = " + id_proyect + " and id_especialidad = " + espe.getJSONObject(i).get("id").toString()
                            + " and id_fase = " + fases.getJSONObject(j).get("id").toString() + "\n"
                            + " and id_actividad in " + valuesAct;

                    Vector<Map> data = this.consultar(sql, conn);
                    for (int k = 0; k < data.size(); k++) {
                        resumenVec = resumenActi.get(data.get(k).get("id_actividad").toString()).split("-");
                        where = " id = " + data.get(k).get("id").toString();

                        values = new HashMap<String, String>();
                        values.put("peso", resumenVec[0]);
                        values.put("tiempo", resumenVec[1]);
                        this.edit("EspecialidadFaseActPro", values, where, conn);
                    }

                    //Verificar para agregacion
                    sql = "SELECT id\n"
                            + "FROM [" + bd + "].[dbo].[Actividades]\n"
                            + "WHERE id in " + valuesAct
                            + "EXCEPT\n"
                            + "SELECT id_actividad\n"
                            + "FROM [" + bd + "].[dbo].[EspecialidadFaseActPro]\n"
                            + "WHERE id_proyect = " + id_proyect + " and id_especialidad = " + espe.getJSONObject(i).get("id").toString()
                            + " and id_fase = " + fases.getJSONObject(j).get("id").toString();

                    data = this.consultar(sql, conn);
                    for (int k = 0; k < data.size(); k++) {
                        //Agregar esta actividad

                        resumenVec = resumenActi.get(data.get(k).get("id").toString()).split("-");
                        values = new HashMap<String, String>();
                        values.put("id_proyect", id_proyect);
                        values.put("id_fase", fases.getJSONObject(j).get("id").toString());
                        values.put("id_especialidad", espe.getJSONObject(i).get("id").toString());
                        values.put("id_actividad", data.get(k).get("id").toString());
                        values.put("peso", resumenVec[0]);
                        values.put("tiempo", resumenVec[1]);
                        values.put("aprobado", "0");

                        this.add("EspecialidadFaseActPro", values, conn);
                    }

                    values = new HashMap<String, String>();
                    values.put("peso", fases.getJSONObject(j).get("peso").toString());
                    where = "id_fase = " + fases.getJSONObject(j).get("id").toString() + " and id_especialidad = " + espe.getJSONObject(i).get("id").toString() + " and id_proyect = " + id_proyect;
                    this.edit("EspecialidadFase", values, where, conn);

                }
            }

            conn.commit();
            conn.close();
        } catch (Exception ex) {
            if (conn != null) {
                try {
                    conn.rollback();
                    conn.close();
                } catch (SQLException ex1) {
                    Logger.getLogger(ProyectosModel.class.getName()).log(Level.SEVERE, null, ex1);
                }
            }

            throw ex;
        }
    }

    public void saveStep4(String id_proyect, JSONArray espe, String update) throws Exception {
        //Guardar Modulos

        Connection conn = null;

        try {

            conn = getConnection();
            conn.setAutoCommit(false);

            if (update.equals("1")) {

                String sql = "delete FROM [" + bd + "].[dbo].[ActividadModulo] where id in (\n"
                        + "SELECT am.id\n"
                        + "  FROM [" + bd + "].[dbo].[ActividadModulo] am\n"
                        + "  join [" + bd + "].[dbo].[EspecialidadFaseActPro] ef\n"
                        + "  on am.id_actividadpro = ef.id\n"
                        + "  where ef.id_proyect = " + id_proyect + ")";
                this.ejecutarUpdate(sql, conn);
            }

            for (int i = 0; i < espe.length(); i++) {
                JSONArray fases = espe.getJSONObject(i).getJSONArray("fases");
                for (int j = 0; j < fases.length(); j++) {

                    JSONArray acti = fases.getJSONObject(j).getJSONArray("acti");
                    for (int k = 0; k < acti.length(); k++) {

                        JSONArray modulos = acti.getJSONObject(k).getJSONArray("modulos");
                        for (int l = 0; l < modulos.length(); l++) {
                            Map<String, String> values = new HashMap<String, String>();

                            String where = " id_fase = " + fases.getJSONObject(j).get("id").toString()
                                    + " and id_actividad = " + acti.getJSONObject(k).get("id").toString()
                                    + " and id_especialidad = " + espe.getJSONObject(i).get("id").toString()
                                    + " and id_proyect = " + id_proyect;

                            Vector<Map> data = consultar("EspecialidadFaseActPro", "id", where, conn);

                            values.put("id_actividadpro", data.get(0).get("id").toString());
                            values.put("id_modulo", modulos.getJSONObject(l).get("id").toString());

                            this.add("ActividadModulo", values, conn);
                        }
                    }
                }
            }

            conn.commit();
            conn.close();
        } catch (Exception ex) {
            if (conn != null) {
                try {
                    conn.rollback();
                    conn.close();
                } catch (SQLException ex1) {
                    Logger.getLogger(ProyectosModel.class.getName()).log(Level.SEVERE, null, ex1);
                }
            }
        }
    }

    public Vector<Map> saveStep5(String id_proyect, JSONArray espe, String update, String liderp) throws Exception {

        //Agregar id_user a la tabla de Actividades
        Connection conn = null;
        Vector<Map> data = null;
        String where;

        try {

            conn = getConnection();
            conn.setAutoCommit(false);

            Map<String, String> values;
            if (update.equals("1")) {
                this.delete("RolesUsuPro", "id_proyecto = " + id_proyect, conn);

                //Actualizar lideres de los proyectos
                values = new HashMap<String, String>();
                values.put("lider", "null");

                where = "id_proyect = " + id_proyect;
                this.edit("EspecialidadProyects", values, where, conn);

                this.edit("EspecialidadFase", values, where, conn);

                values.clear();
                values.put("id_user", "null");
                this.edit("EspecialidadFaseActPro", values, where, conn);

            }

            ArrayList<String> listaUdLesp = new ArrayList<>();
            ArrayList<String> listaUdLfase = new ArrayList<>();

            for (int i = 0; i < espe.length(); i++) {
                String lid_esp = espe.getJSONObject(i).get("lider").toString();
                data = this.consultar("Users", "id", "name = " + stringToBD(lid_esp), conn);

                values = new HashMap<String, String>();
                values.put("lider", data.get(0).get("id").toString());
                where = "id_proyect = " + id_proyect + " and id_especialidad =" + espe.getJSONObject(i).get("id").toString();
                this.edit("EspecialidadProyects", values, where, conn);

                if (listaUdLesp.contains(data.get(0).get("id").toString()) == false) {
                    listaUdLesp.add(data.get(0).get("id").toString());

                    values = new HashMap<String, String>();
                    values.put("id_proyecto", id_proyect);
                    values.put("id_rol", "2");
                    values.put("id_user", data.get(0).get("id").toString());

                    this.add("RolesUsuPro", values, conn);
                }

                JSONArray fases = espe.getJSONObject(i).getJSONArray("fases");
                for (int j = 0; j < fases.length(); j++) {
                    String lid_fas = fases.getJSONObject(j).get("lider").toString();
                    data = this.consultar("Users", "id", "name = " + stringToBD(lid_fas), conn);

                    values = new HashMap<String, String>();
                    values.put("lider", data.get(0).get("id").toString());
                    where = "id_proyect = " + id_proyect + " and id_especialidad =" + espe.getJSONObject(i).get("id").toString() + " and id_fase = " + fases.getJSONObject(j).get("id").toString();;
                    this.edit("EspecialidadFase", values, where, conn);

                    if (listaUdLfase.contains(data.get(0).get("id").toString()) == false) {
                        listaUdLfase.add(data.get(0).get("id").toString());

                        values = new HashMap<String, String>();
                        values.put("id_proyecto", id_proyect);
                        values.put("id_rol", "3");
                        values.put("id_user", data.get(0).get("id").toString());

                        this.add("RolesUsuPro", values, conn);
                    }

                    values = new HashMap<String, String>();
                    values.put("id_user", data.get(0).get("id").toString());

                    where = " id_proyect = " + id_proyect + " and  id_especialidad =" + espe.getJSONObject(i).get("id").toString() + " and id_fase = " + fases.getJSONObject(j).get("id").toString();
                    this.edit("EspecialidadFaseActPro", values, where, conn);

                }
            }

            data = this.consultar("Users", "id", "name = " + stringToBD(liderp), conn);

            values = new HashMap<String, String>();
            values.put("id_proyecto", id_proyect);
            values.put("id_rol", "5");
            values.put("id_user", data.get(0).get("id").toString());

            this.add("RolesUsuPro", values, conn);

            where = " id = " + id_proyect;
            data = this.consultar("ProyectsTemp", "id", where, conn);
            conn.commit();
            conn.close();
        } catch (Exception ex) {
            if (conn != null) {
                try {
                    conn.rollback();
                    conn.close();
                } catch (SQLException ex1) {
                    Logger.getLogger(ProyectosModel.class.getName()).log(Level.SEVERE, null, ex1);
                }
            }
        }

        return data;
    }

    public JSONObject getProyectosCreated(String id_user) throws Exception {

        //Guardar el nombre y las especialidades del proyecto
        JSONObject json = new JSONObject();
        /*String sql = "SELECT pro.id as idprotemp, pro.name as proname, pro.flag,  pro.id_user as createdby\n" +
"  FROM ["+bd+"].[dbo].[ProyectsTemp] pro\n" +
"  where pro.id_user  = " + id_user;*/

        String sql = "SELECT pro.id as id, pro.name as nombre, flag, lider, usu.name\n"
                + "  FROM [" + bd + "].[dbo].[ProyectsTemp] pro\n"
                + "  left join [" + bd + "].[dbo].[Users] usu\n"
                + "  on usu.id = pro.lider\n"
                + "  where pro.id_user  =" + id_user;

        Vector<Map> data = this.consultar(sql);
        json.put("data", data);

        return json;
    }

    public JSONObject getProyectosByUserIgnoringRol(String id_user) throws Exception {
        String sql = " SELECT distinct  id_proyecto, pro.name\n"
                + "FROM [" + bd + "].[dbo].[RolesUsuPro] roles\n"
                + "INNER JOIN [" + bd + "].[dbo].[ProyectsTemp] pro\n"
                + "ON roles.id_proyecto = pro.id and pro.flag = 1 \n";
                //+ "WHERE roles.id_user = " + id_user;

        Vector<Map> data = this.consultar(sql);

        JSONObject res = new JSONObject();
        res.put("data", data);

        return res;

    }

    public JSONObject getAllProjects() throws Exception {
        String sql = "SELECT pro.[id]\n"
                + "      ,pro.[name]  as proname \n"
                + "      ,[flag]\n"
                + "	  ,users.name\n"
                + "  FROM [" + bd + "].[dbo].[ProyectsTemp] pro\n"
                + "  inner join [" + bd + "].[dbo].[Users] users \n"
                + "  On pro.id_user = users.id";

        Vector<Map> data = this.consultar(sql);

        JSONObject res = new JSONObject();
        res.put("data", data);

        return res;

    }

    public JSONObject getProyectosOrderingByRol(String id_user) throws Exception {
        JSONArray resInfo = new JSONArray();

        //Guardar el nombre y las especialidades del proyecto
        int roles = 0;
        String sql = "SELECT roles.id, id_rol, roles.id_user, roles.id_proyecto, name "
                + "FROM [" + bd + "].[dbo].[RolesUsuPro] roles "
                + "INNER JOIN [" + bd + "].[dbo].[ProyectsTemp] proyectstemp "
                + "ON roles.id_proyecto = proyectstemp.id  and proyectstemp.flag = 1 "
                + "WHERE roles.id_rol = 5 and roles.id_user=" + id_user;

        Vector<Map> data = this.consultar(sql);
        if (data.size() > 0) {

            for (int i = 0; i < data.size(); i++) {
                JSONObject json = new JSONObject();
                json.put("name", data.get(i).get("name"));
                json.put("id", data.get(i).get("id_proyecto"));
                json.put("rol", "Lider de Proyecto");
                resInfo.put(json);
            }
            roles = roles + 1;
        }

        sql = sql.replace("roles.id_rol = 5", "roles.id_rol = 2");
        data = this.consultar(sql);
        if (data.size() > 0) {
            roles = roles + 2;
            for (int i = 0; i < data.size(); i++) {
                JSONObject json = new JSONObject();
                json.put("name", data.get(i).get("name"));
                json.put("id", data.get(i).get("id_proyecto"));
                json.put("rol", "Lider de Especialidad");
                resInfo.put(json);
            }
        }

        sql = sql.replace("roles.id_rol = 2", "roles.id_rol = 3");
        data = this.consultar(sql);
        if (data.size() > 0) {
            roles = roles + 4;
            for (int i = 0; i < data.size(); i++) {
                JSONObject json = new JSONObject();
                json.put("name", data.get(i).get("name"));
                json.put("id", data.get(i).get("id_proyecto"));
                json.put("rol", "Lider de Fase");
                resInfo.put(json);
            }
        }

        JSONObject res = new JSONObject();
        res.put("data", resInfo);

        return res;
    }

    public JSONObject setEstadoActividad(String id_proyect, String id_especialidad, String id_fase, String id_actividad, String aprobado) throws Exception {
        //Guardar el nombre y las especialidades del proyecto

        Map<String, String> values = new HashMap<String, String>();
        values.put("aprobado", aprobado);

        JSONObject json = new JSONObject();
        String where = " id_fase = " + id_fase + " and id_actividad = " + id_actividad + " and id_proyect = " + id_proyect + " and id_especialidad = " + id_especialidad;

        this.edit("EspecialidadFaseActPro", values, where);

        this.consultar("EspecialidadFaseActPro", "*", where);

        return json;
    }

    public JSONObject getEstadoActividad(String id_user, String id_proyect) throws Exception {
        //Guardar el nombre y las especialidades del proyecto

        JSONObject json = new JSONObject();
        /*String where = 
                    "SELECT efap.id ,[id_fase] ,[id_actividad] ,act.nombre as nactividad ,[id_especialidad],esp.nombre as nesp,[id_proyect],[id_user], aprobado, fas.nombre as nfase  "
                      + "FROM ["+bd+"].[dbo].[EspecialidadFaseActPro] as efap,["+bd+"].[dbo].[Especialidades] as esp,["+bd+"].[dbo].[Fases] as fas  ,["+bd+"].[dbo].[Actividades] as act  " +
                        " where efap.id_actividad = act.id and efap.id_especialidad = esp.id and fas.id =id_fase and efap.id_user = "+id_user+" and efap.id_proyect = "+id_proyect;*/

        String sql = "select distinct esp.id, esp.nombre\n"
                + "FROM [" + bd + "].[dbo].[EspecialidadFaseActPro] act\n"
                + "inner join [" + bd + "].[dbo].[Especialidades] esp\n"
                + "on esp.id = act.id_especialidad\n"
                + "where id_user = " + id_user + " and id_proyect = " + id_proyect;

        Vector<Map> dataEspe = this.consultar(sql);
        JSONArray jsonEspe = new JSONArray();

        for (int i = 0; i < dataEspe.size(); i++) {

            sql = "select distinct fase.id, fase.nombre\n"
                    + "FROM [" + bd + "].[dbo].[EspecialidadFaseActPro] act\n"
                    + "inner join [" + bd + "].[dbo].[Fases] fase\n"
                    + "on fase.id = act.id_fase\n"
                    + "where id_user = " + id_user + " and id_proyect = " + id_proyect + " and id_especialidad = " + dataEspe.get(i).get("id").toString();

            Vector<Map> dataFases = this.consultar(sql);
            JSONArray jsonFases = new JSONArray();

            for (int j = 0; j < dataFases.size(); j++) {

                sql = "SELECT acti.id, nombre, aprobado, fileUpload, fecha_inicio, tiempo   FROM " + bd + ".dbo.EspecialidadFaseActPro acti\n"
                        + "inner join " + bd + ".dbo.Actividades actiall\n"
                        + "on acti.id_actividad = actiall.id\n"
                        + "  where id_proyect = " + id_proyect + " and id_especialidad = " + dataEspe.get(i).get("id").toString() + "  and id_fase = " + dataFases.get(j).get("id").toString();

                Vector<Map> dataActi = this.consultar(sql);
                JSONArray jsonActi = new JSONArray();

                for (int k = 0; k < dataActi.size(); k++) {

                    JSONObject acti = new JSONObject();
                    acti.put("id", dataActi.get(k).get("id"));
                    acti.put("nombre", dataActi.get(k).get("nombre"));
                    acti.put("aprobado", dataActi.get(k).get("aprobado"));
                    acti.put("file", dataActi.get(k).get("fileUpload"));
                    acti.put("fecha_inicio", dataActi.get(k).get("fecha_inicio"));
                    acti.put("tiempo", dataActi.get(k).get("tiempo"));

                    jsonActi.put(acti);
                }

                JSONObject fase = new JSONObject();
                fase.put("id", dataFases.get(j).get("id"));
                fase.put("nombre", dataFases.get(j).get("nombre"));
                fase.put("acti", jsonActi);

                jsonFases.put(fase);
            }

            JSONObject espe = new JSONObject();
            espe.put("id", dataEspe.get(i).get("id"));
            espe.put("nombre", dataEspe.get(i).get("nombre"));
            espe.put("fases", jsonFases);

            jsonEspe.put(espe);

        }

        json.put("registro", jsonEspe);
        return json;
    }

    public JSONObject CargarInfoEspecialidad(String id_user, String id_proyect) throws Exception {

        JSONObject info = new JSONObject();

        String sql = "SELECT esp.id, esp.nombre, users.name lider, esppro.fileupload "
                + "  FROM [" + bd + "].[dbo].[EspecialidadProyects] esppro "
                + "  inner join " + bd + ".dbo.Especialidades esp "
                + "  on esp.id = esppro.id_especialidad "
                + "  inner join " + bd + ".dbo.Users users "
                + "  on users.id = esppro.lider "
                + "  where id_proyect = " + id_proyect + " and esppro.lider=" + id_user;

        Vector<Map> dataEspe = this.consultar(sql);
        JSONArray jsonEspe = new JSONArray();

        for (int i = 0; i < dataEspe.size(); i++) {

            sql = "SELECT fases.id, fases.nombre, users.name lider\n"
                    + "  FROM " + bd + ".dbo.EspecialidadFase espfa\n"
                    + "  inner join " + bd + ".dbo.Fases fases\n "
                    + "  on espfa.id_fase = fases.id\n"
                    + "  inner join " + bd + ".dbo.Users users\n"
                    + "  on users.id = espfa.lider"
                    + "  where id_proyect = " + id_proyect + " and id_especialidad = " + dataEspe.get(i).get("id");

            Vector<Map> dataFases = this.consultar(sql);
            JSONArray jsonFases = new JSONArray();

            for (int j = 0; j < dataFases.size(); j++) {

                sql = "SELECT allacti.id, allacti.nombre, acti.id as idactipro, acti.peso, acti.aprobado, acti.fecha_inicio, acti.fecha_final, acti.fileupload"
                        + "  FROM " + bd + ".dbo.EspecialidadFaseActPro acti\n"
                        + "  inner join " + bd + ".dbo.Actividades allacti\n"
                        + "  on allacti.id = acti.id_actividad\n"
                        + "  where id_proyect = " + id_proyect + " and id_especialidad = " + dataEspe.get(i).get("id") + " and id_fase = " + dataFases.get(j).get("id");

                Vector<Map> dataActi = this.consultar(sql);
                JSONArray jsonActi = new JSONArray();

                for (int k = 0; k < dataActi.size(); k++) {

                    sql = "SELECT modu.id, modu.nombre\n"
                            + "  FROM " + bd + ".dbo.EspecialidadFaseActPro acti\n"
                            + "  inner join " + bd + ".dbo.ActividadModulo moduacti\n"
                            + "  on moduacti.id_actividadpro = acti.id\n"
                            + "  inner join " + bd + ".dbo.Modulos modu\n"
                            + "  on modu.id = moduacti.id_modulo\n"
                            + "  where id_proyect = " + id_proyect + " and id_especialidad = " + dataEspe.get(i).get("id") + " and id_fase = " + dataFases.get(j).get("id");

                    Vector<Map> dataMod = this.consultar(sql);

                    JSONObject acti = new JSONObject();
                    acti.put("id", dataActi.get(k).get("id"));
                    acti.put("nombre", dataActi.get(k).get("nombre"));
                    acti.put("peso", dataActi.get(k).get("peso"));
                    acti.put("aprobado", dataActi.get(k).get("aprobado"));
                    acti.put("idactipro", dataActi.get(k).get("idactipro"));
                    acti.put("fechai", dataActi.get(k).get("fecha_inicio"));
                    acti.put("fechaf", dataActi.get(k).get("fecha_final"));
                    acti.put("fileup", dataActi.get(k).get("fileupload"));
                    acti.put("modulos", dataMod);

                    jsonActi.put(acti);
                }

                JSONObject fase = new JSONObject();
                fase.put("id", dataFases.get(j).get("id"));
                fase.put("nombre", dataFases.get(j).get("nombre"));
                fase.put("lider", dataFases.get(j).get("lider"));
                fase.put("idactipro", dataFases.get(j).get("idactipro"));
                fase.put("acti", jsonActi);

                jsonFases.put(fase);
            }

            JSONObject espe = new JSONObject();
            espe.put("id", dataEspe.get(i).get("id"));
            espe.put("nombre", dataEspe.get(i).get("nombre"));
            espe.put("lider", dataEspe.get(i).get("lider"));
            espe.put("fileupload", dataEspe.get(i).get("fileupload"));
            espe.put("fases", jsonFases);

            jsonEspe.put(espe);

        }

        sql = "select prot.name  FROM \n"
                +  bd + ".dbo.ProyectsTemp prot\n"
                + "where prot.id = " + id_proyect;

        Vector<Map> data = this.consultar(sql);

        info.put("info", jsonEspe);
        info.put("nombrep", data.get(0).get("name"));
        sql = "select users.name  FROM \n"
                + bd + ".dbo.ProyectsTemp prot\n"
                + "inner join " + bd + ".dbo.RolesUsuPro rol\n"
                + "on rol.id_proyecto = prot.id\n"
                + "inner join " + bd + ".dbo.Users users\n"
                + "on users.id = rol.id_user\n"
                + "where prot.id = " + id_proyect + " and rol.id_rol = 5";

        data = this.consultar(sql);
        info.put("lider", data.get(0).get("name"));

        return info;
    }

    public JSONObject CargarAlertasProyectos(String id_user, String id_proyect) throws Exception {

        //info.put("info", dataPro);
        //return info;
        JSONObject info = new JSONObject();

        String sql = "SELECT distinct\n"
                + "[id_proyecto]\n"
                + ",pro.name\n"
                + ",pro.lider\n"
                + ",usu.name as liderName\n"
                + "FROM [" + bd + "].[dbo].[RolesUsuPro] roles\n"
                + "inner join [" + bd + "].[dbo].[ProyectsTemp] pro\n"
                + "on pro.id = roles.id_proyecto\n"
                + "inner join [" + bd + "].[dbo].[Users] usu\n"
                + "on lider = usu.id\n"
                + "where roles.id_user = " + id_user + " and (roles.id_rol = 2 or roles.id_rol = 3 or roles.id_rol = 5)\n"
                + "order by roles.id_proyecto";

        Vector<Map> dataPro = this.consultar(sql);
        JSONArray jsonPro = new JSONArray();

        for (int i = 0; i < dataPro.size(); i++) {

            sql = "SELECT esp.[id]\n"
                    + "      ,[id_proyect]\n"
                    + "      ,[lider]\n"
                    + "	  ,esp.nombre\n"
                    + "      ,usu.name as liderName\n"
                    + "      ,esppro.id_especialidad \n"
                    + "  FROM [" + bd + "].[dbo].[EspecialidadProyects] esppro\n"
                    + "  inner join [" + bd + "].[dbo].[Especialidades] esp\n"
                    + "  on esp.id = esppro.id_especialidad\n"
                    + " inner join [" + bd + "].[dbo].[Users] usu\n"
                    + "  on usu.id = lider "
                    + "  where id_proyect = " + dataPro.get(i).get("id_proyecto").toString();

            Vector<Map> dataEspe = this.consultar(sql);
            JSONArray jsonEspe = new JSONArray();

            for (int j = 0; j < dataEspe.size(); j++) {

                sql = "SELECT fases.[id]\n"
                        + "	  , fases.nombre\n"
                        + "      ,[id_proyect]\n"
                        + "      ,[lider]\n"
                        + "      ,usu.name as liderName\n"
                        + "      ,esp.id_especialidad \n"
                        + "  FROM [" + bd + "].[dbo].[EspecialidadFase] esp\n"
                        + "  inner join [" + bd + "].[dbo].[Fases] fases\n"
                        + "  on esp.id_fase = fases.id\n"
                        + " inner join [" + bd + "].[dbo].[Users] usu\n"
                        + "  on usu.id = lider "
                        + " where id_proyect = " + dataPro.get(i).get("id_proyecto").toString() + " and esp.id_especialidad = " + dataEspe.get(j).get("id_especialidad").toString();

                Vector<Map> dataFases = this.consultar(sql);
                JSONArray jsonFases = new JSONArray();

                for (int k = 0; k < dataFases.size(); k++) {

                    sql = "SELECT [id_actividad]\n"
                            + "      ,[nombre]\n"
                            + "      ,[id_user]\n"
                            + "      ,[fecha_inicio]\n"
                            + "      ,[fecha_final]\n"
                            + "      ,[tiempo]\n"
                            + "      ,[tiempoTotal]\n"
                            + "	  ,DATEDIFF(dd, fecha_inicio, GETDATE()) tiempoTranscurrido\n"
                            + "  FROM [" + bd + "].[dbo].[EspecialidadFaseActPro] actp\n"
                            + "  inner join [" + bd + "].[dbo].[Actividades] act\n"
                            + "  on actp.id_actividad = act.id"
                            + "  where fecha_inicio is not null and id_fase = " + dataFases.get(k).get("id").toString()
                            + " and id_especialidad = " + dataEspe.get(j).get("id_especialidad").toString()
                            + " and id_proyect = " + dataPro.get(i).get("id_proyecto").toString();

                    Vector<Map> dataActi = this.consultar(sql);
                    JSONArray jsonActi = new JSONArray();

                    for (int l = 0; l < dataActi.size(); l++) {
                        JSONObject actividad = new JSONObject();
                        actividad.put("id", dataActi.get(l).get("id_actividad").toString());
                        actividad.put("nombre", dataActi.get(l).get("nombre").toString());
                        actividad.put("tiempo", dataActi.get(l).get("tiempo").toString());
                        actividad.put("fecha_inicio", dataActi.get(l).get("fecha_inicio").toString());
                        actividad.put("tiempoTranscurrido", dataActi.get(l).get("tiempoTranscurrido").toString());

                        double porcentaje = (Integer.parseInt(dataActi.get(l).get("tiempoTranscurrido").toString()) * 100) / Integer.parseInt(dataActi.get(l).get("tiempo").toString());
                        actividad.put("porcentaje", porcentaje);

                        if (dataActi.get(l).get("fecha_final") != null) {
                            actividad.put("fecha_final", dataActi.get(l).get("fecha_final").toString());
                        } else {
                            actividad.put("fecha_final", "--");
                        }

                        if (dataActi.get(l).get("tiempoTotal") != null) {
                            actividad.put("tiempoTotal", dataActi.get(l).get("tiempoTotal").toString());
                        } else {
                            actividad.put("tiempoTotal", "--");
                        }

                        jsonActi.put(actividad);
                    }

                    JSONObject fase = new JSONObject();
                    fase.put("id", dataFases.get(k).get("id").toString());
                    fase.put("nombre", dataFases.get(k).get("nombre").toString());
                    fase.put("lider", dataFases.get(k).get("liderName").toString());
                    fase.put("actividades", jsonActi);
                    jsonFases.put(fase);

                }

                JSONObject espe = new JSONObject();
                espe.put("id", dataEspe.get(j).get("id").toString());
                espe.put("nombre", dataEspe.get(j).get("nombre").toString());
                espe.put("lider", dataEspe.get(j).get("liderName").toString());
                espe.put("fases", jsonFases);
                jsonEspe.put(espe);

            }

            JSONObject pro = new JSONObject();
            pro.put("id", dataPro.get(i).get("id_proyecto").toString());
            pro.put("nombre", dataPro.get(i).get("name").toString());
            pro.put("lider", dataPro.get(i).get("liderName").toString());
            pro.put("especialidades", jsonEspe);
            jsonPro.put(pro);
        }

        info.put("info", jsonPro);
        return info;
    }

    public JSONObject eliminarProyecto(String idpro) throws Exception {
        Connection conn = null;
        JSONObject info = new JSONObject();

        try {

            conn = getConnection();
            conn.setAutoCommit(false);

            //Eliminar Proyecto
            String sql = "DELETE FROM [" + bd + "].[dbo].[ProyectsTemp]\n"
                    + "WHERE id = " + idpro;
            this.ejecutarUpdate(sql, conn);

            //Eliminar especialidades
            sql = "DELETE FROM [" + bd + "].[dbo].[EspecialidadProyects]\n"
                    + "WHERE id_proyect = " + idpro;
            this.ejecutarUpdate(sql, conn);

            //Eliminar fases
            sql = "DELETE FROM [" + bd + "].[dbo].[EspecialidadFase]\n"
                    + "WHERE id_proyect = " + idpro;
            this.ejecutarUpdate(sql, conn);

            //Eliminar actividades
            sql = "DELETE FROM [" + bd + "].[dbo].[EspecialidadFaseActPro]\n"
                    + "WHERE id_proyect = " + idpro;
            this.ejecutarUpdate(sql, conn);

            //Eliminar Roles
            sql = "DELETE FROM [" + bd + "].[dbo].[RolesUsuPro]\n"
                    + "WHERE id_proyecto = " + idpro;

            this.ejecutarUpdate(sql, conn);
            conn.commit();
            conn.close();
        } catch (Exception ex) {
            if (conn != null) {
                try {
                    conn.rollback();
                    conn.close();
                } catch (SQLException ex1) {
                    throw new Exception("Error cerrando la conexiòn con la base de datos");
                }
            }

            throw new Exception("Ha ocurrido un error de base de datos");
        }

        return info;
    }

    public JSONObject UpdateEstadoActvidadE(String idpro, String file) throws Exception {
        Vector<Map> data = null;

        JSONObject json = new JSONObject();
        String sql = "update [" + bd + "].[dbo].[EspecialidadProyects] set fileupload = '" + file + "', fecha_entrega=getdate() where id = " + idpro;
        data = this.consultar(sql);
        json.put("registro", data);
        UpdateStateActividad(idpro, "Se ha montado el informe de la especialidad <b>%acti%</b> en el proyecto <b>%proy%</b>", 1, "");
        return json;
    }

    public void UpdateEstadoEspecialidad(String idpro, String idesp, String file) throws Exception {
        String sql = "update [" + bd + "].[dbo].[EspecialidadProyects] set fileupload = '" + file + "' where id_proyect = " + idpro + " and id_especialidad=" + idesp;
        this.ejecutarUpdate(sql, null);
        UpdateStateActividad(idpro, "Se creo un informe para la especialidad %acti% en el proyecto %proy%", 3, idesp);
    }

    public JSONObject AprobarActividad(String id, String state) throws Exception {
        /*   Vector<Map> data = null;*/

        JSONObject json = new JSONObject();
        String sql = "update [" + bd + "].[dbo].[EspecialidadFaseActPro] set aprobado = " + state + ", tiempoTotal = CONVERT(int,fecha_final - fecha_inicio ) where id = " + id;
        /* data = */
        this.ejecutarUpdate(sql, null);
        json.put("registro", 0);
        UpdateStateActividad(id, "Se cambio el estado de la actividad <b> %acti% </b> en el proyecto: <b> %proy% </b>", 1, "");
        return json;
    }

    public void UpdateEstadoActvidad(String idpro, String file) throws Exception {
        String sql = "update [" + bd + "].[dbo].[EspecialidadFaseActPro] set aprobado = 3 , fecha_final=getdate() , fileupload = '" + file + "' where id = " + idpro;
        this.ejecutarUpdate(sql, null);
        sql = "update [" + bd + "].[dbo].[EspecialidadFaseActPro] set tiempoTotal = DATEDIFF(dd,fecha_inicio,fecha_final) where aprobado = 2";
        this.ejecutarUpdate(sql, null);
        UpdateStateActividad(idpro, "Se ha actualizado la Actividad <b>%acti%</b> en el proyecto <b>%proy%</b>", 1, "");

    }

    public JSONObject getInfoProyect(String id_proyect) throws Exception {

        Connection conn = null;
        JSONObject info = new JSONObject();

        try {

            conn = getConnection();
            conn.setAutoCommit(false);

            String sql = "SELECT esp.id, esp.nombre, users.name lider, esppro.fileupload\n"
                    + "  FROM [" + bd + "].[dbo].[EspecialidadProyects] esppro\n"
                    + "  inner join " + bd + ".dbo.Especialidades esp\n"
                    + "  on esp.id = esppro.id_especialidad\n"
                    + "  left join " + bd + ".dbo.Users users\n"
                    + "  on users.id = esppro.lider\n"
                    + "  where id_proyect = " + id_proyect;

            Vector<Map> dataEspe = this.consultar(sql, conn);
            JSONArray jsonEspe = new JSONArray();

            for (int i = 0; i < dataEspe.size(); i++) {

                sql = "SELECT fases.id, fases.nombre, users.name lider, peso\n"
                        + "  FROM " + bd + ".dbo.EspecialidadFase espfa\n"
                        + "  inner join " + bd + ".dbo.Fases fases\n "
                        + "  on espfa.id_fase = fases.id\n"
                        + "  left join " + bd + ".dbo.Users users\n"
                        + "  on users.id = espfa.lider"
                        + "  where id_proyect = " + id_proyect + " and id_especialidad = " + dataEspe.get(i).get("id");

                Vector<Map> dataFases = this.consultar(sql, conn);
                JSONArray jsonFases = new JSONArray();

                for (int j = 0; j < dataFases.size(); j++) {

                    sql = "SELECT allacti.id, allacti.nombre, acti.id as idactipro, acti.peso, acti.aprobado, acti.fecha_inicio, acti.fecha_final, acti.fileupload, acti.tiempo , acti.tiempoTotal \n"
                            + "  FROM " + bd + ".dbo.EspecialidadFaseActPro acti\n"
                            + "  inner join " + bd + ".dbo.Actividades allacti\n"
                            + "  on allacti.id = acti.id_actividad\n"
                            + "  where id_proyect = " + id_proyect + " and id_especialidad = " + dataEspe.get(i).get("id") + " and id_fase = " + dataFases.get(j).get("id");

                    Vector<Map> dataActi = this.consultar(sql, conn);
                    JSONArray jsonActi = new JSONArray();

                    for (int k = 0; k < dataActi.size(); k++) {

                        sql = "SELECT modu.id, modu.nombre\n"
                                + "  FROM " + bd + ".dbo.EspecialidadFaseActPro acti\n"
                                + "  inner join " + bd + ".dbo.ActividadModulo moduacti\n"
                                + "  on moduacti.id_actividadpro = acti.id\n"
                                + "  inner join " + bd + ".dbo.Modulos modu\n"
                                + "  on modu.id = moduacti.id_modulo\n"
                                + "  where id_proyect = " + id_proyect + " and id_especialidad = " + dataEspe.get(i).get("id")
                                + " and id_fase = " + dataFases.get(j).get("id") + " and id_actividad = " + dataActi.get(k).get("id");

                        Vector<Map> dataMod = this.consultar(sql, conn);

                        JSONObject acti = new JSONObject();
                        acti.put("id", dataActi.get(k).get("id"));
                        acti.put("nombre", dataActi.get(k).get("nombre"));
                        acti.put("peso", dataActi.get(k).get("peso"));
                        acti.put("tiempo", dataActi.get(k).get("tiempo"));
                        acti.put("aprobado", dataActi.get(k).get("aprobado"));
                        acti.put("fechai", dataActi.get(k).get("fecha_inicio"));
                        acti.put("fechaf", dataActi.get(k).get("fecha_final"));
                        acti.put("fileup", dataActi.get(k).get("fileupload"));
                        acti.put("tiempoTotal", dataActi.get(k).get("tiempoTotal"));
                        acti.put("modulos", dataMod);
                        jsonActi.put(acti);
                    }

                    JSONObject fase = new JSONObject();
                    fase.put("id", dataFases.get(j).get("id"));
                    fase.put("nombre", dataFases.get(j).get("nombre"));
                    fase.put("lider", dataFases.get(j).get("lider"));
                    fase.put("peso", dataFases.get(j).get("peso"));
                    fase.put("acti", jsonActi);

                    jsonFases.put(fase);
                }

                JSONObject espe = new JSONObject();
                espe.put("id", dataEspe.get(i).get("id"));
                espe.put("nombre", dataEspe.get(i).get("nombre"));
                espe.put("lider", dataEspe.get(i).get("lider"));
                espe.put("fileupload", dataEspe.get(i).get("fileupload"));
                espe.put("fases", jsonFases);

                sql = "SELECT [id]\n"
                        + "      ,[nombre]\n"
                        + "  FROM [" + bd + "].[dbo].[Actividades]\n"
                        + "  where id_espe = " + dataEspe.get(i).get("id");

                Vector<Map> dataEspeActis = this.consultar(sql, conn);
                espe.put("actis", dataEspeActis);

                jsonEspe.put(espe);

            }

            sql = "select prot.name, prot.area, areas.descripcion  FROM \n" +
                     bd + ".dbo.ProyectsTemp prot\n" +
                    "INNER JOIN " + this.bd + ".dbo.Areas areas\n" +
                    "On areas.id = prot.area\n" +
                    "where prot.id = " + id_proyect;

            Vector<Map> data = this.consultar(sql, conn);

            info.put("info", jsonEspe);
            info.put("nombrep", data.get(0).get("name"));
            info.put("area", data.get(0).get("area"));
            info.put("darea", data.get(0).get("descripcion"));
            sql = "select users.name  FROM \n"
                    + bd + ".dbo.ProyectsTemp prot\n"
                    + "inner join " + bd + ".dbo.RolesUsuPro rol\n"
                    + "on rol.id_proyecto = prot.id\n"
                    + "inner join " + bd + ".dbo.Users users\n"
                    + "on users.id = rol.id_user\n"
                    + "where prot.id = " + id_proyect + " and rol.id_rol = 5";

            data = this.consultar(sql, conn);
            info.put("lider", data.get(0).get("name"));

            conn.commit();
            conn.close();
        } catch (Exception ex) {
            if (conn != null) {
                try {
                    conn.rollback();
                    conn.close();
                } catch (SQLException ex1) {
                    Logger.getLogger(ProyectosModel.class.getName()).log(Level.SEVERE, null, ex1);
                }
            }
        }

        return info;

    }

    public static String getNombreP(String idp) throws Exception {
        String sql = "SELECT name FROM [" + bd + "].[dbo].[ProyectsTemp] Where id = " + idp;
        Vector<Map> data = consultar(sql);

        return data.get(0).get("name").toString();
    }

    public void UpdateStateActividad(String idpro, String msg, int opcion, String otro) throws Exception {
        String sql = "";
        Vector<Map> data = null;
        String id_proyect = "";
        String id_user = "";
        String id_especialidad = "";
        String nameAc = "";
        String namePr = "";
        if (opcion == 1) {
            sql = "SELECT [id_proyect],efp.[id_user],[id_especialidad],id_actividad, ac.nombre, pr.name FROM [" + bd + "].[dbo].[EspecialidadFaseActPro] efp ,[" + bd + "].[dbo].[Actividades] as ac,[" + bd + "].[dbo].[ProyectsTemp] pr where efp.id = " + idpro + " and ac.id = id_actividad and pr.id = id_proyect";
            data = this.consultar(sql);

            id_proyect = data.get(0).get("id_proyect").toString();
            id_user = data.get(0).get("id_user").toString();
            id_especialidad = data.get(0).get("id_especialidad").toString();
            nameAc = data.get(0).get("nombre").toString();
            namePr = data.get(0).get("name").toString();
        }
        if (opcion == 2) {
            sql = "SELECT ep.[id],[id_proyect],[id_especialidad],[lider],e.nombre,pt.name FROM [" + bd + "].[dbo].[EspecialidadProyects] as ep, [" + bd + "].[dbo].[Especialidades] e, [" + bd + "].[dbo].[ProyectsTemp] pt where ep.id_especialidad = e.id and pt.id= ep.id_proyect and ep.id =" + idpro;
            data = this.consultar(sql);
            nameAc = data.get(0).get("nombre").toString();
            namePr = data.get(0).get("name").toString();
            id_proyect = data.get(0).get("id_proyect").toString();
            id_user = data.get(0).get("id_user").toString();
            id_especialidad = data.get(0).get("id_especialidad").toString();
        }
        if (opcion == 3) {
            sql = "SELECT [id_proyect],[id_especialidad],e.nombre,pt.name, lider FROM [" + bd + "].[dbo].[EspecialidadProyects] ep, [" + bd + "].[dbo].[Especialidades] e, [" + bd + "].[dbo].[ProyectsTemp] pt  where id_proyect = " + idpro + " and id_especialidad = " + otro + " and e.id = " + otro + " and pt.id = ep.id_proyect;";
            data = this.consultar(sql);
            nameAc = data.get(0).get("nombre").toString();
            namePr = data.get(0).get("name").toString();
            id_proyect = data.get(0).get("id_proyect").toString();
            id_user = data.get(0).get("lider").toString();
            id_especialidad = data.get(0).get("id_especialidad").toString();
        }
        msg = msg.replaceAll("%acti%", nameAc);
        msg = msg.replaceAll("%proy%", namePr);
        sql = "insert into [" + bd + "].[dbo].[LogAction] (mensaje,idpro,id_liderE,id_liderF,fecha) values ('" + msg + "'," + id_proyect + "," + id_user + "," + id_especialidad + ",getdate())";
        this.ejecutarUpdate(sql, null);

    }

    public static int diferenciaEnDias2(Date fechaMayor, Date fechaMenor) {
        long fecha1 = fechaMayor.getTime();
        long fecha2 = fechaMenor.getTime();
        long diferenciaEn = fecha1 - fecha2;
        long dias = diferenciaEn / (1000 * 60 * 60 * 24);
        return (int) dias;
    }
}
