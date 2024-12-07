<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us - RIGHTWISE</title>
    <style>
        /* Global Styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #000; /* Black background */
            color: #fff; /* White text for contrast */
        }

        /* Header Section */
        header {
            background-color: #222; /* Dark grey for header */
            color: #fff;
            text-align: center;
            padding: 30px 0;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.5);
        }

        header h1 {
            font-size: 2.5em;
            font-weight: bold;
            margin: 0;
        }

        header img {
            max-width: 80px;
            height: auto;
            margin-top: 10px;
            border-radius: 50%;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        /* Navigation Bar */
        nav {
            background-color: #333;
            padding: 15px;
            text-align: center;
        }

        nav a {
            margin: 0 15px;
            text-decoration: none;
            color: #fff;
            font-size: 1.1em;
            padding: 10px 20px;
            border-radius: 5px;
            transition: background-color 0.3s, color 0.3s;
        }

        nav a:hover {
            background-color: #555;
            color: #fff;
        }

        /* Main Content Section */
        .main-container {
            max-width: 900px;
            margin: 50px auto;
            background-color: #000; /* Black background */
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 6px 20px rgba(255, 255, 255, 0.1); /* Subtle white shadow */
        }

        .main-container h2 {
            text-align: center;
            color: #fff; /* White heading */
            margin-bottom: 30px;
        }

        /* Table Styling */
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 0 auto;
            background-color: #000; /* Black table background */
            color: #fff; /* White text for contrast */
            border-radius: 10px;
        }

        table td {
            padding: 10px;
            vertical-align: top;
            border: 1px solid #555; /* Slightly lighter border for contrast */
        }

        table td:first-child {
            width: 10%;
            text-align: right;
            font-weight: bold;
        }

        table td:last-child {
            width: 80%;
        }

        input[type="text"],
        input[type="email"],
        textarea {
            width: 95%;
            padding: 10px;
            font-size: 1em;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #222; /* Dark input fields */
            color: #fff; /* White text in input fields */
        }

        textarea {
            resize: none;
        }

        /* Button Styling */
        .button-container {
            text-align: center;
        }

        .button-container input[type="submit"],
        .button-container input[type="reset"] {
            background-color: #444; /* Dark grey buttons */
            color: #fff;
            padding: 10px 20px;
            font-size: 1em;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin: 10px;
            transition: background-color 0.3s;
        }

        .button-container input[type="submit"]:hover,
        .button-container input[type="reset"]:hover {
            background-color: #555;
        }

        /* Footer Section */
        footer {
            background-color: #222;
            color: #fff;
            text-align: center;
            padding: 20px;
            margin-top: 50px;
        }

        footer p {
            margin: 0;
        }

        footer a {
            color: #fff;
            text-decoration: underline;
        }

        /* Message Box Styling */
        .message-box {
            background-color: #111;
            color: #fff;
            border: 1px solid #555;
            padding: 10px;
            margin-bottom: 20px;
            border-radius: 5px;
        }

        .message-box span {
            font-weight: bold;
        }
    </style>
</head>
<body>
    <header>
        <h1>Contact Us - RIGHTWISE</h1>
        <img src="https://static.india.com/wp-content/uploads/2022/11/Constitution-Day-2022.png" alt="RIGHTWISE Logo">
    </header>

    <nav>
        <a href="AdminLogin">Admin</a>
        <a href="index3">Citizen</a>
        <a href="index4">Educator</a>
        <a href="index5">Legal Expert</a>
        <a href="index6">About Us</a>
        <a href="index7">Contact Us</a>
    </nav>

    <div class="main-container">
        <h2>Contact Us</h2>
        <!-- Display Dynamic Message -->
        <c:if test="${not empty message}">
            <div class="message-box">
                <span>Message:</span> ${message}
            </div>
        </c:if>
        <!-- Contact Form -->
        <form method="post" action="sendemail">
            <table>
                <tr>
                    <td><label for="name">Name:</label></td>
                    <td><input type="text" id="name" name="name" placeholder="Enter your name" required></td>
                </tr>
                <tr>
                    <td><label for="email">Email ID:</label></td>
                    <td><input type="email" id="email" name="email" placeholder="Enter your email" required></td>
                </tr>
                <tr>
                    <td><label for="subject">Subject:</label></td>
                    <td><input type="text" id="subject" name="subject" placeholder="Enter subject" required></td>
                </tr>
                <tr>
                    <td><label for="message">Message:</label></td>
                    <td><textarea id="message" name="message" rows="5" placeholder="Enter your message" required></textarea></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Send">
                        <input type="reset" value="Clear">
                    </td>
                </tr>
            </table>
        </form>
    </div>

    <footer>
        <p>For inquiries, email us at: <a href="mailto:2200032028cseh@gmail.com">2200032028cseh@gmail.com</a></p>
    </footer>
</body>
</html>
