<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <!-- JSTL Core Taglib -->
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %> <!-- Spring TagLib for form handling -->

<!DOCTYPE html>
<html lang="en">
<head>
    <title>View Educational Materials</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #fff;
            color: #333;
            display: flex;
            height: 100vh;
        }

        .main-content {
            margin-left: 270px;
            padding: 20px;
            flex-grow: 1;
            overflow-y: auto;
        }

        h1 {
            text-align: center;
            margin-top: 20px;
            font-size: 24px;
            color: #333;
        }

        table {
            margin: 20px auto;
            width: 80%;
            border-collapse: collapse;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 15px;
            border: 1px solid #ccc;
            text-align: left;
            font-size: 16px;
        }

        th {
            background-color: #444;
            color: #fff;
        }

        td {
            background-color: #f9f9f9;
        }

        footer {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 10px;
            width: 100%;
            position: fixed;
            bottom: 0;
            left: 250px;
        }
    </style>
</head>
<body>

    <%@ include file="EducatorDashboard.jsp" %> <!-- Include the Educator Dashboard -->

    <!-- Main Content -->
    <div class="main-content">
        <h1>List of Educational Materials</h1>
        <table>
            <thead>
                <tr>
                    <th>Title</th>
                    <th>Description</th>
                    <th>Tags</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="material" items="${materialList}">
                    <tr>
                        <td>${material.title}</td>
                        <td>${material.description}</td>
                        <td>${material.tags}</td>
                        <td>
                            <form method="post" action="${pageContext.request.contextPath}/deleteMaterial">
                                <input type="hidden" name="id" value="${material.id}" />
                                <button type="submit">Delete</button>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

        <!-- Display success or error message -->
        <c:if test="${not empty message}">
            <div class="alert alert-success">${message}</div>
        </c:if>
        <c:if test="${not empty error}">
            <div class="alert alert-danger">${error}</div>
        </c:if>
    </div>
</body>
</html>
