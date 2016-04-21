<%@ page language="java" pageEncoding="gb2312" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
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
    String lb = new String(request.getParameter("lb").getBytes("8859_1"));
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
                                            <td width="21%" align="center" class="STYLE5"><%=lb%>
                                            </td>
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
                                                <table width="98%" border="0" align="center" cellpadding="3"
                                                       cellspacing="1" bordercolor="#AAE4D5"
                                                       style="border-collapse:collapse" class="newsline">
                                                    <%
                                                        int curpage = 1;//当前页
                                                        int page_record = 20;//每页显示的记录数
                                                        int zgs = 0;
                                                        int zys = 0;
                                                        //用下面的方法（sql查询完成，速度快）
                                                        String hsgnpage = request.getParameter("page");
                                                        String fysql = "select count(id) as ss from xinwentongzhi where leibie='" + lb + "'";
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
                                                        String sql = "";
                                                        sql = "select top " + page_record + " * from xinwentongzhi where leibie='" + lb + "' and id not in (select top " + ((curpage - 1) * page_record) + " id from xinwentongzhi order by id desc) ";

                                                        if (request.getParameter("keyword") == "" || request.getParameter("keyword") == null) {
                                                        } else {
                                                            sql = sql + " and biaoti like '%" + new String(request.getParameter("keyword").getBytes("8859_1")) + "%'";
                                                        }
                                                        sql = sql + " order by id desc";
                                                        ResultSet RS_result = connDbBean.executeQuery(sql);
                                                        String id = "";
                                                        String biaoti = "";
                                                        String leibie = "";
                                                        String neirong = "";
                                                        String tianjiaren = "";
                                                        String shouyetupian = "";
                                                        String dianjilv = "";
                                                        String addtime = "";
                                                        int i = 0;


                                                        while (RS_result.next()) {
                                                            i = i + 1;
                                                            id = RS_result.getString("id");
                                                            biaoti = RS_result.getString("biaoti");
                                                            leibie = RS_result.getString("leibie");
                                                            neirong = RS_result.getString("neirong");
                                                            tianjiaren = RS_result.getString("tianjiaren");
                                                            shouyetupian = RS_result.getString("shouyetupian");
                                                            dianjilv = RS_result.getString("dianjilv");
                                                            addtime = RS_result.getString("addtime");


                                                    %>
                                                    <tr>
                                                        <td width="30" align="center"><%=i %>
                                                        </td>
                                                        <td width="470"><a href="gg_detail.jsp?id=<%=id%>"><%=biaoti %>
                                                        </a></td>
                                                        <td width="87">被点击<%=dianjilv %>次</td>
                                                        <td width="82" align="center"><%=addtime.substring(0, 10) %>
                                                        </td>
                                                    </tr>
                                                    <%
                                                        }
                                                    %>
                                                </table>
                                                <br>
                                                以上数据共<%=i %>条,<a style="cursor:hand"
                                                                 onClick="javascript:window.print();">打印本页</a>

                                                <p align="center">&nbsp;共<%=zgs%>条记录&nbsp;&nbsp;<%=page_record %>条/页　<a
                                                        href="news.jsp?page=1&lb=<%=lb%>">首页</a>　<a
                                                        href="news.jsp?page=<%= curpage-1%>&lb=<%=lb%>">上一页</a>　<A
                                                        href="news.jsp?page=<%= curpage+1%>&lb=<%=lb%>">下一页</A>　<a
                                                        href="news.jsp?page=<%=zys %>&lb=<%=lb%>">尾页</A>　当前第<FONT
                                                        color=red><%=curpage %>
                                                </FONT>页/共<FONT color=red><%=zys %>
                                                </FONT>页</p></td>
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