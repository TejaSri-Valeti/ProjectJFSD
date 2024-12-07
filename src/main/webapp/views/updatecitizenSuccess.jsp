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
            margin: 0;
            padding: 0;
            background-color: #f9f9f9;
            display: flex;
        }

        /* Style for the dashboard to be on the left */
        #dashboard {
            width: 250px; /* Width of the dashboard */
            background-color: #333;
            color: white;
            height: 100vh;
            position: fixed;
            top: 0;
            left: 0;
            padding: 20px;
            box-sizing: border-box;
        }

        /* Style for the content area */
        .content {
            margin-left: 250px; /* Leave space for the dashboard */
            padding: 20px;
            width: 100%;
            text-align: center;
        }

        h1 {
            color: #333;
            margin-bottom: 20px;
        }

        .container {
            width: 90%;
            max-width: 550px;
            margin: 0 auto;
            padding-bottom: 0;
        }

        table {
            width: 100%; 
            margin-top: 20px;
            border-collapse: collapse;
            border-radius: 8px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
            overflow-x: auto;
            display: block;
        }

        th, td {
            padding: 12px;
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
</head>
<body>

<%@ include file="admindashboard.jsp" %> <!-- This includes the admin dashboard -->

    <!-- Content Area where the Heading and Form will be Centered -->
    <div class="content">
        <h1>Updated Citizen Details</h1>
    </div>

</body>
</html>
