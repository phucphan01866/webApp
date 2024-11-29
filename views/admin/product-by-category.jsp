<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<%@ page import="java.util.List" %>
<%@ page import="webBanhang.bean.ProductMgrBean" %>
<!DOCTYPE html>
<html lang="vi">
  <head>
    <meta charset="UTF-8" />
    <title>Trang chủ</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" type="text/css" href="resources/css/main/header.css" />
    <link rel="stylesheet" type="text/css" href="resources/css/main/navigation.css" />
    <link rel="stylesheet" type="text/css" href="resources/css/main/product-by-category.css" />
    <link
      href="https://fonts.googleapis.com/css2?family=Inter:ital,opsz,wght@0,14..32,100..900;1,14..32,100..900&display=swap"
      rel="stylesheet"
    />
  </head>
  <body>
  
  	<% 
    List<ProductMgrBean> productList = (List<ProductMgrBean>) request.getAttribute("productList");
    System.out.println("Số sản phẩm trong product by categoy JSP: " + (productList != null ? productList.size() : 0));
	%>
  
    <div class="container">
      <div class="header style-block">
        <div class="left">
          <a href="" class="menu-item logo">
            <img
            	src="resources\images\e-comerce-high-resolution-logo-transparent.png"
          	/>
          </a>
          <a href="category.htm" class="menu-item category">
            <span class="category-text">Danh mục sản phẩm</span>
            <img
              src="resources\images\Arrow_drop_down_big.png"
              alt=""
              class="dropdown-icon"
            />
          </a>
          <div class="menu-item">Tin tức</div>
          <div class="menu-item">Liên hệ</div>
          <div class="menu-item">Kiểm tra đơn hàng</div>
        </div>
        <div class="right">
          <div class="icon search-bar">
            <img src="resources\images\search.png" alt="" class="" />
            <p>Tra cứu</p>
          </div>
          <a href="cart.htm" class="icon icon-cart">
            <img src="resources\images\shopping-cart.svg" alt="" class="cart" />
          </a>
          <div class="icon icon-user">
            <img src="resources\images\user.svg" alt="" class="user" />
            <div class="login-logout-panel">
            	<a href="login.htm">Đăng nhập</a>
            	<hr>
            	<a href="register.htm">Đăng ký</a>
            </div>
          </div>
        </div>
      </div>
      <div class="main">
        <div class="navigation">
          <a href="">Trang chủ</a>
          <a href=""> / Gaming Gear</a>
        </div>
        <hr id="first">
        
        <!-- SHOW SẢN PHẨM -->
        <div class="show-product">
          <p class="title">Product Example</p>
          <hr id="second">
          <form action="" class="filter">
            <input type="checkbox" id="increase-by-price" name="increase-by-price"/> 
            <label for="increase-by-price" class="filter-option">Giá tăng dần</label>
            <input type="checkbox" id="decrease-by-price" name="decrease-by-price"/>
            <label for="decrease-by-price" class="filter-option">Giá giảm dần</label>
            <input type="checkbox" id="increase-by-alphabet" name="increase-by-alphabet"/>
            <label for="increase-by-alphabet" class="filter-option">Tên A-Z</label>
            <input type="checkbox" id="decrease-by-alphabet" name="decrease-by-alphabet"/>
            <label for="decrease-by-alphabet" class="filter-option">Tên Z-A</label>
          </form>
          
          
          
          <div class="product-list">
          	<c:forEach var="product" items="${productList}"> 
            <a href="product.htm" class="product">
              <img
                class="product-image"
                src="${pageContext.request.contextPath}/${product.img_path}"
                alt="Product Image"
              />
              <div class="product-name">${product.name}</div>
              <div class="product-price">${product.price}₫</div>
              
            </a>
             <!--  <p>Số sản phẩm: ${fn:length(productList)}</p> -->       
            </c:forEach>       
          </div>
          
          
        </div>
      </div>
    </div>
  </body>
</html>

