<!--#include file="inc/conn.asp"-->
<!--#include file="inc/Config.Asp"-->
<!--#include file="inc/Function.asp"-->
<!--#include file="inc/Inc.Asp"-->
<%
dim tdkid
tdkid=17
%>
<!--#include file="inc/enheader.Asp"-->
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
            psql="select top 1 * From [links] where wid=4 order by oid desc,ID desc"
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
<h3>Free Download</h3>
<input class="form-control lyname" placeholder="Name" id="lyname"><span class="err form-control"></span>
<input class="form-control lytel" placeholder="Tel" id="lytel"><span class="err form-control"></span>
<input class="form-control lymail" placeholder="E-mail" id="lymail"><span class="err form-control"></span>
<input class="form-control lycom" placeholder="Conpany" id="lycom"><span class="err form-control"></span>

<select class="form-control lypro"  id="lypro">
    <option value="">Select strategy white paper</option>
    <option value="Silk Cloud Road">Silk Cloud Road</option>
    <option value="Information China">Information China</option>
</select><span class="err form-control"></span>
<textarea class="form-control lytxt" placeholder="What is your primary business system need? Please fill out this field." id="lytxt"></textarea><span class="err form-control"></span>
<p class="btn btn-lg form-control vbtn" onClick="ga('send', 'event', 'yanshiyemian', 'dianji', 'tijiaoButton', 1);">Submit</p>
<p class="txt form-control"><em class="star">*</em>
Hitpoint respects and protects your privacy.</p>
</form>
</div>
    </div>
</div>
</div>
</div>
 	 <!--footer-->
<!--#include file="inc/enfooter.Asp"-->
<!--#include file="inc/ensidebar.asp"-->
<script src="ajax/getdemo.js"></script>
</body>
</html>
