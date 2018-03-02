<%@page import="org.json.JSONObject"%>
<%@ page import="java.util.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="org.apache.commons.io.*" %>
<%@page import="Controller.GeneralController"%>
<%@ page import="java.io.*" %>
 
<%
    
    GeneralController controller = new GeneralController(request);
    
    controller.UpdateDataSheetMotorizedV(request);
    String idusu = session.getAttribute("idusu").toString();  
    String type = session.getAttribute("tipo").toString();     
    response.sendRedirect("myproject.jsp?type="+type+"&idusu="+idusu);

%>