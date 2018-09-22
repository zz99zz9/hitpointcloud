<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include file="../inc/xgconn.asp"-->
<%
      id=request("id")
	  tit=request("tit")
	  titen=request("titen")
        price=request("price")
        priceen=request("priceen")
        ttime=request("ttime")
        ttimeen=request("ttimeen")
        pdf1=request("pdf1")
      pdf2=request("pdf2")
      csy=","&request("csy")&","
      cjs=","&request("cjs")&","
      crw=","&request("crw")&","
      ccp=","&request("ccp")&","
      txt1=request("txt1")
      txt1en=request("txt1en")
       txt2=request("txt2")
      txt2en=request("txt2en")
       txt3=request("txt3")
      txt3en=request("txt3en")
      txt4=request("txt4")
      txt4en=request("txt4en")
	  oid=request("oid")

	  uptime=trim(request("uptime"))

	  action=trim(request("action"))


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
oRs.Open "select * from [courses] ",conn,1,3

oRs.Addnew

oRs("tit")=Trim(tit)
oRs("titen")=Trim(titen)
oRs("price")=Trim(price)
oRs("priceen")=Trim(priceen)
oRs("ttime")=Trim(ttime)
oRs("ttimeen")=Trim(ttimeen)
oRs("pdf1")=Trim(pdf1)
oRs("pdf2")=Trim(pdf2)
oRs("csy")=Trim(csy)
oRs("cjs")=Trim(cjs)
oRs("crw")=Trim(crw)
oRs("ccp")=Trim(ccp)
oRs("txt1")=Trim(txt1)
oRs("txt1en")=Trim(txt1en)
oRs("txt2")=Trim(txt2)
oRs("txt2en")=Trim(txt2en)
oRs("txt3")=Trim(txt3)
oRs("txt3en")=Trim(txt3en)
oRs("txt4")=Trim(txt4)
oRs("txt4en")=Trim(txt4en)
oRs("oid")=Trim(oid)

oRs("uptime")=Trim(uptime)



oRs.Update

oRs.close
set oRs=Nothing
response.write ("add")

Case "mod"

set oRs=Server.CreateObject("ADODB.Recordset")
oRs.Open "select * from [courses] where id="&id,conn,1,3

oRs("tit")=Trim(tit)
oRs("titen")=Trim(titen)
oRs("price")=Trim(price)
oRs("priceen")=Trim(priceen)
oRs("ttime")=Trim(ttime)
oRs("ttimeen")=Trim(ttimeen)
oRs("pdf1")=Trim(pdf1)
oRs("pdf2")=Trim(pdf2)
oRs("csy")=Trim(csy)
oRs("cjs")=Trim(cjs)
oRs("crw")=Trim(crw)
oRs("ccp")=Trim(ccp)
oRs("txt1")=Trim(txt1)
oRs("txt1en")=Trim(txt1en)
oRs("txt2")=Trim(txt2)
oRs("txt2en")=Trim(txt2en)
oRs("txt3")=Trim(txt3)
oRs("txt3en")=Trim(txt3en)
oRs("txt4")=Trim(txt4)
oRs("txt4en")=Trim(txt4en)
oRs("oid")=Trim(oid)

oRs("uptime")=Trim(uptime)



oRs.Update

oRs.close
set oRs=Nothing
response.write ("mod")
Case "del"
conn.execute "delete from [courses] where id="&Trim(id)
response.write ("del")
end select
%>