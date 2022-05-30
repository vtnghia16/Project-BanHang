<%-- 
    Document   : Home
    Created on : May 13, 2022, 7:46:01 PM
    Author     : Pisano
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <style>
            .box_content {
                transition: box-shadow .3s;
                width: 300px;
                height: 500px;
                margin: 50px;
                border-radius:10px;
                border: 1px solid #ccc;
                background: #fff;
                float: left;

            }
            
            .card-title a{
                font-size: 15px;
                color: #333;
                text-decoration: none;
            }
            
            .card-size {
                margin-top: 60px;
                visibility: hidden;
                opacity: 0;
                transition: 0.5s
            }
            
            .box_content:hover {
              box-shadow: 0 0 14px rgba(33,33,33,.3); 
            }
            
            .box_content:hover .card-size {
                   visibility: visible;
              opacity: 100;
               margin-top: -60px;
            }
            
            .btn-block:hover {
                opacity: 0.5;
                transition: 0.5s;
            }
        </style>
    </head>
    <body style="padding: 0; margin: 0; box-sizing: 0; background: white">
        
        <!--begin of menu-->
        <jsp:include page="Menu.jsp"></jsp:include>
        
        <div class="container" style="padding-top: 30px">

            <div class="row">
            <jsp:include page="Left.jsp"></jsp:include>

                <div class="col-sm-9">
                    <div class="row">
                        <c:forEach items="${listP}" var="o">
                            <div class="col-12 col-md-6 col-lg-4">
                                <div class="card-box box_content" style="width: 255px; height: 310px; margin: 12px 0; overflow: hidden">
                                    <img class="card-img-top" src="${o.image}" alt="Card image cap" style="height: 142px; width: 100%;padding:12px 12px 0 12px">
                                    <div class="card-body">
                                        <h4 class="card-title show_txt" style="margin-bottom: 6px"><a href="detail?pid=${o.id}" title="View Product" style="display: block;text-decoration: none">${o.name}</a></h4>
                                        <p class="card-text show_txt" style="border: 1px solid #E7E7E7;font-size: 13px;padding: 4px;border-radius: 4px;color: #6E336E;display: inline;">${o.title}</p>
                                        <div class="row" style="display: block">
                                            <div class="col">
                                                <p style="color: #C5232B; font-weight: 700; margin-top: 8px; font-size: 16px">${o.price} VNĐ</p>
                                            </div>
                                            <div class="col card-size">
                                                <a href="cart?id=${o.id}" class="btn btn-success btn-block" style="border: none; padding: 3px 0; margin-top: 66px; background: linear-gradient(to right, rgb(43, 88, 118), rgb(78, 67, 118))">Add to cart</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
      
        </div>

        <!-- UserReview -->
        <div class="container_user-review" style="background: #f8f9fa;">
            <jsp:include page="UserReview.jsp"></jsp:include> 
        </div>
        

           <!-- Footer -->
        <div class="container_footer">
        <jsp:include page="Footer.jsp"></jsp:include> 
        </div>
    </body>
</html>