<%@ page language="java" pageEncoding="gb2312" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>My JSP 'adminyanzheng.jsp' starting page</title>


</head>

<body>
<%


    String id = request.getParameter("id");
    String lb = new String(request.getParameter("lb").getBytes("8859_1"));
    String tablename = request.getParameter("tablename");

    String sql = "delete from " + tablename + " where id=" + id + "";

    connDbBean.executeUpdate(sql);
    out.print("<script>alert('ɾ���ɹ�!!');location.href='xinwentongzhi_list.jsp?lb=" + lb + "';</script>");


%>
</body>
</html>

