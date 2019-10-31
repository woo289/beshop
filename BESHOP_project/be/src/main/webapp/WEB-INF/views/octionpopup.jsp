<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="css/popup.css">
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script type="text/javascript" src="js/popup.js"></script>
<script type="text/javascript">
var SetTime = 5000;		// 최초 설정 시간(기본 : 초)

function msg_time() {	// 1초씩 카운트
	
	m = Math.floor(SetTime / 60) + "분 " + (SetTime % 60) + "초";	// 남은 시간 계산
	
	var msg = "현재 남은 시간은 " + m + "</font> 입니다.";
	
	document.all.ViewTimer.innerHTML = msg;		// div 영역에 보여줌 
			
	SetTime--;					// 1초씩 감소
	
if (SetTime < 60) {			// 시간이 종료 되었으면..
		
		clearInterval(tid);		// 타이머 해제
		alert("경매가 종료되기 1분 전 입니다");
	}
	if (SetTime < 0) {			// 시간이 종료 되었으면..
		
		clearInterval(tid);		// 타이머 해제
		alert("경매가 종료되었습니다");
	}
	
}

window.onload = function TimerStart(){ tid=setInterval('msg_time()',1000) };


$(function(){
	$("#btn1").click(function(){
		var priceval1=$(this).attr('value');
		$('#o_price').val(priceval1);
		alert(priceval1);
		
	})
	$("#btn2").click(function(){
		var priceval2=$(this).attr('value');
		$('#o_price').val(priceval2);
		alert(priceval2);
	})
	$("#btn3").click(function(){
		var priceval3=$(this).val('value');
		$("#o_price").html(priceval3);
		alert(priceval3);
	})
})
</script>
<body>

<a href="#layer01" data-popup="#layer01" class="layer-popup">레이어팝업 보기</a> <br /><br /><br />
    <div class="pop-wrap" id="layer01" style="display:none">
        <dl>
            <dt class="pop-header"><span id="startprice">1,230,000</span> 원ㅣ무료배송<a href="#none" class="btnp-close">Χ</a></dt>
            <dd class="pop-box">
                <div class="pop-cont">
                    <div class="pop-msg">

                        <p class="start" id="time">경매종료까지 <span id="ViewTimer"></span> 남았습니다ㅣ<span>2</span>명의 입찰자 입찰중</p>
                        <p class="bar"><em style="width:1242%;height: 3px;"></em></p>
                        <p class="start" id="notice" style="margin-bottom: 15px;">보유하신 포인트의 금액만큼 입찰가를 제시해주세요</p>
                        <div class="colorpart">
                            <p class="start" id="per">입찰가ㅣ10만원 단위</p>
                            <div class="price_part">

                                <p><input type="button" class="btn" id="btn1" value="1,220,000"></p>
                                <p><input type="button" class="btn" id="btn2" value="1,320,000"></p>
                                <p><input type="button" class="btn" id="btn3" value="1,420,000"></p>

                            </div>
                            <p class="bar"><em style="width:1242%;height: 3px;"></em></p>
                            <p class="start">보유포인트<span>1,220,000</span>원 <a href="#">충전하기</a></p>
                            <div class="box">
                                <input type="number" class="btn_a" name="o_price" id="o_price" value="" placeholder="입찰하고 싶은 금액을 입력해주세요.">
                                <input type="button" class="btn_b" value="입찰하기">
                            </div>

                            <p class="start">경매가 끝나거나 판매자가 입찰종료시 가장 높은 금액을 제시한 입찰자가 입찰됩니다</p>

                            <div class="pop-noti">
                                <div><input type="checkbox" name="" id="daychk01" /> <label for="daychk01">1주일간 보지 않기</label></div>
                            </div>

                        </div>

                    </div>
                </div>
            </dd>
        </dl>
    </div>
</body>
</html>