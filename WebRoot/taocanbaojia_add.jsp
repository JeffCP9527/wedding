<%@ page language="java" pageEncoding="gb2312" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>
<html>
<head>
    <base href="<%=basePath%>">

    <title>�ײͱ���</title>
    <LINK href="CSS.css" type=text/css rel=stylesheet>
    <script language="javascript" src="js/Calendar.js"></script>
    <script type="text/javascript" src="js/popup.js"></script>
    <script type="text/javascript">
        function up(tt) {
            var pop = new Popup({contentType: 1, isReloadOnClose: false, width: 300, height: 50});
            pop.setContent("contentUrl", "upload.jsp?Result=" + tt);
            pop.setContent("title", "�ļ��ϴ�");
            pop.build();
            pop.show();
        }
    </script>
</head>
<script language="javascript">
    function check() {
        if (document.form1.taocanmingcheng.value == "") {
            alert("�������ײ�����");
            document.form1.taocanmingcheng.focus();
            return false;
        }
        if (document.form1.jiage.value == "") {
            alert("������۸�");
            document.form1.jiage.focus();
            return false;
        }
    }
    function gow() {
        document.location.href = "taocanbaojia_add.jsp?jihuabifffanhao=" + document.form1.jihuabifffanhao.value;
    }
</script>
<body>
<%
    String sql;
    ResultSet RS_result;

%>
<form name="form1" id="form1" method="post" action="taocanbaojia_add_post.jsp">
    ����ײͱ���:
    <br><br>
    <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF"
           style="border-collapse:collapse">
        <tr>
            <td>�ײ����ƣ�</td>
            <td><input name='taocanmingcheng' type='text' id='taocanmingcheng' value='' size='50'
                       style='border:solid 1px #000000; color:#666666'/>&nbsp;*
            </td>
        </tr>
        <tr>
            <td>�۸�</td>
            <td><input name='jiage' type='text' id='jiage' value='' style='border:solid 1px #000000; color:#666666'/>&nbsp;*
            </td>
        </tr>
        <tr>
            <td>��飺</td>
            <td><textarea name="jianjie" style="display:none"></textarea>
                <iframe ID="eWebEditor1" src="eWebEditor_V4.60/ewebeditor.htm?id=jianjie&style=coolblue" frameborder="0"
                        scrolling="no" width="600" HEIGHT="350"></iframe>
            </td>
        </tr>
        <tr>
            <td>���</td>
            <td><select name='leibie' id='leibie'>
                <option value="��ɴ����ϵ">��ɴ����ϵ</option>
                <option value="MV��ϵ">MV��ϵ</option>
                <option value="����д����ϵ">����д����ϵ</option>
                <option value="����д����ϵ">����д����ϵ</option>
                <option value="ȫ�Ҹ���ϵ">ȫ�Ҹ���ϵ</option>
            </select></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><input type="submit" name="Submit" value="�ύ" onClick="return check();"
                       style='border:solid 1px #000000; color:#666666'/>
                <input type="reset" name="Submit2" value="����" style='border:solid 1px #000000; color:#666666'/></td>
        </tr>
    </table>
</form>

</body>
</html>

