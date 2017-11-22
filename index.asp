<!--#include file="inc/conn.asp"-->
<!--#include file="inc/Config.Asp"-->
<!--#include file="inc/Function.asp"-->
<!--#include file="inc/Inc.Asp"-->
<%
dim tdkid
tdkid=1
%>
<!--#include file="inc/header.Asp"-->
<!--通用结束-->
<link rel="stylesheet" href="xgwl/css/1.css"/>
<!----广告-->
<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">

        <ol class="carousel-indicators">
            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
            <li data-target="#carousel-example-generic" data-slide-to="3"></li>
            <li data-target="#carousel-example-generic" data-slide-to="4"></li>
        </ol>
        <div class="carousel-inner" role="listbox">

<%Set prs= Server.CreateObject("ADODB.Recordset")
        psql="select top 5 * From [links] where wid=1 order by oid desc,ID desc"
        prs.open psql,conn,1,1
        i=0%>
        <%do while not prs.eof

        if i=0 then
        number="One"
        elseif i=1 then
        number="Two"
        elseif i=2 then
        number="Three"
        elseif i=3 then
        number="Four"
        elseif i=4 then
        number="Five"
        end if
       %>
                                <div class="item <%if i=0 then%>active<%end if%> "  style="background:url('<%=prs("file")%>') center top;height:800px;">
                                                    <div class="edinfo wow fadeInDown"><h1><%=prs("stit")%></h1><%=prs("stxt")%> <br>
                                                    </div><a class="edbtn wow fadeInUp" href="getdemo.asp" onClick="ga('send', 'event', 'shouye', 'yanshi', 'Banner<%=number%>', 1);">获取演示 | DEMO</a>
                             </div>
         <%
        	i=i+1

        	     prs.movenext
        	loop
        prs.close
        set prs=nothing
        %>

        </div>
<!---->     <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a> 
    </div>
<!---广告结束 ---->
<div class="part1">
    <div class="container">
    <div class="row">
<a href="cloud.asp" class="col-md-3"><i class="iico pico1"></i><p class="tit">云计算咨询</p><p class="txt">SaaS模式，现代化的企业应用</p></a>
<a href="remodeling.asp" class="col-md-3"><i class="iico pico2"></i><p class="tit">行业重塑</p><p class="txt">面向10大行业，提供多种解决方案</p></a>
<a href="development.asp" class="col-md-3"><i class="iico pico3"></i><p class="tit">定制开发</p><p class="txt">资深开发满足应用自定义和扩展</p></a>
<a href="products.asp" class="col-md-3"><i class="iico pico4"></i><p class="tit">不二之选</p><p class="txt">业务财务一体化，重新定义企业管理</p></a>
    </div>
    </div>
</div>
<!--part2-->
<div class="part2">
<div class="container">
<h2>世界领先的云计算解决方案</h2>
<p class="txt">Hitpoint与其他系统实施商的最大不同之处在于：<br>我们实施IT系统的目标不是简单的完成针对需求的配置和代码开发，而是让您整个业务系统高效运转。<br><br><a href="products.asp" class="tra">进一步了解<em class="more-arr tra">&gt;</em></a><br><br></p>
<a class="col-md-4 p2li" href="productsDetail.asp?pid=63&bid=34">
    <div class="pic">
        <img src="xgwl/img/1/part2-1.jpg">
        <div class="picmask tra">
        <p>是全球部署最多的云ERP解决方案<br>
           全球160多个国家及地区有40000+个公司或<br>
           组织正在使用NetSuite</p>
           <p class="xgbtn">进一步了解 <em class="more-arr tra">&gt;</em></p>
           </div>
    </div>
    <div class="txt">
<h3>NetSuite</h3>
<div class="arrup tra"></div>
<div class="pt2line"></div>
<p >全规模、全行业通用的云ERP</p>
    </div>
</a>
<a class="col-md-4 p2li" href="productsDetail.asp?pid=68&bid=37">
    <div class="txt">
