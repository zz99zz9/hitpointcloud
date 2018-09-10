<!--#include file="inc/conn.asp"-->
<!--#include file="inc/Config.Asp"-->
<!--#include file="inc/Function.asp"-->
<!--#include file="inc/Inc.Asp"-->
<%
dim tdkid
tdkid=2
id=request.QueryString("id")
%>
<!--#include file="inc/header.Asp"-->
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
<h5 class="wow fadeInUp"><%=rs("tit")%></h5>
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
<!--#include file="inc/training.Asp"-->
   

  </div>

</div>

<!-- side nav -->
                </div>
                <div class="col-sm-9 traintxt" data-linkcontainer="lt_section" data-tracklinktext="catalogSection">
                <!--内容开始-->

                    <h3>课程目标</h3>
                    <p><%=rs("txt1")%></p>
                    <hr class="margin-top-20">
                    <h3 class="margin-top-60">适合人群</h3>
                    <p><%=rs("txt2")%></p>
                    <hr class="margin-top-20">
                    <h3 class="margin-top-60">课程内容</h3>
                    <p><%=rs("txt3")%></p>
                    <hr class="margin-top-20">
                    <h3 class="margin-top-60">注意事项</h3>
                    <p><%=rs("txt4")%></p>
                    
                    <p class="margin-top-30"><strong>持续时间:</strong> <%=rs("ttime")%><br>
                        <strong>价格:</strong> <%=rs("price")%>
                    </p>
                    <p>
                        <a href="https://system.netsuite.com/core/media/media.nl?id=50678893&amp;c=NLCORP&amp;h=c7e19351b79aea90f322&amp;_xt=.pdf&amp;vid=k8xynORpAjhDlV9Q&amp;chrole=17&amp;ck=U05akeRpAjVDlcCn&amp;cktime=158229&amp;promocode=&amp;promocodeaction=overwrite" data-linktrack="true" data-tracklinktext="datasheetLink">View the Course Data Sheet</a>
                    </p>
                    <p> <a href="schedule.asp#S<%=rs("id")%>" data-linktrack="true" data-tracklinktext="courseScheduleLink">View the Course Schedule</a> </p>
                    <div class="row">
   <div class="col-sm-12">
      <hr>
   </div>
</div>
<div class="row">
   <div class="col-sm-3 margin-top-20">
      <br>
      <p><img src="/portal/assets/img/services/logo-cpe-sponsors.png" alt="CPE Sponsors" title="CPE Sponsors" class="img-responsive"></p>
   </div>
   <div class="col-sm-9 margin-top-40">
      <h3>CPE 学分</h3>
      <p>学习 NetSuite 课程可累积 CPE 学分。 <br><a href="http://www.netsuite.com/portal/services/training/suite-training/cpe.shtml" data-linktrack="true" data-tracklinktext="cpeSponsorsLink">查看 CPE 列表了解详细信息。</a>.</p>
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
<!--#include file="inc/footer.Asp"-->
<!--#include file="inc/sidebar.asp"-->
</body>
</html>