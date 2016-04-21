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
                    <td width="21%" align="center" class="STYLE5">爱情碰碰</td>
                    <td width="79%">&nbsp;</td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td height="699" valign="top"><table width="701" height="92%" border="0" cellpadding="0" cellspacing="0" id="__01">
                  <tr>
                    <td width="11" height="699"  background="qtimages/3_02_01.gif">&nbsp;</td>
                    <td width="674" valign="top"><div align="center">
                      <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="647" height="418">
                        <param name="movie" value="flashgames/xmyf.swf">
                        <param name="quality" value="high">
                        <embed src="flashgames/xmyf.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="647" height="418"></embed>
                      </object>
                    </div></td>
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