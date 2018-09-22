
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
    <label for="tit" class="col-sm-2 control-label text-right xglab">课程名称</label>
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
    <label for="tit" class="col-sm-2 control-label text-right xglab">课程价格</label>
    <div class="col-sm-10 row">
    <div class="col-sm-4 input-group">
    <span class="input-group-addon">中文</span>
      <input type="text" name="price" class="form-control" id="price" value="" >
    </div>
    <div class="col-sm-4 input-group ">
    <span class="input-group-addon">英文</span>
      <input type="text" name="priceen" class="form-control" id="priceen" value="" >
    </div>
    </div>
  </div>
  <div class="form-group row">
    <label for="tit" class="col-sm-2 control-label text-right xglab">课程周期</label>
    <div class="col-sm-10 row">
    <div class="col-sm-4 input-group">
    <span class="input-group-addon">中文</span>
      <input type="text" name="ttime" class="form-control" id="ttime" value="" >
    </div>
    <div class="col-sm-4 input-group ">
    <span class="input-group-addon">英文</span>
      <input type="text" name="ttimeen" class="form-control" id="ttimeen" value="" >
    </div>
    </div>
  </div>

            <div class="form-group row">
    <label for="pdf1" class="col-sm-2 control-label text-right xglab">中文摘要</label>
    <div class="col-sm-7 row">
      <div class="col-sm-12"><input name="pdf1" type="text" id="pdf1" class="form-control col-sm-6"></div>
       <!-- <div class="col-sm-3"><input type="button" name="Submit12" value="上传图片" class="form-control col-sm-2" onClick="window.open('Yr_UpFile.Asp?formname=myform&editname=pdf1&uppath=images/guanggao&filelx=jpg','','status=no,scrollbaRs=no,top=20,left=110,width=420,height=165')"></div>-->
    </div>
  </div>
      <div class="form-group row">
      <label for="pdf2" class="col-sm-2 control-label text-right xglab">英文摘要</label>
      <div class="col-sm-7 row">
        <div class="col-sm-12"><input name="pdf2" type="text" id="pdf2" class="form-control col-sm-6"></div>
        <!--  <div class="col-sm-3"><input type="button" name="Submit12" value="上传图片" class="form-control col-sm-2" onClick="window.open('Yr_UpFile.Asp?formname=myform&editname=pdf2&uppath=images/guanggao&filelx=jpg','','status=no,scrollbaRs=no,top=20,left=110,width=420,height=165')"></div>-->
      </div>
    </div>
    <!--首页分类-->
    <div class="form-group row">
  <label for="cltd" class="col-sm-2 control-label text-right xglab">归类</label>
   <div class="col-sm-7">
   <%
Set rs= Server.CreateObject("ADODB.Recordset")
sql="select * from [class_sy] order by oid desc"
rs.open sql,conn,1,1
if not(rs.eof and rs.bof) then

do while not rs.eof
%>
   		<input type="checkbox" style="vertical-align:text-bottom;" value="<%=rs("Cid")%>" class="csy" name="csy"> <span style="margin-right:10px" class=" xglab"><%=rs("CName")%></span> <%
rs.movenext
loop
end if
rs.close

%>
   </div>
   </div>
       <!--角色分类-->
    <div class="form-group row">
  <label for="cltd" class="col-sm-2 control-label text-right xglab">角色</label>
   <div class="col-sm-7">
   <%
Set rs= Server.CreateObject("ADODB.Recordset")
sql="select * from [class_js] order by oid desc"
rs.open sql,conn,1,1
if not(rs.eof and rs.bof) then

do while not rs.eof
%>
   		<input type="checkbox" style="vertical-align:text-bottom;" value="<%=rs("Cid")%>" class="cjs" name="cjs"> <span style="margin-right:10px" class=" xglab"><%=rs("CName")%></span> <%
rs.movenext
loop
end if
rs.close

%>
   </div>
   </div>
   <!--任务分类-->
    <div class="form-group row">
  <label for="cltd" class="col-sm-2 control-label text-right xglab">任务</label>
   <div class="col-sm-7">
   <%
Set rs= Server.CreateObject("ADODB.Recordset")
sql="select * from [class_rw] order by oid desc"
rs.open sql,conn,1,1
if not(rs.eof and rs.bof) then

do while not rs.eof
%>
   		<input type="checkbox" style="vertical-align:text-bottom;" value="<%=rs("Cid")%>" class="crw" name="crw"> <span style="margin-right:10px" class=" xglab"><%=rs("CName")%></span> <%
