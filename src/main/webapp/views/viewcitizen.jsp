<%@ page import="com.klef.jfsd.springboot.Models.Citizen" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View All Citizens</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-color: #f9f9f9;
        }
        h1 {
            color: #333;
            text-align: center;
            margin-bottom: 20px;
        }
        .container {
            width: 90%;
            max-width: 500px; /* Limit width for a compact layout */
            margin-left: 40%; /* Shift the container slightly to the right */
            text-align: center;
            padding-bottom: 0; /* Remove extra padding */
        }
        #searchInput {
            width: 50%; /* Adjusted for compact layout */
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 1em;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            display: block;
            margin-left: auto;
            margin-right: auto;
        }
        table {
            width: 100%; /* Full width of container */
            margin-top: 20px;
            border-collapse: collapse;
            border-radius: 8px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
            overflow-x: auto; /* Enable horizontal scrolling */
            display: block;
        }
        th, td {
            padding: 12px; /* Padding for better readability */
            text-align: left;
            border: 1px solid #ddd;
            font-size: 0.9em;
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
            background: #fff;
        }
        th {
            background: linear-gradient(to bottom, #333, #555);
            color: white;
            font-weight: bold;
        }
        tbody tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        tbody tr:hover {
            background-color: #f2f2f2;
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.3);
        }
        tbody tr:hover td {
            background-color: #fff;
        }
        a {
            color: #007bff;
            text-decoration: none;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
    $(document).ready(function() {
        $("#searchInput").on("keyup", function() {
            var value = $(this).val().toLowerCase();
            $("table tbody tr").filter(function() {
                $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
            });
        });
    });
    </script>
</head>
<body>
<%@ include file="admindashboard.jsp" %>

<div class="container">
    <h1>Citizen List</h1>

    <input type="text" id="searchInput" placeholder="Search for citizens...">

    <table>
        <thead>
            <tr>
                <th>Citizen ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Phone Number</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="citizen" items="${citizenList}">
                <tr>
                    <td>${citizen.id}</td>
                    <td>${citizen.username}</td>
                    <td>${citizen.email}</td>
                    <td>${citizen.mobile}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
