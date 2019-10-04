//http://rogerdudler.github.io/git-guide/index.es.html
/*

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Controller.Administracion.ActividadesController;
import Controller.Administracion.AreasController;
import Controller.Administracion.EspecialidadesController;
import Controller.Administracion.FasesController;
import Controller.Administracion.ProyectosController;
import Controller.Administracion.RolesController;
import Controller.Administracion.UsuariosController;
import Controller.BuriedPipe.AllowableController;
import Controller.BuriedPipe.InstallationController;
import Controller.BuriedPipe.PostInstallationController;
import Model.ComboModel;
import java.util.Map;
import java.util.Vector;
import javax.servlet.http.HttpServletRequest;
import org.json.JSONObject;
import Controller.Pipeline.*;
import Controller.Hydraulics.*;
import Controller.PipelineTesting.*;
import Controller.PipelineCorrosion.*;
import Controller.CathodicProtection.*;
import Controller.Selector.*;
import Controller.StellPipeDesing.BendingStresFluidController;
import Controller.StellPipeDesing.BendingStressController;
import Model.Administracion.UsuariosModel;
import Model.GeneralModel;
import Model.Selector.MotorizedVModel;
import Model.Selector.TransmisoresModel;
import java.io.File;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author kata__000
 */
public class GeneralController {

    private final ComboModel cModel = new ComboModel();
    private String from;
    private Object controller;
    private Map<String, String> values;
    private GeneralModel model;

    public GeneralController(HttpServletRequest request) throws Exception {
        this.from = request.getParameter("from");
        model = new GeneralModel();

    }

