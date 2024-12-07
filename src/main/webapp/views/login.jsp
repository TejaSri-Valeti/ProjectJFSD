<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Citizen Login</title>
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
        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        button {
            width: 100%;
            padding: 12px;
            background-color: #00BFA6;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s;
        }
        button:hover {
            background-color: #00796B;
        }
        .icon {
            display: inline-block;
            width: 24px;
            height: 24px;
            margin-right: 10px;
            vertical-align: middle;
        }
        .icon img {
            width: 100%;
            height: auto;
        }
        .login-container p {
            color: white;
            margin-top: 15px;
        }
        .login-container a {
            color: #00BFA6;
            text-decoration: none;
        }
        .login-container a:hover {
            text-decoration: underline;
        }
        .role-links {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
            color: white;
        }
        .role-links a {
            color: #00BFA6;
            text-decoration: none;
            padding: 10px;
            border-radius: 5px;
            background-color: rgba(0, 191, 166, 0.1);
            transition: background-color 0.3s;
            flex: 1;
            text-align: center;
            margin: 0 5px;
        }
        .role-links a:hover {
            background-color: rgba(0, 191, 166, 0.2);
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h1>CITIZEN LOGIN</h1>
        
        <!-- Error message block -->
        <% if(request.getAttribute("error") != null) { %>
            <div style="color:red;">
                <%= request.getAttribute("error") %>
            </div>
        <% } %>
        
        <form id="loginForm" action="citizenlogin" method="POST">
            <div>
                <span class="icon"><img src="https://img.icons8.com/material-rounded/24/FFFFFF/user.png"/></span>
                <input type="text" id="username" name="username" placeholder="Username" required>
            </div>
            <div>
                <span class="icon"><img src="https://img.icons8.com/material-rounded/24/FFFFFF/lock-2.png"/></span>
                <input type="password" id="password" name="password" placeholder="Password" required>
            </div>
            <button type="submit">LOGIN</button>
            <p>If not registered, <a href="register">Register here</a></p>
        </form>
