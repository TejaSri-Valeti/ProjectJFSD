<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Legal Expert Register</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            min-height: 100vh;
            display: flex;
            justify-content: flex-start; /* Align content to the left */
            align-items: flex-start; /* Align content to the top */
            background-image: url('https://tse1.mm.bing.net/th?id=OIP.ScL2OS_gpnBReVPm3dHqnQHaEc&pid=Api&P=0&h=180');
            background-size: cover;
            background-position: center;
            font-family: Arial, sans-serif;
            position: relative;
        }
        .overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
        }
        .container {
            position: relative;
            z-index: 1;
            background-color: rgba(255, 255, 255, 0.95);
            padding: 30px;
            border-radius: 10px;
            max-width: 700px; /* Can be reduced for smaller containers */
            width: 80%; /* Decreased width to avoid taking full screen */
            color: black;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            margin-left: 20px; /* Move content to the left */
            overflow-y: auto;
        }
        h1 {
            text-align: center;
            font-size: 1.8em;
            color: #333;
            margin-bottom: 20px;
        }
        label {
            display: block;
            margin-bottom: 6px;
            font-weight: bold;
            color: #333;
        }
        input[type="text"],
        input[type="password"],
        input[type="email"],
        input[type="tel"],
        input[type="number"],
        select,
        textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
            background-color: #f9f9f9;
            color: #333;
        }
        button {
            width: 100%;
            padding: 12px;
            background-color: #333;
            border: none;
            border-radius: 5px;
            color: white;
            font-size: 1.1em;
            cursor: pointer;
            margin-top: 15px;
        }
        button:hover {
            background-color: #555;
        }
        @media screen and (max-width: 768px) {
            .form-row {
                flex-direction: column;
            }
            .form-column {
                width: 100%;
            }
            .container {
                width: 95%; /* Smaller width on mobile devices */
                margin-left: 10px; /* Adjust left margin for mobile */
            }
        }
    </style>
</head>
<body>
    <div class="overlay"></div>
    <div class="container">
<form action="registerLegalExpert" method="post" id="registerForm">
        
       <c:if test="${not empty errorMessage}">
    <div class="error-message">
        ${message}
    </div>
</c:if>

            <h1>Legal Expert Registration</h1>

            <label for="username">Username:</label>
            <input type="text" id="username" name="username" placeholder="Enter your username" required>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" placeholder="Enter your email" required>

            <label for="mobile">Mobile:</label>
            <input type="tel" id="mobile" name="mobile" placeholder="Enter your mobile" required>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" placeholder="Enter your password" required>

            <label for="cases_handled">Previous Cases Handled:</label>
            <textarea id="cases_handled" name="casesHandled" rows="3" placeholder="Describe your previous cases" required></textarea>

            <label for="current_organization">Current Organization:</label>
            <input type="text" id="current_organization" name="currentOrganization" placeholder="Enter your current organization" required>

            <label for="education">Education:</label>
            <textarea id="education" name="education" rows="3" placeholder="Enter your education details" required></textarea>

            <label for="linkedin">LinkedIn Profile:</label>
            <input type="text" id="linkedin" name="linkedin" placeholder="Enter your LinkedIn profile URL">

            <label for="specialization">Specialization:</label>
            <input type="text" id="specialization" name="specialization" placeholder="Enter your specialization" required>

            <label for="experience">Experience (years):</label>
            <input type="number" id="experience" name="experience" placeholder="Enter your experience in years" required>

            <button type="submit">Register</button>
        </form>
    </div>
</body>
</html>
