<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<button onclick="topFunction()" id="footbtn" title="Go to top">
	<i class="fas fa-angle-up"></i>
</button>


<script>
	window.onscroll = function() {
		scrollFunction()
	};
    function scrollFunction() {
        if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
            document.getElementById("footbtn").style.display = "block";
        } else {
            document.getElementById("footbtn").style.display = "none";
        }
    }
	// When the user clicks on the button, scroll to the top of the document
	function topFunction() {
		document.body.scrollTop = 0;
		document.documentElement.scrollTop = 0;
	}
</script>
<style>
#footbtn {
	display: none;
	position: fixed;
	bottom: 20px;
	right: 30px;
	z-index: 99;
	border: none;
	outline: none;
	cursor: pointer;
	border-radius: 4px;
}
</style>