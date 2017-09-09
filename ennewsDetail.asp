<!--#include file="inc/conn.asp"-->
<!--#include file="inc/Config.Asp"-->
<!--#include file="inc/Function.asp"-->
<!--#include file="inc/Inc.Asp"-->
<%
dim tdkid
tdkid=22
nv=request.QueryString("nv")

set rsnew=Server.CreateObject("ADODB.Recordset")
sql="select * from [prod] where prod_id="&nv

rsnew.Open sql,conn,1,1
title=rsnew("prod_name")
if rsnew("keywords")<>"" then siteKey=rsnew("keywords")
if rsnew("description")<>"" then SiteCont=rsnew("description")%>
<!--#include file="inc/enheader.Asp"-->
<!--通用结束-->
<link rel="stylesheet" href="xgwl/css/9.css"/>
<!----广告--->
<div class="toped">
<h5 class="wow fadeInUp">News</h5>
<p class="txt wow fadeInUp" data-wow-delay="150ms">Learn more about Hitpoint</p>
</div>
<!--栏目标题-->
<div class="titleline">
    <div class="container">
    <div class="row">
        <span class="tit">Fresh news</span><a class="txt hidden-xs" href="engetdemo.asp">Anything you want</a>
    </div>
    </div>
</div>
<!---广告结束 ---->
<div class="part1 ">
<div class="container">

<h1><%=rsnew("prod_nameen")%></h1>

<div class="main" ><br><br>
<%=rsnew("prod_detailen")%>
<div class="tips" style="font-size:14px;">

<%
v=nv
if rsnew("tips")<>"" then
'response.write"Tips："
mystr=rsnew("tips")
mystr=replace(mystr,"，",",")
mystr=split(mystr,",")
for i=0 to ubound(mystr)
'if i>0 then response.write" \ "
'response.write "<a href='search.asp?key="&mystr(i)&"' class='tipsinfo' target='_blank'>"&mystr(i)&"</a>"
next
end if  %>
</div>
                  	<div class="pn"><%call sHowDxNewsPNen(rsnew("classid"),v)%></div>
                  	<!-- sharebar button begin -->
                                                            <div class="bshare-custom icon-medium"><div class="bsPromo bsPromo2"></div><a  class="bshare-weixin" href="javascript:void(0);"></a><a class="bshare-sinaminiblog" href="javascript:void(0);"></a><a class="bshare-facebook" href="javascript:void(0);"></a><a class="bshare-twitter" href="javascript:void(0);"></a><a class="bshare-qqim" href="javascript:void(0);"></a><a title="more" class="bshare-more bshare-more-icon more-style-addthis"></a><span class="BSHARE_COUNT bshare-share-count" style="float: none;">51.7K</span></div><script type="text/javascript" charset="utf-8" src="http://static.bshare.cn/b/buttonLite.js#style=-1&amp;uuid=&amp;pophcol=2&amp;lang=zh"></script><script type="text/javascript" charset="utf-8" src="http://static.bshare.cn/b/bshareC0.js"></script>
                                                            <!-- sharebar button end -->
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
