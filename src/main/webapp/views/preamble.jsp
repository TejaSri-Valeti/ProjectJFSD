<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>The Preamble - Indian Constitution</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: flex-start;
            height: 100vh;
        }
        .container {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            width: 600px;
            margin-top: 50px;
        }
        h1 {
            color: #4CAF50;
            text-align: center;
        }
        p {
            color: #555;
            line-height: 1.6;
            margin: 20px 0;
        }
        h2 {
            color: #333;
            margin-bottom: 10px;
        }
        .preamble-text {
            font-style: italic;
            background-color: #f9f9f9;
            padding: 10px;
            border-left: 4px solid #4CAF50;
            margin: 20px 0;
        }
        a {
            text-decoration: none;
            color: #4CAF50;
            display: block;
            margin-top: 20px;
            text-align: center;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<%@ include file="citizendashboard.jsp" %>
    <div class="container">
        <h1>The Preamble of the Indian Constitution</h1>

        <h2>Introduction</h2>
        <p>The Preamble to the Indian Constitution serves as a brief introductory statement that outlines the guiding principles and purpose of the document. It reflects the vision and values that the Constitution seeks to establish.</p>

        <h2>Text of the Preamble</h2>
        <div class="preamble-text">
            <p>We, the people of India, having solemnly resolved to constitute India into a Sovereign Socialist Secular Democratic Republic and to secure to all its citizens:</p>
            <ul>
                <li>Justice: social, economic, and political;</li>
                <li>Liberty: of thought, expression, belief, faith, and worship;</li>
                <li>Equality: of status and opportunity;</li>
                <li>Fraternity: assuring the dignity of the individual and the unity and integrity of the Nation;</li>
            </ul>
            <p>In our Constituent Assembly this twenty-sixth day of November, 1949, do hereby adopt, enact, and give to ourselves this Constitution.</p>
        </div>

        <h2>Historical Context</h2>
        <p>The Preamble was drafted by the Constituent Assembly, led by Dr. B.R. Ambedkar, and serves as a declaration of the core values and principles of the Indian Constitution. It draws inspiration from the objectives of the Indian freedom struggle, as well as from various other democratic systems around the world.</p>

        <h2>Importance of the Preamble</h2>
        <p>The Preamble sets the tone for the entire Constitution, reflecting the aspirations of the Indian people. It emphasizes the values of justice, liberty, equality, and fraternity, which remain key guiding principles in Indian governance and democracy.</p>

        <a href="citizen1">Back to Educational Resources</a>
    </div>
</body>
</html>