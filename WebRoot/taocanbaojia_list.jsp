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
    <title>套餐报价</title><LINK href="CSS.css" type=text/css rel=stylesheet><script language="javascript" src="js/Calendar.js"></script>
  </head>
  <%
String sql;
ResultSet RS_result;
%>
  <body >
  <p>已有套餐报价列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索:&nbsp;&nbsp;套餐名称：<input name="taocanmingcheng" type="text" id="taocanmingcheng" style='border:solid 1px #000000; color:#666666' size="12" />  类别：
   <select name='leibie' id='leibie'>
     <option value="">所有</option>
     <option value="婚纱照套系">婚纱照套系</option>
     <option value="MV套系">MV套系</option>
     <option value="情侣写真套系">情侣写真套系</option>
     <option value="个人写真套系">个人写真套系</option>
     <option value="全家福套系">全家福套系</option>
   </select>
   <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' />
</form>
<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>套餐名称</td><td bgcolor='#CCFFFF'>价格</td><td bgcolor='#CCFFFF'>类别</td>
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">操作</td>
  </tr>
  <%
   int curpage=1;//当前页
				int page_record=10;//每页显示的记录数
				int zgs=0;
				int zys=0;
				//用下面的方法（sql查询完成，速度快）
				String hsgnpage=request.getParameter("page");
				String fysql="select count(id) as ss from taocanbaojia";
				ResultSet RS_resultfy=connDbBean.executeQuery(fysql);
  while(RS_resultfy.next()){
  zgs=Integer.parseInt(RS_resultfy.getString("ss"));
  zys=zgs/page_record+1;
  }
				if (hsgnpage!=null)
				{
				curpage=Integer.parseInt(request.getParameter("page"));//获取传递的值，需要显示的页
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
if(request.getParameter("leibie")=="所有" ||request.getParameter("leibie")==null ){}else{sql=sql+" and leibie like '%"+new String(request.getParameter("leibie").getBytes("8859_1"))+"%'";}
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
    <td width="90" align="center"><a href="taocanbaojia_updt.jsp?id=<%=id%>">修改</a>  <a href="del.jsp?id=<%=id %>&tablename=taocanbaojia" onClick="return confirm('真的要删除？')">删除</a> <a href="taocanbaojiadetail.jsp?id=<%=id%>" target="_blank">详细</a></td>
  </tr>
  	<%
  }
   %>
</table><br>
以上数据共<%=i %>条,<a style="cursor:hand" onClick="javascript:window.print();">打印本页</a>
<p align="center">&nbsp;共<%=zgs%>条记录&nbsp;&nbsp;<%=page_record %>条/页　<a href="taocanbaojia_list.jsp?page=1">首页</a>　<a href="taocanbaojia_list.jsp?page=<%= curpage-1%>">上一页</a>　<A href="taocanbaojia_list.jsp?page=<%= curpage+1%>">下一页</A>　<a href="taocanbaojia_list.jsp?page=<%=zys %>">尾页</A>　当前第<FONT color=red><%=curpage %></FONT>页/共<FONT color=red><%=zys %></FONT>页</p>
  </body>
</html>
