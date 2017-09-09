<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include file="../inc/xgconn.asp"-->
<%
BigClassName=request("BigClassName")
	  BigClassId=request("BigClassId")

	  Product_Id=request("Product_Id")
	  Title=request("Title")
	  uptime=request("uptime")
	  if uptime="" then uptime=now()
	  picalt=request("picalt")
	   link=request("link")
	   tips=request("tips")
	    mj1=request("mj1")
	     mj2=request("mj2")
	  title2=request("title2")
	  Description=request("Description")
	  Keywords=request("Keywords")
	  title2en=request("title2en")
	  Descriptionen=request("Descriptionen")
	  Keywordsen=request("Keywordsen")
	  DefaultPicUrl=request("DefaultPicUrl")
	  DefaultPicUrl1=request("DefaultPicUrl1")
	  DefaultPicUrl2=request("DefaultPicUrl2")
	  DefaultPicUrl3=request("DefaultPicUrl3")
	  DefaultPicUrl4=request("DefaultPicUrl4")
      content=request("content")
	  Orderid=request("Orderid")
      Passed=request("Passed")
	  Elite=request("Elite")
	  action=trim(request("action"))
	  pro_id=request("pro_id")
	  if BigClassId="" then BigClassId=0
		if SmallClassId="" then SmallClassId=0
		if pro_id="" then pro_id=0
		if Orderid="" then Orderid=0
	'新增内容
	enTitle=request("enTitle")
	  jgzj=request("jgzj")
	  jgjj=request("jgjj")
	  if jgzj="" then jgzj=0
	  if jgjj="" then jgjj=0
	  cfjname=request("cfjname")
	  cfjid=request("cfjid")
	  clxname=request("clxname")
	  clxid=trim(request("clxid"))
	  clbname=request("clbname")
	  content1=request("content1")
	  content2=request("content2")
	  content3=request("content3")
	  content4=request("content4")
	  content5=request("content5")
	  content6=request("content6")
	  content7=request("content7")
	  content8=request("content8")
	  content9=request("content9")
	  content10=request("content10")
	  content11=request("content11")
	  content12=request("content12")
	  content13=request("content13")
	  clbid=request("clbid")
'	  ctdname=request("ctdname")
	  ctdid=","&trim(request("ctdid"))&","
'二次新增内容
	wz=request("wz")
	syq=request("syq")
	jgsj=request("jgsj")
	qt=request("qt")
	hx=request("hx")
	ckfsid=request("ckfsid")
	ckfsname=request("ckfsname")
		
select case action

Case "add"
set oRs=Server.CreateObject("ADODB.Recordset")
oRs.Open "select * from [Table_Product] ",conn,1,3
oRs.Addnew
oRs("BigClassName")=Trim(BigClassName)
oRs("BigClassId")=Trim(BigClassId)
oRs("Title")=Trim(Title)
oRs("UpDatetime")=Trim(uptime)
oRs("DefaultPicUrl")=Trim(DefaultPicUrl)
oRs("DefaultPicUrl1")=Trim(DefaultPicUrl1)
oRs("DefaultPicUrl2")=Trim(DefaultPicUrl2)
oRs("DefaultPicUrl3")=Trim(DefaultPicUrl3)
oRs("DefaultPicUrl4")=Trim(DefaultPicUrl4)
oRs("content")=Trim(content)
oRs("Orderid")=Trim(Orderid)
oRs("Passed")=Trim(Passed)
oRs("Elite")=Trim(Elite)
'新增内容
oRs("enTitle")=trim(enTitle)
oRs("content1")=Trim(content1)
oRs("content2")=Trim(content2)
oRs("content3")=Trim(content3)
oRs("content4")=Trim(content4)
oRs("content5")=Trim(content5)
oRs("content6")=Trim(content6)
oRs("content7")=Trim(content7)
oRs("content8")=Trim(content8)
oRs("content9")=Trim(content9)
oRs("content10")=Trim(content10)
oRs("content11")=Trim(content11)
oRs("content12")=Trim(content12)
oRs("content13")=Trim(content13)
oRs("title2")=Trim(title2)
oRs("Description")=Trim(Description)
oRs("Keywords")=Trim(Keywords)
oRs("title2en")=Trim(title2en)
oRs("Descriptionen")=Trim(Descriptionen)
oRs("Keywordsen")=Trim(Keywordsen)
'二次新增内容
oRs("cg")=now()
oRs.Update

oRs.close
set oRs=Nothing
if Passed="false" then
response.write ("addcg")
else
response.write ("add")
end if
Case "mod"

set oRs=Server.CreateObject("ADODB.Recordset")
oRs.Open "select * from [Table_Product] where ArticleId="&pro_id,conn,1,3


oRs("BigClassName")=Trim(BigClassName)
oRs("BigClassId")=Trim(BigClassId)
oRs("Product_Id")=Trim(Product_Id)
oRs("Title")=Trim(Title)
oRs("link")=Trim(link)
oRs("tips")=Trim(tips)
oRs("mj1")=Trim(mj1)
oRs("mj2")=Trim(mj2)
oRs("UpDatetime")=Trim(uptime)
oRs("DefaultPicUrl")=Trim(DefaultPicUrl)
oRs("DefaultPicUrl1")=Trim(DefaultPicUrl1)
oRs("DefaultPicUrl2")=Trim(DefaultPicUrl2)
oRs("DefaultPicUrl3")=Trim(DefaultPicUrl3)
oRs("DefaultPicUrl4")=Trim(DefaultPicUrl4)
oRs("content")=Trim(content)
oRs("Orderid")=Trim(Orderid)
oRs("Passed")=Trim(Passed)
oRs("Elite")=Trim(Elite)
oRs("picalt")=Trim(picalt)
'新增内容
oRs("title2")=trim(title2)
oRs("Keywords")=Trim(Keywords)
oRs("Description")=Trim(Description)
oRs("title2en")=trim(title2en)
oRs("Keywordsen")=Trim(Keywordsen)
oRs("Descriptionen")=Trim(Descriptionen)
oRs("enTitle")=trim(enTitle)
oRs("content1")=Trim(content1)
oRs("content2")=Trim(content2)
oRs("content3")=Trim(content3)
oRs("content4")=Trim(content4)
oRs("content5")=Trim(content5)
oRs("content6")=Trim(content6)
oRs("content7")=Trim(content7)
oRs("content8")=Trim(content8)
oRs("content9")=Trim(content9)
oRs("content10")=Trim(content10)
oRs("content11")=Trim(content11)
oRs("content12")=Trim(content12)
oRs("content13")=Trim(content13)
oRs("jgzj")=trim(jgzj)
oRs("jgjj")=trim(jgjj)
oRs("cfjname")=trim(cfjname)
oRs("cfjid")=trim(cfjid)
oRs("clxname")=trim(clxname)
oRs("clxid")=trim(clxid)
oRs("clbname")=trim(clbname)
oRs("clbid")=trim(clbid)
'oRs("ctdname")=trim(tdname)
oRs("ctdid")=trim(ctdid)
'二次新增内容
oRs("wz")=trim(wz)
oRs("syq")=trim(syq)
oRs("jgsj")=trim(jgsj)
oRs("qt")=trim(qt)
oRs("hx")=trim(hx)
oRs("ckfsid")=trim(ckfsid)
oRs("ckfsname")=trim(ckfsname)
oRs("cg")=now()
oRs.Update

oRs.close
set oRs=Nothing
if Passed="false" then
response.write ("modcg")
else
response.write ("mod")
end if

Case "del"
conn.execute "delete from [Table_Product] where ArticleId="&Trim(pro_id)
response.write ("del")
end select
%>