    private void setController(String from) throws Exception {
        switch (from) {

            //Modulo 1
            case "ah":
                controller = new AdiabaticHeadController();
                model = new GeneralModel(((AdiabaticHeadController) controller).getModel(), from);
                break;
            case "ahp":
                controller = new AdiabaticHorsePowerController();
                model = new GeneralModel(((AdiabaticHorsePowerController) controller).getModel(), from);
                break;
            case "chp":
                controller = new CapacityHorsePowerController();
                model = new GeneralModel(((CapacityHorsePowerController) controller).getModel(), from);
                break;
            case "dgv":
                controller = new DiameterGasVelocityController();
                model = new GeneralModel(((DiameterGasVelocityController) controller).getModel(), from);
                break;
            case "fl":
                controller = new FanLawsController();
                model = new GeneralModel(((FanLawsController) controller).getModel(), from);
                break;
            case "htz":
                controller = new HotTapSizingController();
                model = new GeneralModel(((HotTapSizingController) controller).getModel(), from);
                break;
            case "ppw":
                controller = new PipingPipeWallController();
                model = new GeneralModel(((PipingPipeWallController) controller).getModel(), from);
                break;
            case "php":
                controller = new PolytropicHorsePowerController();
                model = new GeneralModel(((PolytropicHorsePowerController) controller).getModel(), from);
                break;
            case "rs":
                controller = new RegulatorStationController();
                model = new GeneralModel(((RegulatorStationController) controller).getModel(), from);
                break;
            case "rvs":
                controller = new ReliefValveSizingController();
                model = new GeneralModel(((ReliefValveSizingController) controller).getModel(), from);
                break;
            case "rvr":
                controller = new ReliefValveReactionController();
                model = new GeneralModel(((ReliefValveReactionController) controller).getModel(), from);
                break;
            case "rwb":
                controller = new ReinforcementWeldController();
                model = new GeneralModel(((ReinforcementWeldController) controller).getModel(), from);
                break;

            //Modulo 2
            case "adp":
                controller = new PanhandleAController();
                model = new GeneralModel(((PanhandleAController) controller).getModel(), from);
                break;
            case "bdp":
                controller = new PanhandleBController();
                model = new GeneralModel(((PanhandleBController) controller).getModel(), from);
                break;
            case "cfr":
                controller = new ColebrookWhiteController();
                model = new GeneralModel(((ColebrookWhiteController) controller).getModel(), from);
                break;
            case "wdp":
                controller = new WeymouthController();
                model = new GeneralModel(((WeymouthController) controller).getModel(), from);
                break;
            case "aga":
                controller = new AgaController();
                model = new GeneralModel(((AgaController) controller).getModel(), from);
                break;
            case "igt":
                controller = new IGTController();
                model = new GeneralModel(((IGTController) controller).getModel(), from);
                break;
            case "mll":
                controller = new MullerController();
                model = new GeneralModel(((MullerController) controller).getModel(), from);
                break;
            case "fri":
                controller = new FritzcheController();
                model = new GeneralModel(((FritzcheController) controller).getModel(), from);
                break;
            case "spi":
                controller = new SpitzglassController();
                model = new GeneralModel(((SpitzglassController) controller).getModel(), from);
                break;

            //Modulo 3
            case "bds":
                controller = new BendingStressController();
                model = new GeneralModel(((BendingStressController) controller).getModel(), from);
                break;
            case "bdsf":
                controller = new BendingStresFluidController();
                model = new GeneralModel(((BendingStresFluidController) controller).getModel(), from);
                break;
            case "basc":
                controller = new AlternativeAcceptanceController();
                model = new GeneralModel(((AlternativeAcceptanceController) controller).getModel(), from);
                break;
            case "baw":
                controller = new AlternativeAcceptanceController();
                model = new GeneralModel(((AlternativeAcceptanceController) controller).getModel(), from);
                break;
            case "dp":
                controller = new AlternativeAcceptanceController();
                model = new GeneralModel(((AlternativeAcceptanceController) controller).getModel(), from);
                break;
            case "dpp":
                controller = new AlternativeAcceptanceController();
                model = new GeneralModel(((AlternativeAcceptanceController) controller).getModel(), from);
                break;
            case "gas":
                controller = new AlternativeAcceptanceController();
                model = new GeneralModel(((AlternativeAcceptanceController) controller).getModel(), from);
                break;
            case "hoop":
                controller = new AlternativeAcceptanceController();
                model = new GeneralModel(((AlternativeAcceptanceController) controller).getModel(), from);
                break;
            case "inpp":
                controller = new AlternativeAcceptanceController();
                model = new GeneralModel(((AlternativeAcceptanceController) controller).getModel(), from);
                break;
            case "ippo":
                controller = new AlternativeAcceptanceController();
                model = new GeneralModel(((AlternativeAcceptanceController) controller).getModel(), from);
                break;
            case "ipsmys":
                controller = new AlternativeAcceptanceController();
                model = new GeneralModel(((AlternativeAcceptanceController) controller).getModel(), from);
                break;
            case "lther":
                controller = new AlternativeAcceptanceController();
                model = new GeneralModel(((AlternativeAcceptanceController) controller).getModel(), from);
                break;
            case "lostre":
                controller = new AlternativeAcceptanceController();
                model = new GeneralModel(((AlternativeAcceptanceController) controller).getModel(), from);
                break;
            case "max":
                controller = new AlternativeAcceptanceController();
                model = new GeneralModel(((AlternativeAcceptanceController) controller).getModel(), from);
                break;
            case "milpd":
                controller = new AlternativeAcceptanceController();
                model = new GeneralModel(((AlternativeAcceptanceController) controller).getModel(), from);
                break;
            case "paf":
                controller = new AlternativeAcceptanceController();
                model = new GeneralModel(((AlternativeAcceptanceController) controller).getModel(), from);
                break;
            case "rpl":
                controller = new AlternativeAcceptanceController();
                model = new GeneralModel(((AlternativeAcceptanceController) controller).getModel(), from);
                break;
            case "up":
                controller = new AlternativeAcceptanceController();
                model = new GeneralModel(((AlternativeAcceptanceController) controller).getModel(), from);
                break;
            case "unrpl":
                controller = new AlternativeAcceptanceController();
                model = new GeneralModel(((AlternativeAcceptanceController) controller).getModel(), from);
                break;
            case "wts":
                controller = new AlternativeAcceptanceController();
                model = new GeneralModel(((AlternativeAcceptanceController) controller).getModel(), from);
                break;
            case "wtpe":
                controller = new AlternativeAcceptanceController();
                model = new GeneralModel(((AlternativeAcceptanceController) controller).getModel(), from);
                break;

            //Modulo 4
            //Modulo 5
            //Modulo 6
            case "alc":
                controller = new AlternativeAcceptanceController();
                model = new GeneralModel(((AlternativeAcceptanceController) controller).getModel(), from);
                break;
            case "gp":
                controller = new GasPipelineController();
                model = new GeneralModel(((GasPipelineController) controller).getModel(), from);
                break;
            case "pap":
                controller = new PackPipelineController();
                model = new GeneralModel(((PackPipelineController) controller).getModel(), from);
                break;
            case "blo":
                controller = new PipelineBlowdownController();
                model = new GeneralModel(((PipelineBlowdownController) controller).getModel(), from);
                break;
            case "phy":
                controller = new PipelineHydrostaticController();
                model = new GeneralModel(((PipelineHydrostaticController) controller).getModel(), from);
                break;
            case "pt":
                controller = new PipelineTimeController();
                model = new GeneralModel(((PipelineTimeController) controller).getModel(), from);
                break;
            case "pca":
                controller = new PurgingCalculationsController();
                model = new GeneralModel(((PurgingCalculationsController) controller).getModel(), from);
                break;

            //Modulo 7
            case "elr":
                controller = new ElectricalResistanceController();
                model = new GeneralModel(((ElectricalResistanceController) controller).getModel(), from);
                break;
            case "ere":
                controller = new ElectrolyteResistanceController();
                model = new GeneralModel(((ElectrolyteResistanceController) controller).getModel(), from);
                break;
            case "ma":
                controller = new MAOPController();
                model = new GeneralModel(((MAOPController) controller).getModel(), from);
                break;
            case "mal":
                controller = new MaximunAllowableController();
                model = new GeneralModel(((MaximunAllowableController) controller).getModel(), from);
                break;
            case "ohm":
                controller = new OhmController();
                model = new GeneralModel(((OhmController) controller).getModel(), from);
                break;
            case "re":
                controller = new RateofElectricalController();
                model = new GeneralModel(((RateofElectricalController) controller).getModel(), from);
                break;
            case "rel":
                controller = new RelationshipController();
                model = new GeneralModel(((RelationshipController) controller).getModel(), from);
                break;

            //Modulo 8
            case "cc":
                controller = new CathodicProtectionController();
                model = new GeneralModel(((CathodicProtectionController) controller).getModel(), from);
                break;
            case "ew":
                controller = new EstimatedWeightController();
                model = new GeneralModel(((EstimatedWeightController) controller).getModel(), from);
                break;
            case "pc":
                controller = new PowerConsumptionController();
                model = new GeneralModel(((PowerConsumptionController) controller).getModel(), from);
                break;
            case "rn":
                controller = new RequiredNumberAnodesController();
                model = new GeneralModel(((RequiredNumberAnodesController) controller).getModel(), from);
                break;
            case "riagb":
                controller = new ResistanceEarthIAGBController();
                model = new GeneralModel(((ResistanceEarthIAGBController) controller).getModel(), from);
                break;
            case "rmva":
                controller = new ResistanceEarthMVAController();
                model = new GeneralModel(((ResistanceEarthMVAController) controller).getModel(), from);
                break;
            case "rsha":
                controller = new ResistanceEarthSHAController();
                model = new GeneralModel(((ResistanceEarthSHAController) controller).getModel(), from);
                break;
            case "rsva":
                controller = new ResistanceEarthSVAController();
                model = new GeneralModel(((ResistanceEarthSVAController) controller).getModel(), from);
                break;
            case "rf":
                controller = new RudenbergFormulaController();
                model = new GeneralModel(((RudenbergFormulaController) controller).getModel(), from);
                break;

            //Modulo 9
            case "ins":
                controller = new InstallationController();
                model = new GeneralModel(((InstallationController) controller).getModel(), from);
                break;
            case "all":
                controller = new AllowableController();
                model = new GeneralModel(((AllowableController) controller).getModel(), from);
                break;
            case "poi":
                controller = new PostInstallationController();
                model = new GeneralModel(((PostInstallationController) controller).getModel(), from);
                break;

            //Modulo 10
            case "med":
                controller = new CapacidadMedidoresController();
                model = new GeneralModel(((CapacidadMedidoresController) controller).getModel(), from);
                break;
            case "com":
                controller = new ComputadoresFlujoController();
                model = new GeneralModel(((ComputadoresFlujoController) controller).getModel(), from);
                break;
            case "val":
                controller = new ValvulasController();
                model = new GeneralModel(((ValvulasController) controller).getModel(), from);
                break;
            case "act":
                controller = new ActuadoresController();
                model = new GeneralModel(((ActuadoresController) controller).getModel(), from);
                break;
            case "pla":
                controller = new PlatinaController();
                model = new GeneralModel(((PlatinaController) controller).getModel(), from);
                break;
            case "sh":
                controller = new ValslamshutController();
                model = new GeneralModel(((ValslamshutController) controller).getModel(), from);
                break;
            case "tra":
                controller = new TransmisoresController();
                model = new GeneralModel(((TransmisoresController) controller).getModel(), from);
                break;
            case "mov":
                controller = new MotorizedController();
                model = new GeneralModel(((MotorizedController) controller).getModel(), from);
                break;
            case "reg":
                controller = new ReguladorController();
                model = new GeneralModel(((ReguladorController) controller).getModel(), from);
                break;

            //Modulo Administrativo
            case "usu":
                controller = new UsuariosController();
                model = new GeneralModel(((UsuariosController) controller).getModel(), from);
                break;
            case "acti":
                controller = new ActividadesController();
                model = new GeneralModel(((ActividadesController) controller).getModel(), from);
                break;
            case "fas":
                controller = new FasesController();
                model = new GeneralModel(((FasesController) controller).getModel(), from);
                break;
            case "esp":
                controller = new EspecialidadesController();
                model = new GeneralModel(((EspecialidadesController) controller).getModel(), from);
                break;
            case "newp":
                controller = new ProyectosController();
                model = new GeneralModel(((ProyectosController) controller).getModel(), from);
                break;
            case "rol":
                controller = new RolesController();
                model = new GeneralModel(((RolesController) controller).getModel(), from);
                break;
            case "are":
                controller = new AreasController();
                model = new GeneralModel(((AreasController) controller).getModel(), from);
                break;
            default:
                controller = null;
                model = new GeneralModel();

        }
    }

