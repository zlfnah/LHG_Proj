<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>회원가입</title>
<link rel="stylesheet" href="/Proj_LOFI/style/Style.css">
</head>
<body>
<div id="wrap">
<form name="regFrm" id="regFrm" action="MemberProc.jsp" method="get">
<table>
<tbody>
<caption>회원가입</caption>
<tr>
	<td>
	<label ><input type="radio"name="AccountMember"  style="font-size:12px; width:25px;height:22px" value="1" checked>개인회원</label>
	<label ><input type="radio"name="AccountMember"  style="font-size:12px; width:25px;height:22px" value="0" >외국인회원(foreigner)</label>
	</td>
</tr>
<tr>
	<td>
	<label ><input type="radio" name="Certify"style="font-size:12px; width:25px;height:22px" value="1" checked>휴대폰인증
	</label>
	<label ><input type="radio" name="Certify"style="font-size:12px; width:25px;height:22px" value="0" >이메일인증</label>
	</td>
</tr>
<tr>
<td>
<button>휴대폰인증</button>
<p>본인 명의의 휴대폰으로 본인인증을 진행합니다.</p>
</td>
</tr>

<tr class="infor">
<td >
&nbsp;INFORMATION <!--  인포메이션 시작~~~~~-->
</td>
<td>*필수입력사항</td>
</tr>

<tr>
	<td><input type="text" name="uName" id="uName" placeholder=" 아이디"class="full"></td>
</tr>

<tr>
	<td><input type="password" name="uPw" id="uPw" placeholder=" 비밀번호 (영문 대소문자/숫자/특수문자 중 2가지 이상 조합, 8자~16자)"class="full"></td>
</tr>

<tr>
	<td><input type="password" name="uPw_Re" id="uPw_Re" placeholder=" 비밀번호 확인" class="full"></td>
</tr>
<br><br>
<tr>
<td class="uZip"><input type="text" id="uZip" name="uZip" placeholder=" 주소"size="64" readonly>
<button type="button" id="zipBtn" onclick="kakaopost()">우편번호</button>
</td>
</tr>
<tr>
<td>
<input type="text" id="uAddr" name="uAddr" placeholder=" 기본주소" class="full">
</td>
</tr>
<tr>
<td>
<input type="text" id="uAddr2" name="uAddr2" placeholder=" 나머지주소 (선택입력가능)" class="full">
</td>
</tr>
</tbody>
</table>
</form>
 </div>

 
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
 <!--  카카오 우편번호 예제시작-->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
function kakaopost() {
    new daum.Postcode({
        oncomplete: function(data) {
           document.querySelector("#uZip").value = data.zonecode;
           document.querySelector("#uAddr").value = data.address;
        }
    }).open();
    <!--  카카오 우편번호 예제끝-->
}
</script>
 <script src="/Proj_Ch14_BBS/script/Script.js"></script>
</body>
</html>