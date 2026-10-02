<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Biểu Mẫu Sản Phẩm</title>
</head>
<body>
    <h2>
        <c:if test="${product != null}">Cập Nhật Sản Phẩm</c:if>
        <c:if test="${product == null}">Thêm Mới Sản Phẩm</c:if>
    </h2>

    <form action="<c:out value='${product != null ? "update" : "insert"}' />" method="post">
        <c:if test="${product != null}">
            <input type="hidden" name="id" value="<c:out value='${product.id}' />" />
        </c:if>

        <table>
            <tr>
                <td>Tên sản phẩm:</td>
                <td><input type="text" name="name" value="<c:out value='${product.name}' />" required /></td>
            </tr>
            <tr>
                <td>Giá:</td>
                <td><input type="number" step="0.01" name="price" value="<c:out value='${product.price}' />" required /></td>
            </tr>
            <tr>
                <td>Số lượng:</td>
                <td><input type="number" name="quantity" value="<c:out value='${product.quantity}' />" required /></td>
            </tr>
            <tr>
                <td colspan="2"><button type="submit">Lưu</button></td>
            </tr>
        </table>
    </form>
    <p><a href="list">Trở về danh sách</a></p>
</body>
</html>
