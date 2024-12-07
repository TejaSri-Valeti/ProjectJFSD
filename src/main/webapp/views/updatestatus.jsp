<%@ page import="com.klef.jfsd.springboot.Models.Educator" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View All Educators</title>
    <style>
        /* Styling remains the same as your original code */
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
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-color: #f9f9f9;
            padding-bottom: 0;
        }
        h1 {
            color: #333;
            text-align: center;
            margin-bottom: 20px;
        }
        .container {
            width: 90%;
            max-width: 812px;
            margin-left: 15%;
            margin-right: 0;
            transform: translateX(20%);
            padding-bottom: 0;
        }
        #searchInput {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 1em;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        table {
            width: 120%;
            margin-top: 20px;
            border-collapse: collapse;
            border-radius: 8px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.5);
            overflow: hidden;
            display: block;
            overflow-x: auto;
            margin-bottom: 0;
            table-layout: fixed;
        }
        th, td {
            padding: 8px 12px;
            text-align: left;
            border: 1px solid #ddd;
            background: #fff;
            transition: background-color 0.3s, transform 0.3s;
            font-size: 0.9em;
            word-wrap: break-word;
            max-width: 200px;
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
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
        .action-btns {
            display: flex;
            gap: 10px;
        }
        .accept-btn, .reject-btn {
            padding: 5px 10px;
            font-size: 0.9em;
            cursor: pointer;
            border-radius: 5px;
            border: none;
            transition: background-color 0.3s;
        }
        .accept-btn {
            background-color: green;
            color: white;
        }
        .accept-btn:hover {
            background-color: darkgreen;
        }
        .reject-btn {
            background-color: red;
            color: white;
        }
        .reject-btn:hover {
            background-color: darkred;
        }
    </style>
</head>
<body>
<%@ include file="admindashboard.jsp" %>

<div class="container">
    <h1>Educator List</h1>

    <!-- Search bar placed above the table -->
    <input type="text" id="searchInput" placeholder="Search for educators...">

    <table align="center" border="2">
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
                <th>Status</th>
                <th>Action</th> <!-- Added Action column -->
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
                    <td><a href="${educator.linkedin}" target="_blank">LinkedIn</a></td>

                    <td>${educator.status }</td>
                    <td class="action-btns">
                        <!-- Accept and Reject buttons with links to perform admin actions -->
                        <form action="/updatestatus" method="get">
                            <input type="hidden" name="educatorId" value="${educator.id}" />
                            <input type="hidden" name="approvalStatus" value="approved" />
                            <button type="submit" class="accept-btn">Accept</button>
                        </form>
                        <form action="/updatestatus" method="get">
                            <input type="hidden" name="educatorId" value="${educator.id}" />
                            <input type="hidden" name="approvalStatus" value="rejected" />
                            <button type="submit" class="reject-btn">Reject</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
