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
//gdsosssout.print("<script>alert('�ø�λ�����Ѿ�����,�뻻������λ����!');window.history.go(-1);</script>");
//gdsosss	}
//gdsossselse{

	
  	  	String sql="insert into rencaizhaopin(gangweimingcheng,zhaopinrenshu,xingbieyaoqiu,xueliyaoqiu,xinzidaiyu,beizhu) values('"+gangweimingcheng+"','"+zhaopinrenshu+"','"+xingbieyaoqiu+"','"+xueliyaoqiu+"','"+xinzidaiyu+"','"+beizhu+"') ";
  	  	
  	  	connDbBean.executeUpdate(sql);
  	  	out.print("<script>alert('��ӳɹ�!!');location.href='rencaizhaopin_add.jsp';</script>");
  	  
//gdsosss	}
//gdsosss RS_result.close();

 %>
  </body>
</html>

