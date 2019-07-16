<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="/WEB-INF/jsp/fragment/header.jsp"></jsp:include>
</head>

<body>
<jsp:include page="/WEB-INF/jsp/fragment/main-sidebar.jsp"></jsp:include>
         <article class="content moe">
		<!-- WRITE YOUR CONTEXT HERE -->
		<div class="container">
		<div class="row">
				<div class="col-sm-12">
				<div class="my-3 p-3 bg-white rounded shadow-sm">
					<h6 class="border-bottom border-gray pb-2 mb-0">News</h6>	
					<div id = "shownewsdata">
					<div class="media text-muted pt-3">
						<p
							class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
							<strong class="d-block text-success">活動</strong>
							第101期百家樂超級彩金已開獎，中獎名單請<a href="#">入內查看</a>。
						</p>
					</div>
				</div>
				</div>	
			</div>
		</div>
		<nav aria-label="Page navigation example">
  <ul class="pagination">
    <li class="page-item">
      <a class="page-link" href="#" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
      </a>
    </li>
    <li class="page-item"><a class="page-link" href="#">1</a></li>
    <li class="page-item"><a class="page-link" href="#">2</a></li>
    <li class="page-item"><a class="page-link" href="#">3</a></li>
    <li class="page-item">
      <a class="page-link" href="#" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
      </a>
    </li>
  </ul>
</nav>
<div id = "modalinhere"></div>
		</div>
         </article>
<jsp:include page="/WEB-INF/jsp/fragment/footer.jsp"></jsp:include>
<jsp:include page="/WEB-INF/jsp/fragment/chat-room.jsp"></jsp:include>     
</body>
<script>
$(document).ready(function(){
	var text = "";
	var titlecolor = "";
	var newsmodal = "";
	$.get("/main/news/printall", function(Jdata) {
	for (var i = 0 ; i < Jdata.length ; i++){
		console.log(Jdata[i]["newsnum"]);
		if (Jdata[i]["title"] == '公告'){
			titlecolor = "<strong class=\"d-block text-success\">"+Jdata[i]["title"]+"</strong>";
		} else if (Jdata[i]["title"] == '活動') {
			titlecolor = "<strong class=\"d-block text-danger\">"+Jdata[i]["title"]+"</strong>"
		} else if (Jdata[i]["title"] == '遊戲') {
			titlecolor = "<strong class=\"d-block text-primary\">"+Jdata[i]["title"]+"</strong>"
		}
		text+=	"<div class=\"media text-muted pt-3\">"
		text+=	"<p class=\"media-body pb-3 mb-0 small lh-125 border-bottom border-gray\">"
		text+=	titlecolor;
		text+=	""+Jdata[i]["briefcontent"]+"<a  data-toggle=\"modal\" data-target=\"#exampleModalCenter"+Jdata[i]["newsnum"]+"\" href=\"#\">...詳細內容</a>。"
		text+=	"</p>"
		text+= "</div>"
		
		
			<!-- Modal -->
		newsmodal += "<div class=\"modal fade\" id=\"exampleModalCenter"+Jdata[i]["newsnum"]+"\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"exampleModalCenterTitle\" aria-hidden=\"true\">"
		newsmodal += " <div class=\"modal-dialog modal-dialog-centered\" role=\"document\">"
		newsmodal +=   "<div class=\"modal-content\">"
		newsmodal +=   "  <div class=\"modal-header\">"
		newsmodal +=   "    <h5 class=\"modal-title\" id=\"exampleModalCenterTitle\">"+Jdata[i]["title"]+"</h5>"
		newsmodal +=    "    <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">"
		newsmodal +=    "      <span aria-hidden=\"true\">&times;</span>"
		newsmodal +=    "    </button>"
		newsmodal +=    "  </div>"
		newsmodal +=    "  <div class=\"modal-body\">"
		newsmodal +=    "    <span>"+Jdata[i]["content"]+"</span>"
		newsmodal +=    "  </div>"
		newsmodal +=   "   <div class=\"modal-footer\">"
		newsmodal +=   "     <button type=\"button\" class=\"btn btn-secondary\" data-dismiss=\"modal\">關閉</button>"
		newsmodal +=   "   </div>"
		newsmodal +=  "  </div>"
		newsmodal += " </div>"
		newsmodal += "</div>"
		
		
	}
	$("#shownewsdata").html(text);
	$("#modalinhere").html(newsmodal);
	});
})
</script>
</html>
