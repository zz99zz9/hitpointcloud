$(".save").click(function(){
  content=$("#content").val();
    contenten=$("#contenten").val();
  gsjsid=$("#gsjsid").val();
type_wj=$("#type_wj").val();
    type_wjen=$("#type_wjen").val();
    t=$("#t").val();
    d=$("#d").val();
    k=$("#k").val();
    te=$("#te").val();
    de=$("#de").val();
    ke=$("#ke").val();
  $.post("ajax/single.asp",{
      content:content,
          contenten:contenten,
      gsjsid:gsjsid,
	  type_wj:type_wj,
          type_wjen:type_wjen,
  t:t,
  d:d,
  k:k,
  te:te,
  de:de,
  ke:ke},
	  
    function(data,status){
	  if(data=="ok" && status=="success"){
		  $("#alert").fadeIn();
					$("#alert").addClass("alert-success");
					$("#alert strong").html("操作成功!");
		  }
    });
});
/////////////