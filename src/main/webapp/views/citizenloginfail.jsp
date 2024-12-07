<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Failed</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: url('https://tse1.mm.bing.net/th?id=OIP.ScL2OS_gpnBReVPm3dHqnQHaEc&pid=Api&P=0&h=180') no-repeat center center fixed;
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .login-container {
            background-color: rgba(10, 61, 78, 0.8);
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
            text-align: center;
            width: 320px;
        }
        .login-container h1 {
            color: white;
            font-size: 24px;
            margin-bottom: 20px;
        }
        .error-message {
            color: red;
            font-size: 16px;
            margin-bottom: 20px;
        }
        .back-button {
            background-color: #00BFA6;
            color: white;
            padding: 12px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s;
        }
        .back-button:hover {
            background-color: #00796B;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h1>Login Failed</h1>
        
        <!-- Display the error message -->
        <% if(request.getAttribute("error") != null) { %>
            <div class="error-message">
                <%= request.getAttribute("error") %>
            </div>
        <% } %>

        <p>Please check your credentials and try again.</p>
        <a href="login">
            <button class="back-button">Back to Login</button>
        </a>
    </div>
</body>
</html>
