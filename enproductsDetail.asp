<!--#include file="inc/conn.asp"-->
<!--#include file="inc/Config.Asp"-->
<!--#include file="inc/Function.asp"-->
<!--#include file="inc/Inc.Asp"-->
<%
dim tdkid
tdkid=18
bid=request.QueryString("bid")
sid=request.QueryString("sid")
pid=request.QueryString("pid")
set rsnew=Server.CreateObject("ADODB.Recordset")
                                sqlnew="select * from [Table_Product] where ArticleID="&pid
                                sqlnew=sqlnew+" order by orderid desc,ArticleID desc"
                            rsnew.Open sqlnew,conn,1,1
title=rsnew("title2en")
if rsnew("Keywordsen")<>"" then siteKey=rsnew("Keywordsen")
if rsnew("Descriptionen")<>"" then SiteCont=rsnew("descriptionen")
%>
<!--#include file="inc/enheader.Asp"-->
<!--通用结束-->
<link rel="stylesheet" href="xgwl/css/7.css"/>
<!----广告--->
<div class="toped">
<h5 class="wow fadeInUp">Three Products Break Through Different Bottleneck Of Business</h5>
<p class="txt wow fadeInUp hidden-xs" data-wow-delay="150ms"><a href="enproductsDetail.asp?pid=63&bid=34" class="edbor tra">NetSuite</a><a href="enproductsDetail.asp?pid=76&bid=40" class="edbor tra">Hitpoint Self-developed products</a><a href="enproductsDetail.asp?pid=71&bid=39" class="edbor tra">NetDimensions</a></p>
</div>
<!--栏目标题-->
<div class="titleline">
    <div class="container">
    <div class="row">
    <div class="col-md-12">
        <span class="tit"><%call ShowBCName(bid)%></span><a class="tbtn tra hand" href="engetdemo.asp">DEMO</a><span class="tmenu hidden-xs">
         <%
                            	  set rsnew=Server.CreateObject("ADODB.Recordset")
                            	  sqlnew="select * from [Table_Product] where Passed=true and Bigclassid="&bid
                            	  sqlnew=sqlnew+" order by orderid desc,ArticleID desc"
                            rsnew.Open sqlnew,conn,1,1%>
                              <%
                               if rsnew.bof and rsnew.eof then
                               response.write("暂无内容")
                               else
                               i=0
                               do while not rsnew.eof
                               %>
        <a href="?bid=<%=rsnew("BigClassId")%>&pid=<%=rsnew("ArticleID")%>" class="<%if rsnew("ArticleID")=int(pid) then%>on<%end if%>"><%=rsnew("enTitle")%></a>&nbsp;&nbsp;|&nbsp;&nbsp;
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
<h1><%=rsnew("entitle")%></h1>
<div>
<%=rsnew("content2")%>
</div>
</div>
</div>
</div>
</div>
<div class="part2 ">
<div class="container">
<div class="row">
<div class="col-md-12">
<div class="lmenu">
<div class="lmenu">
<%if bid=39 then %>
<h2>View Details</h2>
<%else%>
<h2>Functional</h2>
<%end if%>

<ul class="promenu TAB" id=".promain">
<%        sql="select * From [p_gnmk] where pid="&rsnew("ArticleID")
          sql=sql & " order by oid desc"

          Set rs= Server.CreateObject("ADODB.Recordset")
          rs.open sql,conn,1,1
          gi=0
          %>
          <%do while not rs.eof%>
<li <%if gi=0 then%>class="on"<%end if%>><%=rs("titen")%><span class="arr">&gt;</span></li>
 <%
	gi=gi+1

	      rs.movenext
	loop
 rs.close
 set rs=nothing%>
</ul>
<%        sql="select * From [p_gnmk] where pid="&rsnew("ArticleID")
          sql=sql & " order by oid desc"

          Set rs= Server.CreateObject("ADODB.Recordset")
          rs.open sql,conn,1,1
          gi=0
          %>
          <%do while not rs.eof%>
<div class="promain " <%if gi=0 then%>style="display:block;"<%end if%>><%=rs("txten")%></div>
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
<!--#include file="inc/enfooter.Asp"-->
<!--#include file="inc/ensidebar.asp"-->
</body>
</html>
