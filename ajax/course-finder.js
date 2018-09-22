function search(byrole,bytask,byproduct,yy){
    $.post("ajax/course-finder.asp",{
        byrole:byrole,
        bytask:bytask,
        byproduct:byproduct,
        yy:yy
  },
        
      function(data,status){
        if(status=="success"){
           // console.log(data);
            /**/
            var jsObjstr =JSON.parse(data);
          /* */
          var str='';
          for (var i=0;i<jsObjstr.length;i++)//
          {
              if(yy=="cn"){
                  url="courses-detail.asp";
              }else{
                  url="encourses-detail.asp";
              }
              str+='<a class="box" href="'+url+'?id='+jsObjstr[i].id+'">';
              str+='<img class="img-responsive" src="/portal/assets/img/services/course-finder-bg.jpg" >';    
              str+='<div class="caption simple-caption">';    
              str+='<div class="course-base">';        
              str+='<div class="ico-fonts">';            
              str+='<i class="icon-adv-pdf-html"></i>';           
              str+='</div>';            
              str+='<div class="course-title">';            
              str+=jsObjstr[i].tit;
              str+='</div>';            
              str+='</div>';       
              str+='<div class="course-overlay">';        
              str+=jsObjstr[i].tit2;
              str+='</div>';        
              str+='</div>';    
              str+='</a>';
          }
      $(".courseslist").html(str);  
            }
      });

}