<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Amendments - Indian Constitution</title>
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
        .amendment {
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
        <h1>Amendments to the Indian Constitution</h1>

        <h2>Introduction</h2>
        <p>The Indian Constitution is a living document that evolves with time. Amendments are made to reflect changing social, economic, and political conditions. Article 368 of the Constitution grants the Parliament the power to amend the Constitution, ensuring that it remains relevant.</p>

        <h2>Key Constitutional Amendments</h2>

        <div class="amendment">
            <h3>1. First Amendment (1951)</h3>
            <p>This amendment addressed land reform and added provisions for restricting freedom of speech in cases of public order, friendly relations with foreign states, and incitement to offense. It also placed laws related to land reform in the Ninth Schedule, making them immune to judicial review.</p>
        </div>

        <div class="amendment">
            <h3>2. 42nd Amendment (1976)</h3>
            <p>Known as the "Mini-Constitution," this amendment made significant changes, including adding the words "Socialist" and "Secular" to the Preamble. It also strengthened the Directive Principles and limited the power of the Judiciary by making amendments immune to judicial review.</p>
        </div>

        <div class="amendment">
            <h3>3. 44th Amendment (1978)</h3>
            <p>This amendment was enacted to undo many provisions of the 42nd Amendment. It restored the Supreme Court and High Courts' power to review laws and protected Fundamental Rights by making it harder to impose a national emergency.</p>
        </div>

        <div class="amendment">
            <h3>4. 73rd and 74th Amendments (1992)</h3>
            <p>These amendments gave constitutional status to local governments (Panchayats and Municipalities), empowering them with greater administrative and financial autonomy. They aim to decentralize governance and promote grassroots democracy.</p>
        </div>

        <div class="amendment">
            <h3>5. 101st Amendment (2016) - GST</h3>
            <p>This amendment introduced the Goods and Services Tax (GST), a unified tax system across India, replacing multiple state and central taxes. It created a single market and simplified tax administration.</p>
        </div>

        <h2>Process of Amending the Constitution</h2>
        <p>Amendments to the Indian Constitution can be introduced in either house of Parliament. The amendment must be passed by a two-thirds majority in both houses. Some amendments also require ratification by at least half of the state legislatures, especially those related to federal provisions.</p>

        <a href="citizen1">Back to Educational Resources</a>
    </div>
</body>
</html>