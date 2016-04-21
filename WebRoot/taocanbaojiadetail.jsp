<%@ page language="java"  pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>

<html>
<head>
<title>套餐报价</title>
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
                    <td width="21%" align="center" class="STYLE5">套餐报价详细</td>
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
  String sql="select * from taocanbaojia where id="+id;
  String taocanmingcheng="";String jiage="";String jianjie="";String leibie="";
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  taocanmingcheng=RS_result.getString("taocanmingcheng");jiage=RS_result.getString("jiage");jianjie=RS_result.getString("jianjie");leibie=RS_result.getString("leibie");
  }
   %>
   <table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" class="newsline" style="border-collapse:collapse">  
   <tr>
     <td align="center" class="STYLE3"><%=taocanmingcheng%>（价格：<%=jiage%> 类别：<%=leibie%>）</td>
     </tr><tr><td height="289"><%=jianjie%></td>
   </tr><tr><td align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" /></td></tr>
  </table>
  
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
