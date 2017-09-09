<!--#include file="inc/conn.asp"-->
<!--#include file="inc/Config.Asp"-->
<!--#include file="inc/Function.asp"-->
<!--#include file="inc/Inc.Asp"-->
<%
dim tdkid
tdkid=14
v=request.QueryString("v")
%>
<!--#include file="inc/enheader.Asp"-->
<!--通用结束-->
<link rel="stylesheet" href="xgwl/css/4.css"/>
<!----广告--->
<div class="toped">
<h5 class="wow fadeInUp">Training & Support</h5>
<p class="txt wow fadeInUp" data-wow-delay="150ms">Get the most from your application</p>
</div>
<!--栏目标题-->
<div class="titleline">
    <div class="container">
    <div class="row">
        <span class="tit"><% call sHowtiten(v)%></span><a class="tbtn tra hand" href="engetdemo.asp">DEMO</a>
    </div>
    </div>
</div>
<!---广告结束 ---->
<div class="part2 ">
<div class="container">
<div class="row">
<% call sHowInfoen(v)%>

</div>
</div>
</div>

 	 <!--footer-->
<!--#include file="inc/enfooter.Asp"-->
<!--#include file="inc/ensidebar.asp"-->
</body>
</html>
