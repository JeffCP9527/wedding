<%@ page language="java" pageEncoding="gb2312" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>

<html>
<head>
    <title>�ײͱ���</title>
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
                                            <td width="21%" align="center" class="STYLE5">�ײͱ���</td>
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
                                                    ����: �ײ����ƣ�<input name="taocanmingcheng" type="text"
                                                                    id="taocanmingcheng"
                                                                    style='border:solid 1px #000000; color:#666666'
                                                                    size="12"/> ���
                                                    <select name='leibie' id='leibie'>
                                                        <option value="">����</option>
                                                        <option value="��ɴ����ϵ">��ɴ����ϵ</option>
                                                        <option value="MV��ϵ">MV��ϵ</option>
                                                        <option value="����д����ϵ">����д����ϵ</option>
                                                        <option value="����д����ϵ">����д����ϵ</option>
                                                        <option value="ȫ�Ҹ���ϵ">ȫ�Ҹ���ϵ</option>
                                                    </select>
                                                    <input type="submit" name="Submit" value="����"/>
                                                </form>
                                                <table width="100%" border="1" align="center" cellpadding="3"
                                                       cellspacing="1" bordercolor="00FFFF"
                                                       style="border-collapse:collapse">
                                                    <tr>
                                                        <td width="30" align="center" bgcolor="CCFFFF">���</td>
                                                        <td bgcolor='#CCFFFF'>�ײ�����</td>
                                                        <td bgcolor='#CCFFFF'>�۸�</td>
                                                        <td bgcolor='#CCFFFF'>���</td>
                                                        <td width="138" align="center" bgcolor="CCFFFF">Ԥ��</td>

                                                        <td width="30" align="center" bgcolor="CCFFFF">��ϸ</td>
                                                    </tr>
                                                    <%
                                                        int curpage = 1;//��ǰҳ
                                                        int page_record = 10;//ÿҳ��ʾ�ļ�¼��
                                                        int zgs = 0;
                                                        int zys = 0;
                                                        //������ķ�����sql��ѯ��ɣ��ٶȿ죩
                                                        String hsgnpage = request.getParameter("page");
                                                        String fysql = "select count(id) as ss from taocanbaojia";
                                                        ResultSet RS_resultfy = connDbBean.executeQuery(fysql);
                                                        while (RS_resultfy.next()) {
                                                            zgs = Integer.parseInt(RS_resultfy.getString("ss"));
                                                            zys = zgs / page_record + 1;
                                                        }
                                                        if (hsgnpage != null) {
                                                            curpage = Integer.parseInt(request.getParameter("page"));//��ȡ���ݵ�ֵ����Ҫ��ʾ��ҳ
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
                                                        sql = "select top " + page_record + " * from taocanbaojia where id not in (select top " + ((curpage - 1) * page_record) + " id from taocanbaojia order by id desc) ";

                                                        if (request.getParameter("taocanmingcheng") == "" || request.getParameter("taocanmingcheng") == null) {
                                                        } else {
                                                            sql = sql + " and taocanmingcheng like '%" + new String(request.getParameter("taocanmingcheng").getBytes("8859_1")) + "%'";
                                                        }
                                                        if (request.getParameter("leibie") == "����" || request.getParameter("leibie") == null) {
                                                        } else {
                                                            sql = sql + " and leibie like '%" + new String(request.getParameter("leibie").getBytes("8859_1")) + "%'";
                                                        }
                                                        sql = sql + " order by id desc";
                                                        RS_result = connDbBean.executeQuery(sql);
                                                        String id = "";
                                                        String taocanmingcheng = "";
                                                        String jiage = "";
                                                        String jianjie = "";
                                                        String leibie = "";
                                                        String addtime = "";
                                                        int i = 0;
                                                        while (RS_result.next()) {
                                                            i = i + 1;
                                                            id = RS_result.getString("id");
                                                            taocanmingcheng = RS_result.getString("taocanmingcheng");
                                                            jiage = RS_result.getString("jiage");
                                                            jianjie = RS_result.getString("jianjie");
                                                            leibie = RS_result.getString("leibie");
                                                            addtime = RS_result.getString("addtime");
                                                    %>
                                                    <tr>
                                                        <td width="30" align="center"><%=i %>
                                                        </td>
                                                        <td><%=taocanmingcheng %>
                                                        </td>
                                                        <td><%=jiage %>
                                                        </td>
                                                        <td><%=leibie %>
                                                        </td>
                                                        <td width="138" align="center"><a
                                                                href="yudingjiluadd.jsp?id=<%=id%>">Ԥ��</a></td>
                                                        <td width="30" align="center"><a
                                                                href="taocanbaojiadetail.jsp?id=<%=id%>">��ϸ</a></td>
                                                    </tr>
                                                    <%
                                                        }
                                                    %>
                                                </table>
                                                <br>
                                                �������ݹ�<%=i %>��,<a style="cursor:hand"
                                                                 onClick="javascript:window.print();">��ӡ��ҳ</a>

                                                <p align="center">&nbsp;��<%=zgs%>����¼&nbsp;&nbsp;<%=page_record %>��/ҳ��<a
                                                        href="taocanbaojialist.jsp?page=1">��ҳ</a>��<a
                                                        href="taocanbaojialist.jsp?page=<%= curpage-1%>">��һҳ</a>��<A
                                                        href="taocanbaojialist.jsp?page=<%= curpage+1%>">��һҳ</A>��<a
                                                        href="taocanbaojialist.jsp?page=<%=zys %>">βҳ</A>����ǰ��<FONT
                                                        color=red><%=curpage %>
                                                </FONT>ҳ/��<FONT color=red><%=zys %>
                                                </FONT>ҳ</p>


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
