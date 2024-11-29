<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Admin Page</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" type="text/css" href="resources\css\admin\ordermgr.css" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" />
</head>
<body>
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
        <!--CONTENT-->
        <div class="content">
            <div class="filter-section">
                <input type="text" placeholder="Lọc theo số điện thoại">
                <input type="text" placeholder="Lọc theo mã đơn hàng">
                <button class="apply-button">Áp dụng</button>
                <button class="reset-button">Đặt lại</button>
            </div>
            <table class="product-table-header">
                <thead>
                    <tr>
                        <th>Sản phẩm</th>
                        <th>Trạng thái</th>
                        <th>Tổng đơn hàng</th>
                        <th>Mã đơn hàng</th>
                    </tr>
                </thead>
            </table>
            
            <table class="product-table">
                <tbody>
                    <tr class="product-row">
                        <td>
                            <div class="product-info">
                                <img src="resources/images/productexample/product1.png" alt="Product Image">
				                <span class="name-product">Tên sản phẩm</span>
								<span class="category-product">Phân loại</span>
                            </div>
                        </td>
                        <td>Chờ giao<br> <br>COD</td>
                        <td>187000₫</td>
                        <td>LTS241007001</td>
                    </tr>
                    
                    <!-- Repeat <tr> for additional products as needed -->
                </tbody>
            </table>

        </div>
	</div>
</body>
</html>
