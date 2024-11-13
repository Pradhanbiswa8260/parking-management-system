<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Booking Successful</title>
    
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" rel="stylesheet">
    
    <style>
        body {
            padding-top: 20px;
        }
        .fa-check-circle {
            color: #28a745;
        }
        .fa-arrow-left {
            color: #007bff;
        }
    </style>
</head>
<body>

<div class="container text-center">
    <!-- Success Icon -->
    <i class="fas fa-check-circle fa-5x mb-4"></i>
    
    <!-- Success Message -->
    <h1 class="text-success">Booking Successful!</h1>
    
    <p class="lead">Your parking slot has been successfully booked. Thank you for choosing our service!</p>

   
    
    <!-- Back Button -->
    <a href="index.jsp" class="btn btn-primary mt-3">
        <i class="fas fa-arrow-left"></i> Back to Home
    </a>
</div>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
