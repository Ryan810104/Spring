<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
    <jsp:include page="header.jsp"></jsp:include>
    <link href="/resources/css/CustomBeforeIndex.css" rel="stylesheet">
</head>

<body id="page-top">

    <!-- Navigation -->
    <nav class="navbar navbar-expand-sm navbar-dark fixed-top" id="mainNav" style="background: #6d7fcc; max-height: 5.1rem;">
        <div class="container">
            <a class="navbar-brand js-scroll-trigger" href="#page-top">EEIT107 Team2 Demo</a>
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                NoneShow
                <i class="fas fa-bars"></i>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav text-uppercase ml-auto">
                    <li class="nav-item">
                        <a class="nav-link js-scroll-trigger" href="#services">大綱</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link js-scroll-trigger" href="#about">導覽</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link js-scroll-trigger" href="#team">團隊</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link js-scroll-trigger" href="#contact">註冊</a>
                    </li>
                </ul>
                <div>
                </div>
            </div>
        </div>
        <button class="btn btn-info pull-right  mr-5" data-toggle="modal" data-target="#login">&nbsp&nbsp&nbsp&nbsp立即登入&nbsp&nbsp&nbsp&nbsp</button>
    </nav>

    <!-- Header -->
    <header class="masthead">
        <div class="container">
            <div class="intro-text">
                <div class="intro-lead-in"></div>
                <div class="intro-heading text-uppercase">歡迎您!</div>
                <a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger" href="#services">查看更多</a>
            </div>
        </div>
    </header>

    <!-- Services -->
    <section class="page-section" id="services">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading text-uppercase">大綱</h2>
                    <h3 class="section-subheading text-muted">網頁主功能介紹</h3>
                </div>
            </div>
            <div class="row text-center">
                <div class="col-md-4">
                    <span class="fa-stack fa-4x">
                        <i class="fas fa-circle fa-stack-2x text-primary"></i>
                        <i class="fas fa-shopping-cart fa-stack-1x fa-inverse"></i>
                    </span>
                    <h4 class="service-heading">購物</h4>
                    <p class="text-muted">一起來購物!</p>
                </div>
                <div class="col-md-4">
                    <span class="fa-stack fa-4x">
                        <i class="fas fa-circle fa-stack-2x text-primary"></i>
                        <i class="fas fa-dice fa-stack-1x fa-inverse"></i>
                    </span>
                    <h4 class="service-heading">開始遊戲</h4>
                    <p class="text-muted">我們有非常多的遊戲等您來挑戰!</p>
                </div>
                <div class="col-md-4">
                    <span class="fa-stack fa-4x">
                        <i class="fas fa-circle fa-stack-2x text-primary"></i>
                        <i class="fas fa-user-friends fa-stack-1x fa-inverse"></i>
                    </span>
                    <h4 class="service-heading">社交</h4>
                    <p class="text-muted">交朋友!</p>
                </div>
            </div>
        </div>
    </section>
    <!-- About -->
    <section class="bg-light page-section" id="about">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading text-uppercase">導覽</h2>
                    <h3 class="section-subheading text-muted">跟著步驟，開始遊戲並賺取金幣！</h3>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <ul class="timeline">
                        <li>
                            <div class="timeline-image">
                                <span class="fa-stack fa-4x">
                                    <i class="fas fa-clipboard-check fa-stack-1x fa-inverse"></i>
                                </span>
                            </div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                    <h6>第一步</h6>
                                    <h4 class="subheading">註冊</h4>
                                </div>
                                <div class="timeline-body">
                                    <p class="text-muted">填寫以下表格，成為我們的會員吧！</p>
                                </div>
                            </div>
                        </li>
                        <li class="timeline-inverted">
                            <div class="timeline-image">
                                <span class="fa-stack fa-4x">
                                    <i class="fas fa-dice fa-stack-1x fa-inverse"></i>
                                </span>
                            </div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                    <h6>第二步</h6>
                                    <h4 class="subheading">開始遊戲</h4>
                                </div>
                                <div class="timeline-body">
                                    <p class="text-muted">請選擇遊戲：</p>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="timeline-image">
                                <span class="fa-stack fa-4x">
                                    <i class="fas fa-dollar-sign fa-stack-1x fa-inverse"></i>
                                </span>
                            </div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                    <h6>第三步</h6>
                                    <h4 class="subheading">賺取金幣</h4>
                                </div>
                                <div class="timeline-body">
                                    <p class="text-muted">贏得遊戲，賺取金幣</p>
                                </div>
                            </div>
                        </li>
                        <li class="timeline-inverted">
                            <div class="timeline-image">
                                <span class="fa-stack fa-4x">
                                    <i class="fas fa-shopping-cart fa-stack-1x fa-inverse"></i>
                                </span>
                            </div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                    <h6>第四步</h6>
                                    <h4 class="subheading">購物</h4>
                                </div>
                                <div class="timeline-body">
                                    <p class="text-muted">利用您賺取的金幣，開始購物吧！</p>
                                </div>
                            </div>
                        </li>
                        <li class="timeline-inverted">
                            <div class="timeline-image">
                                <br>
                                <h4>開始遊戲</h4>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <!-- Team -->
    <section class=" page-section" id="team">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading text-uppercase">我們的團隊</h2>
                    <h3 class="section-subheading text-muted">團隊介紹</h3>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4">
                    <div class="team-member">
                        <img class="mx-auto rounded-circle" src="/resources/img/team/1.jpg" alt="">
                        <h4>陳峻宏</h4>
                        <p class="text-muted">Background Designer</p>
                        <ul class="list-inline social-buttons">
                            <li class="list-inline-item">
                                <a href="#">
                                    <i class="fas fa-bars"></i>
                                </a>
                            </li>
                            <li class="list-inline-item">
                                <a href="#">
                                    <i class="fab fa-facebook-f"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="team-member">
                        <img class="mx-auto rounded-circle" src="/resources/img/team/1.jpg" alt="">
                        <h4>劉九榕</h4>
                        <p class="text-muted">Background Designer</p>
                        <ul class="list-inline social-buttons">
                            <li class="list-inline-item">
                                <a href="#">
                                    <i class="fas fa-bars"></i>
                                </a>
                            </li>
                            <li class="list-inline-item">
                                <a href="#">
                                    <i class="fab fa-facebook-f"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="team-member">
                        <img class="mx-auto rounded-circle" src="/resources/img/team/1.jpg" alt="">
                        <h4>謝政餘</h4>
                        <p class="text-muted">Background Designer</p>
                        <ul class="list-inline social-buttons">
                            <li class="list-inline-item">
                                <a href="#">
                                    <i class="fas fa-bars"></i>
                                </a>
                            </li>
                            <li class="list-inline-item">
                                <a href="#">
                                    <i class="fab fa-facebook-f"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-4">
                    <div class="team-member">
                        <img class="mx-auto rounded-circle" src="/resources/img/team/1.jpg" alt="">
                        <h4>張人友</h4>
                        <p class="text-muted">Background Designer</p>
                        <ul class="list-inline social-buttons">
                            <li class="list-inline-item">
                                <a href="#">
                                    <i class="fas fa-bars"></i>
                                </a>
                            </li>
                            <li class="list-inline-item">
                                <a href="#">
                                    <i class="fab fa-facebook-f"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="team-member">
                        <img class="mx-auto rounded-circle" src="/resources/img/team/2.jpg" alt="">
                        <h4>王泉</h4>
                        <p class="text-muted">Background Designer</p>
                        <ul class="list-inline social-buttons">
                            <li class="list-inline-item">
                                <a href="#">
                                    <i class="fas fa-bars"></i>
                                </a>
                            </li>
                            <li class="list-inline-item">
                                <a href="#">
                                    <i class="fab fa-facebook-f"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="team-member">
                        <img class="mx-auto rounded-circle" src="/resources/img/team/3.jpg" alt="">
                        <h4>吳紹銘</h4>
                        <p class="text-muted">Background Designer</p>
                        <ul class="list-inline social-buttons">
                            <li class="list-inline-item">
                                <a href="#">
                                    <i class="fas fa-bars"></i>
                                </a>
                            </li>
                            <li class="list-inline-item">
                                <a href="#">
                                    <i class="fab fa-facebook-f"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <!-- Contact -->
    <section class="page-section" id="contact">
        <div class="container ">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading text-uppercase">註冊</h2>
                    <h3 class="section-subheading text-muted">//</h3>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4  m-auto" style="color:white">
                    <form class="needs-validation" novalidate>

                        <div class="mb-3">
                            <label for="identityCode">ID<span class="text-muted">(必要)</span></label>
                            <input type="text" class="form-control" id="identityCode" name="identityCode" placeholder="" required>
                            <div class="invalid-feedback">
                                不合法的ID
                            </div>
                          </div>
                        
                              
                      <div class="row">
                        <div class="col-md-6 mb-3">
                          <label for="firstTimePassword">密碼<span class="text-muted">(必要)</span></label>
                          <input type="password" class="form-control" id="firstTimePassword" name="firstTimePassword" placeholder="" value="" required>
                          <div class="invalid-feedback">
                            不合法的密碼
                          </div>
                        </div>
                        <div class="col-md-6 mb-3">
                          <label for="secondTimePassword">確認密碼<span class="text-muted">(必要)</span></label>
                          <input type="password" class="form-control" id="secondTimePassword" name="secondTimePassword" placeholder="" value="" required>
                          <div class="invalid-feedback">
                            跟前面不一樣ㄛ
                          </div>
                        </div>
                      </div>
                      
                      <div class="mb-3">
                        <label for="username">暱稱</label>
                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text">@</span>
                          </div>
                          <input type="text" class="form-control" id="username" name="username" placeholder="" required>
                          <div class="invalid-feedback" style="width: 100%;">
                            暱稱怪怪der
                          </div>
                        </div>
                      </div>
                      
                      <div class="mb-3">
                          <label for="phone">手機號碼</label>
                          <input type="text" class="form-control" id="phone" name="phone" placeholder="" required>
                          <div class="invalid-feedback">
                              請輸入合法號碼
                          </div>
                        </div>
          
                      <div class="mb-3">
                        <label for="email">E-mail </label>
                        <input type="email" class="form-control" id="email" name="email" placeholder="">
                        <div class="invalid-feedback">
                          請輸入合法電子郵件
                        </div>
                      </div>
                      <hr class="mb-4">
                      <button class="btn btn-primary btn-lg btn-block" type="submit">註冊</button>
                    </form>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->

    <!-- Modal login-->
    <div class="modal fade" id="login" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLongTitle">登入</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                </div>
                <div class="modal-body">
                    <form class="d-block mx-auto mb-4">
                        <h4 class="mb-3"></h4>
                        <div class="mb-3">
                            <label for="inputID">請輸入ID</label>
                            <input type="ID" id="inputID" name="inputID" class="form-control" placeholder="" required autofocus>
                        </div>
                      
                        <div class="mb-3">
                            <label for="inputPassword">請輸入密碼</label>
                            <input type="password" id="inputPassword" name="inputPassword" class="form-control" placeholder="" required>
                        </div>
                      
                        <div class="mb-3">
                          <label>
                            <input type="checkbox" value="remember-me"> Remember me
                          </label>
                        </div>
                        <hr>
                        <button class="btn btn-lg btn-primary btn-block" type="submit">登入</button>
                      </form>
                </div>
            </div>
        </div>
    </div>

<!--     Bootstrap core JavaScript -->
<!--     <script src="/resources/vendor/jquery/jquery.min.js"></script> -->
<!--     <script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script> -->

<!--     Plugin JavaScript -->
<!--     <script src="/resources/vendor/jquery-easing/jquery.easing.min.js"></script> -->

<!--     Contact form JavaScript -->
<!--     <script src="/resources/vendor/js/jqBootstrapValidation.js"></script> -->


<!--     Custom scripts for this template -->
<!--     <script src="/resources/vendor/js/agency.min.js"></script> -->



</body>
<script src="/resources/js/CustomBeforeIndex.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+TC&display=swap" rel="stylesheet">
    <style>
        * {
            font-family: 'Noto Sans TC', sans-serif;
        }
    </style>
</html>