<h3>Oracle云</h3>
<div class="arrdown tra"></div>
<div class="pt2line"></div>
<p >覆盖面最广的SaaS应用</p>
    </div>
    <div class="pic">
        <img src="xgwl/img/1/part2-2.jpg">
        <div class="picmask tra">
        <p>可提供市场上最全面的解决方案<br>
           帮企业更智能、更灵活地应对各种不确定的经济环境<br>
           提升企业的整体绩效，决胜未来</p>
           <p class="xgbtn">进一步了解 <em class="more-arr tra">&gt;</em></p>
           </div>
    </div>

</a>
<a class="col-md-4 p2li" href="productsDetail.asp?pid=71&bid=39">
    <div class="pic">
        <img src="xgwl/img/1/part2-3.jpg">
        <div class="picmask tra">
        <p>全球领先的企业级人才管理系统<br>
           帮企业提升生产力和生产效率、降低成本、管控风险<br>
           并促进企业文化和流程的革新</p>
           <p class="xgbtn">进一步了解 <em class="more-arr tra">&gt;</em></p>
           </div>
    </div>
    <div class="txt">
<h3>NetDimensions</h3>
<div class="arrup tra"></div>
<div class="pt2line"></div>
<p >企业级人才管理系统</p>
    </div>
</a>
</div>
</div>
<!--part3-->
<div class="part3">
<div class="container">
<div class="row">
    <div class="col-md-6" >
        <h2>重新定义企业管理</h2>
        <div class="txt">以云计算为核心，建立一套不依赖于人的企业“神经系统”深入分析业务目标与需求，为客户提供完善全面的解决方案。</div>
        <ul class="icolist"><a href="cloudDetail.asp?v=2" ><i class="lico lico1 tra"></i>业务咨询</a><a href="cloudDetail.asp?v=3" ><i class="lico lico2 tra"></i>商业智能</a><a href="cloudDetail.asp?v=4"><i class="lico lico3 tra"></i>中国落地</a><a href="cloudDetail.asp?v=5"><i class="lico lico4 tra"></i>IT架构咨询</a><a href="cloudDetail.asp?v=6"><i class="lico lico5 tra"></i>顾问团队</a></ul>
         <div class="c"></div>
        &nbsp;<a href="cloud.asp">进一步了解<em class="more-arr tra">&gt;</em></a>
    </div>
        <div class="col-md-6 hidden-xs" >
         <img src="xgwl/img/1/ri1.png" class="co4 wow bounceInRight " data-wow-delay="100ms" >

        </div>
</div>
</div>
</div>
<!--part4-->
<div class="part3 part4">
<div class="container">
<div class="row">
        <div class="col-md-6" >
            <img src="xgwl/img/1/ri3.jpg" class="co2 wow bounceInLeft " data-wow-delay="200ms" >
            <img src="xgwl/img/1/ri2.jpg" class="co3 wow bounceInLeft " data-wow-delay="100ms" >
        </div>
    <div class="col-md-6 " >

        <h2>颠覆性解决方案</h2>
        <div class="txt">面向10大类行业，提供多种颠覆性解决方案。世界领先的云计算解决方案，现代化的灵活系统，更好地支撑企业快速发展变革。</div>
        <ul class="icolist"><a href="remodelingDetail.asp?v=7" ><i class="lico lico6 tra"></i>IT/软件/互联网</a><a href="remodelingDetail.asp?v=9" ><i class="lico lico7 tra"></i>高科技/新材料</a><a href="remodelingDetail.asp?v=10"><i class="lico lico8 tra"></i>贸易/批发/零售</a><a href="remodelingDetail.asp?v=11"><i class="lico lico9 tra"></i>媒体/广告/出版</a><a href="remodelingDetail.asp?v=15"><i class="lico lico10 tra"></i>咨询/教育/培训</a>
        <a href="remodelingDetail.asp?v=16" ><i class="lico lico11 tra"></i>非营利组织</a><a href="remodelingDetail.asp?v=13" ><i class="lico lico12 tra"></i>医疗健康</a><a href="remodelingDetail.asp?v=14"><i class="lico lico13 tra"></i>电子商务</a><a href="remodelingDetail.asp?v=12"><i class="lico lico14 tra"></i>专业服务</a><a href="remodelingDetail.asp?v=8"><i class="lico lico15 tra"></i>工业 4.0</a></ul>
         <div class="c"></div>
        &nbsp;<a href="remodeling.asp">进一步了解<em class="more-arr tra">&gt;</em></a>

    </div>

