<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<button onclick="topFunction()" id="myBtn" title="Go to top">
	<i class="fas fa-angle-up"></i>
</button>
<footer class=" position-relative fixed-bottom">
	<p class="d-inline ">
		<a href="#">© iii - 107 - Team2</a>
	</p>
	<p class="d-inline text-success">×</p>
	<p class="d-inline ">
		<a href="#">關於我們</a>
	</p>
	<p class="d-inline text-success">×</p>
	<p class="d-inline ">
		<a href="#">技術支援</a>
	</p>
</footer>

<script>
	// When the user scrolls down 20px from the top of the document, show the button
	window.onscroll = function() {
		scrollFunction()
	};

	function scrollFunction() {
		if (document.body.scrollTop > 20
				|| document.documentElement.scrollTop > 20) {
			document.getElementById("myBtn").style.display = "block";
		} else {
			document.getElementById("myBtn").style.display = "none";
		}
	}

	// When the user clicks on the button, scroll to the top of the document
	function topFunction() {
		document.body.scrollTop = 0;
		document.documentElement.scrollTop = 0;
	}
</script>
<style>
#myBtn {
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