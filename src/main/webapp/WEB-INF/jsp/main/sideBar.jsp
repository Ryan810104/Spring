<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

        <nav id="sidebar" style="min-height:-webkit-fill-available" >
            <div class="sidebar-header">
                <button type="button" id="sidebarCollapse" class="btn btn-info">
                    <i class="fas fa-align-left"></i>
                </button>

            </div>
            <ul class="list-unstyled CTAs" style="margin-bottom: -2rem;">
                <li style="text-align: center">

                    <img class="mx-auto rounded-circle" src="/resources/img/team/1.jpg" alt="" style="max-width: 7rem;">
                    <button type="button" class="btn btn-info " style="margin:1rem;">${userId}</button>
                </li>
                <li>

                </li>
                <li>

                    <a class="" href="#" style="text-align: center">遊戲幣 : <b>500P</b></a>
                    <a class="" href="#" style="text-align: center">遊戲紀錄</a>
                </li>
            </ul>

            <ul class="list-unstyled components">
                <li class="active">
                    <a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false">
                        <i class="fas fa-home"></i> 首頁
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fas fa-newspaper"></i> 活動消息
                    </a>
                    <a href="#pageSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">
                        <i class="fas fa-gamepad"></i>遊戲
                    </a>
                    <ul class="collapse list-unstyled" id="pageSubmenu">
                        <li>
                            <a href="#">Page 1</a>
                        </li>
                        <li>
                            <a href="#">Page 2</a>
                        </li>
                        <li>
                            <a href="#">Page 3</a>
                        </li>
                    </ul>
                </li>

                <li>
                    <a href="#">
                        <i class="far fa-comment-dots"></i>討論區
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fas fa-sort-numeric-down"></i>排行榜
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fas fa-cart-arrow-down"></i>購物
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fas fa-hand-holding-usd"></i>儲值
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fas fa-question"></i>幫助
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fas fa-paper-plane"></i>聯絡我們
                    </a>
                </li>
            </ul>


            <ul class="list-unstyled CTAs">
                <li>
                    <a href="#" class="download" style="text-align: center">登出</a>
                </li>
            </ul>

        </nav>
         <script type="text/javascript">
        $(document).ready(function() {
            $('#sidebarCollapse').on('click', function() {
                $('#sidebar').toggleClass('active');
            });
        });
    </script>