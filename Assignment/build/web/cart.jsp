<%-- 
    Document   : cart
    Created on : Oct 11, 2023, 8:43:02 PM
    Author     : MSTTPC2
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <title>Shop Anh Ba</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="Free HTML Templates" name="keywords">
        <meta content="Free HTML Templates" name="description">

        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet"> 

        <!-- Font Awesome -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

        <!-- Customized Bootstrap Stylesheet -->
        <link href="css/style.css" rel="stylesheet">
    </head>

    <body>
        <!-- Topbar Start -->
        <div class="container-fluid">
            <div class="row align-items-center py-3 px-xl-5">
                <div class="col-lg-3 d-none d-lg-block">
                    <a href="home" class="text-decoration-none">
                        <img style="height: 70px" src="image/anhba.jpg" alt="">
                        <h1 class="m-0 display-5 font-weight-semi-bold">Shop Anh Ba</h1>
                    </a>
                </div>
                <div class="col-lg-6 col-6 text-left">
                    <form action="">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Tìm kiếm sản phẩm">
                            <div class="input-group-append">
                                <span class="input-group-text bg-transparent text-primary">
                                    <i class="fa fa-search"></i>
                                </span>
                            </div>
                        </div>
                    </form>
                </div>
                <c:set var="size" value="${sessionScope.size}"/>
                <div class="col-lg-3 col-6 text-right">

                    <a href="cart.jsp" class="btn border">
                        <i class="fas fa-shopping-cart text-primary"></i>
                        <span class="badge">${size}</span>
                    </a>
                </div>
            </div>
        </div>
        <!-- Topbar End -->


        <!-- Navbar Start -->
        <div class="container-fluid">
            <div class="row border-top px-xl-5">
                <div class="col-lg-3 d-none d-lg-block">
                    <a class="btn shadow-none d-flex align-items-center justify-content-between bg-primary text-white w-100" data-toggle="collapse" href="#navbar-vertical" style="height: 65px; margin-top: -1px; padding: 0 30px;">
                        <h6 class="m-0">Danh mục</h6>
                        <i class="fa fa-angle-down text-dark"></i>
                    </a>
                    <nav class="collapse position-absolute navbar navbar-vertical navbar-light align-items-start p-0 border border-top-0 border-bottom-0 bg-light" id="navbar-vertical" style="width: calc(100% - 30px); z-index: 1;">
                        <div class="navbar-nav w-100 overflow-hidden">                          
                            <c:forEach items="${listC}" var="o">
                                <a href="shop" class="nav-item nav-link">${o.cname}</a>
                            </c:forEach>                           
                        </div>
                    </nav>
                </div>
                <div class="col-lg-9">
                    <nav class="navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-0">
                        <a href="" class="text-decoration-none d-block d-lg-none">
                            <h1 class="mb-4 display-5 font-weight-semi-bold"><img style="height: 70px" src="image/anhba.jpg" alt="">Shop Anh Ba</h1>
                        </a>
                        <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                            <div class="navbar-nav mr-auto py-0">
                                <a href="home" class="nav-item nav-link">Trang chủ</a>
                                <a href="shop" class="nav-item nav-link">Sản phẩm</a>
                                <a href="cart.jsp" class="nav-item nav-link active">Giỏ hàng</a>
                                <c:if test="${sessionScope.acc.role == 1}" >
                                    <a href="manager" class="nav-item nav-link">Quản lí sản phẩm</a>
                                    <a href="statistic" class="nav-item nav-link">Thống kê</a>
                                </c:if>
                            </div>
                            <c:if test="${sessionScope.acc !=null}" >
                                <div class="navbar-nav ml-auto py-0">
                                    <a href="profile" class="nav-item nav-link">Xin chào ${sessionScope.acc.username}</a>
                                </div>
                            </c:if>
                            <c:if test="${sessionScope.acc == null}" >
                                <div class="navbar-nav ml-auto py-0">
                                    <a href="login.jsp" class="nav-item nav-link">Đăng nhập</a>                               
                                </div>
                            </c:if>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
        <!-- Navbar End -->


        <!-- Page Header Start -->
        <div class="container-fluid bg-secondary mb-5">
            <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 300px">
                <h1 class="font-weight-semi-bold text-uppercase mb-3">Giỏ hàng</h1>
                <div class="d-inline-flex">
                    <p class="m-0"><a href="">Home</a></p>
                    <p class="m-0 px-2">-</p>
                    <p class="m-0">Giỏ hàng</p>
                </div>
            </div>
        </div>
        <!-- Page Header End -->


        <!-- Cart Start -->
        <div class="container-fluid pt-5">
            <div class="row px-xl-5">
                <div class="col-lg-8 table-responsive mb-5">
                    <table class="table table-bordered text-center mb-0">                        
                        <thead class="bg-secondary text-dark">
                            <tr>
                                <th>Products</th>
                                <th>Price</th>
                                <th>Quantity</th>
                                <th>Total</th>
                                <th>Remove</th>
                            </tr>
                        </thead>
                        <tbody class="align-middle">
                            <c:set var="o" value="${sessionScope.cart}"/>
                            <c:forEach items="${o.items}" var="i">
                                <tr>          
                                    <td class="align-middle"><img src="${i.product.img}" alt="" style="width: 50px;">${i.product.pname}</td>
                                    <td class="align-middle">${i.price} $</td>
                                    <td class="align-middle">
                                        <div class="input-group quantity mx-auto" style="width: 100px;">
                                            <div class="input-group-btn">
                                                <button class="btn btn-sm btn-primary btn-minus" >
                                                    <a href="process?num=-1&id=${i.product.pid}">
                                                        <i class="fa fa-minus" style="color: black"></i></a>
                                                </button>
                                            </div>
                                            <input type="text" readonly class="form-control form-control-sm bg-secondary text-center" value="${i.quantity}">
                                            <div class="input-group-btn">
                                                <button class="btn btn-sm btn-primary btn-plus">
                                                    <a href="process?num=1&id=${i.product.pid}">
                                                        <i class="fa fa-plus" style="color: black"></i></a>
                                                </button>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="align-middle">${i.quantity*i.price} $</td>                    
                                    <td>
                                        <form action="process" method="POST">
                                            <input type="hidden" name="id" value="${i.product.pid}"/>
                                            <button class="btn btn-sm btn-primary"  ><i class="fa fa-times"></i></button>
                                        </form>
                                    </td>
                                </tr>
                                
                            </c:forEach>           
                                        
                        </tbody>
                    </table>
                            <c:if test="${sessionScope.cart==null}">
                                            <h3>Giỏ hàng trống</h3>
                                        </c:if>
                </div>
                <c:if test="${sessionScope.cart!=null}">
                    <div class="col-lg-4">           
                        <div class="card border-secondary mb-5">
                            <div class="card-header bg-secondary border-0">
                                <h4 class="font-weight-semi-bold m-0">Hóa đơn</h4>
                            </div>
                            <div class="card-body">
                                <div class="d-flex justify-content-between mb-3 pt-1">
                                    <h6 class="font-weight-medium">Tổng đơn hàng</h6>
                                    <h6 class="font-weight-medium">${sessionScope.cart.getTotalMoney()}$</h6>
                                </div>
                                <div class="d-flex justify-content-between">
                                    <h6 class="font-weight-medium">Phí ship</h6>
                                    <h6 class="font-weight-medium">2$</h6>
                                </div>
                            </div>
                            <div class="card-footer border-secondary bg-transparent">
                                <div class="d-flex justify-content-between mt-2">
                                    <h5 class="font-weight-bold">Tổng cộng</h5>
                                    <h5 class="font-weight-bold">${sessionScope.cart.getTotalMoney()+2} $</h5>
                                </div>
                                <form action="checkout" method="POST">
                                    <button class="btn btn-block btn-primary my-3 py-3">Thanh toán</button>
                                </form>

                            </div>
                        </div>
                    </div>
                </c:if>

            </div>
        </div>
        <!-- Cart End -->


        <!-- Footer Start -->
        <div class="container-fluid bg-secondary text-dark mt-5 pt-5" style="padding-bottom: 50px">
            <div class="row px-xl-5 pt-5">
                <div class="col-lg-4 col-md-18 mb-9 pr-3 pr-xl-5">
                    <a href="" class="text-decoration-none">

                        <h1 class="mb-4 display-5 font-weight-semi-bold"><img style="height: 70px" src="image/anhba.jpg" alt=""> Shop Anh Ba</h1>
                    </a>
                    <p>Shop bán phụ kiện điện tử.</p>
                    <p class="mb-2"><i class="fa fa-map-marker-alt text-primary mr-3"></i>Gần trường FPT, Hòa Lạc, Hà Nội.</p>
                    <p class="mb-2"><i class="fa fa-envelope text-primary mr-3"></i>HoanLQHE172020@fpt.edu.vn</p>
                    <p class="mb-0"><i class="fa fa-phone-alt text-primary mr-3"></i>012 345 67890</p>
                </div>

                <div class="col-lg-4 col-md-5" >
                    <iframe style="width: 100%; height: 100%;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4429.196577674313!2d105.5231185154214!3d21.012849902866435!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135abc60e7d3f19%3A0x2be9d7d0b5abcbf4!2zVHLGsOG7nW5nIMSQ4bqhaSBI4buNYyBGUFQ!5e0!3m2!1svi!2s!4v1699286204960!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>

                <div class="col-lg-4 col-md-10">
                    <div class="row">

                        <div class="col-md-8 mb-9">
                            <h5 class="font-weight-bold text-dark mb-4">Đường dẫn nhanh</h5>
                            <div class="d-flex flex-column justify-content-start">
                                <a class="text-dark mb-2" href="home"><i class="fa fa-angle-right mr-2"></i>Trang chủ</a>
                                <a class="text-dark mb-2" href="shop"><i class="fa fa-angle-right mr-2"></i>Sản phẩm</a>
                                <a class="text-dark mb-2" href="cart.jsp"><i class="fa fa-angle-right mr-2"></i>Giỏ hàng</a>
                                <c:if test="${sessionScope.acc.role == 1}" >
                                    <a class="text-dark mb-2" href="manager"><i class="fa fa-angle-right mr-2"></i>Quản lí sản phẩm</a>
                                    <a class="text-dark mb-2" href="statistic"><i class="fa fa-angle-right mr-2"></i>Thống kê</a>
                                </c:if>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

        </div>
        <!-- Footer End -->


        <!-- Back to Top -->
        <a href="#" class="btn btn-primary back-to-top"><i class="fa fa-angle-double-up"></i></a>


        <!-- JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
        <script src="lib/easing/easing.min.js"></script>
        <script src="lib/owlcarousel/owl.carousel.min.js"></script>

        <!-- Contact Javascript File -->
        <script src="mail/jqBootstrapValidation.min.js"></script>
        <script src="mail/contact.js"></script>

        <!-- Template Javascript -->
        <script src="js/main.js"></script>
    </body>
</html>
