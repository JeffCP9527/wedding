<%@ page language="java" pageEncoding="gb2312" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>

<html>
<head>
    <title>人才招聘</title>
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
                                            <td width="21%" align="center" class="STYLE5">人才招聘</td>
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


                                                <form name="form1" id="form1" method="post" action="">
                                                    搜索: 岗位名称：<input name="gangweimingcheng" type="text"
                                                                    id="gangweimingcheng"
                                                                    style='border:solid 1px #000000; color:#666666'
                                                                    size="12"/> 性别要求：<select name='xingbieyaoqiu'
                                                                                             id='xingbieyaoqiu'>
                                                    <option value="">所有</option>
                                                </select> 学历要求：<select name='xueliyaoqiu' id='xueliyaoqiu'>
                                                    <option value="">所有</option>
                                                </select>
                                                    <input type="submit" name="Submit" value="查找"/>
                                                </form>
                                                <table width="100%" border="1" align="center" cellpadding="3"
                                                       cellspacing="1" bordercolor="00FFFF"
                                                       style="border-collapse:collapse">
                                                    <tr>
                                                        <td width="30" align="center" bgcolor="CCFFFF">序号</td>
                                                        <td bgcolor='#CCFFFF'>岗位名称</td>
                                                        <td bgcolor='#CCFFFF'>招聘人数</td>
                                                        <td bgcolor='#CCFFFF'>性别要求</td>
                                                        <td bgcolor='#CCFFFF'>学历要求</td>
                                                        <td bgcolor='#CCFFFF'>薪资待寓</td>
                                                        <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>

                                                        <td width="30" align="center" bgcolor="CCFFFF">详细</td>
                                                    </tr>
                                                    <%
                                                        int curpage = 1;//当前页
                                                        int page_record = 10;//每页显示的记录数
                                                        int zgs = 0;
                                                        int zys = 0;
                                                        //用下面的方法（sql查询完成，速度快）
                                                        String hsgnpage = request.getParameter("page");
                                                        String fysql = "select count(id) as ss from rencaizhaopin";
                                                        ResultSet RS_resultfy = connDbBean.executeQuery(fysql);
                                                        while (RS_resultfy.next()) {
                                                            zgs = Integer.parseInt(RS_resultfy.getString("ss"));
                                                            zys = zgs / page_record + 1;
                                                        }
                                                        if (hsgnpage != null) {
                                                            curpage = Integer.parseInt(request.getParameter("page"));//获取传递的值，需要显示的页
                                                        } else {
                                                            curpage = 1;
                                                        }
                                                        if (curpage == 0) {
                                                            curpage = 1;
                                                        }
                                                        if (curpage > zys) {
                                                            curpage = zys;
                                                        }
                                                        sql = "";
                                                        sql = "select top " + page_record + " * from rencaizhaopin where id not in (select top " + ((curpage - 1) * page_record) + " id from rencaizhaopin order by id desc) ";

                                                        if (request.getParameter("gangweimingcheng") == "" || request.getParameter("gangweimingcheng") == null) {
                                                        } else {
                                                            sql = sql + " and gangweimingcheng like '%" + new String(request.getParameter("gangweimingcheng").getBytes("8859_1")) + "%'";
                                                        }
                                                        if (request.getParameter("xingbieyaoqiu") == "不限" || request.getParameter("xingbieyaoqiu") == null) {
                                                        } else {
                                                            sql = sql + " and xingbieyaoqiu like '%" + new String(request.getParameter("xingbieyaoqiu").getBytes("8859_1")) + "%'";
                                                        }
                                                        if (request.getParameter("xueliyaoqiu") == "不限" || request.getParameter("xueliyaoqiu") == null) {
                                                        } else {
                                                            sql = sql + " and xueliyaoqiu like '%" + new String(request.getParameter("xueliyaoqiu").getBytes("8859_1")) + "%'";
                                                        }
                                                        sql = sql + " order by id desc";
                                                        RS_result = connDbBean.executeQuery(sql);
                                                        String id = "";
                                                        String gangweimingcheng = "";
                                                        String zhaopinrenshu = "";
                                                        String xingbieyaoqiu = "";
                                                        String xueliyaoqiu = "";
                                                        String xinzidaiyu = "";
                                                        String beizhu = "";
                                                        String addtime = "";
                                                        int i = 0;
                                                        while (RS_result.next()) {
                                                            i = i + 1;
                                                            id = RS_result.getString("id");
                                                            gangweimingcheng = RS_result.getString("gangweimingcheng");
                                                            zhaopinrenshu = RS_result.getString("zhaopinrenshu");
                                                            xingbieyaoqiu = RS_result.getString("xingbieyaoqiu");
                                                            xueliyaoqiu = RS_result.getString("xueliyaoqiu");
                                                            xinzidaiyu = RS_result.getString("xinzidaiyu");
                                                            beizhu = RS_result.getString("beizhu");
                                                            addtime = RS_result.getString("addtime");
                                                    %>
                                                    <tr>
                                                        <td width="30" align="center"><%=i %>
                                                        </td>
                                                        <td><%=gangweimingcheng %>
                                                        </td>
                                                        <td><%=zhaopinrenshu %>
                                                        </td>
                                                        <td><%=xingbieyaoqiu %>
                                                        </td>
                                                        <td><%=xueliyaoqiu %>
                                                        </td>
                                                        <td><%=xinzidaiyu %>
                                                        </td>
                                                        <td width="138" align="center"><%=addtime %>
                                                        </td>
                                                        <td width="30" align="center"><a
                                                                href="rencaizhaopindetail.jsp?id=<%=id%>">详细</a></td>
                                                    </tr>
                                                    <%
                                                        }
                                                    %>
                                                </table>
                                                <br>
                                                以上数据共<%=i %>条,<a style="cursor:hand"
                                                                 onClick="javascript:window.print();">打印本页</a>

                                                <p align="center">&nbsp;共<%=zgs%>条记录&nbsp;&nbsp;<%=page_record %>条/页　<a
                                                        href="rencaizhaopinlist.jsp?page=1">首页</a>　<a
                                                        href="rencaizhaopinlist.jsp?page=<%= curpage-1%>">上一页</a>　<A
                                                        href="rencaizhaopinlist.jsp?page=<%= curpage+1%>">下一页</A>　<a
                                                        href="rencaizhaopinlist.jsp?page=<%=zys %>">尾页</A>　当前第<FONT
                                                        color=red><%=curpage %>
                                                </FONT>页/共<FONT color=red><%=zys %>
                                                </FONT>页</p>


                                            </td>
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
