<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://netdna.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="css/pcharge.css?ver=2" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="css/bootstrap.min.css?ver=1">
<link rel="stylesheet" href="css/selectric.css?ver=1">

<script src="//code.jquery.com/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="https://netdna.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="js/bootstrap-add-clear.js"></script>
<script>
$(function(){
  $("#amount").addClear({
	  closeSymbol: "",
	  symbolClass: 'glyphicon glyphicon-remove',
	  color: "#CCC",
	  top: 0,
	  right: 20,
	  returnFocus: true,
	  showOnLoad: false,
	  onClear: null,
	  hideOnBlur: false,
	  clearOnEscape: true,
	  wrapperClass: '',
	  zindex: 100
  });
});

</script>
</head>
<body>
<div id="top">
	<img id="logo" src="img/logo.png">
</div>
<div id="cbox"><span id="ccharge">충전</span></div>
<div id="pointPg">
	<div id="charge">포인트 충전</div>
	<div class="payBox">
		<div id="amountCash">충전금액</div>
		<input id="amount" type="number" placeholder="충전할 금액을 입력해주세요." name="point">
		<div id="btnBox"><button class="money" name="10000" value=10000>+10,000P</button><button class="money" name="50000" value=50000>+50,000P</button><button class="money" name="100000" value=100000>+100,000P</button><button class="money" name="150" value=150000>+150,000P</button><button class="money" name="200" value=200000>+200,000P</button></div>
		<span id="pmethod">충전수단</span>
			<div id="pay">
				<select id="payment">
					<option value="card"  selected="selected">신용카드</option>
					<option value="account">계좌</option>
				</select>
			</div>
	</div>
	
	<div id="charging"><button id="chgBtn">충전하기</button></div>
</div>

</body>
</html>