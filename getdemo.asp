<!--#include file="inc/conn.asp"-->
<!--#include file="inc/Config.Asp"-->
<!--#include file="inc/Function.asp"-->
<!--#include file="inc/Inc.Asp"-->
<%
dim tdkid
tdkid=8
%>
<!--#include file="inc/header.Asp"-->
<!--通用结束
<link rel="stylesheet" href="xgwl/css/8.css"/>-->
<link rel="stylesheet" href="xgwl/css/getdemo.css"/>
<!----广告-->
<div class="toped">


</div>

<!---广告结束 ---->

<div class="part1 ">
<div class="container">
<div class="row">
    <div class="col-md-7">
  <%Set prs= Server.CreateObject("ADODB.Recordset")
            psql="select top 1 * From [links] where wid=3 order by oid desc,ID desc"
            prs.open psql,conn,1,1
            i=0%>
            <%do while not prs.eof%>
                                    <img src="<%=prs("file")%>">
                                        <h2><%=prs("stit")%></h2>
                                        <p class="txt"><%=prs("stxt")%></p>
             <%
            	i=i+1

            	     prs.movenext
            	loop
            prs.close
            set prs=nothing
            %>
      </div>

    <div class="col-md-5">
<div class="lybor">
<form>
<h3>安排演示</h3>
<input class="form-control lyname" placeholder="姓名" id="lyname"><span class="err form-control"></span>
<input class="form-control lytel" placeholder="电话" id="lytel"><span class="err form-control"></span>
<input class="form-control lymail" placeholder="邮箱" id="lymail"><span class="err form-control"></span>
<input class="form-control lycom" placeholder="公司" id="lycom"><span class="err form-control"></span>

<select class="form-control lypro"  id="lypro">
<option value="">选择产品</option>
<option value="NetSuite">NetSuite</option>
<option value="Oracle云">Oracle云</option>
<option value="NetDimensions">NetDimensions</option>
</select><span class="err form-control"></span>
<textarea class="form-control lytxt" placeholder="请在此提交您的需求，我们会在一个工作日内与您联系" id="lytxt"></textarea><span class="err form-control"></span>
<p class="btn btn-lg form-control vbtn" onClick="ga('send', 'event', 'yanshiyemian', 'dianji', 'tijiaoButton', 1);">提交</p>
<p class="txt form-control"><em class="star">*</em>
请确保所填信息真实有效，避免无法联系到您。我们将对<br>
您的信息严格保密，不会向任何外部机构透露您的信息。</p>
</form>
</div>
    </div>
</div>
</div>
</div>
 	 <!--footer-->
<!--#include file="inc/footer.Asp"-->
<!--#include file="inc/sidebar.asp"-->
<script src="ajax/getdemo.js"></script>
</body>
</html>
