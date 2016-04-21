<%@ page language="java"  pageEncoding="gb2312" import="java.sql.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
 

String gangweimingcheng=request.getParameter("gangweimingcheng");String zhaopinrenshu=request.getParameter("zhaopinrenshu");String xingbieyaoqiu=request.getParameter("xingbieyaoqiu");String xueliyaoqiu=request.getParameter("xueliyaoqiu");String xinzidaiyu=request.getParameter("xinzidaiyu");String beizhu=request.getParameter("beizhu");
//gdsosss ResultSet RS_result=connDbBean.executeQuery("select * from [rencaizhaopin] where gangweimingcheng='"+gangweimingcheng+"'");

//gdsosss if(RS_result.next())
//gdsosss{
//gdsosssout.print("<script>alert('该岗位名称已经存在,请换其他岗位名称!');window.history.go(-1);</script>");
//gdsosss	}
//gdsossselse{

	
  	  	String sql="insert into rencaizhaopin(gangweimingcheng,zhaopinrenshu,xingbieyaoqiu,xueliyaoqiu,xinzidaiyu,beizhu) values('"+gangweimingcheng+"','"+zhaopinrenshu+"','"+xingbieyaoqiu+"','"+xueliyaoqiu+"','"+xinzidaiyu+"','"+beizhu+"') ";
  	  	
  	  	connDbBean.executeUpdate(sql);
  	  	out.print("<script>alert('添加成功!!');location.href='rencaizhaopin_add.jsp';</script>");
  	  
//gdsosss	}
//gdsosss RS_result.close();

 %>
  </body>
</html>

