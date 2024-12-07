<%@ page import="com.klef.jfsd.springboot.Models.Citizen"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Update Citizen Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            min-height: 100vh;
            margin: 0;
            background-color: #f9f9f9;
        }
        
        /* Sidebar */
        .sidebar {
            width: 250px;
            background-color: #333;
            color: white;
            height: 100vh;
            padding: 20px;
            position: fixed;
            top: 0;
            left: 0;
        }
        
        .sidebar a {
            color: white;
            display: block;
            padding: 10px;
            text-decoration: none;
            margin-bottom: 10px;
        }
        
        .sidebar a:hover {
            background-color: #555;
        }

        /* Content Area */
        .content {
            margin-left: 250px; /* Adjust for the sidebar width */
            padding: 20px;
            width: 100%;
            display: flex;
            justify-content: center;
            align-items: flex-start;
            flex-direction: column;
        }

        h1 {
            color: #333;
            text-align: center;
            margin-bottom: 20px;
            margin-left: 50px; /* Added margin to shift the heading to the right */
        }
        
        .container {
            width: 100%;
            max-width: 700px;
            text-align: left;
            padding: 20px;
            background: white;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        table {
            width: 100%;
            margin-top: 20px;
            border-collapse: collapse;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
            border-radius: 8px;
            background: #fff;
        }

        th, td {
            padding: 12px;
            text-align: left;
            border: 1px solid #ddd;
            font-size: 1em;
            background: #f9f9f9;
        }

        th {
            background: linear-gradient(to bottom, #333, #555);
            color: white;
            font-weight: bold;
        }

        td input {
            width: 100%;
            padding: 8px;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 14px;
            margin-bottom: 10px;
            background-color: #fafafa;
            transition: border-color 0.3s, box-shadow 0.3s;
        }

        td input:focus {
            border-color: #3a8df5;
            box-shadow: 0 0 5px rgba(58, 141, 245, 0.3);
            background-color: #fff;
        }

        input[type="submit"] {
            background-color: #333;
            color: #ffffff;
            font-weight: bold;
            border: none;
            padding: 10px 0;
            cursor: pointer;
            width: 100%;
            transition: background-color 0.3s;
            border-radius: 4px;
        }

        input[type="submit"]:hover {
            background-color: #555;
        }
    </style>
</head>
<body>

    <!-- Sidebar -->
    <div class="sidebar">
        <%-- Include your admin dashboard here --%>
        <%@ include file="admindashboard.jsp" %>
    </div>

    <!-- Main Content Area -->
    <div class="content">
        <h1>Update Citizen Details</h1>
        <div class="container">
            <form action="updatecitizen" method="post">
                <table>
                    <tr>
                        <th>Citizen ID</th>
                        <td><input type="number" name="cid" value="${citizen.id}" readonly/></td>
                    </tr>
                    <tr>
                        <th>Username</th>
                        <td><input type="text" name="username" value="${citizen.username}"/></td>
                    </tr>
                    <tr>
                        <th>Email</th>
                        <td><input type="email" name="email" value="${citizen.email}"/></td>
                    </tr>
                    <tr>
                        <th>Mobile</th>
                        <td><input type="text" name="mobile" value="${citizen.mobile}"/></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <input type="submit" value="Update Citizen" />
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </div>

</body>
</html>
