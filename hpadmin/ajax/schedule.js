$(".save").click(function(){

    update();
    });
    /////////////
    function update(){
        ddate=$("#ddate").val();
        ddateen=$("#ddateen").val();
        tzone=$("#tzone").val();
        tzoneen=$("#tzoneen").val();
        ctime=$("#ctime").val();
        uptime=$("#uptime").val();
        ctimeen=$("#ctimeen").val();
        lid=$("#lid").val();
        action=$("#action").val();
        Oid=$("#Oid").val();
        id=$("#id").val();
        cid=$("#cid").val();
      $.post("ajax/schedule.asp",{
            action:action,
            ddate:ddate,
            ddateen:ddateen,
            tzone:tzone,
            tzoneen:tzoneen,
            ctime:ctime,
            ctimeen:ctimeen,
            uptime:uptime,
            oid:Oid,
            lid:lid,
            cid:cid,
            id:id
          },
          
        function(data,status){
          if(status=="success"){
        //	  console.log(data);
        var n=data.split("!");
               if(n[0]=="add"){
    
              location.href='schedule.Asp?sta=add&id='+n[1]
              }else if(n[0]=="mod"){
    
                  location.href='schedule.Asp?sta=mod&id='+n[1]
                  }else if(n[0]=="del"){
    
                  location.href='schedule.Asp?sta=del&id='+n[1]
              }
            /* */
    
              }
        });
    }