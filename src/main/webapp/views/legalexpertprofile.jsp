<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Legal Expert Profile</title>
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }

        body {
            display: flex;
            min-height: 100vh;
            background-color: #f4f4f4;
            color: #333;
        }

        /* Sidebar already handled by LegalExpertDashboard.jsp */

        /* Content area styling */
        .content {
            margin-left: 250px; /* Adjusted for sidebar width */
            padding: 20px;
            width: calc(100% - 250px);
            background-color: white;
            color: #333;
        }

        .content h1 {
            color: #222;
            margin-bottom: 20px;
        }

        .profile-container {
            max-width: 600px;
            width: 100%;
            padding: 20px;
            background: white;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        .profile-details {
            margin-top: 20px;
        }

        .profile-details p {
            font-size: 18px;
            color: #555;
            margin: 10px 0;
        }

        .profile-details span {
            font-weight: bold;
            color: #000;
        }

        @media (max-width: 768px) {
            .content {
                margin-left: 200px; /* Adjust for smaller sidebar width */
            }
        }

        @media (max-width: 576px) {
            .content {
                margin-left: 0; /* Full width when sidebar collapses */
            }
        }
    </style>
</head>
<body>
    <!-- Sidebar -->
    <%@ include file="legalexpertdashboard.jsp" %>

    <!-- Content area for profile -->
    <div class="content">
        <div class="profile-container">
            <h1>Legal Expert Profile</h1>
            <div class="profile-details">
                <p><span>ID:</span> ${legalExpert.id}</p>
                <p><span>Username:</span> ${legalExpert.username}</p>
                <p><span>Email:</span> ${legalExpert.email}</p>
                <p><span>Mobile:</span> ${legalExpert.mobile}</p>
                <p><span>Status:</span> ${legalExpert.status}</p>
                <p><span>Cases Handled:</span> ${legalExpert.casesHandled}</p>
                <p><span>Current Organization:</span> ${legalExpert.currentOrganization}</p>
                <p><span>Education:</span> ${legalExpert.education}</p>
                <p><span>Experience:</span> ${legalExpert.experience} years</p>
                <p><span>Specialization:</span> ${legalExpert.specialization}</p>
                <p><span>LinkedIn:</span> <a href="${legalExpert.linkedin}" target="_blank">${legalExpert.linkedin}</a></p>
            </div>
        </div>
    </div>
</body>
</html>
