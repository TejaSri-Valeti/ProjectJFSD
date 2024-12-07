<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome, Educator</title>
    <link rel="stylesheet" href="path_to_your_css_file.css"> <!-- Add path to your CSS file -->
</head>
<body>

    <%@ include file="EducatorDashboard.jsp" %> <!-- Include Educator Dashboard (sidebar) -->

    <div class="main-content">
        <!-- Main content for educator's home -->
        <h2>Welcome, ${educator.username}!</h2>
        <p>Welcome to your home page!</p>
    </div>

</body>
</html>
