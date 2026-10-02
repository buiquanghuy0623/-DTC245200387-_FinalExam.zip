<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Quản Lý Sản Phẩm</title>
</head>
<body>
    <h2>Danh Sách Sản Phẩm</h2>
    <p><a href="new">Thêm Sản Phẩm Mới</a></p>
    <table border="1" cellpadding="5" cellspacing="0">
        <tr>
            <th>ID</th>
            <th>Tên sản phẩm</th>
            <th>Giá</th>
            <th>Số lượng</th>
            <th>Thao tác</th>
        </tr>
        <c:forEach var="product" items="${listProduct}">
            <tr>
                <td><c:out value="${product.id}" /></td>
                <td><c:out value="${product.name}" /></td>
                <td><c:out value="${product.price}" /></td>
                <td><c:out value="${product.quantity}" /></td>
                <td>
                    <a href="edit?id=<c:out value='${product.id}' />">Sửa</a> &nbsp;|&nbsp;
                    <a href="delete?id=<c:out value='${product.id}' />" onclick="return confirm('Bạn có chắc muốn xóa sản phẩm này không?');">Xóa</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
