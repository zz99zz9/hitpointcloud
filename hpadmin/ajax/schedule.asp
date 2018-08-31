<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include file="../inc/xgconn.asp"-->
<%
      id=request("id")
	  ddate=request("ddate")
	  ddateen=request("ddateen")

      ctime=request("ctime")
      ctimeen=request("ctimeen")
      tzone=request("tzone")
      tzoneen=request("tzoneen")
	  oid=request("oid")
      cid=request("cid")
      lid=request("lid")
	  uptime=trim(request("uptime"))

	  action=trim(request("action"))
   

		if id="" then pid=0
		if Oid="" then Oid=0

		
select case action

Case "add"
set oRs=Server.CreateObject("ADODB.Recordset")
oRs.Open "select * from [schedule] ",conn,1,3

oRs.Addnew

oRs("ddate")=Trim(ddate)
oRs("ddateen")=Trim(ddateen)
oRs("ctime")=Trim(ctime)
oRs("ctimeen")=Trim(ctimeen)
oRs("tzone")=Trim(tzone)
oRs("tzoneen")=Trim(tzoneen)
oRs("lid")=Trim(lid)
oRs("cid")=Trim(cid)
oRs("oid")=Trim(oid)

oRs("uptime")=Trim(uptime)



oRs.Update

oRs.close
set oRs=Nothing
response.write ("add!"&cid)

Case "mod"

set oRs=Server.CreateObject("ADODB.Recordset")
oRs.Open "select * from [schedule] where id="&id,conn,1,3

oRs("ddate")=Trim(ddate)
oRs("ddateen")=Trim(ddateen)
oRs("ctime")=Trim(ctime)
oRs("ctimeen")=Trim(ctimeen)
oRs("tzone")=Trim(tzone)
oRs("tzoneen")=Trim(tzoneen)
oRs("lid")=Trim(lid)
oRs("cid")=Trim(cid)
oRs("oid")=Trim(oid)

oRs("uptime")=Trim(uptime)



oRs.Update

oRs.close
set oRs=Nothing
response.write ("mod!"&cid)
Case "del"
conn.execute "delete from [cshedule] where id="&Trim(id)
response.write ("del!"&cid)
end select
%>