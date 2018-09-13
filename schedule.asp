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
<h5 class="wow fadeInUp">课程表</h5>
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
                <%sql="select * From [courses] order by oid desc,ID desc"
Set rs= Server.CreateObject("ADODB.Recordset")
rs.open sql,conn,1,1%>


               <ul>
               <%do while not rs.eof%>
                  <li><a href="#S<%=rs("id")%>" data-linktrack="true" data-tracklinktext="courseNetSuiteEssentials"><%=rs("tit")%></a></li>
                 <%	i=i+1
	      rs.movenext
	loop
%>

               </ul>
               <h3>Registration Note:</h3>
               <p> Students will receive an e-mail confirmation when their registration request has been completed. Please await the e-mail confirmation before booking travel. If you have any questions please contact <a href="mailto:training@netsuite.com" data-linktrack="true" data-tracklinktext="emailTraining">training@netsuite.com</a>. </p>
                          <%sql1="select * From [courses] order by oid desc,ID desc"
Set rs1= Server.CreateObject("ADODB.Recordset")
rs1.open sql1,conn,1,1
do while not rs1.eof%>
                     <%sql="select * From [schedule] where cid="&rs1("id")&" order by oid desc,ID desc"
Set rs= Server.CreateObject("ADODB.Recordset")
rs.open sql,conn,1,1%>
               <div class="row padding-top-20">
                  <div class="col-md-9 col-sm-8">
                     <a name="S<%=rs1("id")%>" class="anchor"></a>
                     <h4><a href="courses-detail.asp?id=<%=rs("id")%>" data-linktrack="true" data-tracklinktext="descriptionEssentials"><strong><%=rs1("tit")%></strong></a></h4>
                     Choose a scheduled course or register for Training On Demand
                  </div>
                  <div class="col-md-3 col-sm-4">
                     <a href="getdemo.asp" target="_blank" class="btn btn-primary hover-outline" data-linktrack="true" data-tracklinktext="registerNow">立即报名</a>
                  </div>
               </div>
               <!--end row-->	
               <table class="table">
                  <tbody><tr>
                     <td><strong>日期</strong></td>
                     <td><strong>地点</strong></td>
                     <td><strong>时间</strong></td>
                     <td><strong>时区</strong></td>
                  </tr>
                  <%do while not rs.eof%>
                  <tr>
                     <td><%=rs("ddate")%></td>
                     <td><a href="#" data-linktrack="true" data-tracklinktext="locationSelfStudy"><%call showName("location",rs("lid"),"id","tit")%></a></td>
                     <td><%=rs("ctime")%></td>
                     <td><%=rs("tzone")%></td>
                  </tr>
<%	
	      rs.movenext
	loop%>
               </tbody></table>
<%	
	      rs1.movenext
	loop%>
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
<!--#include file="inc/footer.Asp"-->
<!--#include file="inc/sidebar.asp"-->
</body>
</html>