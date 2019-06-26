<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
    <aside class="sidebar moe">
        <header class="sidebar-header moe">
            <figure class="sidebar-avatar moe">
                <img class="sidebar-avatar-in" src="http://vignette1.wikia.nocookie.net/adventuretimewithfinnandjake/images/e/ec/Princess_Bubblegum_7.png/revision/latest?cb=20130206231030"
                />
                <img class="sidebar-avatar-logo moe" src="https://tw.beanfun.com/bnb/images/game/5/image400.gif" />
            </figure>

            <div class="sidebar-title moe username-line-height">${sessionScope.UID}</div>
            <div class="sidebar-title moe">500 p</div>

        </header>

        <nav class="sidebar-nav" role="navigation">
            <ul>
                <li class="sidebar-nav-item moe  active">
                    <i class="sidebar-nav-item-icon fa fa-th-large"></i>
                    <a class="sidebar-nav-item-zelda moe text-line-height">回到首頁</a>
                </li>
                <li class="sidebar-nav-item moe">
                    <i class="sidebar-nav-item-icon fa fa-newspaper"></i>
                    <a class="sidebar-nav-item-zelda moe text-line-height" href="#">活動訊息</a>
                </li>
                <li class="sidebar-nav-item moe">
                    <i class="sidebar-nav-item-icon fa fa-gamepad"></i>
                    <a class="sidebar-nav-item-zelda moe text-line-height">遊戲列表</a>
                </li>
                <li class="sidebar-nav-item moe">
                    <i class="sidebar-nav-item-icon fa fa-envira"></i>
                    <a class="sidebar-nav-item-zelda moe text-line-height">儲值金幣</a>
                </li>
                <li class="sidebar-nav-item moe">
                    <i class="sidebar-nav-item-icon fa fa-cart-arrow-down"></i>
                    <a class="sidebar-nav-item-zelda moe text-line-height">購物商城</a>
                </li>
                <li class="sidebar-nav-item moe">
                    <i class="sidebar-nav-item-icon fas fa-user-friends"></i>
                    <a class="sidebar-nav-item-zelda moe text-line-height">好友系統</a>
                </li>
                <li class="sidebar-nav-item moe">
                    <i class="sidebar-nav-item-icon fa fa-area-chart"></i>
                    <a class="sidebar-nav-item-zelda moe text-line-height">遊戲排行</a>
                </li>
                <li class="sidebar-nav-item moe">
                    <i class="sidebar-nav-item-icon fa fa-cog"></i>
                    <a class="sidebar-nav-item-zelda moe text-line-height">使用者設定</a>
                </li>
                <li class="sidebar-nav-item moe">
                    <i class="sidebar-nav-item-icon fa fa-sign-out"></i>
                    <a class="sidebar-nav-item-zelda moe text-line-height">登出</a>
                </li>
            </ul>
        </nav>

        <footer class="sidebar-footer">
            <span class="sidebar-footer-icon moe">···</span>
            <span class="sidebar-footer-label moe">· · ·</span>
        </footer>
    </aside>
        <main class="main moe">
        <span class="toggle">
            <!-- fa-angle-double-left fa-bars fa-th-list -->
            <i class="fa fa-bars"></i>
        </span>
        <hr>