    private void setValues(HttpServletRequest request) throws Exception {
        try {
            // method Integer
            Class[] cArg = new Class[1];
            cArg[0] = HttpServletRequest.class;
            Method metodo = controller.getClass().getDeclaredMethod("getValues", cArg);
            this.values = (Map<String, String>) metodo.invoke(controller, request);

        } catch (Exception ex) {
            throw new Exception(ex.getMessage());
        }
    }

    public JSONObject add(HttpServletRequest request) throws Exception {
        setController(from);
        setValues(request);

        try {
            String now = model.add(values);

            //Para devolver el id
            String where = "date = " + now;
            Vector<Map> data = model.load("id", where);

            JSONObject json = new JSONObject();

            if (data.isEmpty()) {
                return null;
            } else {
                json.put("row", data.get(0));
            }

            return json;

        } catch (Exception ex) {
            if(ex.getMessage().contains("Violation of UNIQUE KEY constraint 'uni_ProDes"))
                throw new Exception("This description already exists for the selected project");
            else            
                throw new Exception(ex.getMessage());
        }
    }

    public JSONObject edit(HttpServletRequest request) throws Exception {
        setController(from);
        setValues(request);

        String id = request.getParameter("id_" + from);

        try {
            model.edit(values, id);

            JSONObject json = new JSONObject();
            values.clear();
            values.put("id", id);
            json.put("row", values);

            return json;

        } catch (Exception ex) {
            throw new Exception(ex.getMessage());
        }
    }

