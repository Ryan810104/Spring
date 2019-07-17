<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>




<!--NavBar-->
<nav id="sidebar" style="min-height: -webkit-fill-available">
	<div class="sidebar-header">
		<button type="button" id="sidebarCollapse" class="btn btn-danger">
			<i class="fas fa-align-left"></i>
		</button>

	</div>
	<ul class="list-unstyled CTAs" style="margin-bottom: -2rem;">
		<li style="text-align: center"><img
			class="mx-auto rounded-circle" src="/resources/img/team/1.jpg" alt=""
			style="max-width: 7rem;">
			<button type="button" class="btn btn-info " style="margin: 1rem;">Username</button>
		</li>
		<li></li>
		<li><a class="" href="#" style="text-align: center">遊戲幣 : <b>500P</b></a>
			<a class="" href="#" style="text-align: center">遊戲紀錄</a></li>
	</ul>

	<ul class="list-unstyled components">
<!-- 		<li class="active"><a href="#" data-toggle="collapse" -->
<!-- 			aria-expanded="false"> <i class="fas fa-home"></i> 首頁 -->
<!-- 		</a></li> -->
<!-- 		<li><a href="#"> <i class="fas fa-newspaper"></i> 活動消息 -->
<!-- 		</a> <a href="#pageSubmenu" data-toggle="collapse" aria-expanded="false" -->
<!-- 			class="dropdown-toggle"> <i class="fas fa-gamepad"></i>遊戲 -->
<!-- 		</a> -->
<!-- 			<ul class="collapse list-unstyled" id="pageSubmenu"> -->
<!-- 				<li><a href="#">Page 1</a></li> -->
<!-- 				<li><a href="#">Page 2</a></li> -->
<!-- 				<li><a href="#">Page 3</a></li> -->
<!-- 			</ul></li> -->

		<li><a href="http://localhost/admin/member/index"> <i class="far fa-comment-dots"></i>會員相關
		</a></li>
		<li><a href="http://localhost/admin/vip/index"> <i class="fas fa-sort-numeric-down"></i>Vip
		</a></li>
		<li><a href="/admin/toNews"> <i class="fas fa-cart-arrow-down"></i>發布訊息
		</a></li>
		<li><a href="/admin/complaint"> <i class="fas fa-envelope-open-text"></i>處理投訴
		</a></li>
		<li><a href="#"> <i class="fas fa-question"></i>幫助
		</a></li>
		<li><a href="#"> <i class="fas fa-paper-plane"></i>聯絡我們
		</a></li>
	</ul>


	<ul class="list-unstyled CTAs">
		<li><a href="/admin/memberBeans/index" class="download" style="text-align: center">回到使用者介面</a>
		</li>
	</ul>

</nav>
<!--NAV BAR end-->
<!-- dont ask me why need to link below css -->
   <link rel="stylesheet" href="/resources/css/CustomAfterIndex.css">
<script type="text/javascript">
	$(document).ready(function() {
		$('#sidebarCollapse').on('click', function() {
			$('#sidebar').toggleClass('active');
		});
	});
</script>

<style>
/* ---------------------------------------------------
    SIDEBAR STYLE
----------------------------------------------------- */

#sidebar a{
color:white;
}

a{
color:black;
}

.wrapper {
    display: flex;
    align-items: stretch;
}

#sidebar {
    min-width: 250px;
    max-width: 250px;
    background: #7386D5;
    color: #fff;
    transition: all 0.3s;
}

#sidebar.active {
    min-width: 80px;
    max-width: 80px;
    text-align: center;
}

#sidebar.active .sidebar-header h3,
#sidebar.active .CTAs {
    display: none;
}

#sidebar.active .sidebar-header strong {
    display: block;
}

#sidebar ul li a {
    text-align: left;
}

#sidebar.active ul li a {
    padding: 20px 10px;
    text-align: center;
    font-size: 0.85em;
}

#sidebar.active ul li a i {
    margin-right: 0;
    display: block;
    font-size: 1.8em;
    margin-bottom: 5px;
}

#sidebar.active ul ul a {
    padding: 10px !important;
}

#sidebar.active .dropdown-toggle::after {
    top: auto;
    bottom: 10px;
    right: 50%;
    -webkit-transform: translateX(50%);
    -ms-transform: translateX(50%);
    transform: translateX(50%);
}

#sidebar .sidebar-header {
    padding: 20px;
    background: #6d7fcc;
}

#sidebar .sidebar-header strong {
    display: none;
    font-size: 1.8em;
}

#sidebar ul.components {
    padding: 20px 0;
    border-bottom: 1px solid #47748b;
}

#sidebar ul li a {
    padding: 10px;
    font-size: 1.1em;
    display: block;
}

#sidebar ul li a:hover {
    color: #7386D5;
    background: #fff;
}

#sidebar ul li a i {
    margin-right: 10px;
}

#sidebar ul li.active>a,
a[aria-expanded="true"] {
    color: #fff;
    background: #6d7fcc;
}

a[data-toggle="collapse"] {
    position: relative;
}

#sidebar .dropdown-toggle::after {
    display: block;
    position: absolute;
    top: 50%;
    right: 20px;
    transform: translateY(-50%);
}

#sidebar ul ul a {
    font-size: 0.9em !important;
    padding-left: 30px !important;
    background: #6d7fcc;
}

#sidebar ul.CTAs {
    padding: 20px;
}

#sidebar ul.CTAs a {
    text-align: center;
    font-size: 0.9em !important;
    display: block;
    border-radius: 5px;
    margin-bottom: 5px;
}

#sidebar a.download {
    background: #fff;
    color: #7386D5;
}

#sidebar a.article,
#sidebar a.article:hover {
    background: #6d7fcc !important;
    color: #fff !important;
}


/* ---------------------------------------------------
    CONTENT STYLE
----------------------------------------------------- */

#content {
    width: 100%;
    padding: 20px;
    min-height: 100vh;
    transition: all 0.3s;
}


/* ---------------------------------------------------
    MEDIAQUERIES
----------------------------------------------------- */

@media (max-width: 768px) {
    #sidebar {
        min-width: 80px;
/*         max-width: 80px; */
        text-align: center;
/*         margin-left: -80px !important; */
    }
    .dropdown-toggle::after {
        top: auto;
        bottom: 10px;
        right: 50%;
        -webkit-transform: translateX(50%);
        -ms-transform: translateX(50%);
        transform: translateX(50%);
    }
    #sidebar.active {
        margin-left: 0 !important;
    }
    #sidebar .sidebar-header h3,
    #sidebar .CTAs {
        display: none;
    }
    #sidebar .sidebar-header strong {
        display: block;
    }
    #sidebar ul li a {
        padding: 20px 10px;
        text-align:center;
    }
    #sidebar ul li a span {
        font-size: 0.85em;
    }
    #sidebar ul li a i {
        margin-right: 0;
        display: block;
    }
    #sidebar ul ul a {
        padding: 10px !important;
    }
    #sidebar ul li a i {
        font-size: 1.3em;
    }
    #sidebar {
        margin-left: 0;
        font-family: 'Noto Sans TC', sans-serif;
    }
    #sidebarCollapse span {
        display: none;
    }
}


</style>