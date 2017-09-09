<!--#include file="inc/conn.asp"-->
<!--#include file="inc/Config.Asp"-->
<!--#include file="inc/Function.asp"-->
<!--#include file="inc/Inc.Asp"-->
<%
dim tdkid
tdkid=16
%>
<!--#include file="inc/enheader.Asp"-->
<!--通用结束-->
<link rel="stylesheet" href="xgwl/css/6.css"/>
<!----广告--->
<div class="toped">
<h5 class="wow fadeInUp">Customers</h5>
<p class="txt wow fadeInUp" data-wow-delay="150ms">See how Hitpoint have helped businesses like yours all around the world.</p>
</div>
<!--产品特点-->
<div class="protd">
    <div class="container">
    <div class="row">
        <div class="col-md-3 col-xs-6"><p class="tit">Strong</p><p class="txt">Building a Strong Business Case in the Cloud</p></div>
         <div class="col-md-3 col-xs-6"><p class="tit">#1</p><p class="txt">The #1 Cloud ERP</p></div>
          <div class="col-md-3 col-xs-6"><p class="tit">SaaS</p><p class="txt">Connect Your Business to the Cloud</p></div>
           <div class="col-md-3 col-xs-6 last"><p class="tit">NEWS</p><p class="txt">The Most Current Information</p></div>
    </div>
    </div>
</div>
<!---广告结束 ---->
<div class="part1 ">
<div class="container">
<ul class="row cases">
<%dim cid

	  set rsnew=Server.CreateObject("ADODB.Recordset")
	  sqlnew="select * from [prod] where classid=1"
	  	if bid<>0 then
			sqlnew = sqlnew+" and bigclassid="&bid
		end if
	  sqlnew=sqlnew+" order by oid desc,prod_id desc"

rsnew.Open sqlnew,conn,1,1%>
<!---->
     <%
       if rsnew.bof and rsnew.eof then
       response.write("nothing")
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
    <li class="col-md-6 " >
<a href="encasesDetail.asp?nv=<%=rsnew("prod_id")%>" class="pic" target="_blank"><img src="<%=rsnew("prod_pic")%>" class="tra b_c12"></a>
<a class="tit ellipsis" href="casesDetail.asp?nv=<%=rsnew("prod_id")%>" target="_blank"><%=rsnew("prod_nameen")%></a>
<p class="txt ellipsis5"><%=rsnew("summanyen")%></p>
<a href="encasesDetail.asp?nv=<%=rsnew("prod_id")%>" class="ibtn" target="_blank">Learn More<em class="more-arr tra">&gt;</em></a>
<div class="c"></div>
    </li>
             <%rsnew.movenext
           	i=i+1
               loop
           	end if
           	rsnew.close
           	set rsnew=nothing%>
<!---->
</ul>
<div class="tcdPageCode w pages mt40 hidden"></div>
<ul class="pages hidden"><a href="#" class="no">上一页</a><a href="#" class="on">1</a><a href="#">2</a><a href="#">3</a><a href="#">4</a><a href="#">5</a><a href="#">下一页</a></ul>
</div>
</div>


 	 <!--footer-->
<!--#include file="inc/enfooter.Asp"-->
<!--#include file="inc/ensidebar.asp"-->
<script src="xgwl/js/lib/jquery.page.js"></script>
<script>
    $(".tcdPageCode").createPage({
        pageCount:<%=pagecount%>,
        current:<%=page%>,//
        backFn:function(p){
         //   console.log(p);

			location.href='encases.asp?page='+p;
        }
    });

</script>
</body>
</html>