    public JSONObject delete(HttpServletRequest request) throws Exception {
        setController(from);
        String id = request.getParameter("id_" + from);
        int user = Integer.parseInt(request.getParameter("iduser").trim());
        JSONObject json = null;

        try {
            if (id.equals("")) {
                throw new Exception("El codigo del registro no puede ser vacío");
            } else {
                model.delete(id.trim(), user);
                json = new JSONObject();
                json.put("msj", "OK");
            }
        } catch (Exception ex) {
            throw new Exception(ex.getMessage());
        }

        return json;
    }

    public JSONObject load(HttpServletRequest request) throws Exception {

        setController(from);

        String id = request.getParameter("id").trim();
        String where = "id = " + id;
        Vector<Map> data = model.load(where);

        JSONObject json = new JSONObject();

        if (data.isEmpty()) {
            return null;
        } else {
            json.put("row", data.get(0));
        }

        return json;
    }

    public String load_Cmbo(HttpServletRequest request) throws Exception {
        String idcombo = request.getParameter("combo").trim();
        String type, marca;

        switch (idcombo) {
            case ("modelo"):
                String modelo = request.getParameter("serie").trim();
                type = request.getParameter("type").trim();
                return cModel.load_Cmbo_Mod(modelo, type);
            case ("npsn"):
                type = request.getParameter("type");
                type = (type == null ? "5l" : type.trim());
                return cModel.load_Cmbo_NPS(type);
            case ("wtn"):
                type = request.getParameter("type");
                type = (type == null ? "5l" : type.trim());
                String nps = request.getParameter("nps").trim();
                return cModel.load_Cmbo_WT(nps, type);
            case ("refeact"):
                marca = request.getParameter("marca").trim();
                return cModel.load_Cmbo_Ref(marca);
            case ("maact"):
                return cModel.load_Cmbo_Marca();
            case ("tiac"):
                return cModel.load_Cmbo_Accion();
            case ("moac"):
                String refe = request.getParameter("referencia").trim();
                String accion = request.getParameter("accion").trim();
                return cModel.load_Cmbo_ModAct(refe, accion);
            case ("tamact"):
                return cModel.load_Cmbo_TamAct();
            case ("clact"):
                return cModel.load_Cmbo_AnsiAct();
            case ("preop"):
                return cModel.load_Cmbo_PresionAct();
            case ("allact"):
                return cModel.load_Cmbo_AllActuadores();
            case ("allrefe"):
                return cModel.load_Cmbo_AllReferenciasAct();
            case ("siecom"):
                return cModel.load_Cmbo_SensorIntegrado();
            case ("tvals"):
                return cModel.load_Cmbo_TamValvulas();
            case ("nps"):
                type = request.getParameter("type").trim();
                return cModel.load_Cmbo_NpsPlatina(type);
            case ("modreg"):
                return cModel.load_Cmbo_ModeloReg();
            case ("tamreg"):
                
                type = request.getParameter("type").trim();
                return cModel.load_Cmbo_TamanoReg(type);
            default:
                return cModel.load_Cmbo(idcombo);
        }
    }

