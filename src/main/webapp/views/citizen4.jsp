<%@ page contentType="text/html;charset=UTF-8" language="java" %> 
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Indian Constitution Quizzes</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }
        /* Main content styling */
        .main-content {
            margin-left: 260px;
            padding: 20px;
            width: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .container {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 700px;
            text-align: center;
            margin: auto;
        }
        h1 {
            color: #4CAF50;
        }
        .quiz-list {
            list-style-type: none;
            padding: 0;
            text-align: left;
        }
        .quiz-list li {
            background-color: #f9f9f9;
            padding: 15px;
            margin: 10px 0;
            border-radius: 8px;
            box-shadow: 0 1px 5px rgba(0, 0, 0, 0.1);
        }
        .quiz-list a {
            color: #4CAF50;
            text-decoration: none;
            font-weight: bold;
            font-size: 18px;
        }
        .quiz-list a:hover {
            text-decoration: underline;
        }
        .quiz-list p {
            margin-top: 8px;
            color: #555;
        }
        a.back-to-dashboard {
            display: block;
            text-align: center;
            margin-top: 20px;
            font-size: 16px;
            color: #4CAF50;
            text-decoration: none;
        }
        a.back-to-dashboard:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <%@ include file="citizendashboard.jsp" %>
    <!-- Main Content Section -->
    <div class="main-content">
        <div class="container">
            <h1>Indian Constitution Quizzes</h1>
            <p>Test your knowledge of the Indian Constitution by taking one of the following quizzes.</p>

            <ul class="quiz-list">
                <li>
                    <a href="preamblequiz">Preamble Quiz</a>
                    <p>Test your understanding of the Preamble's principles and its importance to the Constitution.</p>
                </li>
                <li>
                    <a href="fundamentalrightsquiz">Fundamental Rights Quiz</a>
                    <p>How well do you know the rights and duties granted to every citizen?</p>
                </li>
                <li>
                    <a href="DirectivePrinciplesQuiz">Directive Principles Quiz</a>
                    <p>Assess your knowledge of the Directive Principles that guide the government’s policies.</p>
                </li>
                <li>
                    <a href="AmendmentsQuiz">Amendments Quiz</a>
                    <p>Challenge yourself with questions on the key amendments that have shaped the Constitution.</p>
                </li>
                <li>
                    <a href="FederalStructureQuiz">Federal Structure Quiz</a>
                    <p>Explore your understanding of India’s federal structure and the division of powers between the center and the states.</p>
                </li>
            </ul>

            <a href="educationalResources.jsp" class="back-to-dashboard">Back to Educational Resources</a>
        </div>
    </div>
</body>
</html>
