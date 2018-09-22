<!--#include file="inc/conn.asp"-->
<!--#include file="inc/Config.Asp"-->
<!--#include file="inc/Function.asp"-->
<!--#include file="inc/Inc.Asp"-->
<%
dim tdkid
tdkid=14
id=request.QueryString("id")
%>
<!--#include file="inc/enheader.Asp"-->
<%sql="select * From [courses] where id="&id&""
sql=sql & " order by oid desc,ID desc"
Set rs= Server.CreateObject("ADODB.Recordset")
rs.open sql,conn,1,1%>
<link rel="stylesheet" href="xgwl/css/8.css"/>
<link href="/assets/ico/favicon.ico" rel="icon" />
<link href="/assets/css/styles.css" rel="stylesheet" />
<link href="/assets/css/oracle_truste.css" rel="stylesheet" />
<link href="/assets/css/oracle_truste_overrides.css" rel="stylesheet" />
<!----广告--->
<div class="toped">
<h5 class="wow fadeInUp"><%=rs("titen")%></h5>
<p class="txt wow fadeInUp" data-wow-delay="150ms"></p>
</div>

    
    <!-- Content Section
        ================================================== -->
        <div class="part1 ">

    <section>
        <div class="container">
            <div class="row">
                <div class="col-sm-3">
                    <!-- side nav -->

<div class="sidebar-nav">

  <div class="navbar navbar-default navbar-default3" role="navigation">

    <div class="navbar-header visible-xs">

      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#side-nav" aria-expanded="false" aria-controls="navbar">

        <span class="sr-only">导航</span> <span class="icon-bar top-bar"></span> <span class="icon-bar middle-bar"></span> <span class="icon-bar bottom-bar"></span>

      </button>

    </div>
<!--#include file="inc/entraining.Asp"-->
   

  </div>

</div>

<!-- side nav -->
                </div>
                <div class="col-sm-9 traintxt" data-linkcontainer="lt_section" data-tracklinktext="catalogSection">
                <!--内容开始-->

                    <h3>Course Objective</h3>
                    <p><%=rs("txt1en")%></p>
                    <hr class="margin-top-20">
                    <h3 class="margin-top-60">This course is right for you if you...</h3>
                    <p><%=rs("txt2en")%></p>
                    <hr class="margin-top-20">
                    <h3 class="margin-top-60">Key Tasks Taught: How do I...</h3>
                    <p><%=rs("txt3en")%></p>
                    <hr class="margin-top-20">
                    <h3 class="margin-top-60">Matters needing attention</h3>
                    <p><%=rs("txt4en")%></p>
                    
                    <p class="margin-top-30"><strong>Duration:</strong> <%=rs("ttimeen")%><br>
                        <strong>Price:</strong> <%=rs("priceen")%>
                    </p>
                    <p>
                        <a href="https://system.netsuite.com/core/media/media.nl?id=50678893&amp;c=NLCORP&amp;h=c7e19351b79aea90f322&amp;_xt=.pdf&amp;vid=k8xynORpAjhDlV9Q&amp;chrole=17&amp;ck=U05akeRpAjVDlcCn&amp;cktime=158229&amp;promocode=&amp;promocodeaction=overwrite" data-linktrack="true" data-tracklinktext="datasheetLink">View the Course Data Sheet</a>
                    </p>
                    <p> <a href="enschedule.asp#S<%=rs("id")%>" data-linktrack="true" data-tracklinktext="courseScheduleLink">View the Course Schedule</a> </p>
                    <div class="row">
   <div class="col-sm-12">
      <hr>
   </div>
</div>
                <!--内容结束-->
                </div>
            </div>
        </div>
    </section>
</div>
   
    <!-- JavaScript

================================================== -->

<script type="text/javascript" src="/assets/js/jquery.min.js"></script>

<script type="text/javascript" src="/assets/js/jquery-ui.min.js"></script>

<script type="text/javascript" src="/assets/js/bootstrap.min.js"></script>

<script type="text/javascript" src="/assets/js/jquery.stickytabs.js"></script>

<script type="text/javascript" src="/assets/js/jquery.rwdImageMaps.min.js"></script>

<script type="text/javascript" src="/assets/js/ns-scripts.js"></script> 

<script type="text/javascript" src="/assets/js/plugins.min.js"></script>

<script type="text/javascript" src="/assets/js/jquery.mousewheel.min.js"></script>

<script type="text/javascript" src="/assets/js/jquery.smoothdivscroll-1.3-min.js"></script>

<script type="text/javascript" src="/assets/js/vendor/jquery.prettyPhoto.js"></script>
<!--#include file="inc/enfooter.Asp"-->
<!--#include file="inc/ensidebar.asp"-->
</body>
</html>