<%@page import="com.exam.vo.VoteVO"%>
<%@page import="com.exam.vo.MemberVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	ArrayList<VoteVO> voteList=(ArrayList<VoteVO>)request.getAttribute("voteList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>과정평가형 실기 시험</title>
</head>
<body>
	<h1>투표검수조회</h1>
	
	<div style="text-align: center;margin: 0 auto;width:800px">
		<table>
		 <tr>
		 	<th>성명</th>
		 	<th>생년월일</th>
		 	<th>나이</th>
		 	<th>성별</th>
		 	<th>후보번호</th>
		 	<th>투표시간</th>
		 	<th>유권자확인</th>
		 </tr>
		 <%	for(int i=0;i<voteList.size();i++){ 
		 	VoteVO vo=voteList.get(i);
		 %>
		 <tr>
		 	<td><%=vo.getV_name() %></td>
		 	<td><%=vo.getBirth() %></td>
		 	<td><%=vo.getAge() %></td>
		 	<td><%=vo.getGender() %></td>
		 	<td><%=vo.getM_no() %></td>
		 	<td><%=vo.getVotetime() %></td>
		 	<td><%=vo.getConfirm() %></td>
		 
		 </tr>
		 <%} %>
		</table>
	</div>
	
</body>
</html>