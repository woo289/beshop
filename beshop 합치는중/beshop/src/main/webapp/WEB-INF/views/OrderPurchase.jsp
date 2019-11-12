<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<!------ Include the above in your HEAD tag ---------->
	<link rel="stylesheet" href="css/orderpurchase.css">
	<style type="text/css">
	.totalboxing
	{
	padding-left: 200px;
	padding-right: 200px;
	}
	</style>
</head>
<body>


<jsp:include page="header.jsp"></jsp:include>
	

        <main>
        <div class="totalboxing">
            <div class="row">
                <div class="col-sm-3 col-xs-3">
                    <h1>주문완료</h1>
                </div>
            </div>
            <div class="totalpage">
           <div class="line"></div>
            <div class="o_headtext">
                <p class="o_text">감사합니다! <strong>주문이 완료</strong>되었습니다.</p>
                <p class="o_num">주문번호 : <strong>20191010152121</strong></p>
            </div>
            <div class="line"></div>
            <div class="row">
                <div class="col-sm col-xs-3 to-details">
                    <div style="margin-bottom: 10px; margin-top: 20px; margin-left: 5px;">주문상품</div>
                    <div class="line"></div>

                    
                       

                           

                                <!--테이블 영역      -->
                                <table class='cart_table'>
                                    <colgroup>
                                        <col width='150px'>
                                        <col width="100px">
                                        <col width="300px">
                                        <col width='100px'>
                                        <col width='250px'>
                                        <col width='200px'>
                                    </colgroup>
                                    <thead>
                                        <th scope="col">상품번호</th>
                                        <th scope="col"></th>
                                        <th scope="col">상품명</th>
                                        <th scope="col">판매가</th>
                                        <th scope="col">수량</th>
                                        <th scope="col">주문금액</th>
                                    </thead>
                                    <tbody>
                                <c:forEach var="o" items="${orderdeliverylist}">
                                        <td>1</td>
                                       
                                        <td>
                                            <div class="product_img">
                                                <img src="img/drone.png" width="62" height="68">

                                            </div>

                                        </td>
                                        <td>
                                            <span>${o.pname}</span><br>
                                         
                                        </td>
                                        <td>
                                           
                                            ${o.p_price}
                                        </td>
                                        <td>
                                            <span>${o.ocount}</span>개
                                        </td>

                                        <td>
                                            <span>120000</span><br>
                                        </td>

                                    </tbody>

									</c:forEach>

                                </table>



                            
                        
                        <div class="row">
                        <div class="col-sm-12 col-xs-12 table-responsive">
                            <table class="table table-condensed" border="0" cellspacing="0" cellpadding="0" width="100%">

                                <tr>
                                    <td class="blankspace"></td>
                                    <td class="text-center" style="height: 30px; vertical-align: middle">총 상품금액</td>
                                    <td class="text-right" style="height: 30px; vertical-align: middle">50,000원</td>

                                </tr>
                                <tr>
                                    <td class="blankspace"></td>
                                    <td class="text-center">배송비</td>
                                    <td class="text-right">(+) 3,500원</td>
                                </tr>

                                <tr>

                                    <td class="blankspace"></td>
                                    <td class="text-center" style="height: 40px; vertical-align: middle">총결제금액</td>
                                    <td class="text-right" style="height: 40px; vertical-align: middle">53,500원</td>
                                </tr>



                            </table>
                        </div>
                    </div>

                    <div class="line"></div>
                    <div class="row">
                        <div class="col-sm col-xs-3 to-details">
                            <div style="margin-bottom: 10px; margin-top: 20px; margin-left: 5px;">결제 정보</div>
                            <div class="line"></div>

                            <div class="row">
                                <div class="table">
                                    <table class="table-con" width="100%" border="0" cellspacing="0" cellpadding="0">
									<c:forEach var="d" items="${orderdeliverylist}">
                                        <tr>
                                            <th class="p-info-payoption">결제방법</th>
                                            <th class="p-info-payoption-way">${d.payway}</th>
                                            <th class="p-info-totalprice">총 결제금액</th>
                                            <th class="p-info-totalprice-num">53,500원</th>
                                        </tr>
                                        <tr>
                                            <th class="p-info-status">결제상태</th>
                                            <th class="p-info-deposit-request">${d.paycondition}</th>
                                            <th class="p-blank"></th>
                                            <th class="p-blank"></th>

                                        </tr>

								</c:forEach>

                                    </table>
                                    <div class="line"></div>
                                </div>
                            </div>


                            <br>

                        </div>
                    </div>
					<div class="row">
                        <div class="col-sm col-xs-3 to-details">
                            <div style="margin-bottom: 10px; margin-top: 20px; margin-left: 5px;">배송지 정보</div>
                            <div class="line"></div>

                            <div class="row">
                                <div class="table">
                                    <table class="table-con" width="100%" border="0" cellspacing="0" cellpadding="0">
                                        <c:forEach var="c" items="${orderdeliverylist}">
                                        <tr>
                                            <th class="table-colname-recieve" style="padding-left: 20;">수령인</th>
                                            <th class="table-colname-blank">${c.recivename}</th>
                                            <th class="table-colname-request">주문자정보</th>

                                        </tr>
                                        <tr>
                                            <th class="table-colname-phone1" style="padding-left: 20px;" width="800px;">연락처1</th>
                                            <th class="table-colname-phone1con" style="padding-left: 20px;" width="800px;">${c.ophone}</th>
                                            <th class="order-person-info" style="padding-top: 20px;" COLSPAN="2" ROWSPAN="4">${c.recivename}<br>${o.ophone}<br> ${o.oaddr1 }${o.oaddr2 }</th>
                                        </tr>
                                        <tr>
                                            <th class="table-colname-phone2" style="padding-left: 20px;" width="800px;">연락처2</th>
                                            <th class="table-colname-phone2con" style="padding-left: 20px;" width="800px;">${c.ophone}</th>

                                        </tr>
                                        <tr>
                                            <th class="table-colname-addr" style="padding-left: 20px;" width="800px;">배송지 주소</th>
                                            <th class="table-colname-addrcon" style="padding-left: 20px;" width="800px;">${c.oaddr1}${o.oaddr2}</th>

                                        </tr>
                                        <tr>
                                            <th class="table-colname-memo" style="padding-left: 20px;" width="800px;">배송메모</th>
                                            <th class="table-colnamememo-con" style="padding-left: 20px;" width="800px;">${c.omemo}</th>

                                        </tr>

										</c:forEach>




                                    </table>
                                    <div class="line"></div>
                                </div>
                            </div>

</div>
                            <br>
</div>
                        </div>
                    </div>
			</div>
			</div>
			
        </main>
        <!--</div>-->
    

</body>

</html>