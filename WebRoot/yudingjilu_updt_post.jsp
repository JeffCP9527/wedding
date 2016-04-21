<%@ page language="java" pageEncoding="gb2312" import="java.sql.*" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<%
    request.setCharacterEncoding("gb2312");
    response.setCharacterEncoding("gb2312");
%>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>My JSP 'adminyanzheng.jsp' starting page</title>
</head>
<body>
<%
    String taocanmingcheng = request.getParameter("taocanmingcheng");
    String jiage = request.getParameter("jiage");
    String leibie = request.getParameter("leibie");
    String yudingren = request.getParameter("yudingren");
    String yudingshijian = request.getParameter("yudingshijian");
    String beizhu = request.getParameter("beizhu");
    String id = request.getParameter("id");
    String sql = "update yudingjilu set taocanmingcheng='" + taocanmingcheng + "',jiage='" + jiage + "',leibie='" + leibie + "',yudingren='" + yudingren + "',yudingshijian='" + yudingshijian + "',beizhu='" + beizhu + "' where id= " + id;
    connDbBean.executeUpdate(sql);
    out.print("<script>alert('ÐÞ¸Ä³É¹¦!!');location.href='yudingjilu_updt.jsp?id=" + id + "';</script>");
%>
</body>
</html>


