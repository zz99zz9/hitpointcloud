<!--#include file="inc/conn.asp"-->
<!--#include file="inc/Config.Asp"-->
<!--#include file="inc/Function.asp"-->
<!--#include file="inc/Inc.Asp"-->
<%
dim tdkid
tdkid=7
nv=request.QueryString("nv")

set rsnew=Server.CreateObject("ADODB.Recordset")
sql="select * from [prod] where prod_id="&nv

rsnew.Open sql,conn,1,1
title=rsnew("prod_name")
if rsnew("keywords")<>"" then siteKey=rsnew("keywords")
if rsnew("description")<>"" then SiteCont=rsnew("description")%>
<!--#include file="inc/header.Asp"-->
<!--通用结束-->
<link rel="stylesheet" href="xgwl/css/6.css"/>
<!----广告--->
<div class="toped">
<h5 class="wow fadeInUp">我们的客户</h5>
<p class="txt wow fadeInUp" data-wow-delay="150ms">客户的满意就是我们的成功</p>
</div>
<!--栏目标题-->
<div class="titleline">
    <div class="container">
    <div class="row">
        <span class="tit">案例</span><a class="tbtn tra hand hidden-xs" href="getdemo.asp">获取诊断书</a>
    </div>
    </div>
</div>
<!---广告结束 ---->
<div class="part1 ">
<div class="container">
<div class="row">
<h1><%=rsnew("prod_name")%></h1>
<div class="sum hidden-xs">
<div class="pic"><img src="<%=rsnew("prod_pic")%>"></div><p><%=rsnew("summany")%></p><p class="com"></p>
</div>
<div class="main">
<%=rsnew("prod_detail")%>
<div class="tips" style="font-size:14px;">

<%
if rsnew("tips")<>"" then
response.write"标签："
mystr=rsnew("tips")
mystr=replace(mystr,"，",",")
mystr=split(mystr,",")
for i=0 to ubound(mystr)
'if i>0 then response.write" \ "
response.write "<a href='search.asp?key="&mystr(i)&"' class='tipsinfo' target='_blank'>"&mystr(i)&"</a>"
next
end if  %>
</div>
                  <!--	<div class="pn"><%'call sHowDxNewsPN(rsnew("classid"),nv)%></div>-->
</div>
</div>
</div>
</div>
 <%
                  		rsnew.close
                  	set rsnew=nothing%>

 	 <!--footer-->
<!--#include file="inc/footer.Asp"-->
<!--#include file="inc/sidebar.asp"-->
</body>
</html>
