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
//gdsosss ResultSet RS_result=connDbBean.executeQuery("select * from [yudingjilu] where yudingren='"+yudingren+"'");

//gdsosss if(RS_result.next())
//gdsosss{
//gdsosssout.print("<script>alert('该预订人已经存在,请换其他预订人!');window.history.go(-1);</script>");
//gdsosss	}
//gdsossselse{


    String sql = "insert into yudingjilu(taocanmingcheng,jiage,leibie,yudingren,yudingshijian,beizhu) values('" + taocanmingcheng + "','" + jiage + "','" + leibie + "','" + yudingren + "','" + yudingshijian + "','" + beizhu + "') ";

    connDbBean.executeUpdate(sql);
    out.print("<script>alert('操作成功!请待管理员审核!');location.href='index.jsp';</script>");

//gdsosss	}
//gdsosss RS_result.close();

%>
</body>
</html>

