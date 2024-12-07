<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
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
            position: relative;
        }
        .eye-icon {
            position: absolute;
            right: 10px;
            top: 50%;
            transform: translateY(-50%);
            cursor: pointer;
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
    </style>
</head>
<body>
    <div class="overlay"></div>
    <div class="container">
        <form id="registerForm" onsubmit="return validateForm()">
            <h1>Register</h1>
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" placeholder="Enter your username" required>
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" placeholder="Enter your email" required>
            <label for="mobile">Mobile Number:</label>
            <input type="tel" id="mobile" name="mobile" placeholder="Enter your mobile number" required>
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" placeholder="Enter your password" required minlength="8" maxlength="20">
            <i class="fas fa-eye eye-icon" id="togglePassword" onclick="togglePasswordVisibility('password')"></i>

            <label for="confirm_password">Confirm Password:</label>
            <input type="password" id="confirm_password" name="confirm_password" placeholder="Confirm your password" required minlength="8" maxlength="20">
            <i class="fas fa-eye eye-icon" id="toggleConfirmPassword" onclick="togglePasswordVisibility('confirm_password')"></i>

            <button type="submit">Register</button>
            <p><a href="login.jsp">Login here</a></p>
        </form>
    </div>

    <script>
        // Toggle password visibility function
        function togglePasswordVisibility(fieldId) {
            var passwordField = document.getElementById(fieldId);
            var eyeIcon = document.getElementById("toggle" + fieldId.charAt(0).toUpperCase() + fieldId.slice(1));

            if (passwordField.type === "password") {
                passwordField.type = "text";
                eyeIcon.classList.remove("fa-eye");
                eyeIcon.classList.add("fa-eye-slash");
            } else {
                passwordField.type = "password";
                eyeIcon.classList.remove("fa-eye-slash");
                eyeIcon.classList.add("fa-eye");
            }
        }

        // Form validation
        function validateForm() {
            const email = document.getElementById('email').value;
            const mobile = document.getElementById('mobile').value;
            const password = document.getElementById('password').value;
            const confirmPassword = document.getElementById('confirm_password').value;

            // Email validation for @gmail.com
            const emailPattern = /^[a-zA-Z0-9._%+-]+@gmail\.com$/;
            if (!emailPattern.test(email)) {
                alert('Email must be in the format @gmail.com.');
                return false;
            }

            // Mobile number validation: starts with 6, 7, 8, or 9 and has 10 digits
            const mobilePattern = /^[6-9]\d{9}$/;
            if (!mobilePattern.test(mobile)) {
                alert('Mobile number must start with 6, 7, 8, or 9 and contain exactly 10 digits.');
                return false;
            }

            // Password length validation (min 8, max 20)
            if (password.length < 8 || password.length > 20) {
                alert('Password must be between 8 and 20 characters.');
                return false;
            }

            // Password pattern validation (at least 1 uppercase, 1 special character)
            const passwordPattern = /^(?=.*[A-Za-z])(?=.*[A-Z])(?=.*[!@#$%^&*])[A-Za-z\d!@#$%^&*]{8,20}$/;
            if (!passwordPattern.test(password)) {
                alert('Password must: \n- Start with a letter\n- Contain at least 1 uppercase letter\n- Contain at least 1 special character\n- Be between 8 and 20 characters long.');
                return false;
            }

            // Password match validation
            if (password !== confirmPassword) {
                alert('Passwords do not match.');
                return false; // Prevent form submission
            }

            // If validation passes, redirect to login page
            window.location.href = 'login';  // Redirect to login page
            return false;  // Prevent form submission
        }
    </script>
</body>
</html>
