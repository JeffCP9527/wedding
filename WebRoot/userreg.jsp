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
<script language="javascript">
    function check() {
        if (document.form1.yonghuming.value == "") {
            alert("请输入用户名");
            document.form1.yonghuming.focus();
            return false;
        }
        if (document.form1.mima.value == "") {
            alert("请输入密码");
            document.form1.mima.focus();
            return false;
        }
        if (document.form1.mima2.value != document.form1.mima.value) {
            alert("两次密码不一致，请重试");
            document.form1.mima.focus();
            return false;
        }
        if (document.form1.xingming.value == "") {
            alert("请输入姓名");
            document.form1.xingming.focus();
            return false;
        }
    }
    function gow() {
        document.location.href = "yonghuzhuce_add.jsp?jihuabifffanhao=" + document.form1.jihuabifffanhao.value;
    }
</script>
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
                                            <td width="21%" align="center" class="STYLE5">用户注册</td>
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
                                                <table width="98%" border="1" align="center" cellpadding="3"
                                                       cellspacing="1" bordercolor="#529C33"
                                                       style="border-collapse:collapse">
                                                    <form name="form1" method="post" action="yonghuzhuce_add_post.jsp">
                                                        <tr>
                                                            <td>用户名：</td>
                                                            <td><input name='yonghuming' type='text' id='yonghuming'
                                                                       value=''/>
                                                                &nbsp;*
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>密码：</td>
                                                            <td><input name='mima' type='password' id='mima' value=''/>
                                                                &nbsp;* 确认密码：
                                                                <input name='mima2' type='password' id='mima2'
                                                                       value=''/></td>
                                                        </tr>
                                                        <tr>
                                                            <td>姓名：</td>
                                                            <td><input name='xingming' type='text' id='xingming'
                                                                       value=''/>
                                                                &nbsp;*
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>性别：</td>
                                                            <td><select name='xingbie' id='xingbie'
                                                                        style=" height:19px; border:solid 1px #000000; color:#666666">
                                                                <option value="男">男</option>
                                                                <option value="女">女</option>
                                                            </select></td>
                                                        </tr>
                                                        <tr>
                                                            <td>出生年月：</td>
                                                            <td><input name='chushengnianyue' type='text'
                                                                       id='chushengnianyue' value='' readonly='readonly'
                                                                       onClick="getDate(document.form1.chushengnianyue,'2')"
                                                                       need='1'/></td>
                                                        </tr>
                                                        <tr>
                                                            <td>QQ：</td>
                                                            <td><input name='QQ' type='text' id='QQ' value=''/></td>
                                                        </tr>
                                                        <tr>
                                                            <td>邮箱：</td>
                                                            <td><input name='youxiang' type='text' id='youxiang'
                                                                       value=''/></td>
                                                        </tr>
                                                        <tr>
                                                            <td>电话：</td>
                                                            <td><input name='dianhua' type='text' id='dianhua'
                                                                       value=''/></td>
                                                        </tr>
                                                        <tr>
                                                            <td>身份证：</td>
                                                            <td><input name='shenfenzheng' type='text' id='shenfenzheng'
                                                                       value=''/></td>
                                                        </tr>
                                                        <tr>
                                                            <td>头像：</td>
                                                            <td><input name='touxiang' type='text' id='touxiang'
                                                                       size='50' value=''/>
                                                                &nbsp;
                                                                <input name="button" type='button'
                                                                       onClick="up('touxiang')" value='上传'
                                                                       style=" height:19px; border:solid 1px #000000; color:#666666"/>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>地址：</td>
                                                            <td><input name='dizhi' type='text' id='dizhi' value=''
                                                                       size='50'/></td>
                                                        </tr>
                                                        <tr>
                                                            <td>备注：</td>
                                                            <td><textarea name='beizhu' cols='50' rows='5'
                                                                          id='beizhu'></textarea></td>
                                                        </tr>
                                                        <tr>
                                                            <td>&nbsp;</td>
                                                            <td><input type="submit" name="Submit5" value="提交"
                                                                       onClick="return check();"
                                                                       style=" height:19px; border:solid 1px #000000; color:#666666"/>
                                                                <input type="reset" name="Submit22" value="重置"
                                                                       style=" height:19px; border:solid 1px #000000; color:#666666"/>
                                                            </td>
                                                        </tr>
                                                    </form>
                                                </table>
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