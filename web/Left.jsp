<%-- 
    Document   : Left
    Created on : May 13, 2022, 11:25:54 PM
    Author     : Pisano
--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<div class="col-sm-3" style="margin-top: 12px">
    <div class="card-box bg-light mb-3">
        <div class="card-header bg-primary text-white text-uppercase" style="background: linear-gradient(to right, rgb(40, 48, 72), rgb(133, 147, 152))">
            <i style="margin-right: 8px" class="fa fa-list"></i> Danh Mục Sản Phẩm </div>
        <ul class="list-group category_block">
            <c:forEach items="${listCC}" var="o">
                <li class="list-group-item text-white ${tag == o.cid}"><a style="color: black; font-weight: 500; font-family: sans-serif" href="category?cid=${o.cid}">${o.cname}</a></li>
            </c:forEach>

        </ul>
    </div>
    <div class="card-box bg-light mb-3">
        <div class="card-header bg-success text-white text-uppercase" style="background: linear-gradient(to right, rgb(40, 48, 72), rgb(133, 147, 152))">
            Sản Phẩm Gần Nhất
        </div>
        <div class="card-body">
            <img class="img-fluid" style="margin-bottom: 14px" src="${p.image}" />
            <h5 class="card-title">${p.name}</h5>
            <p class="card-text" style="border: 1px solid #E7E7E7;display: inline;padding: 2px 8px;border-radius: 4px;">${p.title}</p>
            <p class="bloc_left_price" style="color: #C5232B;font-weight: 700;margin-top: 12px">${p.price} VNĐ</p>
        </div>
    </div>
</div>