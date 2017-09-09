
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
fid=request.QueryString("ArticleID")

id=request.QueryString("id")
 sql="select * From [p_gnmk] where id="&id
        sql=sql & " order by oid desc"

        Set rs= Server.CreateObject("ADODB.Recordset")
        rs.open sql,conn,1,1
%>
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
      <input type="text" name="prod_name" class="form-control" id="prod_name" value="<%=rs("tit")%>">
    </div>
  </div>
      <div class="form-group row">
      <label for="prod_nameen" class="col-sm-2 control-label text-right xglab">英文标题</label>
      <div class="col-sm-7">
        <input type="text" name="prod_nameen" class="form-control" id="prod_nameen" value="<%=rs("titen")%>">
      </div>
    </div>

<%if classid<>8 then%>
<div class="form-group row">
    <label for="content" class="col-sm-2 control-label text-right xglab">中文内容</label>
    <div class="col-sm-7 ">                          
<!--列表开始-->
<%
Dim htmlData

htmlData =rs("txt")&"&nbsp;"


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


  htmlData =rs("txten")

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
    <!--后加四块一-->
    <div class="form-group row">
    <label for="pic1" class="col-sm-2 control-label text-right xglab">补充内容一</label>
    <div class="col-sm-7 row">
      <div class="col-sm-8"><input name="pic1" type="text" id="pic1" class="form-control col-sm-6" value='<%=rs("pic1")%>'></div>
        <div class="col-sm-3"><input type="button" name="Submit12" value="上传图片" class="form-control col-sm-2" onClick="window.open('Yr_UpFile.Asp?formname=myform&editname=pic1&uppath=images/guanggao&filelx=jpg','','status=no,scrollbaRs=no,top=20,left=110,width=420,height=165')"></div>
    </div>
  </div>
  <div class="form-group row">
    <label for="txt1" class="col-sm-2 control-label text-right xglab">补充内容一中文</label>
    <div class="col-sm-7 row">
<%
htmlData =rs("txt1")&"&nbsp;"

