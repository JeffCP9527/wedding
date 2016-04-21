
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
    
    <title>套餐报价</title><script language="javascript" src="js/Calendar.js"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	    <script type="text/javascript">
	    function up(tt)
	    {
	        var pop=new Popup({ contentType:1,isReloadOnClose:false,width:300,height:50});
            pop.setContent("contentUrl","upload.jsp?Result="+tt);
            pop.setContent("title","文件上传");
            pop.build();
            pop.show();
	    }
	</script>
    <LINK href="CSS.css" type=text/css rel=stylesheet>

  </head>
<script language="javascript">
function check()
{
	if(document.form1.taocanmingcheng.value==""){alert("请输入套餐名称");document.form1.taocanmingcheng.focus();return false;}if(document.form1.jiage.value==""){alert("请输入价格");document.form1.jiage.focus();return false;}
}
</script>
  <body >
  <%
  String id=request.getParameter("id");
   %>
  <form name="form1" id="form1" method="post" action="taocanbaojia_updt_post.jsp?id=<%=id %>">
  修改套餐报价:
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
     <tr><td>套餐名称：</td><td><input name='taocanmingcheng' type='text' id='taocanmingcheng' size='50' value='<%=taocanmingcheng%>' style='border:solid 1px #000000; color:#666666'/></td></tr><tr><td>价格：</td><td><input name='jiage' type='text' id='jiage' value='<%= jiage%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>简介：</td><td><textarea name="jianjie" style="display:none"><%=jianjie%></textarea><iframe ID="eWebEditor1" src="eWebEditor_V4.60/ewebeditor.htm?id=jianjie&style=coolblue" frameborder="0" scrolling="no" width="600" HEIGHT="350"></iframe></td></tr><tr><td>类别：</td><td><select name='leibie' id='leibie'>
       <option value="婚纱照套系">婚纱照套系</option>
       <option value="MV套系">MV套系</option>
       <option value="情侣写真套系">情侣写真套系</option>
       <option value="个人写真套系">个人写真套系</option>
       <option value="全家福套系">全家福套系</option>
     </select></td></tr><script language="javascript">document.form1.leibie.value='<%=leibie%>';</script>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="return check();" />
      <input type="reset" name="Submit2" value="重置" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


