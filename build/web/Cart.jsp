<%-- 
    Document   : Cart
    Created on : May 16, 2022, 11:10:36 PM
    Author     : Pisano
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cart</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <style>
            @import url(https://fonts.googleapis.com/css?family=Open+Sans:400italic,400,300,600);

        * {
                margin:0;
                padding:0;
                box-sizing:border-box;
                -webkit-box-sizing:border-box;
                -moz-box-sizing:border-box;
                -webkit-font-smoothing:antialiased;
                -moz-font-smoothing:antialiased;
                -o-font-smoothing:antialiased;
                font-smoothing:antialiased;
                text-rendering:optimizeLegibility;
        }


  
        #contact input[type="text"], #contact input[type="email"], #contact input[type="tel"], #contact input[type="url"], #contact textarea, #contact button[type="submit"] { font:400 12px/16px "Open Sans", Helvetica, Arial, sans-serif; }

        #contact {
                background:#F9F9F9;
                padding:25px;
                margin:50px 0;
        }

        #contact h3 {
                color: #F96;
                display: block;
                font-size: 30px;
                font-weight: 400;
        }

        #contact h4 {
                margin:5px 0 15px;
                display:block;
                font-size:13px;
        }

        fieldset {
                border: medium none !important;
                margin: 0 0 10px;
                min-width: 100%;
                padding: 0;
                width: 100%;
        }

        #contact input[type="text"], #contact input[type="email"], #contact input[type="tel"], #contact input[type="url"], #contact textarea {
                width:100%;
                border:1px solid #CCC;
                background:#FFF;
                margin:0 0 5px;
                padding:10px;
        }

        #contact input[type="text"]:hover, #contact input[type="email"]:hover, #contact input[type="tel"]:hover, #contact input[type="url"]:hover, #contact textarea:hover {
                -webkit-transition:border-color 0.3s ease-in-out;
                -moz-transition:border-color 0.3s ease-in-out;
                transition:border-color 0.3s ease-in-out;
                border:1px solid #AAA;
        }

        #contact textarea {
                height:100px;
                max-width:100%;
          resize:none;
        }

        #contact button[type="submit"] {
                cursor:pointer;
                width:100%;
                border:none;
                background:#0CF;
                color:#FFF;
                margin:0 0 5px;
                padding:10px;
                font-size:15px;
        }

        #contact button[type="submit"]:hover {
                background:#09C;
                -webkit-transition:background 0.3s ease-in-out;
                -moz-transition:background 0.3s ease-in-out;
                transition:background-color 0.3s ease-in-out;
        }

        #contact button[type="submit"]:active { box-shadow:inset 0 1px 3px rgba(0, 0, 0, 0.5); }

        #contact input:focus, #contact textarea:focus {
                outline:0;
                border:1px solid #999;
        }
        ::-webkit-input-placeholder {
         color:#888;
        }
        :-moz-placeholder {
         color:#888;
        }
        ::-moz-placeholder {
         color:#888;
        }
        :-ms-input-placeholder {
         color:#888;
        }

        </style>
    </head>

    <body>
       <jsp:include page="Menu.jsp"></jsp:include>
        <div class="shopping-cart">
            <div class="px-4 px-lg-0">

                <div class="pb-5">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12 p-5 bg-white rounded shadow-sm mb-5">

                                <!-- Shopping cart table -->
                                <div class="table-responsive" style="margin-top: 60px">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th scope="col" class="border-0 bg-light">
                                                    <div class="p-2 px-3 text-uppercase">Sản Phẩm</div>
                                                </th>
                                                <th scope="col" class="border-0 bg-light">
                                                    <div class="py-2 text-uppercase">Đơn Giá</div>
                                                </th>
<!--                                                <th scope="col" class="border-0 bg-light">
                                                    <div class="py-2 text-uppercase">Số Lượng</div>
                                                </th>-->
                                                <th scope="col" class="border-0 bg-light">
                                                    <div class="py-2 text-uppercase">Xóa</div>
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach items="${list}" var="o">
                                                <tr>
                                                    <th scope="row">
                                                        <div class="p-2">
                                                            <img src="${o.image}" alt="" width="70" class="img-fluid rounded shadow-sm">
                                                            <div class="ml-3 d-inline-block align-middle">
<h5 class="mb-0"> <a href="#" class="text-dark d-inline-block">${o.name}</a></h5><span class="text-muted font-weight-normal font-italic"></span>
                                                            </div>
                                                        </div>
                                                    </th>
                                                    <td class="align-middle"><strong>${o.price}</strong></td>
                                                    
                                                            <td class="align-middle"><a href="remove?id=${o.id}" class="text-dark">
                                                        <button type="button" class="btn btn-danger">Delete</button>
                                                        </a>
                                                    </td>
                                                </tr> 
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                                <!-- End -->
                            </div>
                        </div>

                        <div class="row py-5 p-4 bg-white rounded shadow-sm">
                            <div class="col-lg-6">
                                <div class="container" style="transform: translateY(-50px);">  
                                    <form id="contact" action="" method="post">
                                        <h3 style="color: black;margin-left: 76px;font-weight: 700;transform: translateY(-12px);">Thông tin thanh toán</h3>
                                      <fieldset>
                                        <input placeholder="Họ Tên" type="text" tabindex="1" required autofocus>
                                      </fieldset>
                                      <fieldset>
                                        <input placeholder="Email" type="email" tabindex="2" required>
                                      </fieldset>
                                      <fieldset>
                                        <input placeholder="Số điện thoại" type="tel" tabindex="3" required>
                                      </fieldset>
                                      <fieldset>
                                        <input placeholder="Địa chỉ giao hàng" type="url" tabindex="4" required>
                                      </fieldset>
                                      <fieldset>
                                        <textarea placeholder="Lời nhắn...." tabindex="5" required></textarea>
                                      </fieldset>
                                    </form>
                                  </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">Thành tiền</div>
                                <div class="p-4">
                                    <ul class="list-unstyled mb-4">
                                        <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Tổng tiền hàng</strong><strong>${total}</strong></li>
                                        <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Phí vận chuyển</strong><strong>Free ship</strong></li>
<li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">VAT</strong><strong>${vat}</strong></li>
                                        <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Tổng thanh toán</strong>
                                            <h5 class="font-weight-bold">${sum} ₫</h5>
                                        </li>
                                </ul ><a style="transform: translateY(20px);" onclick="myBuyProduct()" href="order" class="btn btn-dark rounded-pill py-2 btn-block">Mua hàng</a>
                                <script>
                                    function myBuyProduct() {
                                        alert('Mua hàng thành công!')
                                    }
                                </script>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </body>

</html>
</html>