<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
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
            background-color: rgba(255, 255, 255, 0.85);
            padding: 20px;
            border-radius: 10px;
            width: 280px;
            color: black;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
        }
        h1 {
            text-align: center;
            font-size: 1.8em;
            color: #333;
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
        input[type="tel"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
            background-color: #f9f9f9;
            color: #333;
        }
        button {
            width: 100%;
            padding: 10px;
            background-color: #333;
            border: none;
            border-radius: 5px;
            color: white;
            font-size: 1.1em;
            cursor: pointer;
        }
        button:hover {
            background-color: #555;
        }
        .error {
            color: red;
            font-size: 0.9em;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <div class="overlay"></div>
    <div class="container">
        <form action="/registerCitizen" method="post" id="registerForm">
            <h1>Register</h1>

            <label for="username">Username:</label>
            <input type="text" id="username" name="username" placeholder="Enter your username" required>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" placeholder="Enter your email" required>

            <label for="mobile">Mobile Number:</label>
            <input type="tel" id="mobile" name="mobile" placeholder="Enter your mobile number" required>

            <!-- Password Field -->
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" placeholder="Enter your password" required minlength="8" maxlength="8" style="padding-right: 30px;">
            <div id="passwordError" class="error"></div>

            <!-- Confirm Password Field -->
            <label for="confirm_password">Confirm Password:</label>
            <input type="password" id="confirm_password" name="confirm_password" placeholder="Confirm your password" required>
            <div id="confirmPasswordError" class="error"></div>

            <button type="button" onclick="validateForm()">Register</button>
        </form>
    </div>

    <script>
        function validateForm() 
        {
            const emailField = document.getElementById("email").value;
            const mobileField = document.getElementById("mobile").value;
            const passwordField = document.getElementById("password").value;
            const confirmPasswordField = document.getElementById("confirm_password").value;
            const passwordError = document.getElementById("passwordError");
            const confirmPasswordError = document.getElementById("confirmPasswordError");

            // Clear previous error messages
            passwordError.textContent = "";
            confirmPasswordError.textContent = "";

            // 2. Confirm Password Validation
            if (passwordField !== confirmPasswordField) {
                confirmPasswordError.textContent = "Passwords do not match.";
                return false;
            }

            // 3. Email Validation (Second Check)
            const emailPattern = /^[a-zA-Z0-9._%+-]+@(kluniversity\.in|gmail\.com)$/;
            if (!emailPattern.test(emailField)) {
                passwordError.textContent = "Email must end with '@kluniversity.in' or '@gmail.com'.";
                return false;
            }

            // 4. Mobile Number Validation (Third Check)
            const mobilePattern = /^[6-9]\d{9}$/;
            if (!mobilePattern.test(mobileField)) {
                passwordError.textContent = "Mobile number must start with 6, 7, 8, or 9 and be 10 digits long.";
                return false;
            }

            // If all validations pass, submit the form
            document.getElementById("registerForm").submit();
        }
    </script>
</body>
</html>
