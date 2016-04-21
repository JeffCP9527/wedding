
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
    
    <title>预订记录</title><LINK href="CSS.css" type=text/css rel=stylesheet><script language="javascript" src="js/Calendar.js"></script>
    

  </head>
<%
String sql;
ResultSet RS_result;
%>
  <body >
  <p>已有预订记录列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索:&nbsp;&nbsp;套餐名称：<input name="taocanmingcheng" type="text" id="taocanmingcheng" style='border:solid 1px #000000; color:#666666' size="12" />&nbsp;&nbsp;类别：<input name="leibie" type="text" id="leibie" style='border:solid 1px #000000; color:#666666' size="12" />&nbsp;&nbsp;预订人：<input name="yudingren" type="text" id="yudingren" style='border:solid 1px #000000; color:#666666' size="12" />  预订时间：<input name="yudingshijian1" type="text" id="yudingshijian1"  value='' onclick="getDate(form1.yudingshijian1,'2')" need="1" size="10" />-<input name="yudingshijian2" type="text" id="yudingshijian2"  value='' onclick="getDate(form1.yudingshijian2,'2')" need="1" size="10"  />
   <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>套餐名称</td><td bgcolor='#CCFFFF'>价格</td><td bgcolor='#CCFFFF'>类别</td><td bgcolor='#CCFFFF'>预订人</td><td bgcolor='#CCFFFF' width='65' align='center'>预订时间</td><td bgcolor='#CCFFFF' width='80' align='center'>是否审核</td>
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
				String fysql="select count(id) as ss from yudingjilu";
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
  sql="select top "+page_record+" * from yudingjilu where id not in (select top "+((curpage-1)*page_record)+" id from yudingjilu order by id desc) ";
  if(request.getParameter("taocanmingcheng")=="" ||request.getParameter("taocanmingcheng")==null ){}else{sql=sql+" and taocanmingcheng like '%"+new String(request.getParameter("taocanmingcheng").getBytes("8859_1"))+"%'";}if(request.getParameter("leibie")=="" ||request.getParameter("leibie")==null ){}else{sql=sql+" and leibie like '%"+new String(request.getParameter("leibie").getBytes("8859_1"))+"%'";}if(request.getParameter("yudingren")=="" ||request.getParameter("yudingren")==null ){}else{sql=sql+" and yudingren like '%"+new String(request.getParameter("yudingren").getBytes("8859_1"))+"%'";}if (request.getParameter("yudingshijian1")==""  ||request.getParameter("yudingshijian1")==null ) {}else{sql=sql+" and yudingshijian >= '"+new String(request.getParameter("yudingshijian1").getBytes("8859_1"))+"'";}if (request.getParameter("yudingshijian2")==""  ||request.getParameter("yudingshijian2")==null ) {}else {sql=sql+" and yudingshijian <= '"+new String(request.getParameter("yudingshijian2").getBytes("8859_1"))+"'";}
  sql=sql+" order by id desc";
  RS_result=connDbBean.executeQuery(sql);
 String id="";
 String taocanmingcheng="";String jiage="";String leibie="";String yudingren="";String yudingshijian="";String beizhu="";String issh="";
 String addtime="";
 int i=0;
 
 
 
 
 
 while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
taocanmingcheng=RS_result.getString("taocanmingcheng");jiage=RS_result.getString("jiage");leibie=RS_result.getString("leibie");yudingren=RS_result.getString("yudingren");yudingshijian=RS_result.getString("yudingshijian");beizhu=RS_result.getString("beizhu");issh=RS_result.getString("issh");
 addtime=RS_result.getString("addtime");
 
 
%>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=taocanmingcheng %></td><td><%=jiage %></td><td><%=leibie %></td><td><%=yudingren %></td><td><%=yudingshijian %></td><td width='80' align='center'><a href="sh.jsp?id=<%=id%>&yuan=<%=issh%>&tablename=yudingjilu" onclick="return confirm('您确定要执行此操作？')"><%=issh%></a></td>
    <td width="138" align="center"><%=addtime %></td>
    <td width="60" align="center"><a href="yudingjilu_updt.jsp?id=<%=id%>">修改</a>  <a href="del.jsp?id=<%=id %>&tablename=yudingjilu" onclick="return confirm('真的要删除？')">删除</a></td>
  </tr>
  	<%
  }
   %>
</table><br>
以上数据共<%=i %>条,<a style="cursor:hand" onclick="javascript:window.print();">打印本页</a>
<p align="center">&nbsp;共<%=zgs%>条记录&nbsp;&nbsp;<%=page_record %>条/页　<a href="yudingjilu_list.jsp?page=1">首页</a>　<a href="yudingjilu_list.jsp?page=<%= curpage-1%>">上一页</a>　<A href="yudingjilu_list.jsp?page=<%= curpage+1%>">下一页</A>　<a href="yudingjilu_list.jsp?page=<%=zys %>">尾页</A>　当前第<FONT color=red><%=curpage %></FONT>页/共<FONT color=red><%=zys %></FONT>页</p>
  </body>
</html>

