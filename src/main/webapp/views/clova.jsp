<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>chatbotForm</title>
  <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>

</head>
<body>
<!--  채팅 -->
<h3>채팅 입력</h3>
<form id="chatForm" enctype="multipart/form-data">
  내용 : <input type="text" id="txt" name="txt">
  <input type="submit" value="결과 확인">
</form>
<br><br>

<!-- 결과 출력 (텍스트) -->
<h3>응답 결과</h3>
<div id="resultDiv"></div>
<br><br>

</body>
</html>

