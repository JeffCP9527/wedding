<%@ page language="java"  pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>

<html>
<head>
<title>心灵婚纱摄影</title>
<LINK href="qtimages/style.css" type=text/css rel=stylesheet>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<style type="text/css">
<!--
.STYLE3 {color: #7818C8; font-weight: bold; }
.STYLE4 {color: #FFFFFF}
.STYLE5 {color: #FFFFFF; font-weight: bold; }
-->
</style>
</head>
<%
  String id=request.getParameter("id");
  connDbBean.executeUpdate("update xinwentongzhi set dianjilv=dianjilv+1 where id="+id);
   %>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="1003" height="1220" border="0" align="center" cellpadding="0" cellspacing="0" id="__01">
	<tr>
		<td>
<%@ include file="qttop.jsp"%></td>
	</tr>
	<tr>
		<td><table id="__01" width="1003" height="776" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="701" height="777" valign="top"><table id="__01" width="100%" height="753" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td width="701" height="43" background="qtimages/3_01.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="21%" align="center" class="STYLE5">内容详细</td>
                    <td width="79%">&nbsp;</td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td height="699" valign="top"><table width="701" height="92%" border="0" cellpadding="0" cellspacing="0" id="__01">
                  <tr>
                    <td width="11" height="699"  background="qtimages/3_02_01.gif">&nbsp;</td>
                    <td width="674" valign="top">
                      <%
  String sql="select * from xinwentongzhi where id="+id;
  String biaoti="";String leibie="";String neirong="";String dianjilv="";
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  biaoti=RS_result.getString("biaoti");leibie=RS_result.getString("leibie");neirong=RS_result.getString("neirong");dianjilv=RS_result.getString("dianjilv");
   %>
                  
                      <table width="96%" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#E8C8F8" style="border-collapse:collapse">
                        <tr>
                          <td height="46" align="center" class="STYLE3"><%=biaoti %> (被访问<%=dianjilv%>次) </td>
                        </tr>
                        
                        <tr>
                          <td height="110" align="left"><%=neirong %></td>
                        </tr>
                        <tr>
                          <td align="right"><input type="button" name="Submit5" value="返回" onClick="javascript:history.back();" style=" height:19px; border:solid 1px #000000; color:#666666"></td>
                        </tr>
                      </table>
                      <%}%>
    </td>
                    <td width="16" background="qtimages/3_02_03.gif">&nbsp;</td>
                  </tr>
                  
				  
                </table></td>
              </tr>
              <tr>
                <td height="11"><img src="qtimages/3_03.gif" width="701" height="11" alt=""></td>
              </tr>
            </table></td>
            <td valign="top"><%@ include file="qtleft.jsp"%></td>
          </tr>
        </table></td>
	</tr>
	<tr>
		<td><%@ include file="qtdown.jsp"%></td>
	</tr>
</table>
</body>
</html>