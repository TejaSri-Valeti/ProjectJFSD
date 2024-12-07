<%@ page import="com.klef.jfsd.springboot.Models.Educator" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View All Educators</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-color: #f9f9f9;
            padding-bottom: 0; /* Remove any extra padding */
        }
        h1 {
            color: #333;
            text-align: center;
            margin-bottom: 20px;
        }
        .container {
            width: 90%;
            max-width: 812px;
            margin-left: 15%; /* Move the container further to the right */
            margin-right: 0;  /* Ensure it's aligned to the right */
            transform: translateX(20%); /* Additional adjustment to move right */
            padding-bottom: 0; /* Remove any extra padding */
        }
        #searchInput {
            width: 100%; /* Full width of the container */
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 1em;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        table {
            width: 102%; /* Full width of the container */
            margin-top: 20px;
            border-collapse: collapse;
            border-radius: 8px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.5);
            overflow: hidden;
            display: block;
            overflow-x: auto; /* Allow horizontal scrolling */
            margin-bottom: 0; /* Remove extra space at the bottom of the table */
            table-layout: fixed; /* Make the table columns stable */
        }
        th, td {
            padding: 8px 12px; /* Increased padding for better readability */
            text-align: left;
            border: 1px solid #ddd;
            background: #fff;
            transition: background-color 0.3s, transform 0.3s;
            font-size: 0.9em;
            word-wrap: break-word;
            max-width: 200px; /* Allow content to wrap if too long */
            white-space: nowrap; /* Prevent text wrapping */
            overflow: hidden;
            text-overflow: ellipsis; /* Show ellipsis for overflow text */
        }
        th {
            background: linear-gradient(to bottom, #222, #444);
            color: white;
            font-weight: bold;
        }
        tbody tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        tbody tr:hover {
            background-color: #f2f2f2;
            transform: translateY(-3px);
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.3);
        }
        tbody tr:hover td {
            background-color: #fff;
        }
        td a {
            color: #222;
            text-decoration: none;
        }
        td a:hover {
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
    <h1>Educator List</h1>

    <!-- Search bar placed above the table -->
    <input type="text" id="searchInput" placeholder="Search for educators...">

    <table>
        <thead>
            <tr>
                <th>Username</th>
                <th>Email</th>
                <th>Mobile</th>
                <th>Subject</th>
                <th>Experience</th>
                <th>Education</th>
                <th>Institution</th>
                <th>LinkedIn</th>
                <!-- Action Column for view/edit links -->
            </tr>
        </thead>
        <tbody>
            <c:forEach var="educator" items="${educatorList}">
                <tr>
                    <td>${educator.username}</td>
                    <td>${educator.email}</td>
                    <td>${educator.mobile}</td>
                    <td>${educator.subject}</td>
                    <td>${educator.experience}</td>
                    <td>${educator.education}</td>
                    <td>${educator.institution}</td>
                    <td><a href="${educator.linkedin}" target="_blank">LinkedIn</a></td><!-- Display password (consider security implications) -->
               </tr>
            </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
