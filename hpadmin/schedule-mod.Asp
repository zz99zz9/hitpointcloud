
<!--#include file="inc/xgheader.asp"-->
      <!--sidebar start-->
<!--#include file="inc/xgmenu.asp"-->
      <!--sidebar end-->
      <!--main content start-->
      <section id="main-content">
          <section class="wrapper">
          <%
Dim ranNum
ranNum = month(Now())&day(Now())&hour(Now())&minute(Now())&second(Now())
cid=Trim(Request.QueryString("cid"))
id=Trim(Request.QueryString("id"))


%>


              <!-- page start -->

                            <!--成功失败提示-->
<div class="alert" id="alert" style="display:none;">
                                  <button class="close close-sm" type="button">
                                      <i class="icon-remove"></i>
                                  </button>
                                  <strong>操作成功！</strong> <span>栏目内容修改成功。</span>
                              </div>
 
                          <!----> 
              <div class="row ">
                  <div class="col-lg-12">
                      <section class="panel pb50">
                          <header class="panel-heading mb50">
                              <%call showName("courses",cid,"id","tit")%>课时表发布
                          </header>
                      <form name="myform" id="myform">    
<% set oRs=Server.CreateObject("ADODB.Recordset")

if id="" then

sql="select * from [schedule] order by oid desc,id desc"

else
sql="select * from [schedule] where ID="&ID

end if
oRs.Open sql,conn,1,3%>
  <div class="form-group row">
    <label for="tit" class="col-sm-2 control-label text-right xglab">课程日期</label>
    <div class="col-sm-10 row">
    <div class="col-sm-4 input-group">
    <span class="input-group-addon">中文</span>
      <input type="text" name="ddate" class="form-control" id="ddate" value="<%=oRs("ddate")%>" >
    </div>
    <div class="col-sm-4 input-group ">
    <span class="input-group-addon">英文</span>
      <input type="text" name="ddateen" class="form-control" id="ddateen" value="<%=oRs("ddateen")%>" >
    </div>
    </div>
  </div>
  <div class="form-group row">
    <label for="tit" class="col-sm-2 control-label text-right xglab">课程时间</label>
    <div class="col-sm-10 row">
    <div class="col-sm-4 input-group">
    <span class="input-group-addon">中文</span>
      <input type="text" name="ctime" class="form-control" id="ctime" value="<%=oRs("ctime")%>" >
    </div>
    <div class="col-sm-4 input-group ">
    <span class="input-group-addon">英文</span>
      <input type="text" name="ctimeen" class="form-control" id="ctimeen" value="<%=oRs("ctimeen")%>" >
    </div>
    </div>
  </div>
  <div class="form-group row">
    <label for="tit" class="col-sm-2 control-label text-right xglab">课程时区</label>
    <div class="col-sm-10 row">
    <div class="col-sm-4 input-group">
    <span class="input-group-addon">中文</span>
      <input type="text" name="tzone" class="form-control" id="tzone" value="<%=oRs("tzone")%>" >
    </div>
    <div class="col-sm-4 input-group ">
    <span class="input-group-addon">英文</span>
      <input type="text" name="tzoneen" class="form-control" id="tzoneen" value="<%=oRs("tzoneen")%>" >
    </div>
    </div>
  </div>
<div class="form-group row">
  <label for="cfj" class="col-sm-2 control-label text-right xglab">开课地点</label>
   <div class="col-sm-10 row">
   		<div class="col-sm-2">

        <select class="form-control" id="lid"><option>选择开课地点</option>
                <%
 set rs=Server.CreateObject("ADODB.Recordset")        
sql="select * from [location] order by oid desc"
rs.open sql,conn,1,1
if not(rs.eof and rs.bof) then
do while not rs.eof
%>
            <option value="<%=rs("id")%>" <%if ors("lid")=rs("id") then%>selected<%end if%>><%=rs("tit")%></option>
            <%
rs.movenext
loop
end if
rs.close

%>
</select>
        </div>
   </div>
  </div>
   <!---->

        <div class="form-group row">
    <label for="uptime" class="col-sm-2 control-label text-right xglab">更新时间</label>
    <div class="col-sm-10 row">
    <div class="col-sm-4 input-group">
      <input type="text" name="uptime" class="form-control" id="uptime" value="<%=oRs("uptime")%>" >
    </div>
    </div>
  </div>
    <div class="form-group row">
    <label for="Oid" class="col-sm-2 control-label text-right xglab">排序ID</label>
    <div class="col-sm-7 row">
    <div class="col-sm-2">
      <input type="text" name="Oid" class="form-control" id="Oid" value="<%=oRs("oid")%>" placeholder="数字越大排序越靠前" >
      </div>
    </div>
  </div>

<div class="row">
<div class="col-lg-offset-2 col-lg-7">
<button class="btn btn-danger save" type="button" style="margin:15px auto;">保存</button>
<input id="action" value="mod" type="hidden">
<input id="cid" value="<%=cid%>" type="hidden">
<input id="id" value="<%=id%>" type="hidden">
</div>
  </div>
</form>
<!--列表结束-->
                      </section>
                  </div>
              </div>

              <!--  page end  -->
          </section>
      </section>
      <!--main content end-->
  </section>

<!--#include file="inc/xgfooter.asp"-->

  <script type="text/javascript">
//导航菜单



$(".nav7").addClass('active');
$(".nav7-26").addClass('active');

</script>
<script type="text/javascript" src="ajax/schedule.js"></script>
