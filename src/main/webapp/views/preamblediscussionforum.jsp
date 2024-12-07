<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Preamble Discussion Forum</title>
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
        <h1>Preamble Discussion Forum</h1>
        <p>Share your thoughts on the significance of the Preamble in shaping the Indian Constitution. Discuss its values and relevance to modern India.</p>

        <form id="discussionForm">
            <input type="text" id="topic" placeholder="Discussion Topic" required>
            <textarea id="question" rows="4" placeholder="Your Question" required></textarea>
            <button type="button" onclick="addDiscussion()">Post Discussion</button>
        </form>

        <div class="discussion-list" id="discussionList">
            <h2>Ongoing Discussions:</h2>
            <!-- Example discussions -->
            <div class="discussion-item">
                <strong>The Preamble's Influence on Indian Democracy</strong>
                <p>How does the Preamble reflect the core principles of Indian democracy?</p>
            </div>
            <div class="discussion-item">
                <strong>Interpretation of "Justice, Liberty, and Equality"</strong>
                <p>What do these words mean in today's context?</p>
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