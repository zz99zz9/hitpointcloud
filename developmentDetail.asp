<!--#include file="inc/conn.asp"-->
<!--#include file="inc/Config.Asp"-->
<!--#include file="inc/Function.asp"-->
<!--#include file="inc/Inc.Asp"-->
<%
dim tdkid
tdkid=6
v=request.QueryString("v")

%>
<!--#include file="inc/header.Asp"-->
<!--通用结束-->
<link rel="stylesheet" href="xgwl/css/5.css"/>
<!----广告--->
<div class="toped">
<h5 class="wow fadeInUp">定制开发</h5>
<p class="txt wow fadeInUp" data-wow-delay="150ms">无限拓展的应用，满足独特的业务需求</p>
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
<div class="part1 " style="background:#fff;">
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
