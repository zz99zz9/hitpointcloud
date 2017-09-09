$(".save").click(function(){
console.log("O_O");
update();
});
$(".save2").click(function(){

update("cg");
});
/////////////
function update(cg){
	  BigClassName=$("#BigClass").val().split(";")[0];
  BigClassId=$("#BigClass").val().split(";")[1];
/*  SmallClassName=$("#SmallClass").val().split(";")[0];
 SmallClassId=$("#SmallClass").val().split(";")[1];*/
  Product_Id=$("#Product_Id").val();
  Title=$("#Title").val();
  uptime=$("#uptime").val();

  DefaultPicUrl=$("#DefaultPicUrl").val();
	DefaultPicUrl1=$("#DefaultPicUrl1").val();
  DefaultPicUrl2=$("#DefaultPicUrl2").val();
    DefaultPicUrl3=$("#DefaultPicUrl3").val();
	DefaultPicUrl4=$("#DefaultPicUrl4").val();
	alert(DefaultPicUrl3);
    content=$("#content").val();
	Orderid=$("#Orderid").val();
	picalt=$("#picalt").val();
	link=$("#link").val();
	tips=$("#tips").val();
	mj1=$("#mj1").val();
	mj2=$("#mj2").val();
	if(cg=="cg"){
 	 Passed=$("#Passed").is(!this.checked);
  }else{
	 Passed=$("#Passed").is(':checked') ;
  }
  console.log(Passed);
	Elite=$("#Elite").is(':checked')
	action=$("#action").val();//操作指令

	pro_id=$("#pro_id").val();//产品系统编号
	//后加值
	enTitle=$("#enTitle").val();
	 title2=$("#title2").val();
	Keywords=$("#Keywords").val();
	Description=$("#Description").val();
	title2en=$("#title2en").val();
	Keywordsen=$("#Keywordsen").val();
	Descriptionen=$("#Descriptionen").val();
	/*	jgzj=$("#jgzj").val();
	jgjj=$("#jgjj").val();
	cfjname=$("#cfj").val().split(";")[0];
	cfjid=$("#cfj").val().split(";")[1];

	clxname=$("#clx").val().split(";")[0];
	clxid=$("#clx").val().split(";")[1];

	clbname=$("#clb").val().split(";")[0];
	clbid=$("#clb").val().split(";")[1];*/
	content1=$("#content1").val();
	content2=$("#content2").val();
	content3=$("#content3").val();
	content4=$("#content4").val();
	content5=$("#content5").val();
	content6=$("#content6").val();
	content7=$("#content7").val();
	content8=$("#content8").val();
	content9=$("#content9").val();
	content10=$("#content10").val();
	content11=$("#content11").val();
	content12=$("#content12").val();
	content13=$("#content13").val();
	//二次新加
/*	ckfsname=$("#ckfs").val().split(";")[0];
 ckfsid=$("#ckfs").val().split(";")[1];*/
	wz=$("#wz").val();
	syq=$("#syq").val();
	jgsj=$("#jgsj").val();
	qt=$("#qt").val();
	hx=$("#hx").val();

//jquery获取复选框值      
            var ctdid =[];//定义一个数组      
            $('input[name="ctd"]:checked').each(function(){//遍历每一个名字为interest的复选框，其中选中的执行函数      
            ctdid.push($(this).val());//将选中的值添加到数组chk_value中      
            }); 
	ctdid=ctdid.toString()
var clxid =[];//定义一个数组      
            $('input[name="clx"]:checked').each(function(){//遍历每一个名字为interest的复选框，其中选中的执行函数      
            clxid.push($(this).val());//将选中的值添加到数组chk_value中      
            }); 
	clxid=clxid.toString()
	


  $.post("ajax/pro.asp",{
	  BigClassName:BigClassName,
	  BigClassId:BigClassId,
	  Product_Id:Product_Id,
/*	  uptime:uptime,*/
	  Title:Title,
	  title2:title2,
	  Keywords:Keywords,
	  Description:Description,
	  title2en:title2en,
	  Keywordsen:Keywordsen,
	  Descriptionen:Descriptionen,
	  tips:tips,
      content:content,
	  Orderid:Orderid,
      Passed:Passed,
	  Elite:Elite,
	  action:action,
	  pro_id:pro_id,
	  DefaultPicUrl:DefaultPicUrl,
          DefaultPicUrl2:DefaultPicUrl2,
          DefaultPicUrl3:DefaultPicUrl3,
          DefaultPicUrl1:DefaultPicUrl1,
	  //新增
	  enTitle:enTitle,
	  content1:content1,
 content2:content2,
 content3:content3,
	content4:content4,
		  content5:content5,
  content6:content6,
  content7:content7,
  content8:content8,
  content9:content9,
  content10:content10,
  content11:content11,
  content12:content12,
  content13:content13
},
	  
    function(data,status){
	  if(status=="success"){
		//  console.log(data);
		  /**/
		 if(data=="add"){
 					location.href='pro_list.Asp'
			}else if(data=="addcg"){
					location.href='pro_mod.Asp'
			}else if(data=="modcg"){
					location.href='pro_mod.Asp'
		 	 }else if(data=="mod"){
				  location.href='Pro_List.Asp?sta=mod'
			 }else if(data=="del"){
				  location.href='Pro_List.Asp?sta=del'
		  }
		/* */

		  }
    });
}