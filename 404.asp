<!--#include file="inc/conn.asp"-->
<!--#include file="inc/Config.Asp"-->
<!--#include file="inc/Function.asp"-->
<!--#include file="inc/Inc.Asp"-->
<%
dim tdkid
tdkid=8
%>
<!--#include file="inc/header.Asp"-->
<!--通用结束
<link rel="stylesheet" href="xgwl/css/8.css"/>-->
<link rel="stylesheet" href="xgwl/css/getdemo.css"/>
<!----广告-->
<div class="toped">


</div>

<!---广告结束 ---->

<div class="part1 ">
<div class="container">
<div class="row">
<center><br><br><br><br>
<a href="index.asp"><img src="xgwl/img/1/404.gif"></a>
<h3 style="color:#666;font-weight:100;font-size:24px;">抱歉，您访问的页面找不到</h3>
<p>将在 <span id="mes" style="color:#ff6600;">5</span> 秒钟后返回到首页！</p>
    <script>
    var i = 5;
    var timer;
    timer = setInterval("fun()", 1000);

    function fun() {
        if (i == 0) {
            window.location.href = "http://www.hitpointcloud.com/index.asp";
            clearInterval(timer);
        }
        document.getElementById("mes").innerHTML = i;
        i--;
    }
    </script>
</center>

</div>
</div>
</div>
 	 <!--footer-->
<!--#include file="inc/footer.Asp"-->
<!--#include file="inc/sidebar.asp"-->

</body>
</html>
