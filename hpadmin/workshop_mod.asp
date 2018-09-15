

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
ID=Trim(Request.QueryString("ID"))
set oRs=Server.CreateObject("ADODB.Recordset")
oRs.Open "select * from [workshop] where ID="&ID,conn,1,3
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
                              信息发布
                          </header>
                      <form name="myform" id="myform">    


<div class="form-group row">
    <label for="tit" class="col-sm-2 control-label text-right xglab">标题</label>
    <div class="col-sm-10 row">
    <div class="col-sm-4 input-group">
    <span class="input-group-addon">中文</span>
      <input type="text" name="tit" class="form-control" id="tit" value="<%=ors("tit")%>">
    </div>
    <div class="col-sm-4 input-group ">
    <span class="input-group-addon">英文</span>
      <input type="text" name="titen" class="form-control" id="titen" value="<%=ors("titen")%>">
    </div>
    </div>
  </div>
<div class="form-group row">
    <label for="tit" class="col-sm-2 control-label text-right xglab">主题</label>
    <div class="col-sm-10 row">
    <div class="col-sm-4 input-group">
    <span class="input-group-addon">中文</span>
      <input type="text" name="tit2" class="form-control" id="tit2" value="<%=ors("tit2")%>">
    </div>
    <div class="col-sm-4 input-group ">
    <span class="input-group-addon">英文</span>
      <input type="text" name="tit2en" class="form-control" id="tit2en" value="<%=ors("tit2en")%>" >
    </div>
    </div>
  </div>
<div class="form-group row">
    <label for="tit" class="col-sm-2 control-label text-right xglab">日期</label>
    <div class="col-sm-10 row">
    <div class="col-sm-4 input-group">
    <span class="input-group-addon">中文</span>
      <input type="text" name="wdate" class="form-control" id="wdate" value="<%=ors("wdate")%>">
    </div>
    <div class="col-sm-4 input-group ">
    <span class="input-group-addon">英文</span>
      <input type="text" name="wdateen" class="form-control" id="wdateen" value="<%=ors("wdateen")%>">
    </div>
    </div>
  </div>
  <div class="form-group row">
    <label for="tit" class="col-sm-2 control-label text-right xglab">时间</label>
    <div class="col-sm-10 row">
    <div class="col-sm-4 input-group">
    <span class="input-group-addon">中文</span>
      <input type="text" name="wtime" class="form-control" id="wtime" value="<%=ors("wtime")%>">
    </div>
    <div class="col-sm-4 input-group ">
    <span class="input-group-addon">英文</span>
      <input type="text" name="wtimeen" class="form-control" id="wtimeen" value="<%=ors("wtimeen")%>">
    </div>
    </div>
  </div>
    <div class="form-group row">
    <label for="tit" class="col-sm-2 control-label text-right xglab">链接</label>
    <div class="col-sm-10 row">
    <div class="col-sm-4 input-group">
    <span class="input-group-addon">中文</span>
      <input type="text" name="url" class="form-control" id="url" value="<%=ors("url")%>">
    </div>
    <div class="col-sm-4 input-group ">
    <span class="input-group-addon">英文</span>
      <input type="text" name="urlen" class="form-control" id="urlen" value="<%=ors("urlen")%>">
    </div>
    </div>
  </div>
        <div class="form-group row">
    <label for="uptime" class="col-sm-2 control-label text-right xglab">更新时间</label>
    <div class="col-sm-10 row">
    <div class="col-sm-4 input-group">
      <input type="text" name="uptime" class="form-control" id="uptime" value="<%=now()%>" >
    </div>
    </div>
  </div>
    <div class="form-group row">
    <label for="Oid" class="col-sm-2 control-label text-right xglab">排序ID</label>
    <div class="col-sm-7 row">
    <div class="col-sm-2">
      <input type="text" name="Oid" class="form-control" id="Oid" value="0" placeholder="数字越大排序越靠前" >
      </div>
    </div>
  </div>

<div class="row">
<div class="col-lg-offset-2 col-lg-7">
<button class="btn btn-danger save" type="button" style="margin:15px auto;">保存</button>
<input id="action" value="mod" type="hidden">
<input id="id" value="<%=ors("Id")%>" type="hidden">
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
<!--#include file="inc/windows.asp"-->
  <script type="text/javascript">
//导航菜单



$(".nav7").addClass('active');
$(".nav7-27").addClass('active');

</script>
<script type="text/javascript" src="ajax/location.js"></script>
