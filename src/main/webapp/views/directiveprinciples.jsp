<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Directive Principles - Indian Constitution</title>
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
        .principle {
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
        <h1>Directive Principles of State Policy</h1>

        <h2>Introduction</h2>
        <p>The Directive Principles of State Policy, listed in Part IV of the Indian Constitution, serve as guidelines for the state to achieve social and economic welfare for the citizens. Although these principles are non-justiciable (not enforceable by courts), they are fundamental in the governance of the country and aim to ensure a just society.</p>

        <h2>List of Directive Principles</h2>

        <div class="principle">
            <h3>1. Promotion of Welfare of the People (Article 38)</h3>
            <p>The state shall strive to promote the welfare of the people by securing a social order in which justice, social, economic, and political, prevails in all institutions of life.</p>
        </div>

        <div class="principle">
            <h3>2. Equal Justice and Free Legal Aid (Article 39A)</h3>
            <p>The state shall ensure that justice is not denied to any citizen by reason of economic or other disabilities and shall provide free legal aid for the poor.</p>
        </div>

        <div class="principle">
            <h3>3. Protection of the Environment (Article 48A)</h3>
            <p>The state shall endeavor to protect and improve the environment and safeguard the forests and wildlife of the country.</p>
        </div>

        <div class="principle">
            <h3>4. Organization of Village Panchayats (Article 40)</h3>
            <p>The state shall take steps to organize village panchayats and empower them with authority to function as units of self-government.</p>
        </div>

        <div class="principle">
            <h3>5. Equal Pay for Equal Work (Article 39)</h3>
            <p>The state shall ensure equal pay for equal work for both men and women.</p>
        </div>

        <div class="principle">
            <h3>6. Right to Work, Education, and Public Assistance (Article 41)</h3>
            <p>The state shall make effective provisions to secure the right to work, to education, and to public assistance in cases of unemployment, old age, sickness, and disablement.</p>
        </div>

        <a href="citizen1">Back to Educational Resources</a>
    </div>
</body>
</html>