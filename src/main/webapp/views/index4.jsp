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
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4; /* Light grey background */
            color: #333; /* Dark grey text */
        }

        /* Header Section */
        header {
            background-color: #000; /* Black background */
            color: #fff; /* White text */
            text-align: center;
            padding: 50px 0;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.5); /* Shadow for depth */
        }

        header h1 {
            font-size: 2.8em;
            font-weight: bold;
            margin: 0;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3); /* Slight shadow for text */
        }

        header img {
            max-width: 100px;
            height: auto;
            margin-top: 20px;
            border-radius: 50%; /* Circular image */
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2); /* Shadow for image */
        }

        /* Navigation Bar */
        nav {
            background-color: #333; /* Dark grey background */
            padding: 15px 0;
            text-align: center;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Shadow for depth */
        }

        nav a {
            margin: 0 15px;
            text-decoration: none;
            color: #fff; /* White text */
            font-weight: bold;
            font-size: 1.1em;
            padding: 10px 20px;
            border-radius: 5px; /* Rounded corners */
            transition: background-color 0.3s ease, color 0.3s ease; /* Smooth transitions */
        }

        nav a:hover {
            background-color: #555; /* Lighter grey on hover */
            color: #fff; /* Keep text white */
        }

        /* Main Content Section */
        .content {
            max-width: 900px;
            margin: 50px auto;
            padding: 40px;
            background-color: #fff; /* White background for content */
            border-radius: 10px; /* Rounded corners */
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.1); /* Soft shadow */
        }

        .content h2 {
            font-size: 2.5em;
            color: #000; /* Black text for headings */
            text-align: center;
            margin-bottom: 30px;
        }

        .content p {
            font-size: 1.2em;
            line-height: 1.8;
            color: #333; /* Dark grey text */
            margin-bottom: 20px;
            text-align: justify; /* Justified text for a clean look */
        }

        .content h3 {
            font-size: 2em;
            color: #000; /* Black text for subheadings */
            margin-top: 30px;
            margin-bottom: 20px;
        }

        /* Image Styling */
        .content img {
            max-width: 100%;
            height: auto;
            display: block;
            margin: 40px auto;
            border-radius: 10px; /* Rounded corners for images */
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.1); /* Shadow for images */
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
            header h1 {
                font-size: 2.2em; /* Smaller header text on mobile */
            }

            nav a {
                font-size: 1em; /* Smaller nav text on mobile */
                padding: 8px 16px; /* Adjust padding */
            }

            .content {
                padding: 20px; /* Less padding on mobile */
            }

            .content h2 {
                font-size: 2em; /* Smaller content heading */
            }

            .content p {
                font-size: 1.1em; /* Smaller content text */
            }
        }
    </style>
</head>
<body>
    <header>
        <h1>Welcome Educator</h1>
        <img src="https://static.india.com/wp-content/uploads/2022/11/Constitution-Day-2022.png" alt="RIGHTWISE Logo">
    </header>

    <nav>
        <a href="educatorregister">Register</a>
        <a href="educatorlogin">Login</a>
       
        
        
    </nav>
    
    <div class="content">
        <h2>About RIGHTWISE</h2>
        <p>Join us in our mission to raise awareness about the Indian Constitution—a foundational document that shapes our democracy and safeguards our rights. At RIGHTWISE, we believe that understanding the Constitution is vital for every citizen. Knowledge is power, and by empowering individuals with the right information, we can foster a more informed and engaged society.</p>
    </div>

    <footer>
        <p>&copy; <%= java.util.Calendar.getInstance().get(java.util.Calendar.YEAR) %> Indian Constitution Awareness Platform</p>
    </footer>
</body>
</html>