
<%@ page language="java"  pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Ԥ����¼</title><LINK href="CSS.css" type=text/css rel=stylesheet>
    <script language="javascript" src="js/Calendar.js"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	    <script type="text/javascript">
	    function up(tt)
	    {
	        var pop=new Popup({ contentType:1,isReloadOnClose:false,width:300,height:50});
            pop.setContent("contentUrl","upload.jsp?Result="+tt);
            pop.setContent("title","�ļ��ϴ�");
            pop.build();
            pop.show();
	    }
	</script>
  </head>
<script language="javascript">
function check()
{
	if(document.form1.taocanmingcheng.value==""){alert("�������ײ�����");document.form1.taocanmingcheng.focus();return false;}if(document.form1.jiage.value==""){alert("������۸�");document.form1.jiage.focus();return false;}if(document.form1.leibie.value==""){alert("���������");document.form1.leibie.focus();return false;}if(document.form1.yudingren.value==""){alert("������Ԥ����");document.form1.yudingren.focus();return false;}if(document.form1.yudingshijian.value==""){alert("������Ԥ��ʱ��");document.form1.yudingshijian.focus();return false;}
}
function gow()
{
	document.location.href="yudingjilu_add.jsp?jihuabifffanhao="+document.form1.jihuabifffanhao.value;
}
</script>
  <body >
    <%
  String sql;
  ResultSet RS_result;
  String id=request.getParameter("id");
  sql="select * from taocanbaojia where id="+id;
  String taocanmingcheng="";String jiage="";String leibie="";
  RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  taocanmingcheng=RS_result.getString("taocanmingcheng");jiage=RS_result.getString("jiage");leibie=RS_result.getString("leibie");
  }
   %>
  <form name="form1" id="form1" method="post" action="yudingjilu_add_post.jsp">
  ���Ԥ����¼:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">    <tr><td>�ײ����ƣ�</td><td><input name='taocanmingcheng' type='text' id='taocanmingcheng' value='' size='50' style='border:solid 1px #000000; color:#666666'  readonly='readonly' />&nbsp;*</td></tr><script language="javascript">document.form1.taocanmingcheng.value='<%=taocanmingcheng%>';</script><tr><td>�۸�</td><td><input name='jiage' type='text' id='jiage' value='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' />&nbsp;*</td></tr><script language="javascript">document.form1.jiage.value='<%=jiage%>';</script><tr><td>���</td><td><input name='leibie' type='text' id='leibie' value='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' />&nbsp;*</td></tr><script language="javascript">document.form1.leibie.value='<%=leibie%>';</script><tr><td>Ԥ���ˣ�</td><td><input name='yudingren' type='text' id='yudingren' style='border:solid 1px #000000; color:#666666' value='<%=request.getSession().getAttribute("username")%>' />&nbsp;*</td></tr><tr><td>Ԥ��ʱ�䣺</td><td><input name='yudingshijian' type='text' id='yudingshijian' value='' readonly='readonly' onClick="getDate(document.form1.yudingshijian,'2')" need='1' style='width:100px; height:16px; border:solid 1px #000000; color:#666666'/>&nbsp;*</td></tr><tr><td>��ע��</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' style='border:solid 1px #000000; color:#666666'></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onClick="return check();" style='border:solid 1px #000000; color:#666666' />
      <input type="reset" name="Submit2" value="����" style='border:solid 1px #000000; color:#666666' /></td>
    </tr>
  </table>
</form>

  </body>
</html>

