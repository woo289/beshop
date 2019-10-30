<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
 <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Shopping Cart</title>
      <!-- Google font -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">
    <!-- Bootstrap -->
    <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />
    <link type="text/css" rel="stylesheet" href="css/bootstrap.css" />
    <!-- Slick -->
    <link type="text/css" rel="stylesheet" href="css/slick.css" />
    <link type="text/css" rel="stylesheet" href="css/slick-theme.css" />
    <!-- nouislider -->
    <link type="text/css" rel="stylesheet" href="css/nouislider.min.css" />
    <!-- Font Awesome Icon -->
    <link rel="stylesheet" href="css/font-awesome.min.css">

      <!-- Custom stlylesheet -->
    <link type="text/css" rel="stylesheet" href="css/style.css" />
     <link rel="stylesheet" href="css/cart.css" media="screen" title="no title" charset="utf-8">
    <script src="https://code.jquery.com/jquery-2.2.4.js" charset="utf-8"></script>
    <meta name="robots" content="noindex,follow" />
  </head>
  <body>
  <jsp:include page="header.jsp"></jsp:include>
  <div id="breadcrumb" class="section">
        <!-- container -->
        <div class="container">
            <!-- row -->
            <div class="row">
                <div class="col-md-12">
                    <h3 class="breadcrumb-header">장바구니</h3>
                </div>
            </div>
            <!-- /row -->
        </div>
        <!-- /container -->
    </div>
    <div class="container">
    <div class="shopping-cart">
      <!-- Title -->
      <div class="title">
        장바구니
      </div>
      <table style="text-align: center">
          <tr>
              <td style="width:50%">상품명</td>
              
              <td style="width:25%">수량</td>
              <td style="width:25%">가격</td>
          </tr>
      </table>

      <!-- Product #1 -->
      <div class="item">
      
            <div class="buttons">
              <span class="delete-btn"></span>
              <span class="like-btn"></span>
            </div>

            <div class="image">
              <img src="img/item-1.png" alt="" />
            </div>

            <div class="description">
              <span>Common Projects</span>
              <span>Bball High</span>
              <span>White</span>
            </div>
        <div class="quantity">
          <button class="plus-btn" type="button" name="button">
            <img src="img/plus.svg" alt="" />
          </button>
          <input type="text" name="name" value="1">
          <button class="minus-btn" type="button" name="button">
            <img src="img/minus.svg" alt="" />
          </button>
        </div>

        <div class="total-price">13,000원</div>
      </div>

      <!-- Product #2 -->
      <div class="item">
        <div class="buttons">
          <span class="delete-btn"></span>
          <span class="like-btn"></span>
        </div>

        <div class="image">
          <img src="img/item-2.png" alt=""/>
        </div>

        <div class="description">
          <span>Maison Margiela</span>
          <span>Future Sneakers</span>
          <span>White</span>
        </div>

        <div class="quantity">
          <button class="plus-btn" type="button" name="button">
            <img src="img/plus.svg" alt="" />
          </button>
          <input type="text" name="name" value="1">
          <button class="minus-btn" type="button" name="button">
            <img src="img/minus.svg" alt="" />
          </button>
        </div>

        <div class="total-price">$870</div>
      </div>

      <!-- Product #3 -->
      <div class="item">
        <div class="buttons">
          <span class="delete-btn"></span>
          <span class="like-btn"></span>
        </div>

        <div class="image">
          <img src="img/item-3.png" alt="" />
        </div>

        <div class="description">
          <span>Our Legacy</span>
          <span>Brushed Scarf</span>
          <span>Brown</span>
        </div>

        <div class="quantity">
          <button class="plus-btn" type="button" name="button">
            <img src="img/plus.svg" alt="" />
          </button>
          <input type="text" name="name" value="1">
          <button class="minus-btn" type="button" name="button">
            <img src="img/minus.svg" alt="" />
          </button>
        </div>

        <div class="total-price">$349</div>
      </div>
    </div>
    </div>

    <script type="text/javascript">
      $('.minus-btn').on('click', function(e) {
    		e.preventDefault();
    		var $this = $(this);
    		var $input = $this.closest('div').find('input');
    		var value = parseInt($input.val());

    		if (value > 1) {
    			value = value - 1;
    		} else {
    			value = 0;
    		}

        $input.val(value);

    	});

    	$('.plus-btn').on('click', function(e) {
    		e.preventDefault();
    		var $this = $(this);
    		var $input = $this.closest('div').find('input');
    		var value = parseInt($input.val());

    		if (value < 100) {
      		value = value + 1;
    		} else {
    			value =100;
    		}

    		$input.val(value);
    	});

      $('.like-btn').on('click', function() {
        $(this).toggleClass('is-active');
      });
    </script>
  </body>
</html>