    public JSONObject loadH(HttpServletRequest request) throws Exception {
        setController(from);

        String iduser = request.getParameter("iduser").trim();
        String nombre = request.getParameter("nombre").trim();

        switch (from) {
            case ("med"):
                String type = request.getParameter("type").trim();
                return model.loadHMedidores(iduser, nombre, type);
            case ("tra"):
                return model.loadHTransmisores(iduser, nombre);
            case ("mov"):
                return model.loadHMotorizedV(iduser, nombre);
            default:
                return model.loadH(iduser, nombre);
        }

    }

    public String loadSuggestedAdiabaticHead(HttpServletRequest request) throws Exception {
        setController(from);

        String idProyect = request.getParameter("idproyect").trim();
        return ((AdiabaticHeadController) controller).loadSuggestedAdiabaticHead(idProyect);
    }

    public JSONObject getTorque_Act(HttpServletRequest request) throws Exception {
        setController(from);
        return ((ActuadoresController) controller).getTorque_Act(request);
    }

    public JSONObject getAllTorque_Act(HttpServletRequest request) throws Exception {
        setController(from);
        return ((ActuadoresController) controller).getAllTorque_Act(request);
    }

    public JSONObject getOrificioValvulas(HttpServletRequest request) throws Exception {
        String dim = request.getParameter("dim");
        return ValvulasController.getOrificioValvulas(dim);
    }

    public JSONObject getValorOrificioValvulas(HttpServletRequest request) throws Exception {
        String orificio = request.getParameter("orificio");
        String type = request.getParameter("type");
        return ValvulasController.getValorOrificioValvulas(orificio, type);
    }

    public JSONObject getEspecificacionMecanismo(HttpServletRequest request) throws Exception {
        String min = request.getParameter("minimo");
        String max = request.getParameter("maximo");
        return ValslamshutController.getEspecificacionMecanismo(min, max);
    }

    public JSONObject getPlatina(HttpServletRequest request) throws Exception {
        String tipo = request.getParameter("tipo");
        String nps = request.getParameter("nps");
        return PlatinaController.getPlatina(tipo, nps);
    }

    public JSONObject getReguladorCV(HttpServletRequest request) throws Exception {
        String tamano = request.getParameter("tamano");
        String modelo = request.getParameter("modelo");
        return ReguladorController.getReguladorCV(modelo, tamano);
    }

    public JSONObject getReguladorCVSugerido(HttpServletRequest request) throws Exception {
        double presLl = Double.valueOf(request.getParameter("presLl"));
        double preg = Double.valueOf(request.getParameter("preg"));
        double gesp = Double.valueOf(request.getParameter("gesp"));
        double temp = Double.valueOf(request.getParameter("temp"));
        double flujo = Double.valueOf(request.getParameter("flujo"));

        return ReguladorController.getReguladorCVSugerido(presLl, preg, gesp, temp, flujo);
    }

    public String addActuador(HttpServletRequest request) throws Exception {
        return ActuadoresController.addActuador(request);
    }

    public JSONObject get_cambioTermico(HttpServletRequest request) throws Exception {
        setController(from);
        return ((PipelineHydrostaticController) controller).get_cambioTermico(request);
    }

    public JSONObject getMaximos_Act(HttpServletRequest request) throws Exception {
        setController(from);
        return ((ActuadoresController) controller).getMaximos_Act(request);
    }

    public JSONObject getDataSheet(HttpServletRequest request) throws Exception {

        String rutads = model.getRutaDataSheet();
        String iduser = request.getParameter("iduser").trim();
        String username = UsuariosModel.getUsername(iduser);

        String op = request.getParameter("from").trim();

        switch (op) {
            case "ah":
                return Datasheets.Datasheet.genFileAh(request, rutads, username);
            case "med":
                return Datasheets.Datasheet.genDSMedidores(request, rutads, username);
            case "com":
                return Datasheets.Datasheet.genDSComputadores(request, rutads, username);
            case "tra":
                return Datasheets.Datasheet.genDSTransmisores(request, rutads, username);
            case "mov":
                return Datasheets.Datasheet.genDSMotorizedV(request, rutads, username);
            case "val":
                return Datasheets.Datasheet.genDSValvulasSA(request, rutads, username);
            case "act":
                return Datasheets.Datasheet.genDSActuadores(request, rutads, username);
            case "sh":
                return Datasheets.Datasheet.genDSValvesSH(request, rutads, username);
            case "reg":
                return Datasheets.Datasheet.genDSValvesReg(request, rutads, username);
            case "pla":
                return Datasheets.Datasheet.genDSValvesPlatina(request, rutads, username);
        }

        return null;
    }

