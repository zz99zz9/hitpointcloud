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
<h5 class="wow fadeInUp">网络研讨会和活动</h5>
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
                <div class="col-sm-9 " data-linkcontainer="lt_section" data-tracklinktext="catalogSection">
                <!--内容开始-->
                
                    <!--start row-->      
                    <%sql="select * From [workshop] order by oid desc,ID desc"
Set rs= Server.CreateObject("ADODB.Recordset")
rs.open sql,conn,1,1%>  
<%do while not rs.eof%>                 
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <div class="row padding-top-20">
                                                <div class="col-md-9 col-sm-8">
                                                    <p><strong><%=rs("tit")%></strong></p>
                                                </div>
                                                <div class="col-md-3 col-sm-4">
                                                    <a href="<%=rs("url")%>" target="_blank" class="btn btn-primary hover-outline" data-linktrack="true" data-tracklinktext="registerNow">立即注册</a>
                                                </div>
                                            </div>
                                            <table class="table">
                                                <tbody><tr>
                                                    <td width="25%"><strong>日期</strong></td>
                                                    <td><strong>时间</strong> </td>
                                                    <td><strong>主题</strong></td>

                                                </tr>
                                                <tr>
                                                    <td><%=rs("wdate")%></td>
                                                    <td><%=rs("wtime")%></td>
                                                    <td><%=rs("tit2")%></td>

                                                </tr>
                                            </tbody></table>
                                        </div>
                                    </div>
                                <%

	  
	      rs.movenext
	loop
    
%>
                                    <!--end row-->
                	<!--start row-->
                    <div class="row padding-left-10">
                        <div class="panel-group border-none" role="tablist">
                            <div>
                                <div class="panel-heading no-padding-left" role="tab" id="collapseListGroupHeading1">
                                    <h4>
                                        <a class="panel-title" role="button" data-toggle="collapse" href="#collapseListGroup1" aria-expanded="false" aria-controls="collapseListGroup1">培训网络研讨会常见问题解答：</a>
                                    </h4>
                                </div>
                                <div id="collapseListGroup1" class="panel-collapse collapse pl15" role="tabpanel" aria-labelledby="collapseListGroupHeading1" aria-expanded="true" style="">
                                    <p><strong>会议是否支持回放？</strong><br>
                                        是的，我们所有的培训网络研讨会都会尽快记录并发布到SuiteAnswers，可以通过NetSuite帐户中的“支持”选项卡进行访问。
                                    </p>
                                    <p><strong>我如何注册？</strong><br>
                                        按照“即将播出的网络研讨会”选项卡上的注册链接，准备好输入您的NetSuite客户编号以及其他注册信息。
                                    </p>
                                    <p>登录NetSuite帐户，导航至支持选项卡> SuiteAnswers，然后单击右侧的“通过电话联系支持”绿色按钮，即可找到您的客户编号。</p>
                                    <p><strong>我如何访问会话？</strong> <br>
                                        您的注册确认和提醒电子邮件将包含有关如何在会话当天在您的计算机上进行连接的信息。培训网络研讨会通过计算机的扬声器进行广播（或者您可以使用耳机）。如果您在音频广播方面遇到问题，您应该可以使用电话作为听取网络研讨会的备用方法。</p>
                                    <p><strong>如果我对网络研讨会或注册问题有疑问，应该与谁联系？</strong><br>
                                        请通过training@netsuite.com与Virtual Classroom团队联系</a>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <!-- end panel-group -->
                    </div>
                    <!-- end row -->
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