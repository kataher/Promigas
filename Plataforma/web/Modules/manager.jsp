<%-- 
    Document   : index
    Created on : 03-mar-2016, 7:38:25
    Author     : kata__000

--%>


<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.BufferedInputStream"%>
<%@page import="java.io.File"%>
<%@page import="org.json.JSONObject"%>
<%@page import="java.io.IOException"%>
<%@page import="Controller.GeneralController"%>


<%

    String respuesta;
    JSONObject json;
    int opcion = Integer.parseInt(request.getParameter("opcion"));
    System.err.println(opcion);
    GeneralController controller = new GeneralController(request);

    switch (opcion) {
        case 1:
            json = add(request, response, controller);
            out.print(json);
            break;
        case 2:
            json = edit(request, response, controller);
            out.print(json);
            break;
        case 3:
            json = delete(request, response, controller);
            out.print(json);
            break;
        case 4:
            json = load(request, response, controller);
            out.print(json);
            break;
        case 5:
            respuesta = load_Cmbo(request, response, controller);
            out.print(respuesta);
            break;
        case 6:
            json = loadH(request, response, controller);
            out.print(json);
            break;

        //Metodos Particulares
        //----Modulo 1----
        //----Modulo 2----
        //----Modulo 3----
        //----Modulo 4----
        //----Modulo 5----
        //----Modulo 6----
        case 60:
            json = get_cambioTermico(request, response, controller);
            out.print(json);
            break;

        //----Modulo 7----
        //----Modulo 8----
        //----Modulo 9----
        //----Modulo 10----
        case 100:
            json = getTorque_Act(request, response, controller);
            out.print(json);
            break;
        case 101:
            json = getMaximos_Act(request, response, controller);
            out.print(json);
            break;
        case 102:
            json = getDataSheet(request, response, controller);
            out.print(json);
            break;
        case 103:
            json = getAllTorques_Act(request, response, controller);
            out.print(json);
            break;
        case 104:
            json = getOrificioValvulas(request, response, controller);
            out.print(json);
            break;
        case 105:
            json = getValorOrificioValvulas(request, response, controller);
            out.print(json);
            break;
        case 106:
            json = getEspecificacionMecanismo(request, response, controller);
            out.print(json);
            break;
        case 107:
            respuesta = addActuador(request, response, controller);
            out.print(respuesta);
            break;
        case 108:
            json = getPlatina(request, response, controller);
            out.print(json);
            break;
        case 109:
            json = getReguladorCV(request, response, controller);
            out.print(json);
            break;
        case 110:
            json = getReguladorCVSugerido(request, response, controller);
            out.print(json);
            break;

        //Modulo administrativo
        case 200:
            json = saveStep_newproyect(request, response, controller);
            out.print(json);
            break;
        case 201:
            json = getEspecialidades(request, response, controller);
            out.print(json);
            break;
        case 202:
            json = getFases(request, response, controller);
            out.print(json);
            break;
        case 203:
            json = getModulos(request, response, controller);
            out.print(json);
            break;
        case 204:
            json = getActividades(request, response, controller);
            out.print(json);
            break;
        case 205:
            validateProjectName(request, response, controller);
            break;
        case 206:
            crearProyecto(request, response, controller);
            break;
        case 207:
            json = getProyectos(request, response, controller);
            out.print(json);
            break;
        case 208:
            json = setEstadoActvidad(request, response, controller);
            out.print(json);
            break;
        case 209:
            json = getEstadoActvidad(request, response, controller);
            out.print(json);
            break;
        case 210:
            //UpdateEstadoActvidad(request, response, controller);
            break;
        case 211:
            json = CargarInfoEspecialidad(request, response, controller);
            out.print(json);
            break;
        case 212:
            json = getInfoProyect(request, response, controller);
            out.print(json);
            break;
        //213 martin
        case 213:
            json = AprobarActividad(request, response, controller);
            out.print("");
            break;
        case 214:
            json = UpdateEstadoActvidadE(request, response, controller);
            out.print(json);
            break;
        case 215:
            json = editStep_newproyect(request, response, controller);
            out.print(json);
            break;
        case 216:
            json = CargarAlertasProyectos(request, response, controller);
            out.print(json);
            break;
        case 217:
            json = eliminarProyecto(request, response, controller);
            out.print(json);
            break;
        case 218:
            json = getProyectosByUserIgnoringRol(request, response, controller);
            out.print(json);
            break;
        case 219:
            json = getAllProjects(request, response, controller);
            out.print(json);
            break;

        //Usuarios
        case 300:
            json = getUsuarios(request, response, controller);
            out.print(json);
            break;
        case 301:
            editUsu(request, response, controller);
            break;
        case 302:
            json = deleteUsu(request, response, controller);
            out.print(json);
            break;
        case 303:
            json = addUsuario(request, response, controller);
            out.print(json);
            break;
        case 304:
            json = login(request, response, controller);
            out.print(json);
            break;
        case 305:
            json = getRolUser(request, response, controller);
            out.print(json);
            break;
        case 306:
            json = getRoles(request, response, controller);
            out.print(json);
            break;
        case 307:
            json = getUsuarioRoles(request, response, controller);
            out.print(json);
            break;
        case 308:
            json = getInfoUser(request, response, controller);
            out.print(json);
            break;
        case 309:
            json = getUsuarioAreas(request, response, controller);
            out.print(json);
            break;

        //Actividades
        case 310:
            json = getActividadesUsu(request, response, controller);
            out.print(json);
            break;
        case 311:
            json = editActividades(request, response, controller);
            out.print(json);
            break;
        case 312:
            json = deleteActividades(request, response, controller);
            out.print(json);
            break;
        case 313:
            json = addActividad(request, response, controller);
            out.print(json);
            break;

        //Fases
        case 320:
            json = getFasesAdm(request, response, controller);
            out.print(json);
            break;
        case 321:
            json = editFases(request, response, controller);
            out.print(json);
            break;
        case 322:
            json = deleteFases(request, response, controller);
            out.print(json);
            break;
        case 323:
            json = addFase(request, response, controller);
            out.print(json);
            break;

        //Especialidades
        case 330:
            json = getEspecialidadesAdm(request, response, controller);
            response.setStatus(200);
            out.print(json);
            break;
        case 331:
            json = editEspecialidades(request, response, controller);
            out.print(json);
            break;
        case 332:
            json = deleteEspecialidades(request, response, controller);
            out.print(json);
            break;
        case 333:
            json = addEspecialidad(request, response, controller);
            out.print(json);
            break;

        //Aras   
        case 340:
            json = getAreas(request, response, controller);
            out.print(json);
            break;
        case 341:
            json = editFases(request, response, controller);
            out.print(json);
            break;
        case 342:
            json = deleteFases(request, response, controller);
            out.print(json);
            break;
        case 343:
            json = addFase(request, response, controller);
            out.print(json);
            break;

        case 500:
            json = new JSONObject();
            json.put("r", "r");
            out.print(json);
            break;
    }


