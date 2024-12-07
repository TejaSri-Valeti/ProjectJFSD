<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Indian Constitution Awareness Platform</title>
    <style>
        /* Global Styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Arial', sans-serif;
        }

        body {
            background: #f5f5f5;
            color: #333;
            line-height: 1.6;
        }

        /* Header Section */
        header {
            background: linear-gradient(45deg, #282626, #66a3ff);
            color: white;
            text-align: center;
            padding: 20px 0;
        }

        marquee h1 {
            font-size: 2.5em;
            font-weight: bold;
            margin-bottom: 10px;
        }

        nav {
            margin-top: 10px;
        }

        nav a {
            background-color: white;
            color: #282626;
            text-decoration: none;
            padding: 10px 20px;
            font-weight: bold;
            border-radius: 5px;
            border: 2px solid #0044cc;
            transition: background-color 0.3s, color 0.3s;
        }

        nav a:hover {
            background-color: #282626;
            color: white;
        }

        /* Main Section */
        main {
            padding: 40px;
            max-width: 1200px;
            margin: 20px auto;
            background: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        main h2 {
            font-size: 2.5em;
            color: #282626;
            text-align: center;
            margin-bottom: 20px;
        }

        .hero-image {
            display: block;
            margin: 20px auto;
            width: 100%;
            height: auto;
            max-width: 600px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        main p {
            font-size: 1.2em;
            line-height: 1.8;
            text-align: center;
        }

        /* Footer Section */
        footer {
            background-color: #282626;
            color: white;
            text-align: center;
            padding: 10px;
            position: relative;
            bottom: 0;
            width: 100%;
        }

        footer p {
            font-size: 0.9em;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            header h1 {
                font-size: 2em;
            }

            main {
                padding: 20px;
            }

            main h2 {
                font-size: 1.8em;
            }

            nav a {
                padding: 8px 16px;
            }
        }
    </style>
</head>
<body>
    <header>
        <marquee><h1>Welcome to RIGHTWISE</h1></marquee>
        <nav>
            <a href="index2">Explore Now</a>
        </nav>
    </header>
    
    <main>
        <h2>About the Platform</h2>
        <img src="https://tse4.mm.bing.net/th?id=OIP.NZxV5sqsXEnV_zYFObwazQHaEd&pid=Api&P=0&h=180" alt="Indian Constitution" class="hero-image">
        <p>This platform aims to educate users about the Indian Constitution, including its framework, fundamental rights, and citizens' duties.</p>
    </main>
    
    <footer>
        <p>&copy; <%= java.util.Calendar.getInstance().get(java.util.Calendar.YEAR) %> Indian Constitution Awareness</p>
    </footer>
</body>
</html>