    public JSONObject saveStep_newproyect(HttpServletRequest request) throws Exception {
        setController(from);
        return ((ProyectosController) controller).saveStep(request);
    }

    public JSONObject editStep_newproyect(HttpServletRequest request) throws Exception {
        setController(from);
        return ((ProyectosController) controller).editStep(request);
    }

    public JSONObject getEspecialidades(HttpServletRequest request) throws Exception {
        setController(from);
        return ((ProyectosController) controller).getEspecialidades();
    }

    public JSONObject getFases(HttpServletRequest request) throws Exception {
        setController(from);
        return ((ProyectosController) controller).getFases();
    }

    public JSONObject getModulos(HttpServletRequest request) throws Exception {
        setController(from);
        return ((ProyectosController) controller).getModulos();
    }

    public JSONObject getActividades(HttpServletRequest request) throws Exception {
        setController(from);
        String id_espe = request.getParameter("id_espe");
        return ((ProyectosController) controller).getActividades(id_espe);
    }

    public void validateProjectName(HttpServletRequest request) throws Exception {
        setController(from);
        String nombre = request.getParameter("nombre").trim();
        String idpro = request.getParameter("idpro");
        ((ProyectosController) controller).validateProjectName(nombre, idpro);
    }

    public void crearProyecto(HttpServletRequest request) throws Exception {
        setController(from);
        String id_pro_temp = request.getParameter("id_proyect").trim();
        String lider = request.getParameter("lider").trim();

        String ruta = model.getRuta();

        ((ProyectosController) controller).crearProyecto(id_pro_temp, ruta, lider);
    }

    public JSONObject getProyectos(HttpServletRequest request) throws Exception {
        setController(from);
        String id_user = request.getParameter("id_user").trim();
        String type = request.getParameter("type").trim();
        return ((ProyectosController) controller).getProyectos(id_user, type);
    }

    public JSONObject getProyectosByUserIgnoringRol(HttpServletRequest request) throws Exception {
        setController(from);
        String id_user = request.getParameter("id_user").trim();
        return ((ProyectosController) controller).getProyectosByUserIgnoringRol(id_user);
    }
    
    public JSONObject getAllProjects(HttpServletRequest request) throws Exception {
        setController(from);
        return ((ProyectosController) controller).getAllProjects();
    }

    public JSONObject setEstadoActividad(HttpServletRequest request) throws Exception {
        setController(from);

        String id_proyect = request.getParameter("id_proyect").trim();
        String id_especialidad = request.getParameter("id_especialidad").trim();
        String id_fase = request.getParameter("id_fase").trim();
        String id_actividad = request.getParameter("id_actividad").trim();
        String aprobado = request.getParameter("aprobado").trim();

        return ((ProyectosController) controller).setEstadoActividad(id_proyect, id_especialidad, id_fase, id_actividad, aprobado);
    }

    public JSONObject getEstadoActividad(HttpServletRequest request) throws Exception {
        setController(from);

        String id_user = request.getParameter("id_user").trim();
        String id_pro = request.getParameter("id_pro").trim();

        return ((ProyectosController) controller).getEstadoActividad(id_user, id_pro);
    }

    public JSONObject getInfoProyect(HttpServletRequest request) throws Exception {
        // setController(from);     
        setController(from);
        String idpro = request.getParameter("idpro").trim();

        return ((ProyectosController) controller).getInfoProyect(idpro);
    }

