<%-- 
    Document   : detail
    Created on : Oct 21, 2023, 8:41:08 PM
    Author     : MSTTPC2
--%>


<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Shop Anh Ba</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="css/manager.css" rel="stylesheet" type="text/css"/>
        <style>
            img{
                width: 200px;
                height: 120px;
            }
        </style>
    <body>
        <div class="container">
            <div class="table-wrapper">
                <div class="table-title" style="background-color: orange">
                    <div class="row">
                        <div class="col-sm-12">
                            <h2>Bảng <b>Thống Kê</b></h2>
                        </div>
                    </div>
                </div>
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th>Danh mục</th>
                            <th>Số lượng</th>
                        </tr>
                    </thead>
                    <tbody>      
                            <tr>
                                <td>Tổng số người ghé thăm page</td>
                                <td>${view} người</td>
                            </tr>
                            
                            <tr>
                                <td>Tổng số sản phẩm trong kho</td>
                                <c:forEach items="${sumQ}" var="s">
                                    <td>${s.getSum()} sản phẩm</td>
                                </c:forEach>                               
                            </tr>
                            
                            <tr>
                                <td>Tổng số tài khoản đã được tạo</td>
                                <c:forEach items="${a}" var="a">
                                    <td>${a.getSum()} tài khoản</td>
                                </c:forEach>                               
                            </tr>
                            <tr>
                                <td>Tổng số đơn hàng đã được bán</td>
                                <c:forEach items="${o}" var="o">
                                    <td>${o.getSum()} đơn</td>
                                </c:forEach>                               
                            </tr>
                            <tr>
                                <td>Tổng số tiền đã thu được</td>
                                <c:forEach items="${t}" var="t">
                                    <td>${t.getSum()} $</td>
                                </c:forEach>                               
                            </tr>
                    </tbody>
                </table>              
            <a href="home"><button type="button" class="btn btn-primary" style="background-color: orange">Quay về Trang Chủ</button></a>
        </div>
      
        
        
    <script src="js/manager.js" type="text/javascript"></script>
</body>
</html>