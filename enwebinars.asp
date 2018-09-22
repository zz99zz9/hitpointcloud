<!--#include file="inc/conn.asp"-->
<!--#include file="inc/Config.Asp"-->
<!--#include file="inc/Function.asp"-->
<!--#include file="inc/Inc.Asp"-->
<%
dim tdkid
tdkid=14
%>
<!--#include file="inc/enheader.Asp"-->
<link rel="stylesheet" href="xgwl/css/8.css"/>
<link href="/assets/ico/favicon.ico" rel="icon" />
<link href="/assets/css/styles.css" rel="stylesheet" />
<link href="/assets/css/oracle_truste.css" rel="stylesheet" />
<link href="/assets/css/oracle_truste_overrides.css" rel="stylesheet" />
<!----广告--->
<div class="toped">
<h5 class="wow fadeInUp">Webinars and Events</h5>
<p class="txt wow fadeInUp" data-wow-delay="150ms">Get the most from your application</p>
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
                                                    <p><strong><%=rs("titen")%></strong><br><br></p>
                                                </div>
                                                <div class="col-md-3 col-sm-4">
                                                    <a href="<%=rs("urlen")%>" target="_blank" class="btn btn-primary hover-outline" data-linktrack="true" data-tracklinktext="registerNow">Register</a>
                                                </div>
                                            </div>
                                            <table class="table">
                                                <tbody><tr>
                                                    <td width="25%"><strong>Date</strong></td>
                                                    <td><strong>Time</strong> </td>
                                                    <td><strong>Title</strong></td>

                                                </tr>
                                                <tr>
                                                    <td><%=rs("wdateen")%></td>
                                                    <td><%=rs("wtimeen")%></td>
                                                    <td><%=rs("tit2en")%></td>

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
                                        <a class="panel-title" role="button" data-toggle="collapse" href="#collapseListGroup1" aria-expanded="false" aria-controls="collapseListGroup1">TRAINING WEBINAR FAQ’S:</a>
                                    </h4>
                                </div>
                                <div id="collapseListGroup1" class="panel-collapse collapse pl15" role="tabpanel" aria-labelledby="collapseListGroupHeading1" aria-expanded="true" style="">
                                    <p><strong>Are the sessions recorded?</strong><br>
                                        Yes, all our training webinars are recorded and posted as soon as possible to SuiteAnswers, which can be accessed via the Support tab in your NetSuite account.
                                    </p>
                                    <p><strong>How do I register?</strong><br>
                                        Follow the registration link on the Upcoming Webinars tab, and be prepared to enter your NetSuite Customer Number, in addition to other registration information.
                                    </p>
                                    <p>Your Customer Number can be found by logging into your NetSuite Account, navigating to the Support Tab> SuiteAnswers and then clicking the Contact Support by Phone green button on the right side.</p>
                                    <p><strong>How do I access a session? </strong> <br>
                                        Your registration confirmation and reminder emails will contain information on how to connect on your computer the day of the session. Training webinars are broadcast over your computer’s speakers (or you may use headphones). You should have a phone available as a backup method of hearing the webinar if you have trouble with the audio broadcast.</p>
                                    <p><strong>Who should I contact if I have questions about the webinar or issues with registration?</strong><br>
                                        Contact the Virtual Classroom team at training@netsuite.com
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
<!--#include file="inc/enfooter.Asp"-->
<!--#include file="inc/ensidebar.asp"-->
</body>
</html>