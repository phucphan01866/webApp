<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Cập nhật sản phẩm</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" type="text/css" href="resources\css\admin\update.css" />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap"
    />
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
      <form class="update_form">
        <h2>Cập Nhật Thông Tin Sản Phẩm</h2>
        <div class="left">
          <div class="product-name container block">
            <label for="name" class="product-name-label"
              >Tên của sản phẩm:</label
            >
            <input
              id="name"
              class="product-name-input input left"
              type="text"
              value="Sản Phẩm ABCD"
            />
          </div>

          <div class="price_and_category container">
            <div class="block input product_SKU">
              <label for="id" class="caption">Mã sản phẩm:</label>
              <input id="id" type="text" value="EC79" />
            </div>
            <div class="product-price block">
              <label for="price" class="product-price-label"
                >Giá của sản phẩm:</label
              >
              <div class="input-price-box">
                <input
                  id="price"
                  class="product-price-input input"
                  type="text"
                  value="1.000.000"
                />
                <div class="product-price-symbol">₫</div>
              </div>
            </div>
          </div>
          <div class="product-description container">
            <label for="description" class="product-description-label"
              >Mô tả:</label
            >
            <textarea
              class="product-description-input input"
              name="description"
              id="description"
            >Nhập mô tả ở đây.</textarea
            >
          </div>
        </div>
        <div class="right">
          <div class="block options spec">
            <div class="caption">Lựa chọn cấu hình:</div>
            <div class="options-list">
              <div class="option">
                <button><img src="image\x_icon.png" alt="" /></button>
                <button><img src="resources\images\form_update\x_icon.png" alt="" /></button>
                R5 6600H, 512 GB
              </div>
              <div class="option">
                <button><img src="image\x_icon.png" alt="" /></button>
                <button><img src="resources\images\form_update\x_icon.png" alt="" /></button>
                I7 12800H, 512 GB
              </div>
              <button class="add-option-button option">
                <img src="resources\images\form_update\+_icon.png" alt="" />
              </button>
            </div>
          </div>
          <div class="block options color">
            <div class="caption">Lựa chọn màu sắc:</div>
            <div class="options-list">
              <div class="option">
                <button><img src="resources\images\form_update\x_icon.png" alt="" /></button>
                Xanh đen
              </div>
              <div class="option">
                <button><img src="resources\images\form_update\x_icon.png" alt="" /></button>
                Bạch kim
              </div>
              <button class="add-option-button option">
                <img src="resources\images\form_update\+_icon.png" alt="" />
              </button>
            </div>
          </div>
          <div class="block input">
            <label for="category" class="product-category-label"
              >Danh mục sản phẩm</label
            >
            <select id="category" class="product-category-input input">
              <option value="default" selected>Chọn danh mục</option>
              <option value="saab">Saab</option>
              <option value="fiat">Fiat</option>
              <option value="audi">Audi</option>
            </select>
          </div>
          <div class="block input number-stock">
            <label for="stock" class="caption">Số lượng tồn kho:</label>
            <input id="stock" type="number" value="1.000" />
          </div>
          <div class="block main-image">
            <div class="caption">Chọn một ảnh đại diện</div>
            <button class="main-image">
              <img src="resources\images\form_update\image_icon.png" alt="" />
            </button>
          </div>
          <div class="block sub-images">
            <div class="caption">Chọn tối đa bốn ảnh đại diện</div>
            <div class="sub-images-list">
              <button class="sub-image">
                <img src="resources\images\form_update\image_icon.png" alt="" />
              </button>
              <button class="sub-image">
                <img src="resources\images\form_update\image_icon.png" alt="" />
              </button>
              <button class="sub-image">
                <img src="resources\images\form_update\image_icon.png" alt="" />
              </button>
              <button class="sub-image">
                <img src="resources\images\form_update\image_icon.png" alt="" />
              </button>
            </div>
          </div>
        </div>
        <button class="submit-update">Cập nhật</button>
      </form>
    </div>
  </body>
</body>
</html>
