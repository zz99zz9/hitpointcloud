<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include file="../inc/xgconn.asp"-->
<%
	  pid=request("pro_id")
	  Title=request("Title")
	  content=request("content")
	  action=request("action")
	  id=request("id")
	  enTitle=request("enTitle")
	    Orderid=request("Orderid")
	     content1=request("content1")
		 txt1=request("txt1")
		 txt2=request("txt2")
		 txt3=request("txt3")
		 txt4=request("txt4")
		 txt1en=request("txt1en")
		 txt2en=request("txt2en")
		 txt3en=request("txt3en")
		 txt4en=request("txt4en")
		 pic1=request("pic1")
		 pic2=request("pic2")
		 pic3=request("pic3")
		 pic4=request("pic4")
	     if Orderid="" then Orderid=0
	     if pid="" then pid=0

		
select case action

Case "add"
set oRs=Server.CreateObject("ADODB.Recordset")
oRs.Open "select * from [p_gnmk] ",conn,1,3

oRs.Addnew

oRs("tit")=trim(Title)
oRs("txt")=trim(content)
oRs("titen")=Trim(enTitle)
oRs("txten")=Trim(content1)
oRs("oid")=Trim(Orderid)
oRs("pid")=Trim(pid)
oRs("txt1")=Trim(txt1)
oRs("txt2")=Trim(txt2)
oRs("txt3")=Trim(txt3)
oRs("txt4")=Trim(txt4)
oRs("txt1en")=Trim(txt1en)
oRs("txt2en")=Trim(txt2en)
oRs("txt3en")=Trim(txt3en)
oRs("txt4en")=Trim(txt4en)
oRs("pic1")=Trim(pic1)
oRs("pic2")=Trim(pic2)
oRs("pic3")=Trim(pic3)
oRs("pic4")=Trim(pic4)
oRs.Update

oRs.close
set oRs=Nothing
response.write ("add")

Case "mod"

set oRs=Server.CreateObject("ADODB.Recordset")
oRs.Open "select * from [p_gnmk] where id="&id,conn,1,3
oRs("tit")=trim(Title)
oRs("txt")=trim(content)
oRs("titen")=Trim(enTitle)
oRs("txten")=Trim(content1)
oRs("oid")=Trim(Orderid)
oRs("pid")=Trim(pid)
oRs("txt1")=Trim(txt1)
oRs("txt2")=Trim(txt2)
oRs("txt3")=Trim(txt3)
oRs("txt4")=Trim(txt4)
oRs("txt1en")=Trim(txt1en)
oRs("txt2en")=Trim(txt2en)
oRs("txt3en")=Trim(txt3en)
oRs("txt4en")=Trim(txt4en)
oRs("pic1")=Trim(pic1)
oRs("pic2")=Trim(pic2)
oRs("pic3")=Trim(pic3)
oRs("pic4")=Trim(pic4)
oRs.Update

oRs.close
set oRs=Nothing
response.write ("mod")
Case "del"
conn.execute "delete from [p_gnmk] where Id="&Trim(id)
response.write ("del")
end select
%>