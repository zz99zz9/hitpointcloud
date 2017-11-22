
<!--#include file="inc/xgheader.asp"-->
<%tablename="p_gnmk"
fid=request.QueryString("ArticleID")
        //      call SafeRequest(fid)%>
        <%
        dim i
        dim sql,rs
        classid=request.QueryString("Prod_Type")
        sql="select * From [p_gnmk] where pid="&fid
        sql=sql & " order by oid desc"

        Set rs= Server.CreateObject("ADODB.Recordset")
        rs.open sql,conn,1,1
        %>
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
                                  <strong>操作成功！</strong> <span>修改成功。</span>
                              </div>
 
                          <!----> 
              <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                          <%call showName("Table_Product",fid,"ArticleID","entitle")%> 的功能模块 <a class="btn btn-success mod"  href="p_gnmk_add.asp?pid=<%=fid%>"><i class="icon-picture"></i> 添加新内容</a>

                          </header>
                          
<!--列表开始-->

<!--以后补一个类别切换-->
<form>
<table class="table table-striped border-top table-hover" id="sample_1">
<thead>
          <tr >

            <th width="40" class="hidden-phone"><strong>ID</strong></td>
            <th width="200" ><strong>名称</strong></td>
            <th width="80" class="hidden-phone"><strong>修改时间</strong></td>
            <th width="40" class="hidden-phone"><strong>排序</strong></td>

            <th width="48" ><strong>操作</strong></td>
          </tr></thead>
          <tbody>
          <%do while not rs.eof%>
          <tr >
            <td class="hidden-phone"><%=rs("id")%></td>
            <td><%=rs("tit")%> [<%=rs("titen")%>]</td>
            <td class="hidden-phone"><%= FormatDateTime(rs("uptime"),2) %></td>
            <td class="hidden-phone"><%=rs("oid")%></td>
            <td >

              <a href="p_gnmk_mod.asp?id=<%=rs("id")%>" class="btn btn-success btn-xs">修改</a>
              <a href="?id=<%=rs("id")%>&Action=Del&ArticleID=<%=fid%>" onClick="return ConfirmDel();" class="btn btn-danger btn-xs">删除</a> </td>
          </tr>
          <%
	i=i+1

	      rs.movenext
	loop
%>
          </tbody>
          </table>
        </table>
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
<%
action=request.QueryString("Action")
delid=request.QueryString("id")
if action="Del" then
conn.execute "delete from [p_gnmk] where id="&Trim(delid)
response.Redirect("p_gnmk.Asp?ArticleID="&fid&"&sta=del")
end if
%>
  <script type="text/javascript">
//导航菜单
$(".nav6").addClass('active');
$(".nav6-1").addClass('active');

$(document).ready(function(e) {
	var tablename="<%=tablename%>";
 //  defalutlist("list",tablename,"<%=fid%>");
});

</script>
<!--<script type="text/javascript" src="ajax/xgp.js"></script>-->
