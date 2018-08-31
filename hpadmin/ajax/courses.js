$(".save").click(function(){

    update();
    });
    /////////////
    function update(){
        tit=$("#tit").val();
        titen=$("#titen").val();
        price=$("#price").val();
        priceen=$("#priceen").val();
        ttime=$("#ttime").val();
        ttimeen=$("#ttimeen").val();
        pdf1=$("#pdf1").val();
        pdf2=$("#pdf2").val();


        txt1=$("#txt1").val();
        txt2=$("#txt2").val();
        txt3=$("#txt3").val();
        txt4=$("#txt4").val();
        txt1en=$("#txt1en").val();
        txt2en=$("#txt2en").val();
        txt3en=$("#txt3en").val();
        txt4en=$("#txt4en").val();
        uptime=$("#uptime").val();


        action=$("#action").val();
        Oid=$("#Oid").val();
        id=$("#id").val();

        var csy =[];//定义一个数组      
            $('input[name="csy"]:checked').each(function(){//遍历每一个名字为interest的复选框，其中选中的执行函数      
            csy.push($(this).val());//将选中的值添加到数组chk_value中      
            }); 
        csy=csy.toString()
        var cjs =[];//定义一个数组      
            $('input[name="cjs"]:checked').each(function(){//遍历每一个名字为interest的复选框，其中选中的执行函数      
            cjs.push($(this).val());//将选中的值添加到数组chk_value中      
            }); 
        cjs=cjs.toString()
        var crw =[];//定义一个数组      
            $('input[name="crw"]:checked').each(function(){//遍历每一个名字为interest的复选框，其中选中的执行函数      
            crw.push($(this).val());//将选中的值添加到数组chk_value中      
            }); 
        crw=crw.toString()
        var ccp =[];//定义一个数组      
            $('input[name="ccp"]:checked').each(function(){//遍历每一个名字为interest的复选框，其中选中的执行函数      
            ccp.push($(this).val());//将选中的值添加到数组chk_value中      
            }); 
	      ccp=ccp.toString()
    
      $.post("ajax/courses.asp",{
            action:action,
            tit:tit,
            titen:titen,
            price:price,
            priceen:priceen,
            ttime:ttime,
            ttimeen:ttimeen,
            pdf1:pdf1,
            pdf2:pdf2,
            csy:csy,
            cjs:cjs,
            crw:crw,
            ccp:ccp,
            txt1:txt1,
            txt2:txt2,
            txt3:txt3,
            txt4:txt4,
            txt1en:txt1en,
            txt2en:txt2en,
            txt3en:txt3en,
            txt4en:txt4en,
            uptime:uptime,
            oid:Oid,
            id:id
          },
          
        function(data,status){
          if(status=="success"){
        //	  console.log(data);
               if(data=="add"){
                 location.href='courses.Asp?sta=add'
              }else if(data=="mod"){
    
                  location.href='courses.Asp?sta=mod'
                  }else if(data=="del"){
    
                  location.href='courses.Asp?sta=del'
              }
            /* */
    
              }
        });
    }