</div>
</div>
</div>
<!--part5-->
<div class="part3 part5">
<div class="container">
<div class="row">

    <div class="col-md-6 " style="padding-left:40px;">
        <h2>满足独特的业务需求</h2>
        <div class="txt">3大SuiteApp，解决中国本土化问题，高度可扩展的云平台，无限拓展的应用，满足独特的业务需求。</div>
        <ul class="ilist"><a href="developmentDetail.asp?v=21" class="tra">Oracle PaaS<br>平台开发</a><a href="developmentDetail.asp?v=22" class="tra">SuiteCloud<br>平台开发</a><a href="developmentDetail.asp?v=23" class="tra" style="line-height:55px;">中国本土化</a></ul>
        <div class="c"></div>
       <a href="development.asp">进一步了解<em class="more-arr tra">&gt;</em></a>
    </div>
            <div class="col-md-6 hidden-xs" >
                <img src="xgwl/img/1/ri4.jpg" class="co4 wow bounceInRight " data-wow-delay="100ms" >
              <!--  <img src="xgwl/img/1/co5.png" class="co5 wow bounceInRight " data-wow-delay="200ms" >-->
            </div>
</div>
</div>
</div>
<!--part6-->
<div class="part6">
<div class="container">
<div class="row">
<h2>我们的客户</h2>
<p class="txt">在贸易、制造、电商、服务行业，都有我们服务过的客户，客户的满意就是我们的成功。</p>
<ul class="clogo">
<%dim cid

	  set rsnew=Server.CreateObject("ADODB.Recordset")
	  sqlnew="select top 5 * from [prod] where classid=1"
	  sqlnew=sqlnew+" order by oid desc,prod_id desc"
rsnew.Open sqlnew,conn,1,1
 do while not rsnew.eof%>
<a href="casesDetail.asp?nv=<%=rsnew("prod_id")%>"><img src="<%=rsnew("prod_pic")%>" class="tra"></a>
 <%rsnew.movenext
           	i=i+1
               loop

           	rsnew.close
           	set rsnew=nothing%>
</ul>
 <div class="c"></div>
       <p><a href="cases.asp" class="tra">进一步了解<em class="more-arr tra">&gt;</em></a></p>
</div>
</div>
</div>
<!--part7-->
<div class="part7">
<div class="container">
<div class="row">
<h2>新闻资讯</h2>
<p class="txt">最有价值的行业资料，最新鲜的行业新闻</p>
<%
	  set rsnew=Server.CreateObject("ADODB.Recordset")
	  sqlnew="select top 9 * from [prod] where classid=2"
	  	if bid<>0 then
			sqlnew = sqlnew+" and bigclassid="&bid
		end if
	  sqlnew=sqlnew+" order by oid desc,prod_id desc"

rsnew.Open sqlnew,conn,1,1
i=1
 do while not rsnew.eof
%>
<%if i=1 then%>
<ul class="col-md-4 newlist">
<a href="newsDetail.asp?nv=<%=rsnew("prod_id")%>" class="li1" target="_blank"><i class="pic"><img src="<%=rsnew("prod_pic")%>" class="tra"></i><em class="tit ellipsis"><%=rsnew("prod_name")%></em><em class="ntime"><%=formatdatetime(rsnew("prod_date"),2)%></em></a>
<%elseif i=2 then%>
<a href="newsDetail.asp?nv=<%=rsnew("prod_id")%>" class="li ellipsis"><i class="liico"></i><%=rsnew("prod_name")%></a>
<%elseif i=3 then%>
<a href="newsDetail.asp?nv=<%=rsnew("prod_id")%>" class="li ellipsis"><i class="liico"></i><%=rsnew("prod_name")%></a>
</ul>
<%
i=0
end if%>
<%rsnew.movenext
           	i=i+1
               loop

           	rsnew.close
           	set rsnew=nothing%>
 <div class="c"></div>
       <p><a href="news.asp" class="tra">进一步了解<em class="more-arr tra">&gt;</em></a></p>
</div>
</div>
</div>

 	 <!--footer-->
<!--#include file="inc/footer.Asp"-->
<!--#include file="inc/sidebar.asp"-->
</body>
</html>