<style>
    /*  Estilos Generales  */

    *,
    *:before,
    *:after {
        box-sizing: border-box;
        margin: 0;
        padding: 0;
    }

    html,
    body {
        max-width: 100%;
        width: 100%;
        height: 100%;
        font-family: 'Noto Sans TC', sans-serif;
        font-weight: 300;
        font-size: 10px;
        background: #e0e0e0;
        display: grid;
        grid-template-columns: 4.6rem 15.4rem calc(100vw - 20rem);
        grid-template-rows: auto;
    }

    h1,
    h2,
    p {
        line-height: 1.5;
        margin-bottom: .8rem;
        margin-top: 1.2rem;
    }

    h1 {
        font-size: 3.2rem;
    }

    h2 {
        font-size: 2rem;
    }

    ul {
        list-style: none;
    }

    img {
        border-style: none;
    }

    /* Barra Lateral */

    .sidebar {
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: space-between;
        position: relative;
        font-size: 1.4rem;
        width: 100%;
        color: #b0b0b0;
        background-color: #212121;
        /*overflow: hide;*/
    }

    .sidebar a {
        text-decoration: none;
        color: #b0b0b0;
    }

    .sidebar-avatar img {
        border-radius: 50%;
        height: 100%;
        width: 100%;
        margin: 0;
    }

    .sidebar-avatar {
        border-radius: 50%;
        margin: 0;
        position: relative;
    }

    .sidebar-avatar-in {
        background: #e0e0e0;
        padding: 3%;
    }

    .sidebar-avatar-in:hover {
        background: #ff88f0;
        cursor: pointer;
    }

    .sidebar-avatar .sidebar-avatar-logo {

    background: rgba(18, 19, 17, 0.57);
    bottom: -0.5rem;
    height: 25%;
    padding: 4%;
    position: absolute;
    right: 1rem;
    width: 25%;
    cursor: pointer;

    }

    .sidebar-avatar-logo:hover {
        background: #020202;
        cursor: pointer;
    }

    .sidebar-title {
        margin: -2rem 0 0 0;
        font-size: 1.6rem;
    }

    .sidebar-title:hover {
        color: #ff88f0;
        cursor: pointer;
    }

    .sidebar-header {
        margin: .8rem 0 .8rem 0;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: space-around;
    }

    .sidebar-nav {
        flex-grow: 1;
        width: 100%;
    }

    .sidebar-nav-item {}

    .sidebar-nav-item:hover {
        background-color: #323232;
        cursor: pointer;
    }

    .sidebar-nav-item-icon {
        position: absolute;
        font-size: 1.8rem;
    }

    .sidebar-nav-item-zelda {
        position: absolute;
        font-size: 1.6rem;
        padding: .2rem 0 0 3rem;
    }

    .sidebar-footer {
        height: 3rem;
        width: 100%;
        font-size: 1rem;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;

    }

    .sidebar-footer:hover {
        cursor: pointer;
        background-color: #0f0f0f;
    }

    /* Iconos de colores */

    .active .fa-th-large,
    .active>.fa-th-large+a {
        color: white;
    }

    .active .fa-newspaper,
    .active>.fa-newspaper+a {
        color: #80deea;
    }

    .active .fa-gamepad,
    .active>.fa-gamepad+a {
        color: #ba68C8;
    }

    .active .fa-envira,
    .active>.fa-envira+a {
        color: #adff2f;
    }

    .active .fa-cart-arrow-down,
    .active>.fa-cart-arrow-down+a {
        color: #2196F3;
    }

    .active .fa-user-friends,
    .active>.fa-user-friends+a {
        color: #f44336;
    }

    .active .fa-area-chart,
    .active>.fa-area-chart+a {
        color: #ffd54f;
    }

    .active .fa-cog,
    .active>.fa-cog+a {
        color: #8d6e63;
    }

    .active .fa-sign-out,
    .active>.fa-sign-out+a {
    	color:#2cec72;
    }

    /* Contenido */

    .main {
        padding: 2rem 2rem 2rem 2rem;
        font-size: 1.4rem;
    }

    .toggle {
        font-size: 2rem;
    }

    .content {
        text-align: justify;
    }

    /********************************************
Inicio Primer Estado: Colapsado (Default:MOE) 
*********************************************/

    .sidebar.moe {
        grid-column: 1 / 2;
        grid-row: 1 / 2;
    }

    .sidebar-header.moe {
        height: 4.5rem;
        width: 4.5rem;
        color: rgba(255, 0, 0, 0);
    }

    .sidebar-avatar.moe {
        height: 85%;
        width: 85%;
    }

    .sidebar-avatar-logo.moe {
        display: none;
    }

    .sidebar-title.moe {
        display: none;
    }

    .sidebar-nav-item.moe {
        padding: 1rem 0 2.8rem 1.5rem;
    }

    .sidebar-nav-item-zelda.moe {
        opacity: 0;
        width: 0rem;
    }

    .sidebar-footer-icon.moe {
        display: block;
        font-size: 1.5rem;
    }

    .sidebar-footer-label.moe {
        display: none;
    }

    .main.moe {
        grid-column: 2 / 4;
        grid-row: 1 / 2;
    }

    .content.moe {
        padding: 1.5rem 4rem 1.5rem 4rem;
        transition: .8s ease;
    }


    /************************************
Inicio Segundo Estado: Expandido (EX)
*************************************/

    .sidebar.ex {
        grid-column: 1 / 3;
        grid-row: 1 / 2;
    }

    .sidebar-header.ex {
        height: 20rem;
        width: 20rem;
        transition: .2s ease;
    }

    .sidebar-avatar.ex {
        height: 60%;
        width: 60%;
        transition: 1.2s ease;
    }

    .sidebar-avatar-logo.ex {
        display: block;
    }

    .sidebar-title.ex {
        display: block;
        transition: 4s ease;
    }

    .sidebar-nav-item.ex {
        padding: 1rem 0 2.8rem 4.5rem;
        transition: 1.2s ease;
    }

    .sidebar-nav-item-zelda.ex {
        transition: .6s ease;
    }

    .sidebar-footer-icon.ex {
        display: none;
    }

    .sidebar-footer-label.ex {
        display: block;
        font-size: 1.5rem;
    }

    .main.ex {
        grid-column: 3 / 4;
        grid-row: 1 / 2;
    }

    .content.ex {
        padding: 0 2rem 0 2rem;
        transition: .8s ease;
    }

    /************************************
Inicio Tercer Estado: Oculto (OK)
*************************************/

    .sidebar.ok {
        display: none;
    }

    .sidebar-header.ok {
        display: none;
    }

    .sidebar-avatar.ok {
        display: none;
    }

    .sidebar-avatar-logo.ok {
        display: none;
    }

    .sidebar-title.ok {
        display: none;
    }

    .sidebar-nav-item.ok {
        display: none;
    }

    .sidebar-nav-item-zelda.ok {
        display: none;
    }

    .sidebar-footer-icon.ok {
        display: none;
    }

    .sidebar-footer-label.ok {
        display: none;
    }

    .main.ok {
        grid-column: 1 / 4;
        grid-row: 1 / 2;
    }

    .content.ok {
        padding: 2.5rem 5rem 2.5rem 5rem;
        transition: 1.2s ease;
    }
    .text-line-height{
    	line-height:1rem;
    }
    .username-line-height{
   	   line-height: 7rem;
    	
    }
