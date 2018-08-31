<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include file="../inc/xgconn.asp"-->
<%
      id=request("id")
	  tit=request("tit")
	  titen=request("titen")

      txt=request("txt")
      txten=request("txten")
	  oid=request("oid")

	  uptime=trim(request("uptime"))

	  action=trim(request("action"))
      passed=request("passed")
	  elite=request("elite")

		if id="" then pid=0
		if Oid="" then Oid=0
' set oRs=Server.CreateObject("ADODB.Recordset")
' oRs.Open "select * from [location] where cid="&classid,conn,1,1
' If Not oRs.eof Then
' classname=ors("CName")
' End if
' oRs.close
' set oRs=Nothing
		
select case action

Case "add"
set oRs=Server.CreateObject("ADODB.Recordset")
oRs.Open "select * from [location] ",conn,1,3

oRs.Addnew

oRs("tit")=Trim(tit)
oRs("titen")=Trim(titen)

oRs("txt")=Trim(txt)
oRs("txten")=Trim(txten)
oRs("oid")=Trim(oid)

oRs("uptime")=Trim(uptime)



oRs.Update

oRs.close
set oRs=Nothing
response.write ("add")

Case "mod"

set oRs=Server.CreateObject("ADODB.Recordset")
oRs.Open "select * from [location] where id="&id,conn,1,3

oRs("tit")=Trim(tit)
oRs("titen")=Trim(titen)

oRs("txt")=Trim(txt)
oRs("txten")=Trim(txten)
oRs("oid")=Trim(oid)

oRs("uptime")=Trim(uptime)



oRs.Update

oRs.close
set oRs=Nothing
response.write ("mod")
Case "del"
conn.execute "delete from [location] where id="&Trim(id)
response.write ("del")
end select
%>