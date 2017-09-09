<h1 id="anchor">Lorem Ipsum</h1>
<div style="height:500px;background:#666;"></div>
<div style="height:500px;background:#333;"></div>
<div style="height:500px;background:#ff6c60;"></div>
<p><a href="#anchor" class="topLink">Back to Top</a></p>
<script src="xgwl/js/lib/jquery.js"></script>
 <script>
$(document).ready(function() {
    $("a.topLink").click(function() {
              console.log("#_#");
              alert("$_$");
        $("html, body").animate({
            scrollTop: $($(this).attr("href")).offset().top + "px"
        }, {
            duration: 500,
            easing: "swing"
        });
        return false;
    });
});
</script>