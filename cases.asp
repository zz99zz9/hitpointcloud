<!--#include file="inc/conn.asp"-->
<!--#include file="inc/Config.Asp"-->
<!--#include file="inc/Function.asp"-->
<!--#include file="inc/Inc.Asp"-->
<%
dim tdkid
tdkid=7
%>
<!--#include file="inc/header.Asp"-->
<!--通用结束-->
<link rel="stylesheet" href="xgwl/css/6.css"/>
<!----广告--->
<div class="toped">
<h5 class="wow fadeInUp">我们的客户</h5>
<p class="txt wow fadeInUp" data-wow-delay="150ms">客户的满意就是我们的成功</p>
</div>
<!--产品特点-->
<div class="protd">
    <div class="container">
    <div class="row">
        <div class="col-md-3 col-xs-6"><p class="tit">64%</p><p class="txt">技术领导倾向于成熟的技术供应商</p></div>
         <div class="col-md-3 col-xs-6"><p class="tit">#1</p><p class="txt">无限拓展的应用，满足独特的业务需求</p></div>
          <div class="col-md-3 col-xs-6"><p class="tit">SaaS</p><p class="txt">高度可扩展的云平台</p></div>
           <div class="col-md-3 col-xs-6 last"><p class="tit">NEWS</p><p class="txt">掌握云计算第一手资料</p></div>
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
    <li class="col-md-6 " >
<a href="casesDetail.asp?nv=<%=rsnew("prod_id")%>" class="pic" target="_blank"><img src="<%=rsnew("prod_pic")%>" class="tra b_c12"></a>
<a class="tit ellipsis" href="casesDetail.asp?nv=<%=rsnew("prod_id")%>" target="_blank"><%=rsnew("prod_name")%></a>
<p class="txt ellipsis5"><%=rsnew("summany")%></p>
<a href="casesDetail.asp?nv=<%=rsnew("prod_id")%>" class="ibtn" target="_blank">进一步了解<em class="more-arr tra">&gt;</em></a>
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
<div class="tcdPageCode w pages mt40"></div>
<ul class="pages hidden"><a href="#" class="no">上一页</a><a href="#" class="on">1</a><a href="#">2</a><a href="#">3</a><a href="#">4</a><a href="#">5</a><a href="#">下一页</a></ul>
</div>
</div>


 	 <!--footer-->
<!--#include file="inc/footer.Asp"-->
<!--#include file="inc/sidebar.asp"-->
<script src="xgwl/js/lib/jquery.page.js"></script>
<script>
    $(".tcdPageCode").createPage({
        pageCount:<%=pagecount%>,
        current:<%=page%>,//
        backFn:function(p){
         //   console.log(p);

			location.href='cases.asp?page='+p;
        }
    });

</script>
</body>
</html>
