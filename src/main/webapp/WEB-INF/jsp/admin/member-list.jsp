<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>這是member.table目前有的內容</h1>
	<div>${memberList}</div>
	<div>${update}</div>
	<div>${insert}</div>
	<div>${deletesucceed}</div>
	<div>${findById}</div>
	<table id="showdata" >
	
	</table>
	<c:if test="${not empty findById}">
		<table>
				<c:url value="/admin/member/index" var="path">
					<c:param name="id" value="${findById.id}" />
					<c:param name="password" value="${findById.password}" />
					<c:param name="email" value="${findById.email}" />
					<c:param name="phone" value="${findById.phone}" />
				</c:url>
				<tr>
					<td><a href="${path}">${findById.id}</a></td>
					<td>${findById.password}</td>
					<td>${findById.email}</td>
					<td>${findById.phone}</td>
				</tr>

		</table>
	</c:if>
	
	
	<button onclick="location='/admin/member/index'">回index</button>
<script>
$.ajax({
	url:"/admin/member/query",
	type:"POST",
	success:function(data){
		var str="";
		$("#showdata").append("<thead><tr><th>id</th><th>email</th><th>password</th><th>phone</th></thead>");
		str+="<tbody>";
		$.each(data,function(key,value){
			str += "<tr>";
			for(i in value){
				str += "<td>"+value[i]+"</td>";
				id = Object.values(value)[0];
			}
			str += "<td><a id+'"+ id + "' href='' onclick='edit(this);return false'>edit</a></td>";
			str += "<td><a id+'"+ id + "' href='' onclick='del(this);return false'>delete</a></td>";
			str += "</tr>";
		})
		str+="</tbody>";
		$("#showdata").append(str);
	}
	
})

function edit(obj){
	
}
function del(obj){
	
}
</script>
</body>
</html>