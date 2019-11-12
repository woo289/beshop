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
			var snsid = localStorage.getItem('id');
			
			var oprice=localStorage.getItem('oprice');
			var email=localStorage.getItem('email');
			var name=localStorage.getItem('name');
			var addr=localStorage.getItem('addr');
			var zipcode=localStorage.getItem('zipcode');
			
			var IMP = window.IMP; // ��������
			IMP.init('imp33071173');
			
			IMP.request_pay({
			    pg : 'inicis', // version 1.1.0���� ����.
			    pay_method : 'card',
			    merchant_uid : 'merchant_' + new Date().getTime(),
			    name : 'BESHOP����',
			    amount : oprice,
			    buyer_email : email,
			    buyer_name : name,
			    buyer_tel : '010-6268-3365',
			    buyer_addr : addr,
			    buyer_postcode : zipcode,
			    m_redirect_url : 'http://localhost:8088/beshop/OrderPurchase'
			}, function(rsp) {
			    if ( rsp.success ) {
			    	var approvenum=rsp.apply_num;
			    	
			        var msg = '������ �Ϸ�Ǿ����ϴ�.';
			        msg += '����ID : ' + rsp.imp_uid;
			        msg += '���� �ŷ�ID : ' + rsp.merchant_uid;
			        msg += '���� �ݾ� : ' + rsp.paid_amount;
			        msg += 'ī�� ���ι�ȣ : ' + rsp.apply_num;
			    } else {
			        var msg = '������ �����Ͽ����ϴ�.';
			        msg += '�������� : ' + rsp.error_msg;
			    }
			    alert(msg);
			});
		
		
	})
	</script>
</head>
<body>

</body>
</html>