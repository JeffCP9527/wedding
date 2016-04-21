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

    <title>套餐报价</title>
    <LINK href="CSS.css" type=text/css rel=stylesheet>
    <script language="javascript" src="js/Calendar.js"></script>
    <script type="text/javascript" src="js/popup.js"></script>
    <script type="text/javascript">
        function up(tt) {
            var pop = new Popup({contentType: 1, isReloadOnClose: false, width: 300, height: 50});
            pop.setContent("contentUrl", "upload.jsp?Result=" + tt);
            pop.setContent("title", "文件上传");
            pop.build();
            pop.show();
        }
    </script>
</head>
<script language="javascript">
    function check() {
        if (document.form1.taocanmingcheng.value == "") {
            alert("请输入套餐名称");
            document.form1.taocanmingcheng.focus();
            return false;
        }
        if (document.form1.jiage.value == "") {
            alert("请输入价格");
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
    添加套餐报价:
    <br><br>
    <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF"
           style="border-collapse:collapse">
        <tr>
            <td>套餐名称：</td>
            <td><input name='taocanmingcheng' type='text' id='taocanmingcheng' value='' size='50'
                       style='border:solid 1px #000000; color:#666666'/>&nbsp;*
            </td>
        </tr>
        <tr>
            <td>价格：</td>
            <td><input name='jiage' type='text' id='jiage' value='' style='border:solid 1px #000000; color:#666666'/>&nbsp;*
            </td>
        </tr>
        <tr>
            <td>简介：</td>
            <td><textarea name="jianjie" style="display:none"></textarea>
                <iframe ID="eWebEditor1" src="eWebEditor_V4.60/ewebeditor.htm?id=jianjie&style=coolblue" frameborder="0"
                        scrolling="no" width="600" HEIGHT="350"></iframe>
            </td>
        </tr>
        <tr>
            <td>类别：</td>
            <td><select name='leibie' id='leibie'>
                <option value="婚纱照套系">婚纱照套系</option>
                <option value="MV套系">MV套系</option>
                <option value="情侣写真套系">情侣写真套系</option>
                <option value="个人写真套系">个人写真套系</option>
                <option value="全家福套系">全家福套系</option>
            </select></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><input type="submit" name="Submit" value="提交" onClick="return check();"
                       style='border:solid 1px #000000; color:#666666'/>
                <input type="reset" name="Submit2" value="重置" style='border:solid 1px #000000; color:#666666'/></td>
        </tr>
    </table>
</form>

</body>
</html>