    public String UpdateEstadoActvidad(HttpServletRequest request) throws Exception {
        //Basado en : http://chuwiki.chuidiang.org/index.php?title=File_upload_con_JSP

        controller = new ProyectosController();
        model = new GeneralModel(((ProyectosController) controller).getModel(), "newp");

        String idpro = "";
        String fileName = "";
        String idacti = "";
        String nomE = "";
        String nomF = "";
        FileItem uploaded = null;
        FileItem uploadedF = null;

        try {
            FileItemFactory file_factory = new DiskFileItemFactory();
            ServletFileUpload servlet_up = new ServletFileUpload(file_factory);

            List items = servlet_up.parseRequest(request);
            for (Object item : items) {
                uploaded = (FileItem) item;

                if (!uploaded.isFormField()) {
                    uploadedF = uploaded;
                } else {
                    String key = uploaded.getFieldName();

                    if (key.equals("idacti")) {
                        idacti = uploaded.getString();
                    }

                    if (key.equals("idpro")) {
                        idpro = uploaded.getString();
                    }

                    if (key.equals("nome")) {
                        nomE = uploaded.getString();
                    }

                    if (key.equals("nomf")) {
                        nomF = uploaded.getString();
                    }
                }
            }

        } catch (FileUploadException ex) {
            throw new Exception("Error al crear el archivo");
        } catch (Exception ex) {
            throw new Exception("Error inesperado");
        }

        String rutaP = model.getRuta();
        ((ProyectosController) controller).UpdateEstadoActvidad(idacti, idpro, uploadedF, rutaP, nomE, nomF);

        return idpro;

    }

    public String UpdateEstadoEspecialidad(HttpServletRequest request) throws Exception {
        //Basado en : http://chuwiki.chuidiang.org/index.php?title=File_upload_con_JSP

        controller = new ProyectosController();
        model = new GeneralModel(((ProyectosController) controller).getModel(), "newp");

        String idpro = "";
        String fileName = "";
        String nomE = "";
        String idesp = "";
        FileItem uploaded = null;
        FileItem uploadedF = null;

        try {
            FileItemFactory file_factory = new DiskFileItemFactory();
            ServletFileUpload servlet_up = new ServletFileUpload(file_factory);

            List items = servlet_up.parseRequest(request);
            for (Object item : items) {
                uploaded = (FileItem) item;

                if (!uploaded.isFormField()) {
                    uploadedF = uploaded;
                } else {
                    String key = uploaded.getFieldName();
                    if (key.equals("idpro")) {
                        idpro = uploaded.getString();
                    }
                    if (key.equals("idesp")) {
                        idesp = uploaded.getString();
                    }
                    if (key.equals("nome")) {
                        nomE = uploaded.getString();
                    }
                }
            }

        } catch (FileUploadException ex) {
            throw new Exception("Error al crear el archivo");
        } catch (Exception ex) {
            throw new Exception("Error inesperado");
        }

        String rutaP = model.getRuta();
        ((ProyectosController) controller).UpdateEstadoEspecialidad(idpro, uploadedF, rutaP, nomE, idesp);

        return idpro;

    }

    public JSONObject UpdateEstadoActvidadE(HttpServletRequest request) throws Exception {
        // setController(from);     
        setController(from);
        String idpro = request.getParameter("idpro").trim();
        String file = request.getParameter("file").trim();

        return ((ProyectosController) controller).UpdateEstadoActvidadE(idpro, file);
    }

    public JSONObject CargarInfoEspecialidad(HttpServletRequest request) throws Exception {
        setController(from);

        String id_user = request.getParameter("idusu").trim();
        String id_pro = request.getParameter("idpro").trim();

        return ((ProyectosController) controller).CargarInfoEspecialidad(id_user, id_pro);
    }

    public JSONObject CargarAlertasProyectos(HttpServletRequest request) throws Exception {
        setController(from);

        String id_user = request.getParameter("idusu").trim();
        String id_pro = request.getParameter("idpro").trim();

        return ((ProyectosController) controller).CargarAlertasProyectos(id_user, id_pro);
    }

    public JSONObject eliminarProyecto(HttpServletRequest request) throws Exception {
        setController(from);

        String id_pro = request.getParameter("idpro").trim();

        return ((ProyectosController) controller).eliminarProyecto(id_pro);
    }

    public JSONObject AprobarActividad(HttpServletRequest request) throws Exception {
        // setController(from);     
        setController(from);
        String id = request.getParameter("id").trim();
        String state = request.getParameter("state").trim();

        return ((ProyectosController) controller).AprobarActividad(id, state);
    }

    public JSONObject getUsuarios(HttpServletRequest request) throws Exception {
        setController("usu");
        return ((UsuariosController) controller).getUsuarios();
    }

    public JSONObject addUsuario(HttpServletRequest request) throws Exception {
        setController(from);
        String name = request.getParameter("nombre").trim();
        String alias = request.getParameter("alias").trim();
        
        // tipo = request.getParameter("tipo").trim();
        String roles = request.getParameter("roles").trim();
        String areas = request.getParameter("areas").trim();
        return ((UsuariosController) controller).addUsuario(name, alias, 
                roles, areas);
    }

    public void editUsuario(HttpServletRequest request) throws Exception {
        setController(from);
        String iduser = request.getParameter("id_user").trim();
        String name = request.getParameter("nombre").trim();
        String roles = request.getParameter("roles").trim();        
        String areas = request.getParameter("areas").trim();

        ((UsuariosController) controller).editUsuario(name, iduser, roles, areas);
    }

