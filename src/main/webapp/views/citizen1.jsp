<%@page import="com.klef.jfsd.springboot.Models.Citizen"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%
    Citizen c1 = (Citizen) session.getAttribute("citizen");
    if (c1 == null) {
        response.sendRedirect("citizensessionexpiry");
        return;
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Educational Resources - Indian Constitution Project</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            min-height: 100vh;
        }
        /* Sidebar styling in citizendashboard.jsp */

        /* Main content styling */
        .content {
            margin-left: 260px; /* Matches sidebar width */
            padding: 20px;
            width: calc(100% - 260px); /* Adjust for sidebar */
            max-width: 900px;
            text-align: center;
        }
        .container {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 700px;
            margin: 20px auto;
            text-align: left;
        }
        h1 {
            color: #4CAF50;
            text-align: center;
        }
        .resource {
            background-color: #f9f9f9;
            padding: 15px;
            margin: 10px 0;
            border-radius: 8px;
            box-shadow: 0 1px 5px rgba(0, 0, 0, 0.1);
        }
        .resource h2 {
            margin: 0;
            font-size: 20px;
            color: #333;
        }
        .resource p {
            margin: 10px 0;
            color: #555;
        }
        .resource a {
            color: #4CAF50;
            text-decoration: none;
            font-weight: bold;
        }
        .resource a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <!-- Include Citizen Dashboard -->
    <%@ include file="citizendashboard.jsp" %>

    <!-- Main content section -->
    <div class="content">
        <div class="container">
            <h1>Indian Constitution Project Resources</h1>

            <div class="resource">
                <h2>1. The Preamble of the Indian Constitution</h2>
                <p>Understand the essence of the Indian Constitution through the preamble. It reflects the guiding principles and philosophy behind the constitution.</p>
                <a href="preamble" target="_blank">Read More</a>
            </div>

            <div class="resource">
                <h2>2. Fundamental Rights and Duties</h2>
                <p>Learn about the fundamental rights guaranteed to Indian citizens, along with the duties expected from them.</p>
                <a href="fundamentalrights" target="_blank">Read More</a>
            </div>

            <div class="resource">
                <h2>3. Directive Principles of State Policy</h2>
                <p>Explore the guidelines laid down for the governance of the country, aiming to create a just society.</p>
                <a href="directiveprinciples" target="_blank">Read More</a>
            </div>

            <div class="resource">
                <h2>4. Structure of Indian Government</h2>
                <p>An overview of the structure of the Indian government, including the legislative, executive, and judicial branches.</p>
                <a href="governmentstructure" target="_blank">Read More</a>
            </div>

            <div class="resource">
                <h2>5. Amendments to the Constitution</h2>
                <p>Find out about the major amendments that have shaped the Constitution over the years.</p>
                <a href="amendments" target="_blank">Read More</a>
            </div>
        </div>
    </div>
</body>
</html>
