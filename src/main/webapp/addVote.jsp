<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>과정평가형 실기 시험</title>
</head>
<body>
	<h1>투표하기</h1>
	
	<div style="text-align: center;margin: 0 auto;width:800px">
	<form name="input">
		<table class="input">
		 	<tr>
		 		<th>주민번호</th>
		 		<td> <input type="text" size="30" name="jumin"> &nbsp;&nbsp; 예 : 8906153154726</td>
		 	</tr>
		 	<tr>
		 		<th>성명</th>
		 		<td> <input type="text" name="name"> </td>
		 	</tr>
		 	<tr>
		 		<th>투표번호</th>
		 		<td> 
		 			<select name="voteNo">
		 			  <option value="">--후보 선택--</option>	
		 			  <option value="1">[1] 김후보</option>
		 			  <option value="2">[2] 이후보</option>
		 			  <option value="3">[3] 박후보</option>
		 			  <option value="4">[4] 조후보</option>
		 			  <option value="5">[5] 최후보</option>
		 			</select> 
		 		</td>
		 	</tr>
		 	<tr>
		 		<th>투표시간</th>
		 		<td> <input type="text" name="voteTime"></td>
		 	</tr>
		 	<tr>
		 		<th>투표장소</th>
		 		<td> <input type="text" name="voteArea"></td>
		 	</tr>
		 	<tr>
		 		<th>유권자확인</th>
		 		<td> <input type="radio" name="confirm" value="Y"> 확인 &nbsp;&nbsp;&nbsp;<input type="radio" name="confirm" value="N"> 미확인</td>
		 	</tr>
		 	<tr>
		 		<th colspan="2" style="text-align: center;"> <button onclick="vote();return false;">투표하기</button> <button>다시하기</button> </th>
		 	</tr>
		</table>
	</form>
		
	</div>
	
</body>

	<script type="text/javascript">
		function vote(){
			var jumin=document.input.jumin.value;
			var name=document.input.name.value;
			var voteNo=document.input.voteNo.value;
			var voteTime=document.input.voteTime.value;
			var voteArea=document.input.voteArea.value;
			var confirm=document.input.confirm.value;
			
			if(jumin.legnth==0 || jumin==""){
				alert('주민번호가 입력되지 않았습니다!');
				document.input.jumin.focus();
			}else if(name.legnth==0 || name==""){
				alert('성명이 입력되지 않았습니다!');
			}else if(voteNo.legnth==0 || voteNo==""){
				alert('후보번호가 선택되지 않았습니다!');
			}else if(voteTime.legnth==0 || voteTime==""){
				alert('투표시간이 입력되지 않았습니다!');
			}else if(voteArea.legnth==0 || voteArea==""){
				alert('투표장소가 입력되지 않았습니다!');
			}else if(confirm.legnth==0 || confirm==""){
				alert('유권자확인이 선택되지 않았습니다!');
			}else{
				document.input.method="post";
				document.input.action="AddVote";
				document.input.submit();
			}
		}

	</script>
</html>