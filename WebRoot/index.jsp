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
    <bgsound src="qtimages/bjyy.mp3" loog="3" autostart="true">
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
                    <td valign="top">
                        <table id="__01" width="701" height="777" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td>
                                    <table id="__01" width="701" height="321" border="0" cellpadding="0"
                                           cellspacing="0">
                                        <tr>
                                            <td>
                                                <table id="__01" width="298" height="321" border="0" cellpadding="0"
                                                       cellspacing="0">
                                                    <tr>
                                                        <td><img src="qtimages/3333_02_01_01_01_01.gif" width="298"
                                                                 height="7" alt=""></td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <table id="__01" width="298" height="309" border="0"
                                                                   cellpadding="0" cellspacing="0">
                                                                <tr>
                                                                    <td><img src="qtimages/3333_02_01_01_01_02_01.gif"
                                                                             width="6" height="309" alt=""></td>
                                                                    <td width="292" height="309" align="center">
                                                                        <SCRIPT type=text/javascript>
                                                                            var focus_width = 292;
                                                                            var focus_height = 275;
                                                                            var text_height = 20;
                                                                            var swf_height = focus_height + text_height;
                                                                            var pics = "";
                                                                            var links = "";
                                                                            var texts = "";
                                                                            <%
                                                                                String sqlbht;
                                                                                sqlbht="select top 5 id,biaoti,shouyetupian from xinwentongzhi where shouyetupian<>'' and shouyetupian<>'null' and leibie='婚纱作品' order by id desc";
                                                                                ResultSet RS_resultbht=connDbBean.executeQuery(sqlbht);
                                                                                String idbht="";
                                                                                String biaotibht="";
                                                                                String shouyetupianbht="";
                                                                                 while(RS_resultbht.next()){
                                                                             shouyetupianbht=shouyetupianbht+RS_resultbht.getString("shouyetupian")+"|";
                                                                             idbht=idbht+"gg_detail.jsp?id="+RS_resultbht.getString("id")+"|";
                                                                             biaotibht=biaotibht+RS_resultbht.getString("biaoti")+"|";
                                                                             }
                                                                             shouyetupianbht=shouyetupianbht.substring(0,shouyetupianbht.length()-1);
                                                                             idbht=idbht.substring(0,idbht.length()-1);
                                                                             biaotibht=biaotibht.substring(0,biaotibht.length()-1);
                                                                            %>
                                                                            pics = "<%=shouyetupianbht%>";
                                                                            links = "<%=idbht%>";
                                                                            texts = "<%=biaotibht%>";
                                                                            document.write('<embed src="qtimages/pixviewer.swf" wmode="opaque" FlashVars="pics=' + pics + '&links=' + links + '&texts=' + texts + '&borderwidth=' + focus_width + '&borderheight=' + focus_height + '&textheight=' + text_height + '" menu="false" bgcolor="#ffffff" quality="Best" width="' + focus_width + '" height="' + swf_height + '" allowScriptAccess="sameDomain" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer">');

                                                                        </SCRIPT>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td><img src="qtimages/3333_02_01_01_01_03.gif" width="298"
                                                                 height="5" alt=""></td>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td>
                                                <table id="__01" width="403" height="321" border="0" cellpadding="0"
                                                       cellspacing="0">
                                                    <tr>
                                                        <td width="403" height="51"
                                                            background="qtimages/3333_02_01_01_02_01.gif">
                                                            <table width="100%" border="0" cellspacing="0"
                                                                   cellpadding="0">
                                                                <tr>
                                                                    <td width="16%" height="18">&nbsp;</td>
                                                                    <td width="84%" valign="bottom" class="STYLE3">
                                                                        站内新闻
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>&nbsp;</td>
                                                                    <td>&nbsp;</td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <table id="__01" width="403" height="253" border="0"
                                                                   cellpadding="0" cellspacing="0">
                                                                <tr>
                                                                    <td height="253"><img
                                                                            src="qtimages/3333_02_01_01_02_02_01.gif"
                                                                            width="16" height="253" alt=""></td>
                                                                    <td width="360" valign="top">
                                                                        <table class="newsline" cellspacing="0"
                                                                               cellpadding="0" width="98%"
                                                                               align="center" border="0">
                                                                            <tbody>
                                                                            <%
                                                                                String sql = "";
                                                                                sql = "select top 9 id,biaoti,addtime from xinwentongzhi where leibie='站内新闻' order by id desc";
                                                                                String id = "";
                                                                                String biaoti = "";
                                                                                String addtime = "";
                                                                                String ddd = "";
                                                                                int i = 0;
                                                                                ResultSet RS_result = connDbBean.executeQuery(sql);
                                                                                while (RS_result.next()) {
                                                                                    i = i + 1;
                                                                                    id = RS_result.getString("id");
                                                                                    biaoti = RS_result.getString("biaoti");
                                                                                    if (biaoti.length() >= 23) {
                                                                                        biaoti = biaoti.substring(0, 23);
                                                                                    }
                                                                                    addtime = RS_result.getString("addtime");


                                                                            %>
                                                                            <tr>
                                                                                <td width="4%" align="center"><IMG
                                                                                        src="qtimages/1.gif"></td>
                                                                                <td width="78%"><a
                                                                                        href="gg_detail.jsp?id=<%=id%>"><%=biaoti%>
                                                                                </a></td>
                                                                                <td width="18%"><%

                                                                                    out.print(addtime.substring(0, 10));
                                                                                %>
                                                                                </td>
                                                                            </tr>
                                                                            <%
                                                                                }
                                                                            %>
                                                                            </tbody>
                                                                        </table>
                                                                    </td>
                                                                    <td width="27"
                                                                        background="qtimages/3333_02_01_01_02_02_03.gif">
                                                                        &nbsp;</td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td><img src="qtimages/3333_02_01_01_02_03.gif" width="403"
                                                                 height="17" alt=""></td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table id="__01" width="100%" border="0" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td width="701" height="43" background="qtimages/3_01.gif">
                                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                    <tr>
                                                        <td width="21%" align="center" class="STYLE5">拍摄景点</td>
                                                        <td width="79%">&nbsp;</td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top">
                                                <table width="701" height="92%" border="0" cellpadding="0"
                                                       cellspacing="0" id="__01">
                                                    <tr>
                                                        <td width="11" background="qtimages/3_02_01.gif">&nbsp;</td>
                                                        <td width="674" valign="top">
                                                            <table width="100%" height="100%" border="0" align="center"
                                                                   cellpadding="0" cellspacing="0">
                                                                <tr>
                                                                    <%

                                                                        sql = "";
                                                                        sql = "select top 5 * from xinwentongzhi where shouyetupian<>'' and leibie='拍摄景点'";

                                                                        sql = sql + " order by id desc";
                                                                        RS_result = connDbBean.executeQuery(sql);
                                                                        id = "";
                                                                        biaoti = "";
                                                                        String tupian = "";

                                                                        i = 0;


                                                                        while (RS_result.next()) {
                                                                            i = i + 1;
                                                                            id = RS_result.getString("id");
                                                                            biaoti = RS_result.getString("biaoti");
                                                                            tupian = RS_result.getString("shouyetupian");


                                                                    %>
                                                                    <td>
                                                                        <table width="89%" height="100%" border="0"
                                                                               align="center" cellpadding="0"
                                                                               cellspacing="0">
                                                                            <tr>
                                                                                <td height="134" align="center"><a
                                                                                        href="gg_detail2.jsp?id=<%=id%>"><img
                                                                                        src="<%=tupian%>" width="117"
                                                                                        height="117" border="0"></a>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td height="25"
                                                                                    align="center"><%=biaoti%>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </td>
                                                                    <%
                                                                        }
                                                                    %>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                        <td width="16" background="qtimages/3_02_03.gif">&nbsp;</td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td height="11"><img src="qtimages/3_03.gif" width="701" height="11" alt="">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td><img src="qtimages/3333_02_01_03.gif" width="701" height="105" alt=""></td>
                            </tr>
                            <tr>
                                <td>
                                    <table id="__01" width="701" height="175" border="0" cellpadding="0"
                                           cellspacing="0">
                                        <tr>
                                            <td><img src="qtimages/3333_02_01_02_01.gif" width="5" height="175" alt="">
                                            </td>
                                            <td>
                                                <table id="__01" width="344" height="175" border="0" cellpadding="0"
                                                       cellspacing="0">
                                                    <tr>
                                                        <td width="344" height="41"
                                                            background="qtimages/3333_02_01_02_02_01.gif">
                                                            <table width="100%" border="0" cellspacing="0"
                                                                   cellpadding="0">
                                                                <tr>
                                                                    <td width="41%" align="center" class="STYLE5">摄影宝典
                                                                    </td>
                                                                    <td width="43%">&nbsp;</td>
                                                                    <td width="16%"><a href="news.jsp?lb=摄影宝典"><font
                                                                            class="STYLE3">更多</font></a></td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <table id="__01" width="344" height="127" border="0"
                                                                   cellpadding="0" cellspacing="0">
                                                                <tr>
                                                                    <td><img src="qtimages/3333_02_01_02_02_02_01.gif"
                                                                             width="6" height="127" alt=""></td>
                                                                    <td width="330" height="127">
                                                                        <table class="newsline" cellspacing="0"
                                                                               cellpadding="0" width="98%"
                                                                               align="center" border="0">
                                                                            <tbody>
                                                                            <%

                                                                                sql = "select top 5 id,biaoti,addtime from xinwentongzhi where leibie='摄影宝典' order by id desc";

                                                                                RS_result = connDbBean.executeQuery(sql);
                                                                                i = 0;
                                                                                while (RS_result.next()) {
                                                                                    i = i + 1;
                                                                                    id = RS_result.getString("id");
                                                                                    biaoti = RS_result.getString("biaoti");
                                                                                    if (biaoti.length() >= 23) {
                                                                                        biaoti = biaoti.substring(0, 23);
                                                                                    }
                                                                                    addtime = RS_result.getString("addtime");


                                                                            %>
                                                                            <tr>
                                                                                <td width="7%" align="center"><IMG
                                                                                        src="qtimages/1.gif"></td>
                                                                                <td width="93%"><a
                                                                                        href="gg_detail.jsp?id=<%=id%>"><%=biaoti%>
                                                                                </a></td>
                                                                            </tr>
                                                                            <%
                                                                                }
                                                                            %>
                                                                            </tbody>
                                                                        </table>
                                                                    </td>
                                                                    <td><img src="qtimages/3333_02_01_02_02_02_03.gif"
                                                                             width="8" height="127" alt=""></td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td><img src="qtimages/3333_02_01_02_02_03.gif" width="344"
                                                                 height="7" alt=""></td>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td><img src="qtimages/3333_02_01_02_03.gif" width="3" height="175" alt="">
                                            </td>
                                            <td>
                                                <table id="__01" width="344" height="175" border="0" cellpadding="0"
                                                       cellspacing="0">
                                                    <tr>
                                                        <td width="344" height="41"
                                                            background="qtimages/3333_02_01_02_02_01.gif">
                                                            <table width="100%" border="0" cellspacing="0"
                                                                   cellpadding="0">
                                                                <tr>
                                                                    <td width="41%" align="center" class="STYLE5">
                                                                        摄影注意事项
                                                                    </td>
                                                                    <td width="43%">&nbsp;</td>
                                                                    <td width="16%"><a href="news.jsp?lb=摄影注意事项"><font
                                                                            class="STYLE3">更多</font></a></td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <table id="__01" width="344" height="127" border="0"
                                                                   cellpadding="0" cellspacing="0">
                                                                <tr>
                                                                    <td><img src="qtimages/3333_02_01_02_02_02_01.gif"
                                                                             width="6" height="127" alt=""></td>
                                                                    <td width="330" height="127">
                                                                        <table class="newsline" cellspacing="0"
                                                                               cellpadding="0" width="98%"
                                                                               align="center" border="0">
                                                                            <tbody>
                                                                            <%
                                                                                sql = "select top 5 id,biaoti,addtime from xinwentongzhi where leibie='摄影注意事项' order by id desc";
                                                                                RS_result = connDbBean.executeQuery(sql);
                                                                                i = 0;
                                                                                while (RS_result.next()) {
                                                                                    i = i + 1;
                                                                                    id = RS_result.getString("id");
                                                                                    biaoti = RS_result.getString("biaoti");
                                                                                    if (biaoti.length() >= 23) {
                                                                                        biaoti = biaoti.substring(0, 23);
                                                                                    }
                                                                                    addtime = RS_result.getString("addtime");


                                                                            %>
                                                                            <tr>
                                                                                <td width="7%" align="center"><IMG
                                                                                        src="qtimages/1.gif"></td>
                                                                                <td width="93%"><a
                                                                                        href="gg_detail.jsp?id=<%=id%>"><%=biaoti%>
                                                                                </a></td>
                                                                            </tr>
                                                                            <%
                                                                                }
                                                                            %>
                                                                            </tbody>
                                                                        </table>
                                                                    </td>
                                                                    <td><img src="qtimages/3333_02_01_02_02_02_03.gif"
                                                                             width="8" height="127" alt=""></td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td><img src="qtimages/3333_02_01_02_02_03.gif" width="344"
                                                                 height="7" alt=""></td>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td><img src="qtimages/3333_02_01_02_05.gif" width="5" height="175" alt="">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
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