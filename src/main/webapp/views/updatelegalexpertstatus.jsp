<%@ page import="com.klef.jfsd.springboot.Models.LegalExpert" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Legal Experts</title>
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
            max-width: 1200px;
            margin-left: 15%;
            margin-right: 0;
            transform: translateX(20%);
        }
        #searchInput {
            width: 110%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 1em;
        }
        table {
            width: 110%;
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
    <h1>Legal Experts List</h1>

    <input type="text" id="searchInput" placeholder="Search for legal experts...">

    <table>
        <thead>
            <tr>
                <th>Username</th>
                <th>Email</th>
                <th>Mobile</th>
                <th>Specialization</th>
                <th>Experience</th>
                <th>Education</th>
                <th>Organization</th>
                <th>Cases Handled</th>
                <th>LinkedIn</th>
                <th>Status</th>
                <th>Action</th> <!-- Added Action column -->
            </tr>
        </thead>
        <tbody>
            <c:forEach var="legalExpert" items="${legalExpertList}">
                <tr>
                    <td>${legalExpert.username}</td>
                    <td>${legalExpert.email}</td>
                    <td>${legalExpert.mobile}</td>
                    <td>${legalExpert.specialization}</td>
                    <td>${legalExpert.experience} years</td>
                    <td>${legalExpert.education}</td>
                    <td>${legalExpert.currentOrganization}</td>
                    <td>${legalExpert.casesHandled}</td>
                    <td><a href="${legalExpert.linkedin}" target="_blank">LinkedIn</a></td>
                    <td>${legalExpert.status }</td>
                    <td class="action-btns">
                        <!-- Accept and Reject buttons -->
                        <form action="/updatestatuslegalexpert" method="GET">
                            <input type="hidden" name="legalExpertId" value="${legalExpert.id}" />
                            <input type="hidden" name="approvalStatus" value="approved" />
                            <button type="submit" class="accept-btn">Approve</button>
                        </form>
                        <form action="/updatestatuslegalexpert" method="GET">
                            <input type="hidden" name="legalExpertId" value="${legalExpert.id}" />
                            <input type="hidden" name="approvalStatus" value="rejected" />
                            <button type="submit" class="reject-btn">Reject</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>

<script>
    document.getElementById("searchInput").addEventListener("keyup", function() {
        var filter = this.value.toUpperCase();
        var rows = document.querySelector("table tbody").rows;

        for (var i = 0; i < rows.length; i++) {
            var row = rows[i];
            var cells = row.getElementsByTagName("td");
            var match = false;

            for (var j = 0; j < cells.length; j++) {
                if (cells[j]) {
                    if (cells[j].textContent.toUpperCase().indexOf(filter) > -1) {
                        match = true;
                        break;
                    }
                }
            }

            row.style.display = match ? "" : "none";
        }
    });
</script>

</body>
</html>
