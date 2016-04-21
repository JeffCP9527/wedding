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

    <title>预订记录</title>
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
    <LINK href="CSS.css" type=text/css rel=stylesheet>

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
        if (document.form1.leibie.value == "") {
            alert("请输入类别");
            document.form1.leibie.focus();
            return false;
        }
        if (document.form1.yudingren.value == "") {
            alert("请输入预订人");
            document.form1.yudingren.focus();
            return false;
        }
        if (document.form1.yudingshijian.value == "") {
            alert("请输入预订时间");
            document.form1.yudingshijian.focus();
            return false;
        }
    }
</script>
<body>
<%
    String id = request.getParameter("id");
%>
<form name="form1" id="form1" method="post" action="yudingjilu_updt_post.jsp?id=<%=id %>">
    修改预订记录:
    <br><br>
    <%
        String sql = "select * from yudingjilu where id=" + id;
        String taocanmingcheng = "";
        String jiage = "";
        String leibie = "";
        String yudingren = "";
        String yudingshijian = "";
        String beizhu = "";
        ResultSet RS_result = connDbBean.executeQuery(sql);
        while (RS_result.next()) {
            taocanmingcheng = RS_result.getString("taocanmingcheng");
            jiage = RS_result.getString("jiage");
            leibie = RS_result.getString("leibie");
            yudingren = RS_result.getString("yudingren");
            yudingshijian = RS_result.getString("yudingshijian");
            beizhu = RS_result.getString("beizhu");
        }
    %>
    <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF"
           style="border-collapse:collapse">
        <tr>
            <td>套餐名称：</td>
            <td><input name='taocanmingcheng' type='text' id='taocanmingcheng' size='50' value='<%=taocanmingcheng%>'
                       style='border:solid 1px #000000; color:#666666'/></td>
        </tr>
        <tr>
            <td>价格：</td>
            <td><input name='jiage' type='text' id='jiage' value='<%= jiage%>'
                       style='border:solid 1px #000000; color:#666666'/></td>
        </tr>
        <tr>
            <td>类别：</td>
            <td><input name='leibie' type='text' id='leibie' value='<%= leibie%>'
                       style='border:solid 1px #000000; color:#666666'/></td>
        </tr>
        <tr>
            <td>预订人：</td>
            <td><input name='yudingren' type='text' id='yudingren' value='<%= yudingren%>'
                       style='border:solid 1px #000000; color:#666666'/></td>
        </tr>
        <tr>
            <td>预订时间：</td>
            <td><input name='yudingshijian' type='text' id='yudingshijian' value='<%= yudingshijian%>'
                       onclick="getDate(form1.yudingshijian,'2')" need="1" readonly='readonly'/></td>
        </tr>
        <tr>
            <td>备注：</td>
            <td><textarea name='beizhu' cols='50' rows='5' id='beizhu'
                          style='border:solid 1px #000000; color:#666666'><%=beizhu%></textarea></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><input type="submit" name="Submit" value="提交" onclick="return check();"/>
                <input type="reset" name="Submit2" value="重置"/></td>
        </tr>
    </table>
</form>

</body>
</html>


