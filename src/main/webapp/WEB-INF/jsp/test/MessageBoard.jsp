<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import="java.sql.*"  %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="/WEB-INF/jsp/fragment/header.jsp"></jsp:include>
</head>

<body>
<jsp:include page="/WEB-INF/jsp/fragment/main-sidebar.jsp"></jsp:include>
         <article class="content moe">
		<c:choose>
       <c:when test="${Result==1}" >
           <script>
	  alert("新增成功");
		</script>
       </c:when>
       <c:when test="${Result==2}">   
       <script type="text/javascript">     
      alert("新增失敗");        
       </script>
       </c:when>
       <c:when test="${Result==2}">   
       <script type="text/javascript">     
      alert("新增失敗");        
       </script>
       </c:when>
</c:choose>



<form action="/admin/mboard/mboardinsertForm" method="Post" name="MessageBoardForm">
  messageboarMemberId : <input type="text" name="mboardMemberId" />
  messageboardTitle: <input type="text" name="mboardTitle" />
  messageboardMessage: <input type="text" name="mboardMessage" />
  <input type="submit" value="新增資料" />
</form>



<%
	Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
	String connUrl = "jdbc:sqlserver://localhost:1433;databaseName=FinalProject";
	Connection conn=DriverManager.getConnection(connUrl,"sa","passw0rd");
	
	String qryStmt="SELECT mboard_member_id FROM messageboard";
	PreparedStatement stmt = conn.prepareStatement(qryStmt);
	ResultSet rs = stmt.executeQuery();
	
	String str = "<select name='mboard_member_id'>";
	String mboard_member_id;
	while(rs.next()){
		mboard_member_id=rs.getString("mboard_member_id");
		str += "<option value='"+ mboard_member_id +"'>"+ mboard_member_id;
		
	}
	str += "</select>";
	out.print("查詢資料庫資料:"+str);
	conn.close();
%>

<form action="/admin/mboard/mboardinsertForm1" method="Post" name="MessageBoardForm1">
  <input type="submit" value="查詢資料" />
</form>

<table border="1">
 <c:forEach var="a"  begin="0" end="${aaaLength}">
 <tr>
 <td>${Result3[a].mboardMemberId}</td>
 <td>${Result3[a].mboardTitle}</td>
 <td>${Result3[a].mboardMessage}</td>
 <td>${Result3[a].mboardMessageTime}</td>
 </tr>
 </c:forEach>
</table>


<!-- JavaScript & jQuery 版本-->

<!-- HTML part -->

<form action="/somewhere/to/upload" enctype="multipart/form-data">

   <input type="file" id="progressbarTWInput" accept="image/gif, image/jpeg, image/png"/ >

   <img id="preview_progressbarTW_img" src="#" />

</form>

<!-- JavaScript part -->

<script>

$("#progressbarTWInput").change(function(){

  readURL(this);

});

 

function readURL(input){

  if(input.files && input.files[0]){

    var reader = new FileReader();

    reader.onload = function (e) {

       $("#preview_progressbarTW_img").attr('src', e.target.result);

    }

    reader.readAsDataURL(input.files[0]);

  }

}

</script>




    









         </article>
<jsp:include page="/WEB-INF/jsp/fragment/footer.jsp"></jsp:include>
<jsp:include page="/WEB-INF/jsp/fragment/chat-room.jsp"></jsp:include>     
</body>
</html>
