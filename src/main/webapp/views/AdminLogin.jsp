<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>
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
        .icon img {
            width: 24px;
            height: 24px;
            margin-right: 10px;
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
    </style>
</head>
<body>
    <div class="login-container">
        <h1>ADMIN LOGIN</h1>
        <c:if test="${not empty message}">
            <p style="color: red;">${message}</p>
        </c:if>
        <form id="loginForm" action="checkadminlogin" method="post">
            <div>
                <input type="text" id="username" name="auname" placeholder="Username" required>
            </div>
            <div>
                <input type="password" id="password" name="apwd" placeholder="Password" required>
            </div>
            <button type="submit">LOGIN</button>
            <a href="index.jsp">Back</a>
        </form>
    </div>
</body>
</html>
