$(".save").click(function(){

    update();
    });
    /////////////
    function update(){
        tit=$("#tit").val();
        titen=$("#titen").val();
        tit2=$("#tit2").val();
        tit2en=$("#tit2en").val();
        wdate=$("#wdate").val();
        wdateen=$("#wdateen").val();
        wtime=$("#wtime").val();
        wtimeen=$("#wtimeen").val();
        uptime=$("#uptime").val();
        action=$("#action").val();
        Oid=$("#Oid").val();
        id=$("#id").val();


    
      $.post("ajax/workshop.asp",{
            action:action,
            tit:tit,
            titen:titen,
            tit2:tit2,
            tit2en:tit2en,
            wdate:wdate,
            wdateen:wdateen,
            wtime:wtime,
            wtimeen:wtimeen,
            uptime:uptime,
            oid:Oid,
            id:id
          },
          
        function(data,status){
          if(status=="success"){
        //	  console.log(data);
               if(data=="add"){
    
              location.href='workshop.asp?sta=add'
              }else if(data=="mod"){
    
                  location.href='workshop.asp?sta=mod'
                  }else if(data=="del"){
    
                  location.href='workshop.asp?sta=del'
              }
            /* */
    
              }
        });
    }