<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- Font Awesome CSS -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
    
    <!-- Custom Styles -->
    <style>
        /* Sidebar styles */
        .sidebar {
            height: 100%;
            position: fixed;
            top: 0;
            left: 0;
            width: 250px;
            background-color: #343a40;
            padding-top: 20px;
        }

        .sidebar a {
            color: white;
            padding: 10px 15px;
            text-decoration: none;
            font-size: 18px;
            display: block;
        }

        .sidebar a:hover {
            background-color: #575d63;
        }

        .content {
            margin-left: 260px;
            padding: 20px;
        }

        /* Topbar styles */
        .topbar {
            background-color: #343a40;
            padding: 10px 20px;
            color: white;
            text-align: right;
        }

        .topbar h5 {
            margin: 0;
        }

        .topbar .navbar-brand {
            color: white;
        }
    </style>
</head>
<body>
    <!-- Sidebar -->
    <div class="sidebar">
        <h3 class="text-white text-center">Admin Panel</h3>
        <a href="#" class="active"><i class="fas fa-tachometer-alt"></i> Dashboard</a>
        <a href="UserRetrieveServlet"><i class="fas fa-users"></i> Users</a>
       
        <a href="viewparkings.jsp"><i class="fas fa-chart-line"></i> View parking</a>
        

    </div>

    <!-- Main content area -->
    <div class="content">
        <!-- Top Navbar -->
        <div class="topbar">
            <h5>Welcome, Admin!</h5>
        </div>

        <!-- Page Content -->
        <div class="container">
            <div class="row mt-4">
                <!-- Dashboard Cards -->
                <div class="col-md-4 mb-3">
                    <div class="card text-white bg-primary">
                        <div class="card-body">
                            <h5 class="card-title"><i class="fas fa-users"></i> Users</h5>
                            <p class="card-text">Manage registered users.</p>
                            <a href="UserRetrieveServlet" class="btn btn-light">numbers to Users</a>
                        </div>
                    </div>
                </div>
                
                <div class="col-md-4 mb-3">
                    <div class="card text-white bg-success">
                        <div class="card-body">
                            <h5 class="card-title"><i class="fas fa-cogs"></i> add parking</h5>
                            <p class="card-text">Add Parking</p>
                            <a href="parking.jsp" class="btn btn-light">Add Parkings </a>
                        </div>
                    </div>
                </div>

                <div class="col-md-4 mb-3">
                    <div class="card text-white bg-info">
                        <div class="card-body">
                            <h5 class="card-title"><i class="fas fa-chart-line"></i> view parking</h5>
                            <p class="card-text">View parking options</p>
                            <a href="viewparkings.jsp" class="btn btn-light">View parking options</a>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Additional Sections (Optional) -->
            <div class="row mt-5">
                <div class="col-md-12">
                    <h3>Recent Activities</h3>
                    <!-- Example: Activity List -->
                    <ul class="list-group">
                        <li class="list-group-item"><i class="fas fa-check-circle"></i> System updated successfully.</li>
                        <li class="list-group-item"><i class="fas fa-user-plus"></i> New user added: John Doe</li>
                        <li class="list-group-item"><i class="fas fa-cogs"></i> Settings updated.</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.7/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>

