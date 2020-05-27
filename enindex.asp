<!--#include file="inc/conn.asp"-->
<!--#include file="inc/Config.Asp"-->
<!--#include file="inc/Function.asp"-->
<!--#include file="inc/Inc.Asp"-->
<%
dim tdkid
tdkid=10
%>
<!--#include file="inc/enheader.Asp"-->
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
        psql="select top 5 * From [links] where wid=2 order by oid desc,ID desc"
        prs.open psql,conn,1,1
        i=0%>
        <%do while not prs.eof
        if i=0 then
        number="One"
        url="getdemo2.asp"
        elseif i=1 then
        number="Two"
        url="getdemo2.asp"
        elseif i=2 then
        number="Three"
        url="getdemo.asp"
        elseif i=3 then
        number="Four"
        url="getdemo.asp"
        elseif i=4 then
        number="Five"
        url="getdemo.asp"
        end if
       %>

                                <div class="item <%if i=0 then%>active<%end if%> "  style="background:url('<%=prs("file")%>') center top;height:800px;">
                                                    <div class="edinfo wow fadeInDown"><h1><%=prs("stit")%></h1><%=prs("stxt")%> <br>
                                                    </div><a class="edbtn wow fadeInUp" href="en<%=url%>" onClick="ga('send', 'event', 'shouye', 'yanshi', 'Banner<%=number%>', 1);">DEMO</a>
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
<a href="encloud.asp" class="col-md-3"><i class="iico pico1"></i><p class="tit">Cloud Advisory</p><p class="txt">Modern Business, Modern Cloud</p></a>
<a href="enremodeling.asp" class="col-md-3"><i class="iico pico2"></i><p class="tit">Industry Remodeling</p><p class="txt">Ten Disruptive Solutions</p></a>
<a href="endevelopment.asp" class="col-md-3"><i class="iico pico3"></i><p class="tit">Customized Development</p><p class="txt">Suit Your Business Needs</p></a>
<a href="enproducts.asp" class="col-md-3"><i class="iico pico4"></i><p class="tit">Best choice</p><p class="txt">Take your Software to the next level</p></a>
    </div>
    </div>
</div>
<!--part2-->
<div class="part2">
<div class="container">
<h2>The #1 Cloud Computing Solutions</h2>
<p class="txt">Hitpoint’s advantage is that our IT systems implementations are not merely to configure and code, but to enhance and create the efficient operation of your entire business system.<br><br><a href="products.asp" class="tra">Learn More<em class="more-arr tra">&gt;</em></a><br><br></p>
<a class="col-md-4 p2li" href="enproductsDetail.asp?pid=63&bid=34">
    <div class="pic">
        <img src="xgwl/img/1/part2-1.jpg">
        <div class="picmask tra">
        <p>NetSuite is the world’s most deployed<br> cloud Enterprise Resource Planning (ERP)<br> solution, used by more than 40,000<br> organizations across 160+ countries.</p>
           <p class="xgbtn">Learn More <em class="more-arr tra">&gt;</em></p>
           </div>
    </div>
    <div class="txt">
<h3>NetSuite</h3>
<div class="arrup tra"></div>
<div class="pt2line"></div>
<p >One unified business management suite</p>
    </div>
</a>
<a class="col-md-4 p2li" href="enproductsDetail.asp?pid=68&bid=37">
    <div class="txt">
<h3>Oracle</h3>
<div class="arrdown tra"></div>
<div class="pt2line"></div>
<p >Complete,Integrated Cloud</p>
    </div>
    <div class="pic">
        <img src="xgwl/img/1/part2-2.jpg">
        <div class="picmask tra">
        <p>Reimagine your business, processes, and experiences. Oracle Cloud provide you with the speed and innovation of best-of-breed cloud software in a complete, secure, and connected cloud suite.</p>
           <p class="xgbtn">Learn More <em class="more-arr tra">&gt;</em></p>
           </div>
    </div>

</a>
<a class="col-md-4 p2li" href="enproductsDetail.asp?pid=71&bid=39">
    <div class="pic">
        <img src="xgwl/img/1/part2-3.jpg">
        <div class="picmask tra">
        <p>NetDimensions Talent Suite is a state-of-the-art Talent Management System (TMS) for the enterprise, helping organizations worldwide achieve productivity & efficiency improvements.</p>
           <p class="xgbtn">Learn More <em class="more-arr tra">&gt;</em></p>
           </div>
    </div>
    <div class="txt">
<h3>NetDimensions</h3>
<div class="arrup tra"></div>
<div class="pt2line"></div>
<p >Integrated talent management for global organizations</p>
    </div>
