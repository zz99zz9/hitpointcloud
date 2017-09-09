<!--#include file="inc/conn.asp"-->
<!--#include file="inc/Config.Asp"-->
<!--#include file="inc/Function.asp"-->
<!--#include file="inc/Inc.Asp"-->
<%
dim tdkid
tdkid=13
v=request.QueryString("v")
set hrs=Server.CreateObject("ADODB.Recordset")
sql="select * from [GsJs] where gsjsid="&v
hrs.Open sql,conn,1,1
%>
<!--#include file="inc/enheader.Asp"-->
<!--通用结束-->
<link rel="stylesheet" href="xgwl/css/3.css"/>
<!----广告--->
<div class="toped">
<h5 class="wow fadeInUp">Industry Remodeling</h5>
<p class="txt wow fadeInUp" data-wow-delay="150ms">Industry and product experts to ensure ongoing success</p>
</div>
<!--栏目标题-->
<div class="titleline">
    <div class="container">
    <div class="row">
        <span class="tit"><% call sHowtiten(v)%></span><span class="tbtn tra hand">DEMO</span>
    </div>
    </div>
</div>
<!---广告结束 ---->
<!--part1-->
<div class="part2 ">
<div class="container">
<div class="row">
<div class="col-md-6" >
    <h2>Overview</h2>
<%=hrs("gsjstexten")%>
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
    <h2>Solutions</h2>
    <%=hrs("txt2en")%>
</div>
</div>
</div>
</div>
<!--part3-->
<div class="part2 ">
<div class="container">
<div class="row">
<div class="col-md-6" >
    <h2>Benefits</h2>
 <%=hrs("txt3en")%>
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
    <h2>Customers</h2>
    <ul class='row hcases'>
        <a href='encasesDetail.asp?nv=<%=hrs("links1")%>'><img src='<%=hrs("lpic1")%>' class='b_c12 tra'></a>
        <a href='encasesDetail.asp?nv=<%=hrs("links2")%>'><img src='<%=hrs("lpic2")%>' class='b_c12 tra'></a>
        <a href='encasesDetail.asp?nv=<%=hrs("links3")%>'><img src='<%=hrs("lpic3")%>' class='b_c12 tra'></a>
    </ul>
</div>
<div class="col-md-6" >
<h2>News</h2>
<ul class='row hnews'>
    <%set rsnew=Server.CreateObject("ADODB.Recordset")
	  sqlnew="select top 6 * from [prod] where prod_nameen<>'' and classid=2 order by oid desc,prod_id desc"
      rsnew.Open sqlnew,conn,1,1
      do while not rsnew.eof%>
<a href="ennewsDetail.asp?nv=<%=rsnew("prod_id")%>" class='ellipsis'><i></i><%=rsnew("prod_nameen")%></a>
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
<!--#include file="inc/enfooter.Asp"-->
<!--#include file="inc/ensidebar.asp"-->
</body>
</html>
