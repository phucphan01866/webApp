<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.List" %>
<%@ page import="webBanhang.bean.ProductMgrBean" %>
<%@ page import="webBanhang.model.Category" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Admin Page</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" type="text/css" href="resources/css/admin/admin.css" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" />
</head>
<body>

	<% 
    List<ProductMgrBean> productList = (List<ProductMgrBean>) request.getAttribute("productList");
    System.out.println("Số sản phẩm trong JSP: " + (productList != null ? productList.size() : 0));
	%>
	<% 
    List<Category> categoryList = (List<Category>) request.getAttribute("categoryList");
    System.out.println("Số category trong JSP: " + (categoryList != null ? categoryList.size() : 0));
	%>

	<div class="main-container">
		<div class="menu">
			<p class="menu-title">MENU</p>
			<div class="sub-section quan-ly-don-hang">
				<p class="menu-header">Quản lý đơn hàng</p>
				<button class="menu-button">Xử lý đơn hàng</button>
				<button class="menu-button">Quản lý đơn hàng</button>
			</div>
			<div class="sub-section quan-ly-san-pham">
				<p class="menu-header">Quản lý sản phẩm</p>
				<button class="menu-button">Danh sách sản phẩm</button>
				<button class="menu-button">Lọc theo phân loại SP</button>
			</div>
		</div>
		
		<!-- THÊM SẢN PHẨM -->
		<form class="them-sp" action="<%= request.getContextPath() %>/ProductServlet" method="post" enctype="multipart/form-data">
			<div class="title">
				<span class="them-sp-title">THÊM SẢN PHẨM MỚI</span>
			</div>
			<input class="input" type="text" name="name"
				placeholder="Nhập tên sản phẩm"  required/> 
				<input type="text"
				class="input" name="price" placeholder="Giá của sản phẩm" required />
			<div class="avatar-and-category">
				<div class="avatar">
					<label for="productImage" class="place-holder"></label> 
					<label for="productImage" class="text">Chọn ảnh đại diện</label> 
					<input class="choose-avatar" type="file" name="productImage_path" id="productImage" accept="image/*" required/>
				</div>

				<div class="category">
					<select class="select" name="id_category"  required>
						<option value="" disabled selected>Chọn danh mục</option>
						<c:forEach var="category" items="${categoryList}">
							<option value="${category.id_category}">${category.name}</option>
						</c:forEach>
					</select>
				</div>
			</div>
			<button type="submit" class="add-product">Thêm Sản Phẩm</button>
		</form>
		
		<!-- Quản lý sản phẩm -->
		<div class="quanly-sp">
			<table class="table">
				<thead class="thead">
					<tr>
						<th>Thông tin sản phẩm</th>
						<th>Doanh số</th>
						<th>Giá</th>
						<th>Kho hàng</th>
						<th>Thao tác</th>
					</tr>
				</thead>
				
				<tbody class="tbody">
				    <c:forEach var="product" items="${productList}">
				        <tr>
				            <td>
				                <div class="product-name">
				                	<div class="product-image"></div>
				                    	<div class="flex-column">
				                    	<img src="${pageContext.request.contextPath}/${product.img_path}" alt="Product Image">
				                        <span class="name">${product.name}</span>
				                        <!-- <span class="category">Phân loại</span> -->
										<span class="category">${product.categoryName}</span>
				                    	</div>
				                </div>
				            </td>
				            <td><span class="sales">0</span></td>
				            <td><span class="price-range">${product.price}</span></td>
				            <td><span class="quantity-available">0</span></td>
				            
				            <td>
				                <div class="actions">
				                    <button class="edit button">
				                        <span>Chỉnh sửa</span>
				                    </button>
				                    <!--  <p>ID của sản phẩm: ${product.id_product}</p>-->
				                   <form class = "delete button" action="<%= request.getContextPath() %>/delete" method="post">
										<input type="hidden" name="id_product" value="${product.id_product}">
									    <button class = "delete button" type="submit">Xóa</button>
									</form>
				                </div>
				            </td>
				        </tr>
				    </c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>


</html>
