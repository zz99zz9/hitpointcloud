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
<h5 class="wow fadeInUp">Course Finder</h5>
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
                <div class="col-sm-9 " data-linkcontainer="lt_section" data-tracklinktext="contentSuiteanalyticsSection">
                <!--内容开始-->
                    <div class="customer-container margin-bottom-30">
                        <div class="select-holder" style="margin-right: 9px;">
                            <form class="form-inline" autocomplete="off">
                                <div class="form-group long">
                                    <div class="margin-bottom-10"> By role </div>
                                    <%
	  set rs=Server.CreateObject("ADODB.Recordset")
	  sql="select * from [class_js] order by oid desc,cid desc"
rs.Open sql,conn,1,1%>
                                    <select id="byrole" class="form-control filter-selects gray select">
                                        <option value="">role</option>
<%do while not rs.eof%>
                                        <option value="<%=rs("cid")%>" ><%=rs("Cfile")%></option>
<%rs.movenext

               loop

           %>
                                        <option value="">All role</option>
                                    </select>
                                </div>
                                <div class="form-group long">
                                    <div class="margin-bottom-10">By task</div>
                                    <select id="bytask" class="form-control filter-selects gray select">
                                        <option value="">task</option>
                                         <%
	  set rs=Server.CreateObject("ADODB.Recordset")
	  sql="select * from [class_rw] order by oid desc,cid desc"
rs.Open sql,conn,1,1%>
<%do while not rs.eof%>
                                        <option value="<%=rs("cid")%>" ><%=rs("Cfile")%></option>
<%rs.movenext

               loop

           %>

                                        <option value="">All task</option>
                                    </select>
                                </div>
                                <div class="form-group long">
                                    <div class="margin-bottom-10">By product</div>
                                    <select id="byproduct" class="form-control filter-selects gray select">
                                        <option value="">product</option>
                                         <%
	  set rs=Server.CreateObject("ADODB.Recordset")
	  sql="select * from [class_cp] order by oid desc,cid desc"
rs.Open sql,conn,1,1%>
<%do while not rs.eof%>
                                        <option value="<%=rs("cid")%>" ><%=rs("Cfile")%></option>
<%rs.movenext

               loop

           %>
        
                                        <option value="">All product</option>
                                    </select>
                                </div>
                                <div class="form-group long">
                                    <a title="Print" onclick="window.print();" class="glyphicon glyphicon-print btn btn-info hover-outline margin-top-20" style="font-size: 15px;padding: 3px 10px;"></a>
                                </div>
                            </form>
                        </div>
                        <div class="result-grid clearfix course-container" style="margin-left:5px;" data-linkcontainer="lt_section" data-tracklinktext="courses">
                        <div class="client-group row courseslist" >


            

                        </div>
                        </div>
                    </div>
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
<script type="text/javascript" src="/ajax/course-finder.js"></script>
<script>
$(".select").change(function(){
  $(this).css("background-color","#FFFFCC");
  search($("#byrole").val(),$("#bytask").val(),$("#byproduct").val(),"en");
});

</script>
</body>
</html>