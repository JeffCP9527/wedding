
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
    
    <title>�ײͱ���</title><script language="javascript" src="js/Calendar.js"></script>
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
    <LINK href="CSS.css" type=text/css rel=stylesheet>

  </head>
<script language="javascript">
function check()
{
	if(document.form1.taocanmingcheng.value==""){alert("�������ײ�����");document.form1.taocanmingcheng.focus();return false;}if(document.form1.jiage.value==""){alert("������۸�");document.form1.jiage.focus();return false;}
}
</script>
  <body >
  <%
  String id=request.getParameter("id");
   %>
  <form name="form1" id="form1" method="post" action="taocanbaojia_updt_post.jsp?id=<%=id %>">
  �޸��ײͱ���:
  <br><br>
  <%
  String sql="select * from taocanbaojia where id="+id;
  String taocanmingcheng="";String jiage="";String jianjie="";String leibie="";
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  taocanmingcheng=RS_result.getString("taocanmingcheng");jiage=RS_result.getString("jiage");jianjie=RS_result.getString("jianjie");leibie=RS_result.getString("leibie");
  }
   %>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     <tr><td>�ײ����ƣ�</td><td><input name='taocanmingcheng' type='text' id='taocanmingcheng' size='50' value='<%=taocanmingcheng%>' style='border:solid 1px #000000; color:#666666'/></td></tr><tr><td>�۸�</td><td><input name='jiage' type='text' id='jiage' value='<%= jiage%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>��飺</td><td><textarea name="jianjie" style="display:none"><%=jianjie%></textarea><iframe ID="eWebEditor1" src="eWebEditor_V4.60/ewebeditor.htm?id=jianjie&style=coolblue" frameborder="0" scrolling="no" width="600" HEIGHT="350"></iframe></td></tr><tr><td>���</td><td><select name='leibie' id='leibie'>
       <option value="��ɴ����ϵ">��ɴ����ϵ</option>
       <option value="MV��ϵ">MV��ϵ</option>
       <option value="����д����ϵ">����д����ϵ</option>
       <option value="����д����ϵ">����д����ϵ</option>
       <option value="ȫ�Ҹ���ϵ">ȫ�Ҹ���ϵ</option>
     </select></td></tr><script language="javascript">document.form1.leibie.value='<%=leibie%>';</script>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onClick="return check();" />
      <input type="reset" name="Submit2" value="����" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