    public JSONObject deleteUsuario(HttpServletRequest request) throws Exception {
        setController(from);
        String iduser = request.getParameter("id_user").trim();

        return ((UsuariosController) controller).deleteUsuario(iduser);
    }

    public JSONObject login(HttpServletRequest request) throws Exception {
        setController(from);
        String user = request.getParameter("name").trim();
        String pass = request.getParameter("pass").trim();
        String ip = request.getRemoteAddr();
        //String ipTest2 = request.getRemoteHost();
        //System.err.println(ip);
        //System.err.println(ipTest2);
        return ((UsuariosController) controller).login(user, pass, ip);
    }

    public JSONObject getRolUser(HttpServletRequest request) throws Exception {
        setController("usu");
        String user = request.getParameter("name").trim();

        return ((UsuariosController) controller).login(user, null, null);
    }

    public JSONObject getRoles(HttpServletRequest request) throws Exception {
        setController("rol");
        return ((RolesController) controller).getRoles();
    }

    public JSONObject getUsuarioRoles(HttpServletRequest request) throws Exception {
        setController("usu");
        String user = request.getParameter("name").trim();
        return ((UsuariosController) controller).getUsuarioRoles(user);
    }
    
    public JSONObject getUsuarioAreas(HttpServletRequest request) throws Exception {
        setController("usu");
        String user = request.getParameter("name").trim();
        return ((UsuariosController) controller).getUsuarioAreas(user);
    }
    
    public JSONObject getInfoUser(HttpServletRequest request) throws Exception {
        setController("usu");
        String user = request.getParameter("name").trim();
        return ((UsuariosController) controller).getInfoUser(user);
    }

    public JSONObject getActividadesUsu(HttpServletRequest request) throws Exception {
        setController(from);
        return ((ActividadesController) controller).getActividades();
    }

    public JSONObject editActividades(HttpServletRequest request) throws Exception {
        setController(from);
        String iduser = request.getParameter("id").trim();
        String name = request.getParameter("nombre").trim();
        String id_espe = request.getParameter("id_especialidad").trim();

        return ((ActividadesController) controller).editActividad(name, iduser, id_espe);
    }

    public JSONObject addActividad(HttpServletRequest request) throws Exception {
        setController(from);
        String name = request.getParameter("nombre").trim();
        String id_espe = request.getParameter("id_especialidad").trim();

        return ((ActividadesController) controller).addActividad(name, id_espe);
    }

    public JSONObject deleteActividades(HttpServletRequest request) throws Exception {
        setController(from);
        String iduser = request.getParameter("id").trim();

        return ((ActividadesController) controller).deleteActividad(iduser);
    }

    public JSONObject getFasesAdm(HttpServletRequest request) throws Exception {
        setController("fas");
        return ((FasesController) controller).getFases();
    }

    public JSONObject getAreas(HttpServletRequest request) throws Exception {
        setController("are");
        return ((AreasController) controller).getAreas();
    }

    public JSONObject addFase(HttpServletRequest request) throws Exception {
        setController(from);
        String name = request.getParameter("nombre").trim();

        return ((FasesController) controller).addFase(name);
    }

    public JSONObject editFases(HttpServletRequest request) throws Exception {
        setController(from);
        String iduser = request.getParameter("id").trim();
        String name = request.getParameter("nombre").trim();

        return ((FasesController) controller).editFase(name, iduser);
    }

    public JSONObject deleteFases(HttpServletRequest request) throws Exception {
        setController(from);
        String iduser = request.getParameter("id").trim();

        return ((FasesController) controller).deleteFase(iduser);
    }

    public JSONObject getEspecialidadesAdm(HttpServletRequest request) throws Exception {
        setController("esp");
        return ((EspecialidadesController) controller).getEspecialidades();
    }

    public JSONObject addEspecialidad(HttpServletRequest request) throws Exception {
        setController(from);
        String name = request.getParameter("nombre").trim();

        return ((EspecialidadesController) controller).addEspecialidades(name);
    }

    public JSONObject editEspecialidades(HttpServletRequest request) throws Exception {
        setController(from);
        String iduser = request.getParameter("id").trim();
        String name = request.getParameter("nombre").trim();

        return ((EspecialidadesController) controller).editEspecialidad(name, iduser);
    }

    public JSONObject deleteEspecialidades(HttpServletRequest request) throws Exception {
        setController(from);
        String iduser = request.getParameter("id").trim();

        return ((EspecialidadesController) controller).deleteEspecialidad(iduser);
    }

}
