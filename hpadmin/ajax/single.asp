<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include file="../inc/xgconn.asp"-->
<%content=request("content")
contenten=request("contenten")
gsjsid=request("gsjsid")
type_wj=request("type_wj")
type_wjen=request("type_wjen")
t=request("t")
d=request("d")
k=request("k")
te=request("te")
de=request("de")
ke=request("ke")
conn.execute"update gsjs set gsjstext='"&content&"',gsjstexten='"&contenten&"',type_wj='"&type_wj&"',type_wjen='"&type_wjen&"',t='"&t&"',d='"&d&"',k='"&k&"',te='"&te&"',de='"&de&"',ke='"&ke&"' where gsjsid="&gsjsid&""%>ok