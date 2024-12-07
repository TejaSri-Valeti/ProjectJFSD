<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Government Structure - Indian Constitution</title>
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
        .branch {
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
        <h1>Structure of the Indian Government</h1>

        <h2>Introduction</h2>
        <p>The Indian government operates as a federal system, with powers divided between the central government and the state governments. The Constitution of India outlines a parliamentary system where three distinct branches â the Legislature, Executive, and Judiciary â work together to govern the country.</p>

        <h2>Branches of Government</h2>

        <div class="branch">
            <h3>1. Legislature</h3>
            <p>The Legislature, or Parliament, is responsible for making laws. It consists of two houses:</p>
            <ul>
                <li><strong>Lok Sabha (House of the People)</strong>: The lower house, with members directly elected by the people of India. It is responsible for making and passing laws, as well as controlling government spending.</li>
                <li><strong>Rajya Sabha (Council of States)</strong>: The upper house, with members elected by state legislatures and appointed by the President. It represents the states and reviews laws passed by the Lok Sabha.</li>
            </ul>
        </div>

        <div class="branch">
            <h3>2. Executive</h3>
            <p>The Executive is responsible for implementing laws and running the government. It includes:</p>
            <ul>
                <li><strong>President</strong>: The head of state and the supreme commander of the defense forces. The President's role is largely ceremonial, but they have important powers such as the ability to promulgate ordinances and grant pardons.</li>
                <li><strong>Prime Minister</strong>: The head of government and the leader of the majority party in the Lok Sabha. The Prime Minister directs the functioning of the government and appoints other ministers.</li>
                <li><strong>Council of Ministers</strong>: A group of ministers headed by the Prime Minister, responsible for specific government departments and policy areas.</li>
            </ul>
        </div>

        <div class="branch">
            <h3>3. Judiciary</h3>
            <p>The Judiciary interprets the laws and ensures that they are in line with the Constitution. It consists of:</p>
            <ul>
                <li><strong>Supreme Court</strong>: The highest court in India, which has the power to review laws and government actions to ensure they are constitutional. It also acts as the guardian of Fundamental Rights.</li>
                <li><strong>High Courts</strong>: Present in each state, these courts handle state-level matters and have the power to review the constitutionality of laws passed by state legislatures.</li>
                <li><strong>District Courts</strong>: These courts handle civil and criminal cases at the local level.</li>
            </ul>
        </div>

        <h2>Federal Structure</h2>
        <p>Indiaâs federal structure divides powers between the central government and the state governments. The Constitution specifies subjects on which the Union, State, and Concurrent Lists operate, defining who has the authority to legislate on specific matters.</p>

        <a href="citizen1">Back to Educational Resources</a>
    </div>
</body>
</html>