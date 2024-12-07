<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Indian Constitution Awareness Platform</title>
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
        .content {
            max-width: 900px;
            margin: 50px auto;
            background-color: #000; /* Black background */
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 6px 20px rgba(255, 255, 255, 0.1); /* Subtle white shadow */
        }

        .content h2 {
            font-size: 2.5em;
            color: #fff; /* White heading */
            text-align: center;
            margin-bottom: 30px;
        }

        /* Team Section */
        .team-container {
            display: flex;
            justify-content: space-around;
            align-items: center;
            gap: 20px;
        }

        .team-member {
            text-align: center;
            flex: 1; /* Allow the images to take equal width */
            max-width: 250px;
        }

        .team-member img {
            width: 100%;
            height: auto;
            max-width: 200px; /* Uniform max width for images */
            border-radius: 10px; /* Rounded corners for images */
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.1); /* Shadow for images */
        }

        .team-info {
            margin-top: 10px;
            text-align: center;
        }

        .team-info h3 {
            font-size: 1.5em;
            color: #fff;
            margin: 5px 0;
        }

        .team-details p {
            margin: 5px 0;
            color: #ccc;
        }

        /* Footer Section */
        footer {
            background-color: #000; /* Black background */
            color: #fff; /* White text */
            text-align: center;
            padding: 20px;
            margin-top: 40px;
            box-shadow: 0 -4px 8px rgba(0, 0, 0, 0.1); /* Shadow for depth */
        }

        footer p {
            font-size: 1em;
            margin: 0; /* No margin for footer text */
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .team-container {
                flex-direction: column; /* Stack team photos vertically */
                gap: 30px;
            }

            .team-member {
                max-width: none;
                width: 80%; /* Allow larger width on mobile */
                margin: 0 auto;
            }
        }
    </style>
</head>

<body>
    <header>
        <h1>Welcome to RIGHTWISE</h1>
        <img src="https://static.india.com/wp-content/uploads/2022/11/Constitution-Day-2022.png" alt="RIGHTWISE Logo">
    </header>

    <div class="navbar">
        <nav>
            <a href="${pageContext.request.contextPath}/AdminLogin">Admin</a>
            <a href="${pageContext.request.contextPath}/index3">Citizen</a>
            <a href="${pageContext.request.contextPath}/index4">Educator</a>
            <a href="${pageContext.request.contextPath}/index5">Legal Expert</a>
            <a href="${pageContext.request.contextPath}/index6">About Us</a>
            <a href="${pageContext.request.contextPath}/index7">Contact Us</a>
        </nav>
    </div>

    <div class="content">
        <h2>Meet the Team</h2>
        <div class="team-container">
            <div class="team-member">
                <img src="${pageContext.request.contextPath}/images/teja.jpg" alt="V Teja Sri">
                <div class="team-info">
                    <h3>V.Teja Sri</h3>
                    <p>2200032028</p>
                    <p>Team Lead</p>
                </div>
            </div>
            <div class="team-member">
                <img src="${pageContext.request.contextPath}/images/sindhu.jpg" alt="N Sindhu">
                <div class="team-info">
                    <h3>N.Sindhu</h3>
                    <p>2200030987</p>
                    <p>Developer</p>
                </div>
            </div>
            <div class="team-member">
                <img src="${pageContext.request.contextPath}/images/neha.jpg" alt="M Neha">
                <div class="team-info">
                    <h3>M.Neha Chowdary</h3>
                    <p>2200030532</p>
                    <p>Developer</p>
                </div>
            </div>
        </div>
    </div>

    <footer>
        <p>&copy; 2024 RIGHTWISE - All Rights Reserved</p>
    </footer>
</body>
</html>
