<!--#include file="inc/xgheader.asp"-->
      <!--sidebar start-->
<!--#include file="inc/xgmenu.asp"-->
      <!--sidebar end-->
      <!--main content start-->
      <section id="main-content">
          <section class="wrapper">
              <!-- page start -->
<%
dim i
dim sql,rs
cid=Trim(Request.QueryString("id"))
sql="select * From [schedule] where cid="&cid
sql=sql & " order by oid desc,ID desc"
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
              <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                              <%call showName("courses",cid,"id","tit")%>的课时表 <a class="btn btn-success mod" data-action="add" href="schedule-add.asp?cid=<%=cid%>">新建课时</a>
                          </header>
                          
<!--列表开始-->

<!--以后补一个类别切换-->
<form>
<table class="table table-striped border-top table-hover" id="sample_1">
<thead>
          <tr > 
          
            <th width="40" class="hidden-phone"><strong>ID</strong></td>
            
            <th width="180" ><strong>日期</strong></td>
            <th width="180" ><strong>时间</strong></td>
            <th width="280" ><strong>时区</strong></td>
            <th width="80" class="hidden-phone"><strong>加入时间</strong></td>
            <th width="40" class="hidden-phone"><strong>排序</strong></td>

            <th width="48" ><strong>操作</strong></td>
          </tr></thead>
          <tbody>
          <%do while not rs.eof%>
          <tr > 
            <td class="hidden-phone"><%=rs("id")%></td>
            <th ><%=rs("ddate")%></td>
            <th ><%=rs("ctime")%></td>
            <td><%=rs("tzone")%></td>
            <td class="hidden-phone"><%= FormatDateTime(rs("uptime"),2) %></td>
            <td class="hidden-phone"><%=rs("oid")%></td>


            <td > 
              <a href="schedule-mod.asp?cid=<%=cid%>&id=<%=rs("id")%>" class="btn btn-success btn-xs">修改</a> 
              <a href="?id=<%=rs("ID")%>&cid=<%=cid%>&Action=Del" onClick="return ConfirmDel();" class="btn btn-danger btn-xs">删除</a> </td>
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
delid=request.QueryString("ID")
if action="Del" then
conn.execute "delete from [schedule] where Id="&Trim(delid)
response.Redirect("schedule.Asp?sta=del")
end if
%>
  <script type="text/javascript">
//导航菜单
$(".nav7").addClass('active');
$(".nav7-26").addClass('active');

function ConfirmDel()
{
   if(confirm("确定要删除选中的内容吗？一旦删除将不能恢复！"))
     return true;
   else
     return false;
}
var sta='<%=request.QueryString("sta")%>';
if(sta=='add'){
			  		$("#alert").fadeIn();
					$("#alert").addClass("alert-success");
					$("#alert span").html("数据添加成功!");
}else if(sta=='mod'){
			  		$("#alert").fadeIn();
					$("#alert").addClass("alert-success");
					$("#alert span").html("数据修改成功!");
}else if(sta=='del'){
			  		$("#alert").fadeIn();
					$("#alert").addClass("alert-success");
					$("#alert span").html("数据删除成功!");
}
console.log(sta);
</script>
<script type="text/javascript" src="xgwl/assets/data-tables/jquery.dataTables.js"></script>
<script type="text/javascript" src="xgwl/assets/data-tables/DT_bootstrap.js"></script>
<script src="xgwl/js/dynamic-table.js"></script>
