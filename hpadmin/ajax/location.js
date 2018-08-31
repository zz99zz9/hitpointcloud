$(".save").click(function(){

    update();
    });
    /////////////
    function update(){
    tit=$("#tit").val();
    
        titen=$("#titen").val();
        txt=$("#txt").val();
        uptime=$("#uptime").val();
        txten=$("#txten").val();

        action=$("#action").val();
        Oid=$("#Oid").val();
        id=$("#id").val();


    
      $.post("ajax/location.asp",{
            action:action,
            tit:tit,
            titen:titen,
            txt:txt,
            txten:txten,
            uptime:uptime,
            oid:Oid,
            id:id
          },
          
        function(data,status){
          if(status=="success"){
        //	  console.log(data);
               if(data=="add"){
    
              location.href='location.Asp?sta=add'
              }else if(data=="mod"){
    
                  location.href='location.Asp?sta=mod'
                  }else if(data=="del"){
    
                  location.href='location.Asp?sta=del'
              }
            /* */
    
              }
        });
    }