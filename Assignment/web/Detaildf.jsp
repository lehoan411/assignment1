<%-- 
    Document   : Detaildf
    Created on : Oct 24, 2023, 10:17:33 PM
    Author     : MSTTPC2
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html> 
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
                    <a href="" class="text-decoration-none">
                        <img style="height: 70px" src="image/anhba.jpg" alt="">
                        <h1 class="m-0 display-5 font-weight-semi-bold">Shop Anh Ba</h1>
                    </a>
                </div>
                <div class="col-lg-6 col-6 text-left">
                    <form action="search" method="POST">
                    <div class="input-group">
                        <input type="text" name="txt" class="form-control" placeholder="Tìm kiếm sản phẩm">
                        <div class="input-group-append">
                            <button type="submit" 
                            <span class="input-group-text bg-transparent text-primary">
                                <i class="fa fa-search"></i> 
                            </span>
                            </button>
                        </div>
                    </div>
                </form>
                </div>
                <div class="col-lg-3 col-6 text-right">
                    <a href="" class="btn border">
                        <i class="fas fa-shopping-cart text-primary"></i>
                        <span class="badge">0</span>
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
                                <a href="category?cid=${o.cid}" class="nav-item nav-link">${o.cname}</a>
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
                                <a href="detail" class="nav-item nav-link active">Chi tiết sản phẩm</a>
                                <div class="nav-item dropdown">
                                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Xem thêm</a>
                                    <div class="dropdown-menu rounded-0 m-0">
                                        <a href="cart.jsp" class="dropdown-item">Giỏ hàng</a>
                                        <a href="checkout.jsp" class="dropdown-item">Thanh toán</a>
                                    </div>
                                </div>
                                <c:if test="${sessionScope.acc.role == 1}" >
                                    <a href="manager" class="nav-item nav-link">Quản lí sản phẩm</a>
                                </c:if>
                                
                            </div>
                            <c:if test="${sessionScope.acc !=null}" >
                                 
                                 <div class="navbar-nav ml-auto py-0">
                                     <a href="#" class="nav-item nav-link">Xin chào ${sessionScope.acc.username}</a>
                                <a href="logout" class="nav-item nav-link">Đăng xuất</a>                               
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
                <h1 class="font-weight-semi-bold text-uppercase mb-3">Chi tiết sản phẩm</h1>
                <div class="d-inline-flex">
                    <p class="m-0"><a href="">Trang chủ</a></p>
                    <p class="m-0 px-2">-</p>
                    <p class="m-0">Chi tiết sản phẩm</p>
                </div>
            </div>
        </div>
        <!-- Page Header End -->


        <!-- Shop Detail Start -->
        <div class="container-fluid py-5">
            <div class="row px-xl-5">
                <div class="col-lg-5 pb-5">
                    <div id="product-carousel" class="carousel slide" data-ride="carousel">
                        <div class="carousel-inner border">
                            <div class="carousel-item active">
                                <img class="w-100 h-100" src="image/man-hinh-cong-samsung.jpg" alt="Image">
                            </div>                           
                        </div>
                    </div>
                </div>
                <div class="col-lg-7 pb-5">
                    <h2 class="font-weight-semi-bold">Màn hình cong Samsung LC49G95 49" VA 2K 240Hz Gsync</h2>                   
                    <h2 class="font-weight-semi-bold mb-4">$1010.0$</h2>                  
                    <div class="d-flex align-items-center mb-4 pt-2">
                        <div class="input-group quantity mr-3" style="width: 130px;">
                            <div class="input-group-btn">
                                <button class="btn btn-primary btn-minus" >
                                    <i class="fa fa-minus"></i>
                                </button>
                            </div>
                            <input type="text" class="form-control bg-secondary text-center" value="1">
                            <div class="input-group-btn">
                                <button class="btn btn-primary btn-plus">
                                    <i class="fa fa-plus"></i>
                                </button>
                            </div>
                        </div>
                        <button class="btn btn-primary px-3"><i class="fa fa-shopping-cart mr-1"></i>Thêm vào giỏ hàng</button>
                    </div>      
                </div>
            </div>
            <div class="row px-xl-5">
                <div class="col">
                    <div class="nav nav-tabs justify-content-center border-secondary mb-4">
                        <a class="nav-item nav-link active" data-toggle="tab" href="#tab-pane-1">Mô tả</a>
                    </div>
                    <div class="tab-content">
                        <div class="tab-pane fade show active" id="tab-pane-1">
                            <h4 class="mb-3">Mô tả sản phẩm</h4>
                            <p>Công nghệ HDR1000 tăng cường độ sâu trường ảnh với sắc đen sâu thẳm và sắc trắng thuần khiết. Công nghệ HDR10+ tối ưu độ sáng và độ tương phản, tái tạo cảnh game chính xác đúng với ý đồ nhà sản xuất. Mang đến bạn những khung hình chân thực và siêu thực, cùng một lúc. Sẵn sàng chinh chiến, hạ gục đối thủ với tốc độ chuẩn xác. Tần số quét siêu tốc 240Hz RapidCurve hạn chế tối đa tình trạng giựt hình, mang đến những chuyển động chiến đấu mượt mà. Luôn nắm bắt tình thế trong tích tắc nhờ tốc độ phản hồi 1ms, chuyển động chuột chính xác và khung hình rõ nét, không có hiện tượng bóng mờ.</p>    
                        </div>                                              
                    </div>
                </div>
            </div>
        </div>
        <!-- Shop Detail End -->


        <!-- Products Start -->
        <div class="container-fluid py-5">
            
            <div class="text-center mb-4">
                
                <h2 class="section-title px-5"><span class="px-2">Có thể bạn sẽ thích</span></h2>
            </div>
            <div class="row px-xl-5">
                
                <div class="col">
                   
                        <div class="owl-carousel related-carousel">
                            <c:forEach items="${requestScope.listP}" begin="1" end="4" var="o">
                        <div class="card product-item border-0">
                            
                            <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                                <img class="img-fluid w-100" src="${o.img}" alt="">
                            </div>
                            <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                                <h6 class="text-truncate mb-3">${o.pname}</h6>
                                <div class="d-flex justify-content-center">
                                    <h6>${o.price}</h6><h6 class="text-muted ml-2"><del>${o.price+20}$</del></h6>
                                </div>
                            </div>
                            <div class="card-footer d-flex justify-content-between bg-light border">
                                <a href="detail?pid=${o.pid}" class="btn btn-sm text-dark p-0"><i class="fas fa-eye text-primary mr-1"></i>Chi tiết</a>
                                <a href="" class="btn btn-sm text-dark p-0"><i class="fas fa-shopping-cart text-primary mr-1"></i>Thêm vào giỏ</a>
                            </div>
                                
                        </div>                  
                    </c:forEach>
                        </div>
                                
                </div>
                                
            </div>
                                
        </div>
        <!-- Products End -->


         <!-- Footer Start -->
        <div class="container-fluid bg-secondary text-dark mt-5 pt-5" style="padding-bottom: 50px">
            <div class="row px-xl-5 pt-5">
                <div class="col-lg-8 col-md-18 mb-9 pr-3 pr-xl-5">
                    <a href="" class="text-decoration-none">
                      
                        <h1 class="mb-4 display-5 font-weight-semi-bold"><img style="height: 70px" src="image/anhba.jpg" alt="">Shop Anh Ba</h1>
                    </a>
                    <p>Shop bán phụ kiện điện tử.</p>
                    <p class="mb-2"><i class="fa fa-map-marker-alt text-primary mr-3"></i>Gần trường FPT, Hòa Lạc, Hà Nội.</p>
                    <p class="mb-2"><i class="fa fa-envelope text-primary mr-3"></i>HoanLQHE172020@fpt.edu.vn</p>
                    <p class="mb-0"><i class="fa fa-phone-alt text-primary mr-3"></i>012 345 67890</p>
                </div>
                <div class="col-lg-4 col-md-10">
                    <div class="row">

                        <div class="col-md-8 mb-9">
                            <h5 class="font-weight-bold text-dark mb-4">Đường dẫn nhanh</h5>
                            <div class="d-flex flex-column justify-content-start">
                                <a class="text-dark mb-2" href="home"><i class="fa fa-angle-right mr-2"></i>Trang chủ</a>
                                <a class="text-dark mb-2" href="shop"><i class="fa fa-angle-right mr-2"></i>Sản phẩm</a>
                                <a class="text-dark mb-2" href="detail"><i class="fa fa-angle-right mr-2"></i>Chi tiết sản phẩm</a>
                                <a class="text-dark mb-2" href="cart"><i class="fa fa-angle-right mr-2"></i>Giỏ hàng</a>
                                <a class="text-dark mb-2" href="checkout"><i class="fa fa-angle-right mr-2"></i>Thanh toán</a>
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