rs.movenext
loop
end if
rs.close

%>
   </div>
   </div>
      <!--产品分类-->
    <div class="form-group row">
  <label for="cltd" class="col-sm-2 control-label text-right xglab">产品</label>
   <div class="col-sm-7">
   <%
Set rs= Server.CreateObject("ADODB.Recordset")
sql="select * from [class_cp] order by oid desc"
rs.open sql,conn,1,1
if not(rs.eof and rs.bof) then

do while not rs.eof
%>
   		<input type="checkbox" style="vertical-align:text-bottom;" value="<%=rs("Cid")%>" class="ccp" name="ccp"> <span style="margin-right:10px" class=" xglab"><%=rs("CName")%></span> <%
rs.movenext
loop
end if
rs.close

%>
   </div>
   </div>
   <!---->
<div class="form-group row">
    <label for="txt" class="col-sm-2 control-label text-right xglab">课程目标中文</label>
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
			var editor1 = K.create('textarea[name="txt1"]', {
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


<textarea name="txt1" id="txt1" style="width:100%;height:450px;visibility:hidden;" class="form-control"><%=htmlspecialchars(htmlData)%></textarea>

    </div>
  </div>
  <div class="form-group row">
      <label for="txt2" class="col-sm-2 control-label text-right xglab">适合人群中文</label>
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
  			var editor1 = K.create('textarea[name="txt2"]', {
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


  <textarea name="txt2" id="txt2" style="width:100%;height:450px;visibility:hidden;" class="form-control"><%=htmlspecialchars(htmlData)%></textarea>

      </div>
    </div>
    
<div class="form-group row">
    <label for="txt3" class="col-sm-2 control-label text-right xglab">课程内容中文</label>
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
			var editor1 = K.create('textarea[name="txt3"]', {
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


<textarea name="txt3" id="txt3" style="width:100%;height:450px;visibility:hidden;" class="form-control"><%=htmlspecialchars(htmlData)%></textarea>

    </div>
  </div>
  <div class="form-group row">
      <label for="txt4" class="col-sm-2 control-label text-right xglab">注意事项中文</label>
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
  			var editor1 = K.create('textarea[name="txt4"]', {
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


  <textarea name="txt4" id="txt4" style="width:100%;height:450px;visibility:hidden;" class="form-control"><%=htmlspecialchars(htmlData)%></textarea>

      </div>
    </div>
<!--英文-->

<div class="form-group row">
    <label for="txt1en" class="col-sm-2 control-label text-right xglab">课程目标英文</label>
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
			var editor1 = K.create('textarea[name="txt1en"]', {
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


<textarea name="txt1en" id="txt1en" style="width:100%;height:450px;visibility:hidden;" class="form-control"><%=htmlspecialchars(htmlData)%></textarea>

    </div>
  </div>
  <div class="form-group row">
      <label for="txt2en" class="col-sm-2 control-label text-right xglab">适合人群英文</label>
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
  			var editor1 = K.create('textarea[name="txt2en"]', {
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


  <textarea name="txt2en" id="txt2en" style="width:100%;height:450px;visibility:hidden;" class="form-control"><%=htmlspecialchars(htmlData)%></textarea>

      </div>
    </div>
    
<div class="form-group row">
    <label for="txt3en" class="col-sm-2 control-label text-right xglab">课程内容英文</label>
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
			var editor1 = K.create('textarea[name="txt3en"]', {
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


<textarea name="txt3en" id="txt3en" style="width:100%;height:450px;visibility:hidden;" class="form-control"><%=htmlspecialchars(htmlData)%></textarea>

    </div>
  </div>
  <div class="form-group row">
      <label for="txt4en" class="col-sm-2 control-label text-right xglab">注意事项英文</label>
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
  			var editor1 = K.create('textarea[name="txt4en"]', {
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


  <textarea name="txt4en" id="txt4en" style="width:100%;height:450px;visibility:hidden;" class="form-control"><%=htmlspecialchars(htmlData)%></textarea>

      </div>
    </div>
<!--英文结束-->
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
<!--#include file="inc/windows.asp"-->
  <script type="text/javascript">
//导航菜单



$(".nav7").addClass('active');
$(".nav7-26").addClass('active');

</script>
<script type="text/javascript" src="ajax/courses.js"></script>
