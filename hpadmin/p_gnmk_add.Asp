
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
%>

              <!-- page start -->
<%dim classid
pid=request.QueryString("pid")%>
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
    <label for="prod_name" class="col-sm-2 control-label text-right xglab">中文标题</label>
    <div class="col-sm-7">
      <input type="text" name="prod_name" class="form-control" id="prod_name" >
    </div>
  </div>
      <div class="form-group row">
      <label for="prod_nameen" class="col-sm-2 control-label text-right xglab">英文标题</label>
      <div class="col-sm-7">
        <input type="text" name="prod_nameen" class="form-control" id="prod_nameen" >
      </div>
    </div>

<%if classid<>8 then%>
<div class="form-group row">
    <label for="content" class="col-sm-2 control-label text-right xglab">中文内容</label>
    <div class="col-sm-7 ">                          
<!--列表开始-->
<%
Dim htmlData

htmlData =text

Function htmlspecialchars(str)
	str = Replace(str, "&", "&amp;")
	str = Replace(str, "<", "&lt;")
	str = Replace(str, ">", "&gt;")
	str = Replace(str, """", "&quot;")
	htmlspecialchars = str
End Function
%>
	  	<link rel="stylesheet" href="kindeditor-4.1.7/themes/default/default.css" />
	<link rel="stylesheet" href="kindeditor-4.1.7/plugins/code/prettify.css" />
	<script src="kindeditor-4.1.7/kindeditor.js"></script>
	<script src="kindeditor-4.1.7/lang/zh_CN.js"></script>
	<script src="kindeditor-4.1.7/plugins/code/prettify.js"></script>
	<script>
		KindEditor.ready(function(K) {
			var editor1 = K.create('textarea[name="content"]', {
			filterMode: false,//是否开启过滤模式
				cssPath : 'kindeditor-4.1.7/plugins/code/prettify.css',
				uploadJson : 'kindeditor-4.1.7/asp/upload_json.asp',
				fileManagerJson : 'kindeditor-4.1.7/asp/file_manager_json.asp',
				allowFileManager : true,
				afterCreate : function() {
					var self = this;
					K.ctrl(document, 13, function() {
						self.sync();
						K('form[name=example]')[0].submit();
					});
					K.ctrl(self.edit.doc, 13, function() {
						self.sync();
						K('form[name=example]')[0].submit();
					});
				},afterBlur: function(){this.sync();}
			});
			prettyPrint();
		});
	</script>


<textarea name="content" id="content" style="width:100%;height:450px;visibility:hidden;" class="form-control"><%=htmlspecialchars(htmlData)%></textarea>

    </div>
  </div>
  <div class="form-group row">
      <label for="content1" class="col-sm-2 control-label text-right xglab">英文内容</label>
      <div class="col-sm-7 ">
  <!--列表开始-->
  <%


  htmlData =text

  Function htmlspecialchars(str)
  	str = Replace(str, "&", "&amp;")
  	str = Replace(str, "<", "&lt;")
  	str = Replace(str, ">", "&gt;")
  	str = Replace(str, """", "&quot;")
  	htmlspecialchars = str
  End Function
  %>
  	  	<link rel="stylesheet" href="kindeditor-4.1.7/themes/default/default.css" />
  	<link rel="stylesheet" href="kindeditor-4.1.7/plugins/code/prettify.css" />
  	<script src="kindeditor-4.1.7/kindeditor.js"></script>
  	<script src="kindeditor-4.1.7/lang/zh_CN.js"></script>
  	<script src="kindeditor-4.1.7/plugins/code/prettify.js"></script>
  	<script>
  		KindEditor.ready(function(K) {
  			var editor1 = K.create('textarea[name="content1"]', {
  			filterMode: false,//是否开启过滤模式
  				cssPath : 'kindeditor-4.1.7/plugins/code/prettify.css',
  				uploadJson : 'kindeditor-4.1.7/asp/upload_json.asp',
  				fileManagerJson : 'kindeditor-4.1.7/asp/file_manager_json.asp',
  				allowFileManager : true,
  				afterCreate : function() {
  					var self = this;
  					K.ctrl(document, 13, function() {
  						self.sync();
  						K('form[name=example]')[0].submit();
  					});
  					K.ctrl(self.edit.doc, 13, function() {
  						self.sync();
  						K('form[name=example]')[0].submit();
  					});
  				},afterBlur: function(){this.sync();}
  			});
  			prettyPrint();
  		});
  	</script>


  <textarea name="content1" id="content1" style="width:100%;height:450px;visibility:hidden;" class="form-control"><%=htmlspecialchars(htmlData)%></textarea>

      </div>
    </div>
<%end if%>

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
<input id="pid" value="<%=pid%>" type="hidden">
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



$(".nav5").addClass('active');
$(".nav5-<%=classid%>a").addClass('active');

</script>
<script type="text/javascript" src="ajax/p_info.js"></script>
