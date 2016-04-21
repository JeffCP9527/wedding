<%@ page language="java" contentType="text/html; charset=gb2312"
         pageEncoding="gb2312" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <title>Insert title here</title>


    <META content="MSHTML 6.00.2800.1106" name=GENERATOR>

</HEAD>
<table id="__01" width="1003" height="126" border="0" cellpadding="0" cellspacing="0">
    <tr>
        <td width="1003" height="38" align="center" background="qtimages/3333_03_01.gif"><span class="STYLE4"><strong>站内导航
            | 版权所有 | 联系我们 | 技术支持</strong></span></td>
    </tr>
    <tr>
        <td width="1003" height="88">
            <TABLE width=100% height="59" border=0 align=center cellPadding=0 cellSpacing=0>
                <TBODY>
                <TR>
                    <TD height=8></TD>
                </TR>
                <TR>
                    <TD align="center" class="STYLE2">心灵婚纱摄影 版权所有
                        地址：xxxxxxxxxxxxxxx 邮编:xxxxx
                        xxxxxxxx
                    </TD>
                </TR>
                <TR>
                    <TD class="STYLE2">
                        <TABLE cellSpacing=0 cellPadding=0 width=624 align=center border=0>
                            <TBODY>
                            <TR>
                                <TD align="center" class="STYLE2">开发时间：<%
                                    java.util.Date date = new java.util.Date();
                                    java.text.SimpleDateFormat format = new java.text.SimpleDateFormat("yyyy-MM-dd", java.util.Locale.CHINA);

                                    String result = format.format(date);
                                    out.print(result);
                                %> 作者：xxxxxxxxxx 指导老师：xxxxxxxxxxxx
                                </TD>
                                <TD>
                                    <TABLE cellSpacing=0 cellPadding=0 width=0 border=0>
                                        <TBODY>
                                        <TR>
                                            <TD></TD>
                                        </TR>
                                        </TBODY>
                                    </TABLE>
                                </TD>
                            </TR>
                            </TBODY>
                        </TABLE>
                    </TD>
                </TR>

                </TBODY>
            </TABLE>
        </td>
    </tr>
</table>


<script language="javascript">
    var online = new Array();
    if (!document.layers)
        document.write('<div id="divStayTopLeft" style="position:absolute">')
</script>
<layer id="divStayTopLeft">
    <table border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td><img border=0 src=shihuiimages/qq/up2.gif></td>
        </tr>
        <tr>
            <td>
                <table width=118 border=0 bgcolor=#FFFFFF background=shihuiimages/qq/mid2.gif>

                    <script>

                        document.write("<tr><td align=right><a target=blank href='http://wpa.qq.com/msgrd?V=1&Uin=851781333'><img  src=shihuiimages/qq/qqon2.gif border=0 align=middle></a></td><td><a class='b' target=blank href='http://wpa.qq.com/msgrd?V=1&Uin=851781333' >QQ:851781333</a></td></tr>");
                    </script>


                </table>
            </td>
        </tr>
        <tr>
            <td><img border=0 src=shihuiimages/qq/down2.gif></td>
        </tr>
    </table>
</layer>

<script type="text/javascript">
    var verticalpos = "frombottom"
    if (!document.layers)
        document.write('</div>')
    function JSFX_FloatTopDiv() {
        var startX = screen.width - 140,
                startY = 220;
        var ns = (navigator.appName.indexOf("Netscape") != -1);
        var d = document;

        function ml(id) {
            var el = d.getElementById ? d.getElementById(id) : d.all ? d.all[id] : d.layers[id];
            if (d.layers)el.style = el;
            el.sP = function (x, y) {
                this.style.left = x;
                this.style.top = y;
            };
            el.x = startX;
            if (verticalpos == "fromtop")
                el.y = startY;
            else {
                el.y = ns ? pageYOffset + innerHeight : document.body.scrollTop + document.body.clientHeight;
                el.y -= startY;
            }
            return el;
        }

        window.stayTopLeft = function () {
            if (verticalpos == "fromtop") {
                var pY = ns ? pageYOffset : document.body.scrollTop;
                ftlObj.y += (pY + startY - ftlObj.y) / 8;
            }
            else {
                var pY = ns ? pageYOffset + innerHeight : document.body.scrollTop + document.body.clientHeight;
                ftlObj.y += (pY - startY - ftlObj.y) / 8;
            }
            ftlObj.sP(ftlObj.x, ftlObj.y);
            setTimeout("stayTopLeft()", 10);
        }
        ftlObj = ml("divStayTopLeft");
        stayTopLeft();
    }
    JSFX_FloatTopDiv();
</script>