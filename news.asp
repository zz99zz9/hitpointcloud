<!--#include file="inc/conn.asp"-->
<!--#include file="inc/Config.Asp"-->
<!--#include file="inc/Function.asp"-->
<!--#include file="inc/Inc.Asp"-->
<%
dim tdkid
tdkid=21
%>
<!--#include file="inc/header.Asp"-->
<!--通用结束-->
<link rel="stylesheet" href="xgwl/css/9.css"/>
<!----广告--->
<div class="toped">
<h5 class="wow fadeInUp">新闻资讯</h5>
<p class="txt wow fadeInUp" data-wow-delay="150ms">最有价值的行业资料，最新鲜的行业新闻</p>
</div>
<!--栏目标题-->
<div class="titleline">
    <div class="container">
    <div class="row">
        <span class="tit">新鲜事</span><span class="txt hidden-xs">在线学习交流、视频资料、白皮书...总有你需要的</span><!--<span class="tbtn tra hand hidden-xs">在线咨询</span>-->
    </div>
    </div>
</div>
<!---广告结束 ---->
<div class="part1 ">
<div class="container">
<ul class="newslist">
<%dim cid

	  set rsnew=Server.CreateObject("ADODB.Recordset")
	  sqlnew="select * from [prod] where classid=2"
	  	if bid<>0 then
			sqlnew = sqlnew+" and bigclassid="&bid
		end if
	  sqlnew=sqlnew+" order by oid desc,prod_id desc"

rsnew.Open sqlnew,conn,1,1%>
<!---->
     <%
       if rsnew.bof and rsnew.eof then
       response.write("暂无内容")
       else
       rsnew.PageSize=10 '设置页码
       pagecount=rsnew.PageCount '获取总页码
       page=int(request("page")) '接收页码
       if page<=0 then page=1 '判断
       if request("page")="" then page=1
       rsnew.AbsolutePage=page '设置本页页码
       i=0
       do while not rsnew.eof and i<rsnew.PageSize
       %>
<li><a href="newsDetail.asp?nv=<%=rsnew("prod_id")%>"><Img src="<%=rsnew("prod_pic")%>" class="b_c12"></a><div class="info"><a class="h3" href="newsDetail.asp?nv=<%=rsnew("prod_id")%>"><%=rsnew("prod_name")%></a><br><span class="ntime"><%=formatdatetime(rsnew("prod_date"),2)%></span><p class="txt"><%=rsnew("summany")%></p>
<a href="newsDetail.asp?nv=<%=rsnew("prod_id")%>" class="nbtn ">阅读详情<em class="more-arr tra">&gt;</em></a></div></li>
<%rsnew.movenext
           	i=i+1
               loop
           	end if
           %>

</ul>
<!--pages s-->
          <style>
          .pages{color:#898989;margin-top:20px;}
          .pages a{padding:5px 13px;border:1px solid #ebebeb;color:#898989;margin-right:10px;}
          .pages select{border:1px solid #ebebeb;}
</style>
           <table width="95%" height="25"  border="0" align="center" cellpadding="0" cellspacing="0" class="pages wow fadeInUp">
                            <tr class="url_1">
                              <%if rsnew.pagecount > 0 then%>
                              <td width="15%" align="left" valign="middle" ><span class="hidden-xs">当前页</span><%=page%>/<%=rsnew.PageCount%></td>
                              <%else%>
                              <td width="15%" align="left" valign="middle" >当前页0/0</td>
                              <%end if%>
                              <td width="70%" align="right" ><%if page>1 then%><a href="?page=1&c=<%=cid%>" class="hidden-xs">首页</a>

                                  <a href="?page=<%=page -1%>&c=<%=cid%>" class="hidden-xs">上一页</a>
                                  <%end if%>
                                <%if rsnew.PageCount<>1 and page<>rsnew.PageCount then%>
                                  <a href="?page=<%=page +1%>&c=<%=cid%>" class="hidden-xs">下一页</a>

                                  <a href="?page=<%=rsnew.PageCount%>&c=<%=cid%>" class="hidden-xs">尾页</a>
                                  <%end if%> | 转到第
                                <select name="select" onChange="javascript:location=this.options[this.selectedIndex].value;">
                                    <%
          for i = 1 to rsnew.PageCount
          if i = page then%>
                                    <option value="?page=<%=i%>&c=<%=cid%>" selected><%=i%></option>
                                    <%else%>
                                    <option value="?page=<%=i%>&c=<%=cid%>"><%=i%></option>
                                    <%
          end if
          next
          %>
                                </select>
                                页</td>
                            </tr>
                          </table>
                          <!--pages e-->
                          <%  rsnew.close
            set rsnew=nothing%>
</div>
</div>

 	 <!--footer-->
<!--#include file="inc/footer.Asp"-->
<!--#include file="inc/sidebar.asp"-->
</body>
</html>
