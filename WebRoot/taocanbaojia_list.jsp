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
    <title>�ײͱ���</title><LINK href="CSS.css" type=text/css rel=stylesheet><script language="javascript" src="js/Calendar.js"></script>
  </head>
  <%
String sql;
ResultSet RS_result;
%>
  <body >
  <p>�����ײͱ����б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:&nbsp;&nbsp;�ײ����ƣ�<input name="taocanmingcheng" type="text" id="taocanmingcheng" style='border:solid 1px #000000; color:#666666' size="12" />  ���
   <select name='leibie' id='leibie'>
     <option value="">����</option>
     <option value="��ɴ����ϵ">��ɴ����ϵ</option>
     <option value="MV��ϵ">MV��ϵ</option>
     <option value="����д����ϵ">����д����ϵ</option>
     <option value="����д����ϵ">����д����ϵ</option>
     <option value="ȫ�Ҹ���ϵ">ȫ�Ҹ���ϵ</option>
   </select>
   <input type="submit" name="Submit" value="����" style='border:solid 1px #000000; color:#666666' />
</form>
<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>�ײ�����</td><td bgcolor='#CCFFFF'>�۸�</td><td bgcolor='#CCFFFF'>���</td>
    <td width="138" align="center" bgcolor="CCFFFF">���ʱ��</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">����</td>
  </tr>
  <%
   int curpage=1;//��ǰҳ
				int page_record=10;//ÿҳ��ʾ�ļ�¼��
				int zgs=0;
				int zys=0;
				//������ķ�����sql��ѯ��ɣ��ٶȿ죩
				String hsgnpage=request.getParameter("page");
				String fysql="select count(id) as ss from taocanbaojia";
				ResultSet RS_resultfy=connDbBean.executeQuery(fysql);
  while(RS_resultfy.next()){
  zgs=Integer.parseInt(RS_resultfy.getString("ss"));
  zys=zgs/page_record+1;
  }
				if (hsgnpage!=null)
				{
				curpage=Integer.parseInt(request.getParameter("page"));//��ȡ���ݵ�ֵ����Ҫ��ʾ��ҳ
				}
				else
				{
				curpage=1;
				}
				if (curpage==0)
				{
					curpage=1;
				}
				if(curpage>zys)
				{
					curpage=zys;
				}
   sql="";
  sql="select top "+page_record+" * from taocanbaojia where id not in (select top "+((curpage-1)*page_record)+" id from taocanbaojia order by id desc) ";
  
if(request.getParameter("taocanmingcheng")=="" ||request.getParameter("taocanmingcheng")==null ){}else{sql=sql+" and taocanmingcheng like '%"+new String(request.getParameter("taocanmingcheng").getBytes("8859_1"))+"%'";}
if(request.getParameter("leibie")=="����" ||request.getParameter("leibie")==null ){}else{sql=sql+" and leibie like '%"+new String(request.getParameter("leibie").getBytes("8859_1"))+"%'";}
  sql=sql+" order by id desc";
  RS_result=connDbBean.executeQuery(sql);
 String id="";
 String taocanmingcheng="";String jiage="";String jianjie="";String leibie="";
 String addtime="";
 int i=0;
 while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
taocanmingcheng=RS_result.getString("taocanmingcheng");jiage=RS_result.getString("jiage");jianjie=RS_result.getString("jianjie");leibie=RS_result.getString("leibie");
 addtime=RS_result.getString("addtime");
%>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=taocanmingcheng %></td><td><%=jiage %></td><td><%=leibie %></td>
    <td width="138" align="center"><%=addtime %></td>
    <td width="90" align="center"><a href="taocanbaojia_updt.jsp?id=<%=id%>">�޸�</a>  <a href="del.jsp?id=<%=id %>&tablename=taocanbaojia" onClick="return confirm('���Ҫɾ����')">ɾ��</a> <a href="taocanbaojiadetail.jsp?id=<%=id%>" target="_blank">��ϸ</a></td>
  </tr>
  	<%
  }
   %>
</table><br>
�������ݹ�<%=i %>��,<a style="cursor:hand" onClick="javascript:window.print();">��ӡ��ҳ</a>
<p align="center">&nbsp;��<%=zgs%>����¼&nbsp;&nbsp;<%=page_record %>��/ҳ��<a href="taocanbaojia_list.jsp?page=1">��ҳ</a>��<a href="taocanbaojia_list.jsp?page=<%= curpage-1%>">��һҳ</a>��<A href="taocanbaojia_list.jsp?page=<%= curpage+1%>">��һҳ</A>��<a href="taocanbaojia_list.jsp?page=<%=zys %>">βҳ</A>����ǰ��<FONT color=red><%=curpage %></FONT>ҳ/��<FONT color=red><%=zys %></FONT>ҳ</p>
  </body>
</html>
