<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Checkout</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container">
    <h2 class="my-4">Checkout</h2>

    <!-- Form for entering coupon code -->
    <form action="applyCoupon" method="post">
        <div class="form-group">
            <label for="couponCode">Enter Coupon Code</label>
            <input type="text" class="form-control" id="couponCode" name="couponCode" placeholder="Enter Coupon Code">
        </div>

        <!-- Hidden field for the parking amount -->
        <input type="hidden" name="parkingAmount" value="${parkingAmount}" />

        <button type="submit" class="btn btn-primary">Apply Coupon</button>
    </form>

    <!-- Display the final amount after applying the discount -->
    <c:if test="${finalAmount != null}">
        <h4 class="mt-4">Final Amount: ${finalAmount}</h4>
    </c:if>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
