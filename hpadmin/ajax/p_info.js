$(".save").click(function(){
console.log("O_O");
update();
});
$(".save2").click(function(){

update("cg");
});
/////////////
function update(cg){


  Title=$("#prod_name").val();

    content=$("#content").val();

	action=$("#action").val();//操作指令
	id=$("#id").val();
	pro_id=$("#pid").val();//产品系统编号

	enTitle=$("#prod_nameen").val();
	Orderid=$("#Oid").val();
	content1=$("#content1").val();
  txt1=$("#txt1").val();
	txt2=$("#txt2").val();
	txt3=$("#txt3").val();
	txt4=$("#txt4").val();
	txt1en=$("#txt1en").val();
	txt2en=$("#txt2en").val();
	txt3en=$("#txt3en").val();
	txt4en=$("#txt4en").val();
  pic1=$("#pic1").val();
	console.log('111')
	pic2=$("#pic2").val();
	pic3=$("#pic3").val();
	pic4=$("#pic4").val();

  $.post("ajax/p_info.asp",{

	  Title:Title,
id:id,
      content:content,
	  Orderid:Orderid,

	  action:action,
	  pro_id:pro_id,
	  //新增
	  enTitle:enTitle,
	  content1:content1,
		txt1:txt1,
		txt2:txt2,
		txt3:txt3,
		txt4:txt4,
		txt1en:txt1en,
		txt2en:txt2en,
		txt3en:txt3en,
		txt4en:txt4en,
		pic1:pic1,
		pic2:pic2,
		pic3:pic3,
		pic4:pic4,
},
    function(data,status){
	  if(status=="success"){
		//  console.log(data);
		  /**/
		 if(data=="add"){
 					location.href='p_gnmk.Asp?ArticleID='+pro_id+'';
			}else if(data=="addcg"){
					location.href='pro_mod.Asp'
			}else if(data=="modcg"){
					location.href='pro_mod.Asp'
		 	 }else if(data=="mod"){
				  location.href='p_gnmk.Asp?sta=mod&ArticleID='+pro_id+'';
			 }else if(data=="del"){
				  location.href='p_gnmk.Asp?sta=del&ArticleID='+pro_id+'';
		  }
		/* */

		  }
    });
}