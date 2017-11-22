<!--#include file="inc/conn.asp"-->
<!--#include file="inc/Config.Asp"-->
<!--#include file="inc/Function.asp"-->
<!--#include file="inc/Inc.Asp"-->
<%
dim tdkid
tdkid=20
key=request.QueryString("key")
%>
<!--#include file="inc/enheader.Asp"-->
<!--通用结束-->
<link rel="stylesheet" href="xgwl/css/getdemo.css"/>
<!----广告-->
<div class="toped">


</div>
<!--栏目标题
<div class="titleline">
    <div class="container">
    <div class="row">
        <span class="tit">新鲜事</span><span class="txt hidden-xs">在线学习交流、视频资料、白皮书...总有你需要的</span>
    </div>
    </div>
</div>-->
<div class="searchbox">
<div class="container">
<input type="text" class="searchint" id="searchkey" placeholder="NetSuite\Oracle\NetDimensions" value="<%=key%>"><i class="pico pico-mag searchbtn hand"></i>
<%
	if key<>"" then
	  set rsnew=Server.CreateObject("ADODB.Recordset")
	  sqlnew="select count(*) as cc from [prod] where classid=2"

			sqlnew = sqlnew+" and (prod_nameen like '%"&key&"%' or summanyen like '%"&key&"%' or prod_detailen like '%"&key&"%')"

rsnew.Open sqlnew,conn,1,1
cc=rsnew("cc")
           	rsnew.close
           	set rsnew=nothing
           	%>
<p class="stxt">Find <%=cc%> articles for you</p>
<%end if%>
</div>
</div>
<!---广告结束 ---->
<div class="part1 ">
<div class="container">
<ul class="newslist">
<%

	  set rsnew=Server.CreateObject("ADODB.Recordset")
	  sqlnew="select * from [prod] where classid=2"
	  	if key<>"" then
			sqlnew = sqlnew+" and (prod_name like '%"&key&"%' or summany like '%"&key&"%' or prod_detail like '%"&key&"%')"
		end if
	  sqlnew=sqlnew+" order by oid desc,prod_id desc"

rsnew.Open sqlnew,conn,1,1%>
<!---->
     <%
       if rsnew.bof and rsnew.eof then
       response.write("暂无内容")
       else
       rsnew.PageSize=30 '设置页码
       pagecount=rsnew.PageCount '获取总页码
       page=int(request("page")) '接收页码
       if page<=0 then page=1 '判断
       if request("page")="" then page=1
       rsnew.AbsolutePage=page '设置本页页码
       i=0
       do while not rsnew.eof and i<rsnew.PageSize
       %>
<li><div class="info"><a class="h3" href="ennewsDetail.asp?nv=<%=rsnew("prod_id")%>"><%=rsnew("prod_nameen")%></a><p class="txt"><%=rsnew("summanyen")%></p>
</div></li>
<%rsnew.movenext
           	i=i+1
               loop
           	end if
           	rsnew.close
           	set rsnew=nothing%>

</ul>

</div>
</div>

 	 <!--footer-->
<!--#include file="inc/enfooter.Asp"-->
<!--#include file="inc/ensidebar.asp"-->
</body>
</html>
