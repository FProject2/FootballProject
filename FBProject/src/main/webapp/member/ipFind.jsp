<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Football-Play 아이디/비밀번호 찾기</title>
<link rel="icon" type="image/png" href="../main/favicon.png">

<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>

<script>
$(function() {	
	$( "#tabs" ).tabs();
	
	$('#idBtn').click(function() {
		let email = $('#email').val();
		if(email.trim()=="")
		{
			$('#email').focus();
			return;
		}
		
		$.ajax({
			type : 'post',
			url : '../member/idFind_ok.do',
			data : {"email":email},
			success:function(result){
				let res = result.trim();
				if(res==='NO')
				{
					$('#id').html('<span style="color:#d9534f">존재하지 않는 이메일입니다.</span>')
				}
				else {
					$('#id').html('<span style="color:black">'+res+'</span>')
				}
			}
		})
	})
	
	$('#pwdBtn').click(function() {
		let name = $('#name').val();
		if(name.trim()==="")
		{
			$('#name').focus();
			return;
		}
		
		let email = $('#email2').val();
		if(email.trim()==="")
		{
			$('#email2').focus();
			return;
		}
		
		$.ajax({
			type:'post',
			url:'../member/pwdFind_ok.do'
			data:{"name":name, "email":email}
			success:function(result)
			{
				let res = result.trim();
				if(res==='NO')
				{
					$('#pwd').html('<span style="color:#d9534f">이름이나 이메일이 존재하지 않습니다.</span>')
				}
				else {
					$('#pwd').html('<span style="color:black">'+res+'</span>')
				}
			}
		})
	})
});
</script>

</head>
<body>
<div id="tabs">
	<ul>
		<li><a href="#tabs-1">아이디 찾기</a></li>
		<li><a href="#tabs-2">비밀번호 찾기</a></li>
	</ul>
	
	<div id="tabs-1">
		<table class="table">
			<tr>
				<td class="text-center">
					이메일 : <input type=text id="email" class="input-sm">
				</td>
			</tr>
			<tr>
				<td class="text-center">
					<input type=button class="btn btn-sm btn-default" value="검색" id="idBtn">
				</td>
			</tr>
			<tr>
				<td class="text-center">
					<h4 id="id"></h4>
				</td>
			</tr>
		</table>
	</div>
	
	<div id="tabs-2">
		<table class="table">
			<tr>
				<td class="text-center">
					이름 : <input type=text id="name" class="input-sm">
				</td>
			</tr>
			<tr>
				<td class="text-center">
					이메일 : <input type=text id="email2" class="input-sm">
				</td>
			</tr>
			<tr>
				<td class="text-center">
					<input type=button class="btn btn-sm btn-default" value="검색" id="pwdBtn">
				</td>
			</tr>
			<tr>
				<td class="text-center">
					<h4 id="pwd"></h4>
				</td>
			</tr>
		</table>
	</div>
</div>
</body>
</html>