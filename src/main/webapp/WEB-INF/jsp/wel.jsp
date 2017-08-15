<%@ page import="org.apache.shiro.SecurityUtils" %>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<c:set var="basePath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
    <title>欢迎页面</title>

    <link href="${basePath}/resources/zheng-admin/plugins/bootstrap-3.3.0/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="${basePath}/resources/zheng-admin/plugins/material-design-iconic-font-2.2.0/css/material-design-iconic-font.min.css" rel="stylesheet"/>
    <link href="${basePath}/resources/zheng-admin/plugins/waves-0.7.5/waves.min.css" rel="stylesheet"/>
    <link href="${basePath}/resources/zheng-admin/plugins/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.min.css" rel="stylesheet"/>
    <link href="${basePath}/resources/zheng-admin/css/admin.css" rel="stylesheet"/>
    <jsp:include page="/resources/inc/head.jsp" flush="true"/>
</head>
<body>

<div id="toolbar">
    <shiro:hasPermission name="yunyin:read"><a class="waves-effect waves-button" href="javascript:;" onclick="createAction()"><i class="zmdi zmdi-plus"></i> 测试标签1</a></shiro:hasPermission>
    <shiro:hasPermission name="cms:tag:update"><a class="waves-effect waves-button" href="http://wwww.baidu.com" onclick="updateAction()"><i class="zmdi zmdi-edit"></i> 测试标签2</a></shiro:hasPermission>
    <shiro:hasPermission name="yunyin:read"><a class="waves-effect waves-button" href="javascript:location.reload();" onclick="deleteAction()"><i class="zmdi zmdi-close"></i> 刷新</a></shiro:hasPermission>
</div>
<!--
<%
    String username =SecurityUtils.getSubject().getPrincipal().toString();
%>
<h1>
    欢迎你!<%= username%>
</h1>
!-->
</body>

</html>