</style>
<script type="text/javascript" src="/resources/js/windowstop.js"></script>
    <script>

var hamburguesa = document.querySelector('.toggle');
        hamburguesa.addEventListener('click', function () {


            if (document.querySelector('.ex')) {
                var expandida = document.querySelector('.ex');
                var pivote = expandida.classList.contains('ex');
                console.log('Existe un elemento ocultable: ' + pivote);

                while (pivote == true) {

                    if (window.CP.shouldStopExecution(1)) { break; }
                    expandida.classList.remove('ex');
                    expandida.classList.add('ok');

                    if (document.querySelector('.ex')) {
                        var expandida = document.querySelector('.ex');
                        console.log('Aun existe un elemento ocutable.');
                    } else {
                        var pivote = false;
                        var expandida = false;
                        console.log('Ya no existe ningun elemento ocutable.');
                        if (document.querySelector('.fa-angle-double-left')) {
                            var fonta = document.querySelector('.fa-angle-double-left');
                            fonta.classList.remove('fa-angle-double-left');
                            fonta.classList.add('fa-list-ul');
                            console.log('Cambiado Icono Toggle');
                        }
                    } // else
                }
                window.CP.exitedLoop(1);
                // end while 1
            } else if (document.querySelector('.moe')) {
                var colapsada = document.querySelector('.moe');
                var pivote = colapsada.classList.contains('moe');
                console.log('No existe un elemento ocultable, encontrado uno expandible: ' + pivote);

                while (pivote == true) {
                    if (window.CP.shouldStopExecution(2)) { break; }
                    colapsada.classList.remove('moe');
                    colapsada.classList.add('ex');

                    if (document.querySelector('.moe')) {
                        var colapsada = document.querySelector('.moe');
                        console.log('Aun existe un elemento expandible.');
                    } else {
                        var pivote = false;
                        var colapsada = false;
                        console.log('Ya no existe ningun elemento expandible.');
                        if (document.querySelector('.fa-bars')) {
                            var fonta = document.querySelector('.fa-bars');
                            fonta.classList.remove('fa-bars');
                            fonta.classList.add('fa-angle-double-left');
                            console.log('Cambiado Icono Toggle');
                        }
                    } // end else
                }
                window.CP.exitedLoop(2);
                // end while 2
            } else if (document.querySelector('.ok')) {
                var oculta = document.querySelector('.ok');
                var pivote = oculta.classList.contains('ok');
                console.log('No existe un elemento expandible, encontrado uno mostrable: ' + pivote);

                while (pivote == true) {                    
                    if (window.CP.shouldStopExecution(3)) { break; }
                    oculta.classList.remove('ok');
                    oculta.classList.add('moe');

                    if (document.querySelector('.ok')) {
                        var oculta = document.querySelector('.ok');
                        console.log('Aun existe un elemento mostrable.');
                    } else {
                        var pivote = false;
                        var oculta = false;
                        console.log('Ya no existe ningun elemento mostrable.');
                        if (document.querySelector('.fa-list-ul')) {
                            var fonta = document.querySelector('.fa-list-ul');
                            fonta.classList.remove('fa-list-ul');
                            fonta.classList.add('fa-bars');
                            console.log('Cambiado Icono Toggle');
                        }
                    } // end else
                }
                window.CP.exitedLoop(3);
                // end while 3
            } else {
                console.log('NO debes ver esto');
            }
        })

        var nav = document.querySelectorAll('.sidebar-nav-item');

        nav[0].addEventListener('click', function () { var clica = nav[0]; var activo = document.querySelector('.active'); if (clica !== activo) { activo.classList.remove('active'); clica.classList.add('active'); console.log("1 activado"); } else { console.log("nulo"); } })

        nav[1].addEventListener('click', function () { var clica = nav[1]; var activo = document.querySelector('.active'); if (clica !== activo) { activo.classList.remove('active'); clica.classList.add('active'); console.log("2 activado"); } else { console.log("nulo"); } })

        nav[2].addEventListener('click', function () { var clica = nav[2]; var activo = document.querySelector('.active'); if (clica !== activo) { activo.classList.remove('active'); clica.classList.add('active'); console.log("3 activado"); } else { console.log("nulo"); } })

        nav[3].addEventListener('click', function () { var clica = nav[3]; var activo = document.querySelector('.active'); if (clica !== activo) { activo.classList.remove('active'); clica.classList.add('active'); console.log("4 activado"); } else { console.log("nulo"); } })

        nav[4].addEventListener('click', function () { var clica = nav[4]; var activo = document.querySelector('.active'); if (clica !== activo) { activo.classList.remove('active'); clica.classList.add('active'); console.log("5 activado"); } else { console.log("nulo"); } })

        nav[5].addEventListener('click', function () { var clica = nav[5]; var activo = document.querySelector('.active'); if (clica !== activo) { activo.classList.remove('active'); clica.classList.add('active'); console.log("6 activado"); } else { console.log("nulo"); } })

        nav[6].addEventListener('click', function () { var clica = nav[6]; var activo = document.querySelector('.active'); if (clica !== activo) { activo.classList.remove('active'); clica.classList.add('active'); console.log("7 activado"); } else { console.log("nulo"); } })

        nav[7].addEventListener('click', function () { var clica = nav[7]; var activo = document.querySelector('.active'); if (clica !== activo) { activo.classList.remove('active'); clica.classList.add('active'); console.log("8 activado"); } else { console.log("nulo"); } })

        nav[8].addEventListener('click', function () { var clica = nav[8]; var activo = document.querySelector('.active'); if (clica !== activo) { activo.classList.remove('active'); clica.classList.add('active'); console.log("9 activado"); } else { console.log("nulo"); } })


    //# sourceURL=pen.js

    </script>

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
