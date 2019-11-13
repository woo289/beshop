<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
	<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
	<script type="text/javascript"src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	
	<script type="text/javascript">
	$(function(){
		var generateRandom = function (min, max) {
			  var ranNum = Math.floor(Math.random()*(max-min+1)) + min;
			  return ranNum;
			}
		var paynum=generateRandom(100000, 1000000);
		
		var oprice=localStorage.getItem('oprice');
		var name=localStorage.getItem('name');
		var addr=localStorage.getItem('addr');
		var zipcode=localStorage.getItem('zipcode');
		
		
	  	
			var IMP = window.IMP; // 생략가능
			IMP.init('imp33071173');
			
			IMP.request_pay({
				
			    pg : 'inicis', // version 1.1.0부터 지원.
			    pay_method : 'card',
			    merchant_uid :new Date().getTime(),
			    name : 'BESHOP결제',
			    amount : oprice,
			    buyer_email : 'email',
			    buyer_name : name,
			    buyer_tel : '010-6268-3365',
			    buyer_addr : addr,
			    buyer_postcode : zipcode,
			    m_redirect_url : 'http://localhost:8088/beshop/OrderPurchase'
			}, function(rsp) {
				 if ( rsp.success ) {
				     
				     jQuery.ajax({
				      url: "/beshop/purchase_ok", 
				      type: 'POST',
				      dataType: 'json',
				      data: {

				        	"approvenum":rsp.apply_num,
				    	  	"paynum":paynum,
				            "payway":"카드",
				            "paycondition":"결제완료",
				           	"payprice":oprice,
				            "pnum":1


				        },success:function(r){
				        	alert(r);
				        }
				     }).done(function(data) {
				      //[2] 서버에서 REST API로 결제정보확인 및 서비스루틴이 정상적인 경우
				      if ( rsp.success ) {
				    	  var approvenum=rsp.apply_num;
				    		var paynum=rsp.merchant_uid;
				            var payway="카드";
				            var paycondition="결제완료";
				            var payprice=oprice;
				           //var pnum=localStorage.getItem('pnum');
				            var pnum=1;
				            
				    	  var msg = '결제가 완료되었습니다.';
					       msg += '\n고유ID : ' + rsp.imp_uid;
					       msg += '\n상점 거래ID : ' + rsp.merchant_uid;
					       msg += '\결제 금액 : ' + rsp.paid_amount;
					       msg += '카드 승인번호 : ' + rsp.apply_num;
					       
					       
				      } else {
				       
				      }
				     });
				    } else {
				        var msg = '결제에 실패하였습니다.';
				        msg += '에러내용 : ' + rsp.error_msg;
				        alert(msg);
				        history.back();
				    }
				});
	});
	</script>

</head>
<body>

</body>
</html>