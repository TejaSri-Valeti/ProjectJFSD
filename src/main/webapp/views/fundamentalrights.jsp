<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fundamental Rights - Indian Constitution</title>
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
        .right {
            background-color: #f9f9f9;
            padding: 10px;
            margin: 10px 0;
            border-left: 4px solid #4CAF50;
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
        <h1>Fundamental Rights of Indian Citizens</h1>

        <h2>Introduction</h2>
        <p>The Constitution of India guarantees certain basic rights to all citizens, known as Fundamental Rights. These rights ensure individual liberty, equality, and protection from state actions. They are essential to the dignity of individuals and the unity and integrity of the nation.</p>

        <h2>List of Fundamental Rights</h2>

        <div class="right">
            <h3>1. Right to Equality (Articles 14-18)</h3>
            <p>Right to Equality guarantees equal treatment under the law, prohibiting discrimination based on religion, race, caste, gender, or place of birth. It includes the abolition of untouchability and the titles system.</p>
        </div>

        <div class="right">
            <h3>2. Right to Freedom (Articles 19-22)</h3>
            <p>Right to Freedom includes the right to freedom of speech and expression, assembly, association, movement, residence, and the right to practice any profession. It also provides protection in cases of life and personal liberty.</p>
        </div>

        <div class="right">
            <h3>3. Right against Exploitation (Articles 23-24)</h3>
            <p>Right against Exploitation prohibits human trafficking, forced labor, and child labor in hazardous industries. It aims to protect the dignity of individuals from exploitation.</p>
        </div>

        <div class="right">
            <h3>4. Right to Freedom of Religion (Articles 25-28)</h3>
            <p>This right guarantees religious freedom to all citizens and ensures that the state treats all religions equally, without favoring or discriminating against any religion.</p>
        </div>

        <div class="right">
            <h3>5. Cultural and Educational Rights (Articles 29-30)</h3>
            <p>These rights protect the cultural, linguistic, and educational rights of minorities, allowing them to preserve their language, script, or culture and to establish and administer educational institutions of their choice.</p>
        </div>

        <div class="right">
            <h3>6. Right to Constitutional Remedies (Article 32)</h3>
            <p>This right allows citizens to approach the courts if their Fundamental Rights are violated. Dr. B.R. Ambedkar referred to this as the "heart and soul" of the Indian Constitution.</p>
        </div>

        <a href="citizen1">Back to Educational Resources</a>
    </div>
</body>
</html>