<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Assess Learning Outcomes</title>
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }

        /* Main layout styling */
        body {
            display: flex;
            min-height: 100vh;
            background-color: #fff; /* White background */
            color: #000; /* Black text */
        }

        /* Sidebar styling */
        .sidebar {
            background-color: #000; /* Black */
            width: 250px;
            height: 100vh;
            padding-top: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
            position: fixed;
            top: 0;
            left: 0;
            color: #fff; /* White text */
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.2);
        }

        .sidebar h1 {
            color: #fff;
            font-size: 24px;
            margin-bottom: 30px;
        }

        .sidebar button, .sidebar a {
            width: 90%;
            padding: 12px;
            margin: 8px 0;
            background-color: #333; /* Dark gray */
            color: #fff; /* White text */
            border: none;
            border-radius: 4px;
            text-align: center;
            text-decoration: none;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .sidebar button:hover, .sidebar a:hover {
            background-color: #666; /* Medium gray on hover */
        }

        /* Content area styling */
        .content {
            margin-left: 260px;
            padding: 20px;
            width: calc(100% - 260px);
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: flex-start;
            background-color: #fff;
            color: #000;
        }

        .container {
            background-color: #f9f9f9; /* Light gray */
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            width: 400px;
            text-align: center;
            margin-top: 50px;
        }

        h1 {
            color: #000; /* Black header */
        }

        input, textarea {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc; /* Light gray border */
            border-radius: 4px;
            background-color: #fff; /* White input background */
            color: #000; /* Black text */
        }

        button {
            padding: 10px;
            background-color: #333; /* Dark gray button */
            color: #fff; /* White text */
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            width: 100%;
        }

        button:hover {
            background-color: #666; /* Medium gray on hover */
        }

        a {
            display: block;
            margin-top: 15px;
            color: #000; /* Black link */
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }

        /* Responsive adjustments */
        @media (max-width: 768px) {
            .sidebar {
                width: 200px;
            }

            .content {
                margin-left: 200px;
            }
        }

        @media (max-width: 576px) {
            .sidebar {
                width: 100%;
                height: auto;
                position: relative;
            }

            .content {
                margin-left: 0;
            }
        }
    </style>
</head>
<body>
    <!-- Sidebar for navigation -->
    <div class="sidebar">
        <h1>Educator Dashboard</h1>
        <button onclick="redirectToCreateMaterial()">Create Educational Material</button>
        <button onclick="hostWebinar()">Host Live Webinar</button>
        <button onclick="facilitateDiscussion()">Facilitate Discussion Forum</button>
        <button onclick="provideFeedback()">Provide Feedback on Engagement</button>
        <button onclick="assessLearningOutcomes()">Assess Learning Outcomes</button>
        <button onclick="viewProfile()">View Profile</button>
        <a href="index2.jsp">Logout</a>
    </div>

    <!-- Content area for feedback form -->
    <div class="content">
        <div class="container">
            <h1>Assess Learning Outcomes</h1>
            <form id="assessmentForm">
                <div class="question">
                    <p>1. What is the supreme law of India?</p>
                    <label><input type="radio" name="question1" value="1"> The Constitution of India</label><br>
                    <label><input type="radio" name="question1" value="0"> The Indian Penal Code</label><br>
                    <label><input type="radio" name="question1" value="0"> The Directive Principles</label><br>
                </div>

                <div class="question">
                    <p>2. How many amendments does the Indian Constitution have?</p>
                    <label><input type="radio" name="question2" value="1"> More than 100</label><br>
                    <label><input type="radio" name="question2" value="0"> 50</label><br>
                    <label><input type="radio" name="question2" value="0"> 25</label><br>
                </div>

                <div class="question">
                    <p>3. Which fundamental right guarantees the right to equality?</p>
                    <label><input type="radio" name="question3" value="1"> Article 14</label><br>
                    <label><input type="radio" name="question3" value="0"> Article 21</label><br>
                    <label><input type="radio" name="question3" value="0"> Article 19</label><br>
                </div>

                <div class="question">
                    <p>4. Who is known as the Father of the Indian Constitution?</p>
                    <label><input type="radio" name="question4" value="1"> B.R. Ambedkar</label><br>
                    <label><input type="radio" name="question4" value="0"> Mahatma Gandhi</label><br>
                    <label><input type="radio" name="question4" value="0"> Jawaharlal Nehru</label><br>
                </div>

                <div class="question">
                    <p>5. What does Article 21 of the Indian Constitution guarantee?</p>
                    <label><input type="radio" name="question5" value="1"> Right to Life and Personal Liberty</label><br>
                    <label><input type="radio" name="question5" value="0"> Right to Freedom of Speech</label><br>
                    <label><input type="radio" name="question5" value="0"> Right to Equality</label><br>
                </div>

                <div class="question">
                    <p>6. Which part of the Constitution deals with Fundamental Rights?</p>
                    <label><input type="radio" name="question6" value="1"> Part III</label><br>
                    <label><input type="radio" name="question6" value="0"> Part II</label><br>
                    <label><input type="radio" name="question6" value="0"> Part IV</label><br>
                </div>

                <div class="question">
                    <p>7. How many members are there in the Rajya Sabha?</p>
                    <label><input type="radio" name="question7" value="1"> 245</label><br>
                    <label><input type="radio" name="question7" value="0"> 200</label><br>
                    <label><input type="radio" name="question7" value="0"> 100</label><br>
                </div>

                <div class="question">
                    <p>8. What is the duration of the Lok Sabha?</p>
                    <label><input type="radio" name="question8" value="1"> 5 years</label><br>
                    <label><input type="radio" name="question8" value="0"> 6 years</label><br>
                    <label><input type="radio" name="question8" value="0"> 4 years</label><br>
                </div>

                <div class="question">
                    <p>9. Which schedule of the Constitution contains the list of states and union territories?</p>
                    <label><input type="radio" name="question9" value="1"> First Schedule</label><br>
                    <label><input type="radio" name="question9" value="0"> Second Schedule</label><br>
                    <label><input type="radio" name="question9" value="0"> Third Schedule</label><br>
                </div>

                <div class="question">
                    <p>10. What is the maximum strength of the Lok Sabha?</p>
                    <label><input type="radio" name="question10" value="1"> 552</label><br>
                    <label><input type="radio" name="question10" value="0"> 500</label><br>
                    <label><input type="radio" name="question10" value="0"> 300</label><br>
                </div>

                <button type="submit">Submit Assessment</button>
            </form>
        </div>
    </div>

    <script>
        // JavaScript functions for navigation
        function redirectToCreateMaterial() {
            window.location.href = 'CreateEducationalMaterial';
        }

        function hostWebinar() {
            window.location.href = 'HostWebinar';
        }

        function facilitateDiscussion() {
            window.location.href = 'FacilitateDiscussion';
        }

        function provideFeedback() {
            window.location.href = 'ProvideFeedback';
        }

        function assessLearningOutcomes() {
            window.location.href = 'AssessLearningOutcomes';
        }

        function viewProfile() {
            window.location.href = 'viewProfile.jsp';
        }
    </script>
</body>
</html>
