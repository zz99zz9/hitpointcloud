<!--#include file="inc/conn.asp"-->
<!--#include file="inc/Config.Asp"-->
<!--#include file="inc/Function.asp"-->
<!--#include file="inc/Inc.Asp"-->
<%
dim tdkid
tdkid=3
v=request.QueryString("v")

%>
<!--#include file="inc/header.Asp"-->
<!--通用结束-->
<link rel="stylesheet" href="xgwl/css/2.css"/>
<!----广告--->
<div class="toped">
<h5 class="wow fadeInUp">云计算咨询</h5>
<p class="txt wow fadeInUp" data-wow-delay="150ms">以云计算为核心的IT架构，部署灵活、实施方便</p>
</div>
<!--栏目标题-->
<div class="titleline">
    <div class="container">
    <div class="row">
        <span class="tit"><% call sHowtit(v)%></span><a class="tbtn tra hand" href="getdemo.asp" target="_blank">获取诊断书</a>
    </div>
    </div>
</div>
<!---广告结束 ---->
<div class="part2 ">
<div class="container">
<div class="row">
<% call sHowInfo(v)%>

</div>
</div>
</div>

 	 <!--footer-->
<!--#include file="inc/footer.Asp"-->
<!--#include file="inc/sidebar.asp"-->
</body>
</html>
