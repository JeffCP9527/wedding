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
<script language="javascript">
function checklyb()
{
	if(document.formlyb.cheng.value=="")
	{
		alert("请输入昵称");
		document.formlyb.cheng.focus();
		return false;
	}
	if(document.formlyb.neirong.value=="")
	{
		alert("请输入留言内容");
		document.formlyb.neirong.focus();
		return false;
	}
	if(document.formlyb.youxiang.value!="")
	{
		var strEmail = document.getElementById("youxiang").value;		
		var reg = /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/;
		var email_Flag = reg.test(strEmail);
		if(email_Flag){
		
		}
		else{
			alert("对不起，您输入的邮箱地址格式错误。");
			return false;
		}
	}
	if(document.formlyb.QQ.value!="")
	{
		var strQQ = document.getElementById("QQ").value;		
		var regQQ = /^[1-9]\d{4,8}$/;
		var qq_Flag =  regQQ.test(strQQ);
		if(qq_Flag){
		
		}else{
			alert("对不起，您输入的QQ号码格式错误。");
			return false;
		}
	}
	if(document.formlyb.dianhua.value!="")
	{
		var strPhone = document.getElementById("dianhua").value; 
		var reg = /^(([0\+]\d{2,3}-)?(0\d{2,3})-)?(\d{7,8})(-(\d{3,}))?$/;
		phone_Flag = reg.test(strPhone);
		if(phone_Flag){
		}else{
		alert("对不起，您输入的电话号码格式错误。");
		return false;
		}
	}
}



</script>
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
                    <td width="21%" align="center" class="STYLE5">留言板</td>
                    <td width="60%">&nbsp;</td>
                    <td width="19%" ><a href="lyblist.jsp"><font class="STYLE3">查看已有留言</font></a></td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td height="699" valign="top"><table width="701" height="92%" border="0" cellpadding="0" cellspacing="0" id="__01">
                  <tr>
                    <td width="11" height="699"  background="qtimages/3_02_01.gif">&nbsp;</td>
                    <td width="674" valign="top"><form name="formlyb" method="post" action="liuyanban_add_post.jsp">
                      <table width="92%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#E8C8F8" style="border-collapse:collapse">
                        <tr>
                          <td width="12%">昵称：</td>
                          <td width="88%"><input name='cheng' type='text' id='cheng' value='' />
                            *</td>
                        </tr>
                        <tr>
                          <td>头像：</td>
                          <td><input name="xingbie" type="radio" value="1" checked>
                              <img src="img/1.gif" width="64" height="71">
                              <input type="radio" name="xingbie" value="2">
                              <img src="img/2.gif" width="64" height="71">
                              <input type="radio" name="xingbie" value="3">
                              <img src="img/3.gif" width="64" height="71">
                              <input type="radio" name="xingbie" value="4">
                              <img src="img/4.gif" width="64" height="71">
                              <input type="radio" name="xingbie" value="5">
                              <img src="img/5.gif" width="64" height="71"></td>
                        </tr>
                        <tr>
                          <td>QQ：</td>
                          <td><input name='QQ' type='text' id='QQ' value='' /></td>
                        </tr>
                        <tr>
                          <td>邮箱：</td>
                          <td><input name='youxiang' type='text' id='youxiang' value='' /></td>
                        </tr>
                        <tr>
                          <td>电话：</td>
                          <td><input name='dianhua' type='text' id='dianhua' value='' /></td>
                        </tr>
                        <tr>
                          <td>内容：</td>
                          <td><textarea name="neirong" cols="50" rows="10" id="neirong"></textarea>
                            *</td>
                        </tr>
                        <tr>
                          <td>&nbsp;</td>
                          <td><input type="submit" name="Submit42" value="提交" onClick="return checklyb();" style=" height:19px; border:solid 1px #000000; color:#666666" />
                              <input type="reset" name="Submit22" value="重置" style=" height:19px; border:solid 1px #000000; color:#666666" /></td>
                        </tr>
                      </table>
                                        </form>
                    <p align="center">&nbsp;</p>
                      <p align="center">&nbsp;</p></td>
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