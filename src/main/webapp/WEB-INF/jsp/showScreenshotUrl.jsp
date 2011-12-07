<%@page contentType="application/json"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.atg.com/taglibs/json" prefix="json"%>
<%
response.setHeader("Cache-Control","no-cache"); //HTTP 1.1
response.setHeader("Pragma","no-cache"); //HTTP 1.0
response.setDateHeader ("Expires", 0); //prevents caching at the proxy server
%>
<%--
     Displays the URL of a screenshot that has been generated by the ScreenshotController

     Data (models) passed in to this page:
         url = (String) url to the screenshot
--%>
<json:object>
    <json:property name="screenshotUrl" value="${url}"/>
</json:object>