</a>
</div>
</div>
<!--part3-->
<div class="part3">
<div class="container">
<div class="row">
    <div class="col-md-6" >
        <h2>Reimagine Your Business</h2>
        <div class="txt">Using the customer’s operational objectives to provide direction, Hitpoint breaks traditional business confines and establish new processes.</div>
        <ul class="icolist"><a href="encloudDetail.asp?v=2" ><i class="lico lico1 tra"></i>Consulting</a><a href="encloudDetail.asp?v=3" ><i class="lico lico2 tra"></i>Intelligence</a><a href="encloudDetail.asp?v=4"><i class="lico lico3 tra"></i>Localization</a><a href="encloudDetail.asp?v=5"><i class="lico lico4 tra"></i>Upgrade</a><a href="encloudDetail.asp?v=6"><i class="lico lico5 tra"></i>Consultant</a></ul>
         <div class="c"></div>
        &nbsp;<a href="encloud.asp">Learn More<em class="more-arr tra">&gt;</em></a>
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

        <h2>Solutions For Every Need</h2>
        <div class="txt">With solutions for financial services, communications, consumer goods and more, Hitpoint enables you to accelerate the delivery of innovation, improve customer experiences, and improve margins to drive competitive advantage.</div>
        <ul class="icolist"><a href="enremodelingDetail.asp?v=7" ><i class="lico lico6 tra"></i>Software/IT</a><a href="enremodelingDetail.asp?v=9" ><i class="lico lico7 tra"></i>High-Tech</a><a href="enremodelingDetail.asp?v=10"><i class="lico lico8 tra"></i>Trading</a><a href="enremodelingDetail.asp?v=11"><i class="lico lico9 tra"></i>Advertising</a><a href="enremodelingDetail.asp?v=15"><i class="lico lico10 tra"></i>Consulting</a>
        <a href="enremodelingDetail.asp?v=16" ><i class="lico lico11 tra"></i>Nonprofit</a><a href="enremodelingDetail.asp?v=13" ><i class="lico lico12 tra"></i>Healthcare</a><a href="enremodelingDetail.asp?v=14"><i class="lico lico13 tra"></i>Ecommerce</a><a href="enremodelingDetail.asp?v=12"><i class="lico lico14 tra"></i>Professional Services</a><a href="enremodelingDetail.asp?v=8"><i class="lico lico15 tra"></i>Industry 4.0</a></ul>
         <div class="c"></div>
        &nbsp;<a href="enremodeling.asp">Learn More<em class="more-arr tra">&gt;</em></a>

    </div>

</div>
</div>
</div>
<!--part5-->
<div class="part3 part5">
<div class="container">
<div class="row">

    <div class="col-md-6 " style="padding-left:40px;">

        <h2>Comprehensive Cloud Customization</h2>
        <div class="txt">Two Platforms make the most of your system. Three SuiteApps help you to obtain a unified and reliable local accounting platform.</div>
        <ul class="ilist"><a href="enproductsDetail.asp?pid=68&bid=37" class="tra">Oracle PaaS</a><a href="enproductsDetail.asp?pid=63&bid=34" class="tra">NetSuite SuiteCloud</a><a href="enproductsDetail.asp?pid=71&bid=39" class="tra" style="line-height:55px;">SuiteApps</a></ul>
        <div class="c"></div>
       <a href="endevelopment.asp">Learn More<em class="more-arr tra">&gt;</em></a>

    </div>
            <div class="col-md-6 hidden-xs" >
                <img src="xgwl/img/1/ri4.jpg" class="co4 wow bounceInRight " data-wow-delay="100ms" >
                <!--<img src="xgwl/img/1/co5.png" class="co5 wow bounceInRight " data-wow-delay="200ms" >-->
            </div>

</div>
</div>
</div>
<!--part6-->
<div class="part6">
<div class="container">
<div class="row">
<h2>Featured customers</h2>
<p class="txt">Learn how our customers are using SaaS to transform their businesses and engage customers in new and better ways.</p>
<ul class="clogo">
<%dim cid

	  set rsnew=Server.CreateObject("ADODB.Recordset")
	  sqlnew="select top 5 * from [prod] where classid=1"
	  sqlnew=sqlnew+" order by oid desc,prod_id desc"
rsnew.Open sqlnew,conn,1,1
 do while not rsnew.eof%>
<a href="encasesDetail.asp?v=<%=rsnew("prod_id")%>"><img src="<%=rsnew("prod_pic")%>" class="tra"></a>
 <%rsnew.movenext
           	i=i+1
               loop

           	rsnew.close
           	set rsnew=nothing%>

</ul>
 <div class="c"></div>
       <p><a href="encases.asp" class="tra">Learn More<em class="more-arr tra">&gt;</em></a></p>
</div>
</div>
</div>
<!--part7-->
<div class="part7">
<div class="container">
<div class="row">
<h2>News</h2>
<p class="txt">Connecting the world</p>
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
<a href="ennewsDetail.asp?nv=<%=rsnew("prod_id")%>" class="li1" target="_blank"><i class="pic"><img src="<%=rsnew("prod_pic")%>" class="tra"></i><em class="tit ellipsis"><%=rsnew("prod_nameen")%></em><em class="ntime"><%=formatdatetime(rsnew("prod_date"),2)%></em></a>
<%elseif i=2 then%>
<a href="ennewsDetail.asp?nv=<%=rsnew("prod_id")%>" class="li ellipsis"><i class="liico"></i><%=rsnew("prod_nameen")%></a>
<%elseif i=3 then%>
<a href="ennewsDetail.asp?nv=<%=rsnew("prod_id")%>" class="li ellipsis"><i class="liico"></i><%=rsnew("prod_nameen")%></a>
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
       <p><a href="ennews.asp" class="tra">Learn More<em class="more-arr tra">&gt;</em></a></p>
</div>
</div>
</div>

 	 <!--footer-->
<!--#include file="inc/enfooter.Asp"-->
<!--#include file="inc/ensidebar.asp"-->
</body>
</html>
