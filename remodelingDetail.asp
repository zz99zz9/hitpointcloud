<!--#include file="inc/conn.asp"-->
<!--#include file="inc/Config.Asp"-->
<!--#include file="inc/Function.asp"-->
<!--#include file="inc/Inc.Asp"-->
<%
dim tdkid
tdkid=4
v=request.QueryString("v")
set hrs=Server.CreateObject("ADODB.Recordset")
sql="select * from [GsJs] where gsjsid="&v
hrs.Open sql,conn,1,1
%>
<!--#include file="inc/header.Asp"-->
<!--通用结束-->
<link rel="stylesheet" href="xgwl/css/3.css"/>
<!---广告--->
<div class="toped">
<h5 class="wow fadeInUp">行业重塑</h5>
<p class="txt wow fadeInUp" data-wow-delay="150ms">以云计算为核心的IT架构，部署灵活、实施方便</p>
</div>
<!--栏目标题-->
<div class="titleline">
    <div class="container">
    <div class="row">
        <span class="tit"><% call sHowtit(v)%></span><span class="tbtn tra hand">在线咨询</span>
    </div>
    </div>
</div>
<!---广告结束 ---->

<!--part1-->
<div class="part2 ">
<div class="container">
<div class="row">
<div class="col-md-6" >
    <h2>行业痛症</h2>
<%=hrs("gsjstext")%>
</div>
<div class="col-md-6" >
<img src='<%=hrs("pic1")%>' class="co4 wow bounceInRight " data-wow-delay="100ms">
</div>
</div>
</div>
</div>
<!--part2-->
<div class="part3 ">
<div class="container">
<div class="row">
<div class="col-md-6" >
<img src='<%=hrs("pic2")%>'  class="co4 wow bounceInLeft " data-wow-delay="100ms">
</div>
<div class="col-md-6" >
    <h2>解决方案</h2>
    <%=hrs("txt2")%>
</div>
</div>
</div>
</div>
<!--part3-->
<div class="part2 ">
<div class="container">
<div class="row">
<div class="col-md-6" >
    <h2>行业收益</h2>
 <%=hrs("txt3")%>
</div>
<div class="col-md-6" >
    <img src='<%=hrs("pic3")%>' class="co4 wow bounceInRight " data-wow-delay="100ms">
</div>
</div>
</div>
</div>
<!--part3-->
<div class="part3 ">
<div class="container">
<div class="row">
<div class="col-md-6" >
    <h2>相关案例</h2>
    <ul class='row hcases'>
        <a href='casesDetail.asp?nv=<%=hrs("links1")%>'><img src='<%=hrs("lpic1")%>' class='b_c12 tra'></a>
        <a href='casesDetail.asp?nv=<%=hrs("links2")%>'><img src='<%=hrs("lpic2")%>' class='b_c12 tra'></a>
        <a href='casesDetail.asp?nv=<%=hrs("links3")%>'><img src='<%=hrs("lpic3")%>' class='b_c12 tra'></a>
    </ul>
</div>
<div class="col-md-6" >
<h2>行业资讯</h2>
<ul class='row hnews'>
    <%set rsnew=Server.CreateObject("ADODB.Recordset")
	  sqlnew="select top 6 * from [prod] where prod_name<>'' and classid=2 order by oid desc,prod_id desc"
      rsnew.Open sqlnew,conn,1,1
      do while not rsnew.eof%>
<a href="newsDetail.asp?nv=<%=rsnew("prod_id")%>" class='ellipsis'><i></i><%=rsnew("prod_name")%></a>
  <%rsnew.movenext
           	i=i+1
               loop%>
</ul>
</div>
</div>
</div>
</div>
<%hrs.close
set hrs=Nothing
rsnew.close
set rsnew=Nothing%>
 	 <!--footer-->
<!--#include file="inc/footer.Asp"-->
<!--#include file="inc/sidebar.asp"-->
</body>
</html>