<!--#include file="inc/conn.asp"-->
<!--#include file="inc/Config.Asp"-->
<!--#include file="inc/Function.asp"-->
<!--#include file="inc/Inc.Asp"-->
<%
dim tdkid
tdkid=16
nv=request.QueryString("nv")

set rsnew=Server.CreateObject("ADODB.Recordset")
sql="select * from [prod] where prod_id="&nv

rsnew.Open sql,conn,1,1
title=rsnew("prod_name")
if rsnew("keywords")<>"" then siteKey=rsnew("keywords")
if rsnew("description")<>"" then SiteCont=rsnew("description")%>
<!--#include file="inc/enheader.Asp"-->
<!--通用结束-->
<link rel="stylesheet" href="xgwl/css/6.css"/>
<!----广告--->
<div class="toped">
<h5 class="wow fadeInUp">Customers</h5>
<p class="txt wow fadeInUp" data-wow-delay="150ms">See how Hitpoint have helped businesses like yours all around the world.</p>
</div>
<!--栏目标题-->
<div class="titleline">
    <div class="container">
    <div class="row">
        <span class="tit">Customers</span><a class="tbtn tra hand" href="engetdemo.asp">Get a diagnosis</a>
    </div>
    </div>
</div>
<!---广告结束 ---->
<div class="part1 ">
<div class="container">
<div class="row">
<h1><%=rsnew("prod_nameen")%></h1>
<div class="sum">
<div class="pic"><img src="<%=rsnew("prod_pic")%>"></div><p><%=rsnew("summanyen")%></p><p class="com"></p>
</div>
<div class="main">
<%=rsnew("prod_detailen")%>
<div class="tips" style="font-size:14px;">

<%
if rsnew("tips")<>"" then
response.write"Tips："
mystr=rsnew("tipsen")
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
<!--#include file="inc/enfooter.Asp"-->
<!--#include file="inc/ensidebar.asp"-->
</body>
</html>
