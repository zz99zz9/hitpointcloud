<!--#include file="inc/conn.asp"-->
<!--#include file="inc/Config.Asp"-->
<!--#include file="inc/Function.asp"-->
<!--#include file="inc/Inc.Asp"-->
<%
dim tdkid
tdkid=9
bid=request.QueryString("bid")
sid=request.QueryString("sid")
pid=request.QueryString("pid")
set rsnew=Server.CreateObject("ADODB.Recordset")
                              sqlnew="select * from [Table_Product] where ArticleID="&pid
                                sqlnew=sqlnew+" order by orderid desc,ArticleID desc"
                            rsnew.Open sqlnew,conn,1,1
title=rsnew("title2")
if rsnew("Keywords")<>"" then siteKey=rsnew("Keywords")
if rsnew("Description")<>"" then SiteCont=rsnew("description")
    rsnew.close
 set rsnew=nothing
%>
<!--#include file="inc/header.Asp"-->
<!--通用结束-->
<link rel="stylesheet" href="xgwl/css/7.css"/>
<!----广告--->
<div class="toped">
<h5 class="wow fadeInUp">三大产品，突破不同业务瓶颈</h5>
<p class="txt wow fadeInUp hidden-xs" data-wow-delay="150ms"><a href="productsDetail.asp?pid=63&bid=34" class="edbor tra">NetSuite</a><a href="productsDetail.asp?pid=76&bid=40" class="edbor tra">Hitpoint自有产品</a><a href="productsDetail.asp?pid=71&bid=39" class="edbor tra">NetDimensions</a></p>
</div>
<!--栏目标题-->
<div class="titleline">
    <div class="container">
    <div class="row">
    <div class="col-md-12">
        <span class="tit"><%call ShowBCName(bid)%></span><a class="tbtn tra hand" href="getdemo.asp">安排演示</a><span class="tmenu hidden-xs">
                              <%
                              set rsnew=Server.CreateObject("ADODB.Recordset")
                                sqlnew="select * from [Table_Product] where Passed=true and Bigclassid="&bid
                                sqlnew=sqlnew+" order by orderid desc,ArticleID desc"
                                rsnew.Open sqlnew,conn,1,1
                               if rsnew.bof and rsnew.eof then
                               response.write("暂无内容")
                               else
                               i=0
                               do while not rsnew.eof
                               %>
        <a href="?bid=<%=rsnew("BigClassId")%>&pid=<%=rsnew("ArticleID")%>" class="<%if rsnew("ArticleID")=int(pid) then%>on<%end if%>"><%=rsnew("Title")%></a>&nbsp;&nbsp;|&nbsp;&nbsp;
                                     <%rsnew.movenext
                                   	i=i+1
                                       loop
                                   	end if
                                rsnew.close
                                set rsnew=nothing%>
        </span>
        </div>
    </div>
    </div>
</div>
<!---广告结束 ---->
<%
                            	  set rsnew=Server.CreateObject("ADODB.Recordset")
                            	  sqlnew="select * from [Table_Product] where ArticleID="&pid
                            	  sqlnew=sqlnew+" order by orderid desc,ArticleID desc"
                            rsnew.Open sqlnew,conn,1,1%>
<div class="part1 ">
<div class="container">
<div class="row">
<div class="col-md-12">
<h1><%=rsnew("title")%></h1>
<div>
<%=rsnew("content")%>
</div>
</div>
</div>
</div>
</div>
<% if pid<>76 and pid<>75 then%>
<div class="part2 ">
<div class="container">
<div class="row">
<div class="col-md-12">
<div class="lmenu">
<%if bid=39 then %>
<%select case pid
case 71
casename="功能模块"
case 72
casename="方案分类"
case 73
casename="行业分类"

case else
casename="具体内容"
end select%>
<h2><%=casename%></h2>
<%else%>

<h2>功能模块</h2>

<%end if%>
<ul class="promenu TAB" id=".promain">
<%        sql="select * From [p_gnmk] where pid="&rsnew("ArticleID")
          sql=sql & " order by oid desc"
          Set rs= Server.CreateObject("ADODB.Recordset")
          rs.open sql,conn,1,1
          gi=0
          %>
          <%do while not rs.eof%>
<li <%if gi=0 then%>class="on"<%end if%>><%=rs("tit")%><span class="arr">&gt;</span></li>
 <%
	gi=gi+1

	      rs.movenext
	loop
 rs.close
 set rs=nothing%>
</ul>
<%        sql="select * From [p_gnmk] where  pid="&rsnew("ArticleID")
          sql=sql & " order by oid desc"
          Set rs= Server.CreateObject("ADODB.Recordset")
          rs.open sql,conn,1,1
          gi=0
          %>
          <%do while not rs.eof%>
<div class="promain " <%if gi=0 then%>style="display:block;"<%end if%>><%=rs("txt")%></div>
 <%
	gi=gi+1
	      rs.movenext
	loop
 rs.close
 set rs=nothing%>

</div>
</div>
</div>
</div>
</div>
<!--后加四块-->
<%        sql="select * From [p_gnmk] where  pid="&rsnew("ArticleID")
          sql=sql & " order by oid desc"

          Set rs= Server.CreateObject("ADODB.Recordset")
          rs.open sql,conn,1,1
          gi=0
          %>
          <%do while not rs.eof%>
<div class='pro4' <%if gi=0 then%>style="display:block;"<%end if%>>
<% if rs("pic1")<>"" then%>
<div class="part1 ">
<div class="container">
<div class="row">
        <div class="col-md-6" >
            <img src="<%=rs("pic1")%>" class="co1 wow bounceInLeft " data-wow-delay="100ms" >
        </div>
        <div class="col-md-6 " >
                <div class="txt"><%=rs("txt1")%>
<br>
                        </div>
                 <div class="c"></div>
            </div>
</div>
</div>
</div>
<%end if%>
<%end if%>
<% if rs("pic2")<>"" then%>
<div class="part2 ">
<div class="container">
<div class="row">
        <div class="col-md-6 " >
                <div class="txt"><%=rs("txt2")%>
<br>
                        </div>
                 <div class="c"></div>
            </div>
            <div class="col-md-6" >
                        <img src="<%=rs("pic2")%>" class="co1 wow bounceInRight " data-wow-delay="100ms" >
                    </div>
</div>
</div>
</div>
<%end if%>
<% if rs("pic3")<>"" then%>
<div class="part1 ">
<div class="container">
<div class="row">
        <div class="col-md-6" >
            <img src="<%=rs("pic3")%>" class="co1 wow bounceInLeft " data-wow-delay="100ms" >
        </div>
        <div class="col-md-6 " >
                <div class="txt"><%=rs("txt3")%>
<br>
                        </div>
                 <div class="c"></div>
            </div>
</div>
</div>
</div>
<%end if%>
<% if rs("pic4")<>"" then%>
<div class="part2 ">
<div class="container">
<div class="row">
        <div class="col-md-6 " >
                <div class="txt"><%=rs("txt4")%>
<br>
                        </div>
                 <div class="c"></div>

            </div>
            <div class="col-md-6" >
                        <img src="<%=rs("pic4")%>" class="co1 wow bounceInRight " data-wow-delay="100ms" >
                    </div>
</div>
</div>
</div>
<%end if
%></div>
<%
gi=gi+1
rs.movenext
	loop
 rs.close
 set rs=nothing%>
</div>
<%
 rsnew.close
                                set rsnew=nothing%>

 	 <!--footer-->
<!--#include file="inc/footer.Asp"-->
<!--#include file="inc/sidebar.asp"-->
</body>
</html>