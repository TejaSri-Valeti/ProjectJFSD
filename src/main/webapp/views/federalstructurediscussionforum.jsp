<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Federal Structure Discussion Forum</title>
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
            width: 90%;
            max-width: 600px;
            margin-top: 50px;
            text-align: center;
        }
        h1 {
            color: #4CAF50;
            margin-bottom: 20px;
        }
        p {
            font-size: 16px;
            color: #555;
        }
        .discussion-list {
            text-align: left;
            max-height: 200px;
            overflow-y: auto;
            border-top: 1px solid #ccc;
            padding-top: 20px;
        }
        .discussion-item {
            border-bottom: 1px solid #ccc;
            padding: 10px 0;
        }
        input, textarea {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        button {
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
        }
        button:hover {
            background-color: #45a049;
        }
        a {
            text-decoration: none;
            color: #4CAF50;
            display: block;
            margin-top: 20px;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<%@ include file="citizendashboard.jsp" %>
    <div class="container">
        <h1>Federal Structure Discussion Forum</h1>
        <p>Discuss the Federal Structure of India, the distribution of powers, and the relationship between the central and state governments.</p>

        <form id="discussionForm">
            <input type="text" id="topic" placeholder="Discussion Topic" required>
            <textarea id="question" rows="4" placeholder="Your Question" required></textarea>
            <button type="button" onclick="addDiscussion()">Post Discussion</button>
        </form>

        <div class="discussion-list" id="discussionList">
            <h2>Ongoing Discussions:</h2>
            <!-- Example discussions -->
            <div class="discussion-item">
                <strong>The Role of the Centre and States</strong>
                <p>What are the roles and responsibilities of the central and state governments in India?</p>
            </div>
            <div class="discussion-item">
                <strong>Inter-State Relations</strong>
                <p>How do the provisions in the Constitution facilitate relations between states?</p>
            </div>
        </div>

        <a href="citizen2">Back to Discussion Forums</a>
    </div>

    <script>
        function addDiscussion() {
            const topic = document.getElementById('topic').value;
            const question = document.getElementById('question').value;

            // Create a new discussion item
            const discussionItem = document.createElement('div');
            discussionItem.classList.add('discussion-item');
            discussionItem.innerHTML = <strong>${topic}</strong><p>${question}</p>;

            // Append to the discussion list
            document.getElementById('discussionList').appendChild(discussionItem);

            // Reset the form
            document.getElementById('discussionForm').reset();
        }
    </script>
</body>
</html>