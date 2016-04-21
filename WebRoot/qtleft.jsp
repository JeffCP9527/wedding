<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gb2312" session="true" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>Insert title here</title>


<META content="MSHTML 6.00.2800.1106" name=GENERATOR>

</HEAD>
<table id="__01" width="302" height="777" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td><table id="__01" width="302" height="237" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="302" height="39" background="qtimages/3333_02_02_01_01.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="41%" align="center" class="STYLE3">系统公告</td>
                        <td width="59%">&nbsp;</td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td width="302" height="178" background="qtimages/3333_02_02_01_02.gif"><table width="87%" height="176" border="0" align="center" cellpadding="0" cellspacing="0">
                      <tr>
                        <td><marquee border="0" direction="up" height="148" onMouseOut="start()" onMouseOver="stop()"
                scrollamount="1" scrolldelay="50"><TABLE width="92%" height="100%" 
            border=0 align=center 
      cellPadding=0 cellSpacing=5>
                      <TBODY><TR><TD><P><%
			String sqlxtgg="select * from dx where leibie='系统公告'";
			 ResultSet RS_resultxtgg=connDbBean.executeQuery(sqlxtgg);
			 while(RS_resultxtgg.next())
			 {
			 out.print(RS_resultxtgg.getString("content"));
			 }
			%></P></TD></TR></TBODY></TABLE></marquee></td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><img src="qtimages/3333_02_02_01_03.gif" width="302" height="20" alt=""></td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td><table id="__01" width="302" height="237" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="302" height="39" background="qtimages/3333_02_02_01_01.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="41%" align="center" class="STYLE3">用户登陆</td>
                          <td width="59%">&nbsp;</td>
                        </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td width="302" height="178" background="qtimages/3333_02_02_01_02.gif"><table width="87%" height="176" border="0" align="center" cellpadding="0" cellspacing="0">
                        <tr>
                          <td>
                          
                          <br>
                          <%

	
	if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")=="")
	{
	 %>
                          </A>
                          <table width="83%" height="91%" border="0" align="center" cellpadding="0" cellspacing="0">
                            <form name="formlog" method="post" action="userlog_post.jsp">
                              <tr>
                                <td width="37%" height="30">用户名</td>
                                <td width="63%" height="30"><input name="username" type="text" id="username" Style="border-right: #cadcb2 1px solid;
                        border-top: #cadcb2 1px solid; font-size: 12px; border-left: #cadcb2 1px solid;
                        width: 100px; color: #81b432; border-bottom: #cadcb2 1px solid; height: 18px"></td>
                              </tr>
                              <tr>
                                <td height="30">密码</td>
                                <td height="30"><input name="pwd1" type="password" id="pwd1" Style="border-right: #cadcb2 1px solid;
                        border-top: #cadcb2 1px solid; font-size: 12px; border-left: #cadcb2 1px solid;
                        width: 100px; color: #81b432; border-bottom: #cadcb2 1px solid; height: 18px"></td>
                              </tr>
                              <tr style="display:none">
                                <td height="30">权限</td>
                                <td height="30"><select name="cx" id="cx" Style="border-right: #cadcb2 1px solid;
                        border-top: #cadcb2 1px solid; font-size: 12px; border-left: #cadcb2 1px solid;
                        width: 100px; color: #81b432; border-bottom: #cadcb2 1px solid; height: 18px">
                                    <option value="注册用户">注册用户</option>
                                  </select>
                                </td>
                              </tr>
                              <tr>
                                <td height="30">&nbsp;</td>
                                <td height="30"><input type="submit" name="Submit" value="登陆" style=" height:19px; border:solid 1px #000000; color:#666666">
                                    <input type="reset" name="Submit2" value="重置" style=" height:19px; border:solid 1px #000000; color:#666666"></td>
                              </tr>
                            </form>
                          </table>
                          <%
					}
					else
					{
					%>
                          <table width="90%" height="82%" border="0" align="center" cellpadding="0" cellspacing="0">
                            <tr>
                              <td width="31%" height="30">用户名</td>
                              <td width="69%" height="30"><%=request.getSession().getAttribute("username")%></td>
                            </tr>
                            <tr>
                              <td height="30">权限</td>
                              <td height="30"><%=request.getSession().getAttribute("cx")%> </td>
                            </tr>
                            <tr>
                              <td height="30" colspan="2" align="center"><input type="button" name="Submit3" value="退出" onClick="javascript:location.href='logout.jsp';" style=" height:19px; border:solid 1px #000000; color:#666666">
                                  <input type="button" name="Submit32" value="个人后台" onClick="javascript:location.href='main.jsp';" style=" height:19px; border:solid 1px #000000; color:#666666">
                              </td>
                            </tr>
                          </table>
                          <%
					}
					%></td>
                        </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><img src="qtimages/3333_02_02_01_03.gif" width="302" height="20" alt=""></td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td><table id="__01" width="302" height="237" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="302" height="39" background="qtimages/3333_02_02_01_01.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="41%" align="center" class="STYLE3">友情连接</td>
                          <td width="59%">&nbsp;</td>
                        </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td width="302" height="178" background="qtimages/3333_02_02_01_02.gif"><table width="87%" height="176" border="0" align="center" cellpadding="0" cellspacing="0">
                        <tr>
                          <td><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" class="newsline">
                            <%
        String sql2="";
  sql2="select top 5 * from youqinglianjie where 1=1";
  sql2=sql2+" order by id desc";
 ResultSet RS_result2=connDbBean.executeQuery(sql2);
 String wangzhanmingcheng="";String wangzhi="";
 //int i=0;
 while(RS_result2.next()){
 //i=i+1;
wangzhanmingcheng=RS_result2.getString("wangzhanmingcheng");wangzhi=RS_result2.getString("wangzhi");

         %>
                            <tr valign="middle">
                              <td width="12%" height="25" align="center" class="STYLE2"><img height="7" 
                                src="qtimages/1.gif" 
                                width="7" /> </td>
                              <td width="19%" height="25" align="left"><a href="<%= wangzhi%>" class="b" target="_blank"><%= wangzhanmingcheng%></a></td>
                              <td width="69%" height="25" align="left"><a href="<%= wangzhi%>" class="b" target="_blank"><%= wangzhi%></a></td>
                            </tr>
                            <%} %>
                          </table></td>
                        </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><img src="qtimages/3333_02_02_01_03.gif" width="302" height="20" alt=""></td>
                  </tr>
                </table></td>
              </tr>
              
            </table>