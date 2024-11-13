<%@ page import="java.util.List" %>
<%@ page import="com.parking.model.UserRetrieve" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Users</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h2 class="text-center my-4">User List</h2>

        <!-- Retrieve users from request attribute -->
        <%
            List<UserRetrieve> users = (List<UserRetrieve>) request.getAttribute("users");
            if (users == null) {
                out.println("<p class='alert alert-danger text-center'>Error: Users list is null. Please make sure to access this page via the UserRetrieveServlet.</p>");
            } else if (users.isEmpty()) {
        %>
            <!-- Display message if no users found -->
            <p class="alert alert-warning text-center">No users found.</p>
        <% } else { %>

        <!-- Table to display user details -->
        <table class="table table-bordered">
            <thead class="thead-dark">
                <tr>
                    <th>ID</th>
                    <th>Username</th>
                    <th>Password</th>
                </tr>
            </thead>
            <tbody>
                <% 
                    // Loop through the list of users and display each in a table row
                    for (UserRetrieve user : users) {
                %>
                <tr>
                    <td><%= user.getId() %></td>
                    <td><%= user.getUsername() %></td>
                    <td><%= user.getPassword() %></td>
                </tr>
                <% } %>
            </tbody>
        </table>
        <% } %>

        <!-- Button to return to admin dashboard -->
        <div class="text-center">
            <a href="adminDashboard.jsp" class="btn btn-primary">Back to Dashboard</a>
        </div>
    </div>

    <!-- Optional JavaScript (Bootstrap and jQuery) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
