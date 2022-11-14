<%@page import="com.exam.vo.MemberVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	ArrayList<MemberVO> memberList=(ArrayList<MemberVO>)request.getAttribute("memberList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>과정평가형 실기 시험</title>
</head>
<body>
	<h1>후보조회</h1>
	
	<div style="text-align: center;margin: 0 auto;width:800px">
		<table>
		 <tr>
		 	<th>후보번호</th>
		 	<th>성명</th>
		 	<th>소속정당</th>
		 	<th>학력</th>
		 	<th>주민번호</th>
		 	<th>지역구</th>
		 	<th>대표전화</th>
		 </tr>
		 <%	for(int i=0;i<memberList.size();i++){ 
		 	MemberVO vo=memberList.get(i);
		 %>
		 <tr>
		 	<td><%=vo.getM_no() %></td>
		 	<td><%=vo.getM_name() %></td>
		 	<td><%=vo.getP_name() %></td>
		 	<td><%=vo.getP_school() %></td>
		 	<td><%=vo.getJumin() %></td>
		 	<td><%=vo.getM_city() %></td>
		 	<td><%=vo.getTel() %></td>
		 
		 </tr>
		 <%} %>
		</table>
	</div>
	
</body>
</html>