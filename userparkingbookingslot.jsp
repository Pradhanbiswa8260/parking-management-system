<%@ page import="java.util.List" %>
<%@ page import="com.parking.model.Parking" %>
<%@ page import="com.parking.dao.ParkingDAO" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Bookings</title>
    
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" rel="stylesheet">
    
    <style>
        body {
            padding-top: 20px;
        }
        .fa-parking {
            color: #ff6b6b;
        }
        .fa-map-marker-alt {
            color: #1dd1a1;
        }
    </style>
</head>
<body>

<div class="container">
    <h1 class="text-center mb-4"><i class="fas fa-parking"></i> Parking Bookings</h1>
    
    <div class="table-responsive">
        <table class="table table-bordered table-striped">
            <thead class="thead-dark">
                <tr>
                    <th scope="col">#</th>
                    <th scope="col"><i class="fas fa-parking"></i> Parking ID</th>
                    <th scope="col"><i class="fas fa-map-marker-alt"></i> Location</th>
                    <th scope="col">Available Spots</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
                <%
                    // Fetching the bookings from the database through ParkingDAO
                    ParkingDAO parkingdao = new ParkingDAO();
                    List<Parking> bookings = parkingdao.getAllBookings();
                    
                    // Iterating through the list of bookings
                    for (Parking booking : bookings) {
                %>
                <tr>
                    <th scope="row"><%= booking.getId() %></th>
                    <td><%= booking.getParkingID() %></td>
                    <td><%= booking.getLocation() %></td>
                    <td><%= booking.getAvailableSpots() %></td>
                    <td>
                        <form action="Bookslot.jsp" method="post" style="display:inline;">
                            <input type="hidden" name="parkingID" value="<%= booking.getParkingID() %>">
                            <button type="submit" class="btn btn-primary">
                                <i class="fas fa-car"></i> Book Slot
                            </button>
                        </form>
                    </td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
    </div>
    
    <!-- Back Button -->
    <div class="text-center mt-4">
        <a href="adminDashboard.jsp" class="btn btn-primary">
            <i class="fas fa-arrow-left"></i> Back to Dashboard
        </a>
    </div>
</div>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