%>
	  	<link rel="stylesheet" href="kindeditor-4.1.7/themes/default/default.css" />
	<link rel="stylesheet" href="kindeditor-4.1.7/plugins/code/prettify.css" />
	<script src="kindeditor-4.1.7/kindeditor.js"></script>
	<script src="kindeditor-4.1.7/lang/zh_CN.js"></script>
	<script src="kindeditor-4.1.7/plugins/code/prettify.js"></script>
	<script>
		KindEditor.ready(function(K) {
			var editor1 = K.create('textarea[name="txt1"]', {
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
</div></div>
<div class="form-group row">
    <label for="txt1en" class="col-sm-2 control-label text-right xglab">补充内容一英文</label>
    <div class="col-sm-7 row">
<%htmlData =rs("txt1en")&"&nbsp;"%>
<script>
		KindEditor.ready(function(K) {
			var editor1 = K.create('textarea[name="txt1en"]', {
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
</div></div>
<!--后加四块二-->
    <div class="form-group row">
    <label for="pic2" class="col-sm-2 control-label text-right xglab">补充内容二</label>
    <div class="col-sm-7 row">
      <div class="col-sm-8"><input name="pic2" type="text" id="pic2" class="form-control col-sm-6" value='<%=rs("pic2")%>'></div>
        <div class="col-sm-3"><input type="button" name="Submit12" value="上传图片" class="form-control col-sm-2" onClick="window.open('Yr_UpFile.Asp?formname=myform&editname=pic2&uppath=images/guanggao&filelx=jpg','','status=no,scrollbaRs=no,top=20,left=110,width=420,height=165')"></div>
    </div>
  </div>
  <div class="form-group row">
    <label for="txt2" class="col-sm-2 control-label text-right xglab">补充内容二中文</label>
    <div class="col-sm-7 row">
<%
htmlData =rs("txt2")&"&nbsp;"

%>
	  	<link rel="stylesheet" href="kindeditor-4.1.7/themes/default/default.css" />
	<link rel="stylesheet" href="kindeditor-4.1.7/plugins/code/prettify.css" />
	<script src="kindeditor-4.1.7/kindeditor.js"></script>
	<script src="kindeditor-4.1.7/lang/zh_CN.js"></script>
	<script src="kindeditor-4.1.7/plugins/code/prettify.js"></script>
	<script>
		KindEditor.ready(function(K) {
			var editor1 = K.create('textarea[name="txt2"]', {
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
</div></div>
<div class="form-group row">
    <label for="txt2en" class="col-sm-2 control-label text-right xglab">补充内容二英文</label>
    <div class="col-sm-7 row">
<%htmlData =rs("txt2en")&"&nbsp;"%>
<script>
		KindEditor.ready(function(K) {
			var editor1 = K.create('textarea[name="txt2en"]', {
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
</div></div>
<!--后加四块三-->
    <div class="form-group row">
    <label for="pic3" class="col-sm-2 control-label text-right xglab">补充内容三</label>
    <div class="col-sm-7 row">
      <div class="col-sm-8"><input name="pic3" type="text" id="pic3" class="form-control col-sm-6" value='<%=rs("pic3")%>'></div>
        <div class="col-sm-3"><input type="button" name="Submit12" value="上传图片" class="form-control col-sm-2" onClick="window.open('Yr_UpFile.Asp?formname=myform&editname=pic3&uppath=images/guanggao&filelx=jpg','','status=no,scrollbaRs=no,top=20,left=110,width=420,height=165')"></div>
    </div>
  </div>
  <div class="form-group row">
    <label for="txt3" class="col-sm-2 control-label text-right xglab">补充内容三中文</label>
    <div class="col-sm-7 row">
<%
htmlData =rs("txt3")&"&nbsp;"

%>
	  	<link rel="stylesheet" href="kindeditor-4.1.7/themes/default/default.css" />
	<link rel="stylesheet" href="kindeditor-4.1.7/plugins/code/prettify.css" />
	<script src="kindeditor-4.1.7/kindeditor.js"></script>
	<script src="kindeditor-4.1.7/lang/zh_CN.js"></script>
	<script src="kindeditor-4.1.7/plugins/code/prettify.js"></script>
	<script>
		KindEditor.ready(function(K) {
			var editor1 = K.create('textarea[name="txt3"]', {
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
</div></div>
<div class="form-group row">
    <label for="txt3en" class="col-sm-2 control-label text-right xglab">补充内容三英文</label>
    <div class="col-sm-7 row">
<%htmlData =rs("txt3en")&"&nbsp;"%>
<script>
		KindEditor.ready(function(K) {
			var editor1 = K.create('textarea[name="txt3en"]', {
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
</div></div>
<!--后加四块四-->
    <div class="form-group row">
    <label for="pic4" class="col-sm-2 control-label text-right xglab">补充内容四</label>
    <div class="col-sm-7 row">
      <div class="col-sm-8"><input name="pic4" type="text" id="pic4" class="form-control col-sm-6" value='<%=rs("pic4")%>'></div>
        <div class="col-sm-3"><input type="button" name="Submit12" value="上传图片" class="form-control col-sm-2" onClick="window.open('Yr_UpFile.Asp?formname=myform&editname=pic4&uppath=images/guanggao&filelx=jpg','','status=no,scrollbaRs=no,top=20,left=110,width=420,height=165')"></div>
    </div>
  </div>
  <div class="form-group row">
    <label for="txt4" class="col-sm-2 control-label text-right xglab">补充内容四中文</label>
    <div class="col-sm-7 row">
<%
htmlData =rs("txt4")&"&nbsp;"

%>
	  	<link rel="stylesheet" href="kindeditor-4.1.7/themes/default/default.css" />
	<link rel="stylesheet" href="kindeditor-4.1.7/plugins/code/prettify.css" />
	<script src="kindeditor-4.1.7/kindeditor.js"></script>
	<script src="kindeditor-4.1.7/lang/zh_CN.js"></script>
	<script src="kindeditor-4.1.7/plugins/code/prettify.js"></script>
	<script>
		KindEditor.ready(function(K) {
			var editor1 = K.create('textarea[name="txt4"]', {
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
</div></div>
<div class="form-group row">
    <label for="txt4en" class="col-sm-2 control-label text-right xglab">补充内容四英文</label>
    <div class="col-sm-7 row">
<%htmlData =rs("txt4en")&"&nbsp;"%>
<script>
		KindEditor.ready(function(K) {
			var editor1 = K.create('textarea[name="txt4en"]', {
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
</div></div>
<!---->
<%end if%>

    <div class="form-group row">
    <label for="Oid" class="col-sm-2 control-label text-right xglab">排序ID</label>
    <div class="col-sm-7 row">
    <div class="col-sm-2">
      <input type="text" name="Oid" class="form-control" id="Oid" value="<%=rs("oid")%>" placeholder="数字越大排序越靠前" >
      </div>
    </div>
  </div>


<div class="row">
<div class="col-lg-offset-2 col-lg-7">
<button class="btn btn-danger save" type="button" style="margin:15px auto;">保存</button>
<input id="action" value="mod" type="hidden">
<input id="pid" value="<%=rs("pid")%>" type="hidden">
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



$(".nav5").addClass('active');
$(".nav5-<%=classid%>a").addClass('active');

</script>
<script type="text/javascript" src="ajax/p_info.js"></script>
