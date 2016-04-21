<%@ page language="java" pageEncoding="gb2312" %>
<%
    if ((String) request.getSession().getAttribute("username") == null || (String) request.getSession().getAttribute("username") == "") {
        out.print("<script>alert('对不起,请您先登陆!');location.href='index.jsp';</script>");
    }
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>

<html>
<head>
    <title>心灵婚纱摄影</title>
    <script language="javascript" src="js/Calendar.js"></script>
    <LINK href="qtimages/style.css" type=text/css rel=stylesheet>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <style type="text/css">
        <!--
        .STYLE3 {
            color: #7818C8;
            font-weight: bold;
        }

        .STYLE4 {
            color: #FFFFFF
        }

        .STYLE5 {
            color: #FFFFFF;
            font-weight: bold;
        }

        -->
    </style>
</head>
<%
    String sql;
    ResultSet RS_result;
    String id = request.getParameter("id");
    sql = "select * from taocanbaojia where id=" + id;
    String taocanmingcheng = "";
    String jiage = "";
    String leibie = "";
    RS_result = connDbBean.executeQuery(sql);
    while (RS_result.next()) {
        taocanmingcheng = RS_result.getString("taocanmingcheng");
        jiage = RS_result.getString("jiage");
        leibie = RS_result.getString("leibie");
    }
%>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="1003" height="1220" border="0" align="center" cellpadding="0" cellspacing="0" id="__01">
    <tr>
        <td>
            <%@ include file="qttop.jsp" %>
        </td>
    </tr>
    <tr>
        <td>
            <table id="__01" width="1003" height="776" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td width="701" height="777" valign="top">
                        <table id="__01" width="100%" height="753" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td width="701" height="43" background="qtimages/3_01.gif">
                                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                        <tr>
                                            <td width="21%" align="center" class="STYLE5">在线预订</td>
                                            <td width="79%">&nbsp;</td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td height="699" valign="top">
                                    <table width="701" height="92%" border="0" cellpadding="0" cellspacing="0"
                                           id="__01">
                                        <tr>
                                            <td width="11" height="699" background="qtimages/3_02_01.gif">&nbsp;</td>
                                            <td width="674" valign="top">
                                                <form name="form1" id="form1" method="post"
                                                      action="yudingjilu_add_post.jsp">
                                                    <table width="100%" border="1" align="center" cellpadding="3"
                                                           cellspacing="1" bordercolor="#00FFFF"
                                                           style="border-collapse:collapse">
                                                        <tr>
                                                            <td>套餐名称：</td>
                                                            <td><input name='taocanmingcheng' type='text'
                                                                       id='taocanmingcheng' value='' size='50'
                                                                       style='border:solid 1px #000000; color:#666666'
                                                                       readonly='readonly'/>
                                                                &nbsp;*
                                                            </td>
                                                        </tr>
                                                        <script language="javascript">document.form1.taocanmingcheng.value = '<%=taocanmingcheng%>';</script>
                                                        <tr>
                                                            <td>价格：</td>
                                                            <td><input name='jiage' type='text' id='jiage' value=''
                                                                       style='border:solid 1px #000000; color:#666666'
                                                                       readonly='readonly'/>
                                                                &nbsp;*
                                                            </td>
                                                        </tr>
                                                        <script language="javascript">document.form1.jiage.value = '<%=jiage%>';</script>
                                                        <tr>
                                                            <td>类别：</td>
                                                            <td><input name='leibie' type='text' id='leibie' value=''
                                                                       style='border:solid 1px #000000; color:#666666'
                                                                       readonly='readonly'/>
                                                                &nbsp;*
                                                            </td>
                                                        </tr>
                                                        <script language="javascript">document.form1.leibie.value = '<%=leibie%>';</script>
                                                        <tr>
                                                            <td>预订人：</td>
                                                            <td><input name='yudingren' type='text' id='yudingren'
                                                                       style='border:solid 1px #000000; color:#666666'
                                                                       value='<%=request.getSession().getAttribute("username")%>'/>
                                                                &nbsp;*
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>预订时间：</td>
                                                            <td><input name='yudingshijian' type='text'
                                                                       id='yudingshijian' value='' readonly='readonly'
                                                                       onClick="getDate(document.form1.yudingshijian,'2')"
                                                                       need='1'
                                                                       style='width:100px; height:16px; border:solid 1px #000000; color:#666666'/>
                                                                &nbsp;*
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>备注：</td>
                                                            <td><textarea name='beizhu' cols='50' rows='5' id='beizhu'
                                                                          style='border:solid 1px #000000; color:#666666'></textarea>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>&nbsp;</td>
                                                            <td><input type="submit" name="Submit4" value="提交"
                                                                       onClick="return check();"
                                                                       style='border:solid 1px #000000; color:#666666'/>
                                                                <input type="reset" name="Submit22" value="重置"
                                                                       style='border:solid 1px #000000; color:#666666'/>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </form>
                                                <p align="center">&nbsp;</p>

                                                <p align="center">&nbsp;</p></td>
                                            <td width="16" background="qtimages/3_02_03.gif">&nbsp;</td>
                                        </tr>


                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td height="11"><img src="qtimages/3_03.gif" width="701" height="11" alt=""></td>
                            </tr>
                        </table>
                    </td>
                    <td valign="top">
                        <%@ include file="qtleft.jsp" %>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td>
            <%@ include file="qtdown.jsp" %>
        </td>
    </tr>
</table>
</body>
</html>