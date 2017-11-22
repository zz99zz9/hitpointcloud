  // 选项卡 鼠标经过切换
  $(".TAB li").mousemove(function(){
    var tab=$(this).parent(".TAB");
    var con=tab.attr("id");
    var on=tab.find("li").index(this);
    var con2='.pro4';
    $(this).addClass('on').siblings(tab.find("li")).removeClass('on');
    $(con).eq(on).show().siblings(con).hide();
    $(con2).eq(on).show().siblings(con2).hide();
  });
  // 选项卡 鼠标经过切换
  $(".TABa a").mousemove(function(){
      var tab=$(this).parent(".TABa");
      var con=tab.attr("id");
      var on=tab.find("a").index(this);
      $(this).addClass('on').siblings(tab.find("a")).removeClass('on');
      $(con).eq(on).show().siblings(con).hide();
  });
  // 选项卡 鼠标点击
  $(".TAB_CLICK li").click(function(){
    var tab=$(this).parent(".TAB_CLICK");
    var con=tab.attr("id");
    var on=tab.find("li").index(this);
    $(this).addClass('on').siblings(tab.find("li")).removeClass('on');
    $(con).eq(on).show().siblings(con).hide();
  });
  // 选项卡 鼠标点击
  $(".TAB_CLICKa a").click(function(){
      var tab=$(this).parent(".TAB_CLICKa");
      var con=tab.attr("id");
      var on=tab.find("a").index(this);
      $(this).addClass('on').siblings(tab.find("a")).removeClass('on');
      $(con).eq(on).show().siblings(con).hide();
  });
  //pc端导航滚动条切换
  $(window).scroll(function() {
      if ($(window).scrollTop() >= 10) {
          $(".navbar").addClass("sticky");
      } else {
          $(".navbar").removeClass("sticky");
      }
  });
  // pc端导航切换
  $(".XGnav .XGli").mousemove(function(){
      var tab=$(this).parent(".XGnav");
      var con=tab.attr("id");
      var on=tab.find(".XGli").index(this);
      $(this).addClass('on').siblings(tab.find(".XGli")).removeClass('on');
      $(".navbar").addClass("sticky2");
      if(on!=0&&on!=5&&on!=2){
      $(con).eq(on).fadeIn().siblings(con).fadeOut();
      }else{$(con).fadeOut();}
  });
  $(document).click(function(){
      $(".pc-nav").fadeOut();
      $(".navbar").removeClass("sticky2");
      $(".XGli").removeClass('on');
  });
  $(".pc-nav").mouseleave(function(){
     $('.pc-nav').fadeOut();
      $(".navbar").removeClass("sticky2");
      $(".XGli").removeClass('on');
   //   setTimeout("$('.pc-nav').fadeOut()",2000);
    //
  });
 //向下跳转锚

  $(document).ready(function() {
      $("a.topLink").click(function() {
          $("html, body").animate({
              scrollTop: $($(this).attr("href")).offset().top + "px"
          }, {
              duration: 500,
              easing: "swing"
          });
          return false;
      });
  });
//搜索页提交搜索
  $(".searchbtn").click(function(){
      var key=$("#searchkey").val();
      var url=location.href.split("?")[0] ;

   //   console.log(url);
      window.location.href=url+"?key="+key;
  });

  //显示弹窗并定时关闭弹窗
function showpop(){
	$('.pop').fadeIn();
	setTimeout("$('.pop').fadeOut()",2000);

	}
	$(".cpli").click(function(){
		showpop();
	});
	$('.pop').click(function(){
		$('.pop').fadeOut();
		});
  $(document).ready(function(){
      console.log("最后更新日期2017.5.23 by 任刚");
      $(".slidebar li").addClass("on");
      setTimeout("$('.slidebar li').removeClass('on')",5000);
      $(".footer1").fadeIn();

  });
  //关闭电脑端默认二级菜单
  if(!navigator.userAgent.match(/(iPhone|iPod|iPad|Android|ios)/i)){
      $(document).off('click.bs.dropdown.data-api');
  };
  //在线咨询
  function feedback(){
    //  alert("在线咨询弹窗")
$(".fbpop").fadeIn();
      $(".mask").fadeIn();
  }
  $(".pclose").click(function(){
      $(".fbpop").fadeOut();
      $(".mask").fadeOut();
  });

  $(".navbar-search-mag").click(function(){
    //  var skey=$('.navbar-key').val();?key="+skey+"
      window.location.href="search.asp";
  });



  //打印页面
  function printme(v)
  {
 //     var older = document.body.innerHTML;
   //  var onurl=location.href;
      document.body.innerHTML=$(v).html();
      window.print();
   //   document.body.innerHTML = older;
     // location.href=onurl;
      location.reload();
  }