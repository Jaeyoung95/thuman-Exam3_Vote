<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String filePath=request.getParameter("filePath");
	if(filePath==null){
		filePath="home";
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>지역구의원 투표 프로그램</title>
<link rel="stylesheet" href="css/design.css"/>
</head>
<body>
	<header>
		<h1>(과정평가형 정보처리산업기사) 지역구의원 투표 프로그램 ver 2020-05</h1>
	</header>
	<nav>
		<ul>
			<li><a href="GetMemberList">후보조회</a></li>
			<li><a href="index.jsp?filePath=addVote">투표하기</a></li>
			<li><a href="GetVoteList">투표검수조회</a></li>
			<li><a href="GetMemberRank">후보자등수</a></li>
			<li><a href="index.jsp">홈으로</a></li>
		</ul>
	</nav>
	<section>
		<jsp:include page='<%=filePath + ".jsp"%>'></jsp:include>
	</section>
	<footer>
		<p>copyright .....</p>
	</footer>
</body>
</html>