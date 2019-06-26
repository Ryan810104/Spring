<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="/WEB-INF/jsp/fragment/header.jsp"></jsp:include>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
  
</head>

<body>
<jsp:include page="/WEB-INF/jsp/fragment/main-sidebar.jsp"></jsp:include>
         <article class="content moe">
		<!-- WRITE YOUR CONTEXT HERE -->
		<!-- WRITE YOUR CONTEXT HERE -->
		<div class="container">
		 <div class="container h-100">
      <div class="d-flex justify-content-center h-100">
        <div class="searchbar">
          <input class="search_input" type="text" name="" placeholder="Search...">
          <a href="#" class="search_icon"><i class="fas fa-search"></i></a>
        </div>
      </div>
    </div>
    <hr>
    <div class="row">
		<div class="col-md-4">
            <div class="well well-sm">
                <div class="media">
                    <a class="thumbnail pull-left" href="#">
                        <img class="media-object" src="http://placehold.jp/7fbfff/003366/80x80.png?css=%7B%22border-radius%22%3A%2250%25%22%7D">
                    </a>
                    <div class="media-body">
                        <h4 class="media-heading">John Doe</h4>
                        <p>
                            <a href="#" class="btn btn-primary"><span class="glyphicon glyphicon-comment"></span> Message</a>
                            <a href="#" class="btn btn-xs btn-default"><span class="glyphicon glyphicon-heart"></span> Favorite</a>
                            <a href="#" class="btn btn-xs btn-default"><span class="glyphicon glyphicon-ban-circle"></span> Unfollow</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
      <div class="col-md-4">
            <div class="well well-sm">
                <div class="media">
                    <a class="thumbnail pull-left" href="#">
                        <img class="media-object" src="http://placehold.it/80">
                    </a>
                    <div class="media-body">
                        <h4 class="media-heading">John Doe</h4>
                		<p><span class="label label-info">10 photos</span> <span class="label label-primary">89 followers</span></p>
                        <p>
                            <a href="#" class="btn btn-xs btn-default"><span class="glyphicon glyphicon-comment"></span> Message</a>
                            <a href="#" class="btn btn-xs btn-default"><span class="glyphicon glyphicon-heart"></span> Favorite</a>
                            <a href="#" class="btn btn-xs btn-default"><span class="glyphicon glyphicon-ban-circle"></span> Unfollow</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
      <div class="col-md-4">
            <div class="well well-sm">
                <div class="media">
                    <a class="thumbnail pull-left" href="#">
                        <img class="media-object" src="http://placehold.it/80">
                    </a>
                    <div class="media-body">
                        <h4 class="media-heading">John Doe</h4>
                		<p><span class="label label-info">10 photos</span> <span class="label label-primary">89 followers</span></p>
                        <p>
                            <a href="#" class="btn btn-xs btn-default"><span class="glyphicon glyphicon-comment"></span> Message</a>
                            <a href="#" class="btn btn-xs btn-default"><span class="glyphicon glyphicon-heart"></span> Favorite</a>
                            <a href="#" class="btn btn-xs btn-default"><span class="glyphicon glyphicon-ban-circle"></span> Unfollow</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
	</div>
</div>
		<!-- WRITE YOUR CONTEXT HERE -->
		This is Friend Index 
		<!-- WRITE YOUR CONTEXT HERE -->
		<!-- WRITE YOUR CONTEXT HERE -->
         </article>
<jsp:include page="/WEB-INF/jsp/fragment/footer.jsp"></jsp:include>
<jsp:include page="/WEB-INF/jsp/fragment/chat-room.jsp"></jsp:include>     
</body>
<style>
.searchbar{
    margin-bottom: auto;
    margin-top: auto;
    height: 60px;
    background-color: #353b48;
    border-radius: 30px;
    padding: 10px;
    }

    .search_input{
    color: white;
    border: 0;
    outline: 0;
    background: none;
    width: 0;
    caret-color:transparent;
    line-height: 40px;
    transition: width 0.4s linear;
    }

    .searchbar:hover > .search_input{
    padding: 0 10px;
    width: 450px;
    caret-color:red;
    transition: width 0.4s linear;
    }

    .searchbar:hover > .search_icon{
    background: white;
    color: #e74c3c;
    }

    .search_icon{
    height: 40px;
    width: 40px;
    float: right;
    display: flex;
    justify-content: center;
    align-items: center;
    border-radius: 50%;
    color:white;
    }
</style>
</html>
