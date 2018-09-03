<!--#include file="inc/conn.asp"-->
<!--#include file="inc/Config.Asp"-->
<!--#include file="inc/Function.asp"-->
<!--#include file="inc/Inc.Asp"-->
<%
dim tdkid
tdkid=2
%>
<!--#include file="inc/header.Asp"-->
<link rel="stylesheet" href="xgwl/css/8.css"/>
<link href="/assets/ico/favicon.ico" rel="icon" />
<link href="/assets/css/styles.css" rel="stylesheet" />
<link href="/assets/css/oracle_truste.css" rel="stylesheet" />
<link href="/assets/css/oracle_truste_overrides.css" rel="stylesheet" />
<!----广告--->
<div class="toped">
<h5 class="wow fadeInUp">培训与认证</h5>
<p class="txt wow fadeInUp" data-wow-delay="150ms">专注于提供世界领先的云计算解决方案，致力于为企业客户提供云计算企业管理<br>软件产品，以及相关的实施、二次开发、本地化、培训等服务。</p>
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
                <div class="col-sm-9 margin-top-20" data-linkcontainer="lt_section" data-tracklinktext="catalogSection">
                <!--内容开始-->
<%
dim i
dim sql,rs
i=1
i1=1
sql1="select * From [courses] where id>0"
sql1=sql1 & " order by oid desc,ID desc"
Set rs1= Server.CreateObject("ADODB.Recordset")
rs1.open sql1,conn,1,1
%>

               <table class="table">
<%do while not rs.eof%>
                 <tr>
                        <td colspan="3">
                           <a name="setting-up-configuring" class="anchor"></a>
                           <h3>设置与配置</h3>
                        </td>
                     </tr>
<%sql="select * From [courses] where id>0"
sql=sql & " order by oid desc,ID desc"
Set rs= Server.CreateObject("ADODB.Recordset")
rs.open sql,conn,1,1%>
<%do while not rs.eof%>
                     <tr>
                        <td width="60%"><a href="#" data-linktrack="true" data-tracklinktext="netsuiteEssentialsText">NetSuite基础课程</a></td>
                        <td>5 天</td>
                        <td><a href="#A" data-linktrack="true" data-tracklinktext="courseScheduleLink">课程安排</a></td>
                     </tr>
                     <%
	i=i+1
	  
	      rs.movenext
	loop
%>

                     <%
	i1=i1+1
	  
	      rs1.movenext
	loop
%>

               </table>
               <div class="row">
   <div class="col-sm-12">
      <hr>
   </div>
</div>
<div class="row">
   <div class="col-sm-3 margin-top-20">
      <br>
      <p><img src="/assets/img/services/logo-cpe-sponsors.jpg" alt="CPE Sponsors" title="CPE Sponsors" class="img-responsive"></p>
   </div>
   <div class="col-sm-9 margin-top-40">
      <h3>CPE credits</h3>
      <p>CPE credits are available for NetSuite courses. <br><a href="/portal/services/training/suite-training/cpe.shtml" data-linktrack="true" data-tracklinktext="cpeSponsorsLink">Check out our CPE list for details</a>.</p>
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