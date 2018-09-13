<!--#include file="inc/conn.asp"-->
<!--#include file="inc/Config.Asp"-->
<!--#include file="inc/Function.asp"-->
<!--#include file="inc/Inc.Asp"-->
<%
dim tdkid
tdkid=21
nv=request.QueryString("nv")

set rsnew=Server.CreateObject("ADODB.Recordset")
sql="select * from [prod] where prod_id="&nv

rsnew.Open sql,conn,1,1
title=rsnew("prod_name")+"_NetSuite_Hitpoint"
if rsnew("keywords")<>"" then siteKey=rsnew("keywords")
if rsnew("description")<>"" then SiteCont=rsnew("description")%>
<!--#include file="inc/header.Asp"-->
<!--通用结束-->
<link rel="stylesheet" href="xgwl/css/9.css"/>
<!----广告--->
<div class="toped">
<h5 class="wow fadeInUp">新闻资讯</h5>
<p class="txt wow fadeInUp" data-wow-delay="150ms">最有价值的行业资料，最新鲜的行业新闻</p>
</div>
<!--栏目标题-->
<div class="titleline">
    <div class="container">
    <div class="row">
        <span class="tit">新鲜事</span><a class="tbtn tra hand hidden-xs" href="http://p.qiao.baidu.com/cps/chat?siteId=10204422&userId=22769729" target="_blank">在线咨询</a>
    </div>
    </div>
</div>
<!---广告结束 ---->
<div class="part1 ">
<div class="container">

<h1><%=rsnew("prod_name")%></h1>

<div class="main" ><br><br>
<%=rsnew("prod_detail")%>
<div class="tips" style="font-size:14px;">

<%
v=nv
if rsnew("tips")<>"" then
'response.write"标签："
mystr=rsnew("tips")
mystr=replace(mystr,"，",",")
mystr=split(mystr,",")
for i=0 to ubound(mystr)
'if i>0 then response.write" \ "
'response.write "<a href='search.asp?key="&mystr(i)&"' class='tipsinfo' target='_blank'>"&mystr(i)&"</a>"
next
end if  %>
</div>
                  	<div class="pn"><%call sHowDxNewsPN(rsnew("classid"),v)%></div>
                  	<!-- sharebar button begin -->
                                        <div class="bshare-custom icon-medium"><div class="bsPromo bsPromo2"></div><a title="分享到微信" class="bshare-weixin" href="javascript:void(0);"></a><a title="分享到新浪微博" class="bshare-sinaminiblog" href="javascript:void(0);"></a><a title="分享到Facebook" class="bshare-facebook" href="javascript:void(0);"></a><a title="分享到Twitter" class="bshare-twitter" href="javascript:void(0);"></a><a title="分享到QQ好友" class="bshare-qqim" href="javascript:void(0);"></a><a title="更多平台" class="bshare-more bshare-more-icon more-style-addthis"></a><span class="BSHARE_COUNT bshare-share-count" style="float: none;">51.7K</span></div><script type="text/javascript" charset="utf-8" src="http://static.bshare.cn/b/buttonLite.js#style=-1&amp;uuid=&amp;pophcol=2&amp;lang=zh"></script><script type="text/javascript" charset="utf-8" src="http://static.bshare.cn/b/bshareC0.js"></script>
                                        <!-- sharebar button end -->
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
