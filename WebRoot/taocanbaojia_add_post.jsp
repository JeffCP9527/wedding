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
    String jianjie = request.getParameter("jianjie");
    String leibie = request.getParameter("leibie");
//gdsosss ResultSet RS_result=connDbBean.executeQuery("select * from [taocanbaojia] where taocanmingcheng='"+taocanmingcheng+"'");

//gdsosss if(RS_result.next())
//gdsosss{
//gdsosssout.print("<script>alert('该套餐名称已经存在,请换其他套餐名称!');window.history.go(-1);</script>");
//gdsosss	}
//gdsossselse{


    String sql = "insert into taocanbaojia(taocanmingcheng,jiage,jianjie,leibie) values('" + taocanmingcheng + "','" + jiage + "','" + jianjie + "','" + leibie + "') ";

    connDbBean.executeUpdate(sql);
    out.print("<script>alert('添加成功!!');location.href='taocanbaojia_add.jsp';</script>");

//gdsosss	}
//gdsosss RS_result.close();

%>
</body>
</html>

