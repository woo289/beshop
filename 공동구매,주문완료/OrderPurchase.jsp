<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<div>
    <div class="purchase overflow-auto">
        <!--<div style="min-width: 600px">-->
        <header>

            <style>
                * {

                    overflow-x: hidden;




                }
                
                .purchase {

                    position: relative;
                    background-color: #FFF;
                    min-height: 680px;
                    padding: 100px;
                    font-family: Times New Roman;
                }

                .line {
                    padding: 0px 0px 0px 0px;
                    margin-bottom: 0px;
                    border-bottom: 1px solid black;
                }

                .purchase header img {
                    max-width: 200px;
                    margin-top: 0;
                    margin-bottom: 0;
                }

                .purchase .company-details {
                    text-align: right;
                    margin-top: 0;
                    margin-bottom: 0;
                }

                .purchase main {

                    padding: 0px 0px;
                    margin-bottom: 0px;
                }

                .purchase .to-details {
                    text-align: left;
                }

                .purchase .purchase-info {
                    text-align: right;
                }

                .purchase .to-name {
                    font-weight: bold;
                }

                .purchase .to-name .to-address .to-city {
                    margin-top: 0;
                    margin-bottom: 0;
                }



                .purchase-info .info-code {
                    font-weight: bold;
                }

                .purchase-info .info-code .info-date {
                    margin-top: 0;
                    margin-bottom: 0;
                }

                .table thead th {
                    margin: 0 !important;
                    padding-top: 0 !important;
                    padding-bottom: 0 !important;
                }

                .table td {
                    margin: 0 !important;
                    padding-top: 0 !important;
                    padding-bottom: 0 !important;
                    border: none;
                }

                .table .blank-row {
                    height: 25px !important;
                    background-color: #FFFFFF;
                    border: none;
                }

                .table tbody {
                    min-height: 1000px !important;
                }

                .table-con-colname {
                    background-color: ;
                }

                .o_headtext {
                    text-align: center;
                    margin: 30px;
                }

                .o_headtext p {
                    padding: 0;
                }

                .o_text {
                    font-size: 28px;
                    font-family: sans-serif;
                }

                .col-sm-3 col-xs-3 h1 {
                    margin-bottom: 20px;
                    font-weight: bold;
                }

                .to-pimg img {
                    width: 80px;
                    height: 80px;
                    margin-left: 0px;
                    border: 0.7px solid gray;
                }

                .to-item div {
                    display: block;
                    float: left;

                }

                .to-info-content {
                    margin: 20px;
                    font-size: 11pt;
                }



                .to-totalprice {
                    width: 262px;
                    height: 100px;
                    padding-left:
                        text-align: center;
                    background-color: ;
                }

                .to-saleprice,
                .to-price,
                .to-qty {
                    width: 90px;
                }

                .to-name {
                    width: 670px;

                }

                .table {

                    margin-bottom: 0px;
                    //background-color: ;
                }

                .text-center {
                    width: 140px;

                }

                .text-right {
                    width: 130px;
                }

                .text-right,
                .text-center {
                    background-color: ;
                }

                .blankspace {
                    width: 1120px;
                    margin-right: 100px;
                }

                .to-item th {

                    text-align: center;
                    //border: 1px solid black;

                }

                .p-info-totalprice,
                .p-info-payoption,
                .p-info-status {
                    width: 120px;
                    text-align: center;
                    background-color: ;
                }

                .p-info-deposit-request,
                .p-info-payoption-way {
                    width: 860px;
                }

                .p-info-totalprice-num {


                    text-align: end;
                    background-color: ;
                }

                .p-blank {
                    background-color: ;
                }

                .table-colname-phone1,
                .table-colname-phone2,
                .table-colname-addr,
                .table-colname-memo,
                .table-colname-recieve {
                    width: 200px;
                    background-color: ;
                }

                

                .order-person-info,
                .table-colname-request {
                    background-color: ;
                }

                
                    /*테이블*/
                    .cart_table {
                        width: 100%;
                        border-top: 1px solid black;
                        border-spacing: 0;
                        border-collapse: collapse;
                        border-bottom: 1px solid black;
                        text-align: center;
                        margin: 0;
                        padding: 0;
                    }

                   

                    td {
                        border-bottom: 1px solid black;
                    }

                    th {
                        padding: 7px 5px;
                    }

                    tbody {
                        border-top: 1px solid black;
                    }


                    

                    /*버튼*/
                    .a_btn {
                        border-radius: 4px;
                        display: inline-block;
                        width: 150px;
                        height: 35px;
                        padding: 5px 0px;
                        line-height: 34px;
                        text-align: center;
                        margin-top: 10px;
                        border: 0 none;
                        background-color: #7EBDC2;
                        color: white;
                        font-size: 18px;
                        font-weight: 700;
                    }

                    .delete-btn-area {
                        text-align: center;
                    }

                    

                   

                   

                    #payment_style {
                        font-size: 18px;
                    }
                }

            </style>
        </header>

        <main>
            <div class="row">
                <div class="col-sm-3 col-xs-3">
                    <h1>주문완료</h1>
                </div>
            </div>
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

                    
                        <div class="container">

                            <div class='main-session'>

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
                                        <td>1</td>
                                        <td>
                                            <div class="product_img">
                                                <img src="img/drone.png" width="62" height="68">

                                            </div>

                                        </td>
                                        <td>
                                            <span>드론/시리즈명/구매일</span><br>
                                            <span>대여일:2019/09/05 반납일:2019/09/09</span>
                                        </td>
                                        <td>
                                           
                                            120000
                                        </td>
                                        <td>
                                            <span>수량</span>
                                        </td>

                                        <td>
                                            <span>120000</span><br>
                                           
                                        </td>

                                    </tbody>


                                    <tbody>
                                        <td>2</td>
                                        <td>
                                            <div class="product_img">
                                                <img src="img/drone.png" width="62" height="68">

                                            </div>

                                        </td>
                                        <td>
                                            <span>드론/시리즈명/구매일</span><br>
                                            <span>대여일:2019/09/05 반납일:2019/09/09</span>
                                        </td>
                                        <td>
                                            90000

                                        </td>
                                        <td>
                                            <span>수량</span>
                                        </td>

                                        <td>
                                            <span>90000</span><br>
                                           
                                        </td>

                                    </tbody>


                                    <tbody>
                                        <td>3</td>
                                        <td>
                                            <div class="product_img">
                                                <img src="img/drone.png" width="62" height="68">

                                            </div>

                                        </td>
                                        <td>
                                            <span>드론/시리즈명/구매일</span><br>
                                            <span>대여일:2019/09/05 반납일:2019/09/09</span>
                                        </td>
                                        <td>
                                            180000

                                        </td>
                                        <td>
                                            <span>수량</span>
                                        </td>

                                        <td>
                                            <span>180000</span><br>
                                            
                                        </td>


                                    </tbody>



                                   
                                </table>



                            </div>
                        </div>
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

                                        <tr>
                                            <th class="p-info-payoption">결제방법</th>
                                            <th class="p-info-payoption-way">카드결제</th>
                                            <th class="p-info-totalprice">총 결제금액</th>
                                            <th class="p-info-totalprice-num">53,500원</th>
                                        </tr>
                                        <tr>
                                            <th class="p-info-status">결제상태</th>
                                            <th class="p-info-deposit-request">입금요청</th>
                                            <th class="p-blank"></th>
                                            <th class="p-blank"></th>

                                        </tr>



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

                                        <tr>
                                            <th class="table-colname-recieve" style="padding-left: 20;">수령인</th>
                                            <th class="table-colname-blank">야도란</th>
                                            <th class="table-colname-request">주문자정보</th>

                                        </tr>
                                        <tr>
                                            <th class="table-colname-phone1" style="padding-left: 20px;" width="800px;">연락처1</th>
                                            <th class="table-colname-phone1con" style="padding-left: 20px;" width="800px;">010-0000-0000</th>
                                            <th class="order-person-info" style="padding-top: 20px;" COLSPAN="2" ROWSPAN="4">야도란<br>010-0000-0000<br> 서울시 성동구</th>
                                        </tr>
                                        <tr>
                                            <th class="table-colname-phone2" style="padding-left: 20px;" width="800px;">연락처2</th>
                                            <th class="table-colname-phone2con" style="padding-left: 20px;" width="800px;">010-0000-0000</th>

                                        </tr>
                                        <tr>
                                            <th class="table-colname-addr" style="padding-left: 20px;" width="800px;">배송지 주소</th>
                                            <th class="table-colname-addrcon" style="padding-left: 20px;" width="800px;">서울시 성수동</th>

                                        </tr>
                                        <tr>
                                            <th class="table-colname-memo" style="padding-left: 20px;" width="800px;">배송메모</th>
                                            <th class="table-colnamememo-con" style="padding-left: 20px;" width="800px;">옷이없어요 빨리가져다주세요</th>

                                        </tr>





                                    </table>
                                    <div class="line"></div>
                                </div>
                            </div>


                            <br>

                        </div>
                    </div>

        </main>
        <!--</div>-->
    
</div>
