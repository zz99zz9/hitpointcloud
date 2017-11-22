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
    txt2=$("#txt2").val();


    txt3=$("#txt3").val();
    pic1=$("#pic1").val();
    pic2=$("#pic2").val();
    pic3=$("#pic3").val();
    lpic1=$("#lpic1").val();
    lpic2=$("#lpic2").val();
    lpic3=$("#lpic3").val();
    links1=$("#links1").val();
    links2=$("#links2").val();
    links3=$("#links3").val();
    txt2en=$("#txt2en").val();
    txt3en=$("#txt3en").val();
  $.post("ajax/single1.asp",{
      content:content,
          contenten:contenten,
      gsjsid:gsjsid,
	  type_wj:type_wj,
          type_wjen:type_wjen,
          txt2:txt2,
          txt3:txt3,
          txt2en:txt2en,
          txt3en:txt3en,
          pic1:pic1,
          pic2:pic2,
          pic3:pic3,
          lpic1:lpic1,
          lpic2:lpic2,
          lpic3:lpic3,
          links1:links1,
          links2:links2,
          links3:links3,
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