<!--#include file="inc/conn.asp"-->
<!--#include file="inc/Config.Asp"-->
<!--#include file="inc/Function.asp"-->
<!--#include file="inc/Inc.Asp"-->
<%
dim tdkid
tdkid=9
%>
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
        <span class="tit">白皮书</span><span class="txt hidden-xs">在线学习交流、视频资料、白皮书...总有你需要的</span><!--<span class="tbtn tra hand hidden-xs">在线咨询</span>-->
    </div>
    </div>
</div>
<!---广告结束 ---->
<div class="part1 ">
<div class="container">
<ul class="newslist">
<%dim cid

	  set rsnew=Server.CreateObject("ADODB.Recordset")
	  sqlnew="select * from [prod] where classid=3"
	  	if bid<>0 then
			sqlnew = sqlnew+" and bigclassid="&bid
		end if
	  sqlnew=sqlnew+" order by oid desc,prod_id desc"

rsnew.Open sqlnew,conn,1,1%>
<!---->
     <%
       if rsnew.bof and rsnew.eof then
       response.write("暂无内容")
       else
       rsnew.PageSize=10 '设置页码
       pagecount=rsnew.PageCount '获取总页码
       page=int(request("page")) '接收页码
       if page<=0 then page=1 '判断
       if request("page")="" then page=1
       rsnew.AbsolutePage=page '设置本页页码
       i=0
       do while not rsnew.eof and i<rsnew.PageSize
       %>
<li><a href="<%=rsnew("prod_pic2")%>"><Img src="<%=rsnew("prod_pic")%>" class="b_c12"></a><div class="info"><a class="h3" href="<%=rsnew("prod_pic2")%>"><%=rsnew("prod_name")%></a><br><span class="ntime"><%=formatdatetime(rsnew("prod_date"),2)%></span><p class="txt"><%=rsnew("summany")%></p>
<a href="<%=rsnew("prod_pic2")%>" class="nbtn ">立即下载<em class="more-arr tra">&gt;</em></a></div></li>
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
<!--#include file="inc/footer.Asp"-->
<!--#include file="inc/sidebar.asp"-->
</body>
</html>
