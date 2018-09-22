<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include file="conn.asp"-->
<%dim byrole,bytask,byproduct
byrole=Trim(Request("byrole"))
bytask=Trim(Request("bytask"))
byproduct=Trim(Request("byproduct"))
yy=Trim(Request("yy"))
if byrole<>"" then
ssql=ssql+"and cjs like '%"&byrole&"%'"
end if
if bytask<>"" then
ssql=ssql+"and crw like '%"&bytask&"%'"
end if
if byproduct<>"" then
ssql=ssql+"and ccp like '%"&byproduct&"%'"
end if
%>
[<%  
set rs=server.createobject("adodb.recordset")
sql="select * from [courses] where id>0 "&ssql&" order by oid desc,id desc"
rs.open sql,conn,3,3
	i=0
do while not rs.eof
if i>0 then response.write(",")
if yy="cn" then 
pdf=rs("pdf1") 
tit=rs("tit")
else 
pdf=rs("pdf2")
tit=rs("titen")
end if
%>{"tit":"<%=tit%>","tit2":"<%=pdf%>","id":"<%=rs("id")%>"}<%
rs.movenext
	i=i+1
    loop

rs.close
set rs=nothing
%>]