<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <style>
        body {
            background-color: #f8f9fa;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
            font-family: Arial, sans-serif;
        }
        .login-container {
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            padding: 2rem;
            margin: auto;
            width: 100%;
            max-width: 400px;
            flex-grow: 1;
        }
        .login-container h2 {
            margin-bottom: 1.5rem;
            color: #333;
        }
        .login-container .form-control {
            border-radius: 20px;
        }
        .btn-primary {
            background-color: #007bff;
            border-radius: 20px;
            border: none;
        }
        .btn-primary:hover {
            background-color: #0056b3;
        }
        #currentTime {
            font-weight: bold;
            margin-bottom: 1rem;
            text-align: center;
            color: #555;
        }
        .alert {
            text-align: center;
            margin-top: 1rem;
        }
        footer {
            background-color: #007bff;
            color: white;
            text-align: center;
            padding: 10px 0;
        }
    </style>
</head>
<body>
    <!-- Header -->
    <header class="bg-light py-3">
        <div class="container text-center">
            <h1 class="h2">Welcome to My Application</h1>
            <p class="lead">Your gateway to amazing services</p>
        </div>
    </header>

    <div class="login-container">
        <h2 class="text-center">Login</h2>
        <div id="currentTime"></div> <!-- Element to display current time -->
        <form action="LoginServlet" method="post">
            <div class="form-group">
                <label for="username"><i class="fas fa-user"></i> Username</label>
                <input type="text" class="form-control" id="username" name="username" required>
            </div>
            <div class="form-group">
                <label for="password"><i class="fas fa-lock"></i> Password</label>
                <input type="password" class="form-control" id="password" name="password" required>
            </div>
            <button type="submit" class="btn btn-primary btn-block">Login</button>
            <% if(request.getParameter("error") != null) { %>
                <div class="alert alert-danger">Invalid username or password!</div>
            <% } %>
        </form>
    </div>

    <!-- Footer -->
    <footer>
        <div class="container">
            <p>&copy; <span id="currentYear"></span> My Application. All Rights Reserved.</p>
        </div>
    </footer>

    <!-- Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <script>
        // Function to update the current date and time
        function updateTime() {
            const now = new Date();
            const options = {
                year: 'numeric',
                month: '2-digit',
                day: '2-digit',
                hour: '2-digit',
                minute: '2-digit',
                second: '2-digit',
                hour12: false,
            };
            document.getElementById('currentTime').textContent = now.toLocaleString('en-US', options);
        }

        // Update the time every second
        setInterval(updateTime, 1000);
        // Initial call to display the time immediately
        updateTime();

        // Display current year in footer
        document.getElementById('currentYear').textContent = new Date().getFullYear();

        // Check if registration was successful and show popup
        <% if (request.getParameter("registrationSuccess") != null) { %>
            alert("User registered successfully!");
        <% } %>
    </script>
</body>
</html>

