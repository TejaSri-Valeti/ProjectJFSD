<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register for Webinar</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .form-container {
            max-width: 500px;
            margin: 50px auto;
            padding: 30px;
            border-radius: 8px;
            background-color: #f4f4f9;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>

    <div class="form-container">
        <h2 class="text-center">Register for Webinar</h2>
        
        <!-- Display message if exists -->
        <c:if test="${not empty message}">
            <div class="alert alert-info">${message}</div>
        </c:if>
        
        <form action="/webinars/registerWebinar" method="post">
            <div class="form-group">
                <label for="webinarId">Webinar ID</label>
                <input type="text" class="form-control" id="webinarId" name="webinarId" required>
            </div>

            <div class="form-group">
                <label for="citizenId">Citizen ID</label>
                <input type="text" class="form-control" id="citizenId" name="citizenId" required>
            </div>

            <div class="form-group">
                <label for="email">Citizen Email</label>
                <input type="email" class="form-control" id="email" name="email" required>
            </div>

            <button type="submit" class="btn btn-primary btn-block">Register</button>
        </form>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
