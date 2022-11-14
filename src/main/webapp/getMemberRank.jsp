<%@page import="com.exam.vo.MemberRankVO"%>
<%@page import="com.exam.vo.VoteVO"%>
<%@page import="com.exam.vo.MemberVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	ArrayList<MemberRankVO> memberRankList=(ArrayList<MemberRankVO>)request.getAttribute("memberRankList");
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
		 	<th>후보번호</th>
		 	<th>성명</th>
		 	<th>총투표건수</th>
		 </tr>
		 <%	for(int i=0;i<memberRankList.size();i++){ 
			 MemberRankVO vo=memberRankList.get(i);
		 %>
		 <tr>
		 	<td><%=vo.getM_no() %></td>
		 	<td><%=vo.getM_name() %></td>
		 	<td><%=vo.getCnt() %></td>
		 
		 </tr>
		 <%} %>
		</table>
	</div>
	
</body>
</html>