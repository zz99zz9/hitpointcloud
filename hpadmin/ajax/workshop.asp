<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include file="../inc/xgconn.asp"-->
<%
      id=request("id")
	  tit=request("tit")
	  titen=request("titen")

      tit2=request("tit2")
      tit2en=request("tit2en")
      wdate=request("wdate")
      wdateen=request("wdateen")
      wtime=request("wtime")
      wtimeen=request("wtimeen")
      url=request("url")
      urlen=request("urlen")
	  oid=request("oid")

	  uptime=trim(request("uptime"))

	  action=trim(request("action"))
      passed=request("passed")
	  elite=request("elite")

		if id="" then pid=0
		if Oid="" then Oid=0

		
select case action

Case "add"
set oRs=Server.CreateObject("ADODB.Recordset")
oRs.Open "select * from [workshop] ",conn,1,3

oRs.Addnew

oRs("tit")=Trim(tit)
oRs("titen")=Trim(titen)
oRs("tit2")=Trim(tit2)
oRs("tit2en")=Trim(tit2en)
oRs("wdate")=Trim(wdate)
oRs("wdateen")=Trim(wdateen)
oRs("wtime")=Trim(wtime)
oRs("wtimeen")=Trim(wtimeen)
oRs("url")=Trim(url)
oRs("urlen")=Trim(urlen)
oRs("oid")=Trim(oid)

oRs("uptime")=Trim(uptime)



oRs.Update

oRs.close
set oRs=Nothing
response.write ("add")

Case "mod"

set oRs=Server.CreateObject("ADODB.Recordset")
oRs.Open "select * from [workshop] where id="&id,conn,1,3

oRs("tit")=Trim(tit)
oRs("titen")=Trim(titen)
oRs("tit2")=Trim(tit2)
oRs("tit2en")=Trim(tit2en)
oRs("wdate")=Trim(wdate)
oRs("wdateen")=Trim(wdateen)
oRs("wtime")=Trim(wtime)
oRs("wtimeen")=Trim(wtimeen)
oRs("url")=Trim(url)
oRs("urlen")=Trim(urlen)
oRs("oid")=Trim(oid)

oRs("uptime")=Trim(uptime)



oRs.Update

oRs.close
set oRs=Nothing
response.write ("mod")
Case "del"
conn.execute "delete from [workshop] where id="&Trim(id)
response.write ("del")
end select
%>