%>

<%!
    private JSONObject add(HttpServletRequest request, HttpServletResponse response, GeneralController controller) throws IOException {

        JSONObject json = null;
        try {
            json = controller.add(request);
        } catch (Exception ex) {
            response.sendError(1, ex.getMessage());
        }

        return json;
    }

    private JSONObject edit(HttpServletRequest request, HttpServletResponse response, GeneralController controller) throws IOException {
        JSONObject json = null;
        try {
            json = controller.edit(request);
        } catch (Exception ex) {
            response.sendError(1, ex.getMessage());
        }

        return json;
    }

    private JSONObject delete(HttpServletRequest request, HttpServletResponse response, GeneralController controller) throws IOException {
        JSONObject json = null;
        try {
            json = controller.delete(request);
        } catch (Exception ex) {
            response.sendError(1, ex.getMessage());
        }

        return json;

    }

    private JSONObject load(HttpServletRequest request, HttpServletResponse response, GeneralController controller) throws IOException {

        JSONObject json = null;

        try {
            json = controller.load(request);

        } catch (Exception ex) {
            response.sendError(1, ex.getMessage());
        }

        return json;
    }

    private String load_Cmbo(HttpServletRequest request, HttpServletResponse response, GeneralController controller) throws IOException {
        String res = "";
        try {
            res = controller.load_Cmbo(request);

        } catch (Exception ex) {
            response.sendError(1, ex.getMessage());
        }

        return res;
    }

    private JSONObject loadH(HttpServletRequest request, HttpServletResponse response, GeneralController controller) throws IOException {
        JSONObject res = null;
        try {
            res = controller.loadH(request);

        } catch (Exception ex) {
            response.sendError(1, ex.getMessage());
        }

        return res;
    }

    private JSONObject getTorque_Act(HttpServletRequest request, HttpServletResponse response, GeneralController controller) throws IOException {
        JSONObject res = null;
        try {
            res = controller.getTorque_Act(request);

        } catch (Exception ex) {
            response.sendError(1, ex.getMessage());
        }

        return res;
    }

    private JSONObject getAllTorques_Act(HttpServletRequest request, HttpServletResponse response, GeneralController controller) throws IOException {
        JSONObject res = null;
        try {
            res = controller.getAllTorque_Act(request);

        } catch (Exception ex) {
            response.sendError(1, ex.getMessage());
        }

        return res;
    }

    private JSONObject getOrificioValvulas(HttpServletRequest request, HttpServletResponse response, GeneralController controller) throws IOException {
        JSONObject res = null;
        try {
            res = controller.getOrificioValvulas(request);

        } catch (Exception ex) {
            response.sendError(1, ex.getMessage());
        }

        return res;
    }

    private JSONObject getValorOrificioValvulas(HttpServletRequest request, HttpServletResponse response, GeneralController controller) throws IOException {
        JSONObject res = null;
        try {
            res = controller.getValorOrificioValvulas(request);

        } catch (Exception ex) {
            response.sendError(1, ex.getMessage());
        }

        return res;
    }

    private JSONObject getEspecificacionMecanismo(HttpServletRequest request, HttpServletResponse response, GeneralController controller) throws IOException {
        JSONObject res = null;
        try {
            res = controller.getEspecificacionMecanismo(request);

        } catch (Exception ex) {
            response.sendError(1, ex.getMessage());
        }

        return res;
    }

    private JSONObject getPlatina(HttpServletRequest request, HttpServletResponse response, GeneralController controller) throws IOException {
        JSONObject res = null;
        try {
            res = controller.getPlatina(request);

        } catch (Exception ex) {
            response.sendError(1, ex.getMessage());
        }

        return res;
    }

    private JSONObject getReguladorCV(HttpServletRequest request, HttpServletResponse response, GeneralController controller) throws IOException {
        JSONObject res = null;
        try {
            res = controller.getReguladorCV(request);

        } catch (Exception ex) {
            response.sendError(1, ex.getMessage());
        }

        return res;
    }

    private JSONObject getReguladorCVSugerido(HttpServletRequest request, HttpServletResponse response, GeneralController controller) throws IOException {
        JSONObject res = null;
        try {
            res = controller.getReguladorCVSugerido(request);

        } catch (Exception ex) {
            response.sendError(1, ex.getMessage());
        }

        return res;
    }

    private String addActuador(HttpServletRequest request, HttpServletResponse response, GeneralController controller) throws IOException {
        String res = null;
        try {
            res = controller.addActuador(request);

        } catch (Exception ex) {
            response.sendError(1, ex.getMessage());
        }

        return res;
    }

    private JSONObject getMaximos_Act(HttpServletRequest request, HttpServletResponse response, GeneralController controller) throws IOException {
        JSONObject res = null;
        try {
            res = controller.getMaximos_Act(request);

        } catch (Exception ex) {
            response.sendError(1, ex.getMessage());
        }

        return res;
    }

    private JSONObject getDataSheet(HttpServletRequest request, HttpServletResponse response, GeneralController controller) throws IOException {
        JSONObject res = null;
        try {
            res = controller.getDataSheet(request);

        } catch (Exception ex) {
            response.sendError(1, ex.getMessage());
        }

        return res;
    }

    private JSONObject get_cambioTermico(HttpServletRequest request, HttpServletResponse response, GeneralController controller) throws IOException {
        JSONObject res = null;
        try {
            res = controller.get_cambioTermico(request);

        } catch (Exception ex) {
            response.sendError(1, ex.getMessage());
        }

        return res;
    }

    private JSONObject saveStep_newproyect(HttpServletRequest request, HttpServletResponse response, GeneralController controller) throws IOException {
        JSONObject res = null;
        try {
            res = controller.saveStep_newproyect(request);

        } catch (Exception ex) {
            response.sendError(1, ex.getMessage());
        }

        return res;
    }

    private JSONObject editStep_newproyect(HttpServletRequest request, HttpServletResponse response, GeneralController controller) throws IOException {
        JSONObject res = null;
        try {
            res = controller.editStep_newproyect(request);

        } catch (Exception ex) {
            response.sendError(1, ex.getMessage());
        }

        return res;
    }

    private JSONObject getEspecialidades(HttpServletRequest request, HttpServletResponse response, GeneralController controller) throws IOException {
        JSONObject res = null;
        try {
            res = controller.getEspecialidades(request);

        } catch (Exception ex) {
            response.sendError(1, ex.getMessage());
        }

        return res;
    }

    private JSONObject getFases(HttpServletRequest request, HttpServletResponse response, GeneralController controller) throws IOException {
        JSONObject res = null;
        try {
            res = controller.getFases(request);

        } catch (Exception ex) {
            response.sendError(1, ex.getMessage());
        }

        return res;
    }

    private JSONObject getModulos(HttpServletRequest request, HttpServletResponse response, GeneralController controller) throws IOException {
        JSONObject res = null;
        try {
            res = controller.getModulos(request);

        } catch (Exception ex) {
            response.sendError(1, ex.getMessage());
        }

        return res;
    }

    private JSONObject getActividades(HttpServletRequest request, HttpServletResponse response, GeneralController controller) throws IOException {
        JSONObject res = null;
        try {
            res = controller.getActividades(request);

        } catch (Exception ex) {
            response.sendError(1, ex.getMessage());
        }

        return res;
    }

    private void validateProjectName(HttpServletRequest request, HttpServletResponse response, GeneralController controller) throws IOException {
        try {
            controller.validateProjectName(request);

        } catch (Exception ex) {
            response.sendError(1, ex.getMessage());
        }
    }

    private void crearProyecto(HttpServletRequest request, HttpServletResponse response, GeneralController controller) throws IOException {
        try {
            controller.crearProyecto(request);

        } catch (Exception ex) {
            response.sendError(1, ex.getMessage());
        }
    }

    private JSONObject getProyectos(HttpServletRequest request, HttpServletResponse response, GeneralController controller) throws IOException {
        JSONObject res = null;
        try {
            res = controller.getProyectos(request);

        } catch (Exception ex) {
            response.sendError(1, ex.getMessage());
        }

        return res;
    }

    private JSONObject getProyectosByUserIgnoringRol(HttpServletRequest request, HttpServletResponse response, GeneralController controller) throws IOException {
        JSONObject res = null;
        try {
            res = controller.getProyectosByUserIgnoringRol(request);

        } catch (Exception ex) {
            response.sendError(1, ex.getMessage());
        }

        return res;
    }

    private JSONObject getAllProjects(HttpServletRequest request, HttpServletResponse response, GeneralController controller) throws IOException {
        JSONObject res = null;
        try {
            res = controller.getAllProjects(request);

        } catch (Exception ex) {
            response.sendError(1, ex.getMessage());
        }

        return res;
    }

    private JSONObject setEstadoActvidad(HttpServletRequest request, HttpServletResponse response, GeneralController controller) throws IOException {
        JSONObject res = null;
        try {
            res = controller.setEstadoActividad(request);

        } catch (Exception ex) {
            response.sendError(1, ex.getMessage());
        }

        return res;
    }

    private JSONObject getEstadoActvidad(HttpServletRequest request, HttpServletResponse response, GeneralController controller) throws IOException {
        JSONObject res = null;
        try {
            res = controller.getEstadoActividad(request);

        } catch (Exception ex) {
            response.sendError(1, ex.getMessage());
        }

        return res;
    }

    private JSONObject CargarInfoEspecialidad(HttpServletRequest request, HttpServletResponse response, GeneralController controller) throws IOException {
        JSONObject res = null;
        try {
            res = controller.CargarInfoEspecialidad(request);

        } catch (Exception ex) {
            response.sendError(1, ex.getMessage());
        }

        return res;
    }

    private JSONObject CargarAlertasProyectos(HttpServletRequest request, HttpServletResponse response, GeneralController controller) throws IOException {
        JSONObject res = null;
        try {
            res = controller.CargarAlertasProyectos(request);

        } catch (Exception ex) {
            response.sendError(1, ex.getMessage());
        }

        return res;
    }

    private JSONObject eliminarProyecto(HttpServletRequest request, HttpServletResponse response, GeneralController controller) throws IOException {
        JSONObject res = null;
        try {
            res = controller.eliminarProyecto(request);

        } catch (Exception ex) {
            response.sendError(1, ex.getMessage());
        }

        return res;
    }

    private JSONObject getInfoProyect(HttpServletRequest request, HttpServletResponse response, GeneralController controller) throws IOException {
        JSONObject res = null;
        try {
            res = controller.getInfoProyect(request);

        } catch (Exception ex) {
            response.sendError(1, ex.getMessage());
        }

        return res;
    }

    private JSONObject AprobarActividad(HttpServletRequest request, HttpServletResponse response, GeneralController controller) throws IOException {
        JSONObject res = null;
        try {
            res = controller.AprobarActividad(request);

        } catch (Exception ex) {
            response.sendError(1, ex.getMessage());
        }

        return res;
    }

    private JSONObject UpdateEstadoActvidadE(HttpServletRequest request, HttpServletResponse response, GeneralController controller) throws IOException {
        JSONObject res = null;
        try {
            res = controller.UpdateEstadoActvidadE(request);

        } catch (Exception ex) {
            response.sendError(1, ex.getMessage());
        }

        return res;
    }

    private JSONObject getUsuarios(HttpServletRequest request, HttpServletResponse response, GeneralController controller) throws IOException {
        JSONObject res = null;
        try {
            res = controller.getUsuarios(request);

        } catch (Exception ex) {
            response.sendError(1, ex.getMessage());
        }

        return res;
    }

    private JSONObject addUsuario(HttpServletRequest request, HttpServletResponse response, GeneralController controller) throws IOException {
        JSONObject res = null;
        try {
            res = controller.addUsuario(request);

        } catch (Exception ex) {
            response.sendError(1, ex.getMessage());
        }

        return res;
    }

    private void editUsu(HttpServletRequest request, HttpServletResponse response, GeneralController controller) throws IOException {
        try {
            controller.editUsuario(request);

        } catch (Exception ex) {
            response.sendError(1, ex.getMessage());
        }
    }

    private JSONObject deleteUsu(HttpServletRequest request, HttpServletResponse response, GeneralController controller) throws IOException {
        JSONObject res = null;
        try {
            res = controller.deleteUsuario(request);

        } catch (Exception ex) {
            response.sendError(1, ex.getMessage());
        }

        return res;
    }

    private JSONObject login(HttpServletRequest request, HttpServletResponse response, GeneralController controller) throws IOException {
        JSONObject res = null;
        try {
            res = controller.login(request);
            HttpSession session = request.getSession();
            session.setAttribute("name", res.get("name"));
            session.setAttribute("fullname", res.get("fullname"));
            session.setAttribute("idusu", res.get("id"));
            session.setAttribute("tipo", res.get("type"));
            session.setAttribute("roles", res.get("roles"));
            

        } catch (Exception ex) {
            response.sendError(1, ex.getMessage());
        }

        return res;
    }

    private JSONObject getRolUser(HttpServletRequest request, HttpServletResponse response, GeneralController controller) throws IOException {
        JSONObject res = null;
        try {
            res = controller.getRolUser(request);

        } catch (Exception ex) {
            response.sendError(1, ex.getMessage());
        }

        return res;
    }

    private JSONObject getRoles(HttpServletRequest request, HttpServletResponse response, GeneralController controller) throws IOException {
        JSONObject res = null;
        try {
            res = controller.getRoles(request);

        } catch (Exception ex) {
            response.sendError(1, ex.getMessage());
        }

        return res;
    }

    private JSONObject getUsuarioRoles(HttpServletRequest request, HttpServletResponse response, GeneralController controller) throws IOException {
        JSONObject res = null;
        try {
            res = controller.getUsuarioRoles(request);

        } catch (Exception ex) {
            response.sendError(1, ex.getMessage());
        }

        return res;
    }

    private JSONObject getUsuarioAreas(HttpServletRequest request, HttpServletResponse response, GeneralController controller) throws IOException {
        JSONObject res = null;
        try {
            res = controller.getUsuarioAreas(request);

        } catch (Exception ex) {
            response.sendError(1, ex.getMessage());
        }

        return res;
    }

    private JSONObject getInfoUser(HttpServletRequest request, HttpServletResponse response, GeneralController controller) throws IOException {
        JSONObject res = null;
        try {
            res = controller.getInfoUser(request);

        } catch (Exception ex) {
            response.sendError(1, ex.getMessage());
        }

        return res;
    }

    private JSONObject getActividadesUsu(HttpServletRequest request, HttpServletResponse response, GeneralController controller) throws IOException {
        JSONObject res = null;
        try {
            res = controller.getActividadesUsu(request);

        } catch (Exception ex) {
            response.sendError(1, ex.getMessage());
        }

        return res;
    }

    private JSONObject editActividades(HttpServletRequest request, HttpServletResponse response, GeneralController controller) throws IOException {
        JSONObject res = null;
        try {
            res = controller.editActividades(request);

        } catch (Exception ex) {
            response.sendError(1, ex.getMessage());
        }

        return res;
    }

    private JSONObject addActividad(HttpServletRequest request, HttpServletResponse response, GeneralController controller) throws IOException {
        JSONObject res = null;
        try {
            res = controller.addActividad(request);

        } catch (Exception ex) {
            response.sendError(1, ex.getMessage());
        }

        return res;
    }

    private JSONObject deleteActividades(HttpServletRequest request, HttpServletResponse response, GeneralController controller) throws IOException {
        JSONObject res = null;
        try {
            res = controller.deleteActividades(request);

        } catch (Exception ex) {
            response.sendError(1, ex.getMessage());
        }

        return res;
    }

    private JSONObject getFasesAdm(HttpServletRequest request, HttpServletResponse response, GeneralController controller) throws IOException {
        JSONObject res = null;
        try {
            res = controller.getFasesAdm(request);

        } catch (Exception ex) {
            response.sendError(1, ex.getMessage());
        }

        return res;
    }

    private JSONObject getAreas(HttpServletRequest request, HttpServletResponse response, GeneralController controller) throws IOException {
        JSONObject res = null;
        try {
            res = controller.getAreas(request);

        } catch (Exception ex) {
            response.sendError(1, ex.getMessage());
        }

        return res;
    }

    private JSONObject addFase(HttpServletRequest request, HttpServletResponse response, GeneralController controller) throws IOException {
        JSONObject res = null;
        try {
            res = controller.addFase(request);

        } catch (Exception ex) {
            response.sendError(1, ex.getMessage());
        }

        return res;
    }

    private JSONObject editFases(HttpServletRequest request, HttpServletResponse response, GeneralController controller) throws IOException {
        JSONObject res = null;
        try {
            res = controller.editFases(request);

        } catch (Exception ex) {
            response.sendError(1, ex.getMessage());
        }

        return res;
    }

    private JSONObject deleteFases(HttpServletRequest request, HttpServletResponse response, GeneralController controller) throws IOException {
        JSONObject res = null;
        try {
            res = controller.deleteFases(request);

        } catch (Exception ex) {
            response.sendError(1, "Imposible eliminar la fase, se encuentra relacionada con proyectos en configuracion o en proceso");
        }

        return res;
    }

    private JSONObject addEspecialidad(HttpServletRequest request, HttpServletResponse response, GeneralController controller) throws IOException {
        JSONObject res = null;
        try {
            res = controller.addEspecialidad(request);

        } catch (Exception ex) {
            response.sendError(1, ex.getMessage());
        }

        return res;
    }

    private JSONObject getEspecialidadesAdm(HttpServletRequest request, HttpServletResponse response, GeneralController controller) throws IOException {
        JSONObject res = null;
        try {
            res = controller.getEspecialidadesAdm(request);

        } catch (Exception ex) {
            response.sendError(1, ex.getMessage());
        }

        return res;
    }

    private JSONObject editEspecialidades(HttpServletRequest request, HttpServletResponse response, GeneralController controller) throws IOException {
        JSONObject res = null;
        try {
            res = controller.editEspecialidades(request);

        } catch (Exception ex) {
            response.sendError(1, ex.getMessage());
        }

        return res;
    }

    private JSONObject deleteEspecialidades(HttpServletRequest request, HttpServletResponse response, GeneralController controller) throws IOException {
        JSONObject res = null;
        try {
            res = controller.deleteEspecialidades(request);

        } catch (Exception ex) {
            response.sendError(1, "Imposible eliminar la especialidad, se encuentra relacionada con proyectos en configuracion o en proceso");
        }

        return res;
    }


%>
