
<!--#include file="inc/xgheader.asp"-->
      <!--sidebar start-->
<!--#include file="inc/xgmenu.asp"-->
      <!--sidebar end-->
      <!--main content start-->
      <section id="main-content">
          <section class="wrapper">

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
      <input type="text" name="tit" class="form-control" id="tit" value="" >
    </div>
    <div class="col-sm-4 input-group ">
    <span class="input-group-addon">英文</span>
      <input type="text" name="titen" class="form-control" id="titen" value="" >
    </div>
    </div>
  </div>
<div class="form-group row">
    <label for="tit" class="col-sm-2 control-label text-right xglab">主题</label>
    <div class="col-sm-10 row">
    <div class="col-sm-4 input-group">
    <span class="input-group-addon">中文</span>
      <input type="text" name="tit2" class="form-control" id="tit2" value="" >
    </div>
    <div class="col-sm-4 input-group ">
    <span class="input-group-addon">英文</span>
      <input type="text" name="tit2en" class="form-control" id="tit2en" value="" >
    </div>
    </div>
  </div>
<div class="form-group row">
    <label for="tit" class="col-sm-2 control-label text-right xglab">日期</label>
    <div class="col-sm-10 row">
    <div class="col-sm-4 input-group">
    <span class="input-group-addon">中文</span>
      <input type="text" name="wdate" class="form-control" id="wdate" value="" >
    </div>
    <div class="col-sm-4 input-group ">
    <span class="input-group-addon">英文</span>
      <input type="text" name="wdateen" class="form-control" id="wdateen" value="" >
    </div>
    </div>
  </div>
  <div class="form-group row">
    <label for="tit" class="col-sm-2 control-label text-right xglab">时间</label>
    <div class="col-sm-10 row">
    <div class="col-sm-4 input-group">
    <span class="input-group-addon">中文</span>
      <input type="text" name="wtime" class="form-control" id="wtime" value="" >
    </div>
    <div class="col-sm-4 input-group ">
    <span class="input-group-addon">英文</span>
      <input type="text" name="wtimeen" class="form-control" id="wtimeen" value="" >
    </div>
    </div>
  </div>
    <div class="form-group row">
    <label for="tit" class="col-sm-2 control-label text-right xglab">链接</label>
    <div class="col-sm-10 row">
    <div class="col-sm-4 input-group">
    <span class="input-group-addon">中文</span>
      <input type="text" name="url" class="form-control" id="url" value="" >
    </div>
    <div class="col-sm-4 input-group ">
    <span class="input-group-addon">英文</span>
      <input type="text" name="urlen" class="form-control" id="urlen" value="" >
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
<input id="action" value="add" type="hidden">
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
$(".nav7-27").addClass('active');

</script>
<script type="text/javascript" src="ajax/workshop.js"></script>
