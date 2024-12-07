<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Educator Registration</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            background-image: url("https://tse1.mm.bing.net/th?id=OIP.ScL2OS_gpnBReVPm3dHqnQHaEc&pid=Api&P=0&h=180");
            margin: 0;
            padding: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .form-container {
            width: 90%;
            max-width: 900px;
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }

        .form-section {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            gap: 20px;
        }

        .form-section div {
            flex: 1;
            min-width: 300px;
        }

        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
            font-size: 0.9em;
            color: #333;
        }

        input[type="text"],
        input[type="email"],
        input[type="tel"],
        input[type="number"],
        input[type="password"],
        input[type="url"],
        textarea {
            width: 100%;
            padding: 8px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 4px;
            background-color: #f9f9f9;
            font-size: 0.9em;
        }

        .button-container {
            display: flex;
            justify-content: center;
            gap: 15px;
            margin-top: 20px;
        }

        button {
            background-color: #333;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            font-size: 1em;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #555;
        }

        .success-message {
            text-align: center;
            font-size: 1.2em;
            color: #4CAF50;
            background-color: #dff0d8;
            border: 1px solid #d6e9c6;
            padding: 10px;
            border-radius: 5px;
            margin-bottom: 20px;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <form action="/eregister" method="post" id="registerForm">
            <h2>Educator Registration</h2>

            <!-- Success message display -->
            <c:if test="${not empty message}">
                <div class="success-message">
                    <c:out value="${message}" />
                </div>
            </c:if>

            <div class="form-section">
                <!-- Left Column -->
                <div>
                    <label for="username">Username:</label>
                    <input type="text" id="username" name="username" placeholder="Enter your username" required>

                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" placeholder="Enter your email" 
                           pattern="^[a-zA-Z0-9._%+-]+@gmail\.com$" 
                           title="Email must end with '@gmail.com'" 
                           required>

                    <label for="mobile">Mobile Number:</label>
                    <input type="tel" id="mobile" name="mobile" placeholder="Enter your mobile number" 
                           pattern="^[6-9]\d{9}$" 
                           title="Mobile number must start with 6, 7, 8, or 9 and be 10 digits long" 
                           required>

                    <label for="subject">Subject Specialty:</label>
                    <input type="text" id="subject" name="subject" placeholder="Enter your subject specialty" required>
                </div>

                <!-- Right Column -->
                <div>
                    <label for="experience">Years of Experience:</label>
                    <input type="number" id="experience" name="experience" placeholder="Enter years of experience" required min="0">

                    <label for="education">Education Qualifications:</label>
                    <textarea id="education" name="education" rows="3" placeholder="List your qualifications" required></textarea>

                    <label for="institution">Previously Worked Institution:</label>
                    <input type="text" id="institution" name="institution" placeholder="Enter previous institution" required>

                    <label for="linkedin">LinkedIn Profile:</label>
                    <input type="text" id="linkedin" name="linkedin" placeholder="Enter your LinkedIn profile URL">
                </div>
            </div>

            <!-- Full-width Password Fields -->
            <div class="form-section">
                <div style="width: 100%;">
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password" placeholder="Enter your password" required>

                    <label for="confirm_password">Confirm Password:</label>
                    <input type="password" id="confirm_password" name="confirm_password" placeholder="Confirm your password" required>
                </div>
            </div>

            <!-- Submit Button -->
            <div class="button-container">
                <button type="submit">Register</button>
            </div>
        </form>
    </div>
</body>
</html>
