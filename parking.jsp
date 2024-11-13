<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Parking Management</title>

    <!-- Bootstrap 5 CSS (without integrity hash for debugging) -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Font Awesome CSS (without integrity hash for debugging) -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-5">
    <h2 class="text-center">Parking Management</h2>

   

    <!-- Form to add a new parking space -->
    <h4 class="mt-4">Add New Parking Space</h4>
    <form action="ParkingServlet" method="post" class="needs-validation" novalidate>
        <div class="mb-3">
            <label for="parkingID" class="form-label">Parking ID</label>
            <input type="text" class="form-control" id="parkingID" name="parkingID" required>
            <div class="invalid-feedback">Parking ID is required.</div>
        </div>
        <div class="mb-3">
            <label for="location" class="form-label">Location</label>
            <input type="text" class="form-control" id="location" name="location" required>
            <div class="invalid-feedback">Location is required.</div>
        </div>
        <div class="mb-3">
            <label for="availableSpots" class="form-label">Available Spots</label>
            <input type="number" class="form-control" id="availableSpots" name="availableSpots" required>
            <div class="invalid-feedback">Available spots are required.</div>
        </div>
        <button type="submit" class="btn btn-primary"><i class="fas fa-plus-circle"></i> Add Parking</button>
    </form>
</div>

<!-- Bootstrap JS (Including Popper.js for dropdowns) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>

<!-- Custom JS for form validation -->
<script>
    // Bootstrap form validation
    (function () {
        'use strict'
        var forms = document.querySelectorAll('.needs-validation')
        Array.prototype.slice.call(forms)
            .forEach(function (form) {
                form.addEventListener('submit', function (event) {
                    if (!form.checkValidity()) {
                        event.preventDefault()
                        event.stopPropagation()
                    }
                    form.classList.add('was-validated')
                }, false)
            })
    })()
</script>

</body>
</html>

