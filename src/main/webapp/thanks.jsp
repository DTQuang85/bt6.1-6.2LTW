<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<jsp:useBean id="user" class="vn.edu.hcmute.fit.demo1.User" scope="request" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thank You For Joining</title>
    <link rel="stylesheet" href="styles/main.css">
</head>
<body>
<div class="thank-you-container">
    <div class="header">
        <h1>Thanks for Joining Our Email List</h1>
        <p>We appreciate you taking the time to complete our survey</p>
    </div>

    <div class="content">
        <div class="info-card">
            <h2>Your Submitted Information</h2>
            <div class="info-grid">
                <div class="info-item">
                    <span class="info-label">Email:</span>
                    <span class="info-value"><%= user.getEmail() %></span>
                </div>
                <div class="info-item">
                    <span class="info-label">First Name:</span>
                    <span class="info-value"><%= user.getFirstName() %></span>
                </div>
                <div class="info-item">
                    <span class="info-label">Last Name:</span>
                    <span class="info-value"><%= user.getLastName() %></span>
                </div>
                <div class="info-item">
                    <span class="info-label">Heard From:</span>
                    <span class="info-value"><%= user.getHeardFrom() %></span>
                </div>
                <div class="info-item">
                    <span class="info-label">Receive Updates:</span>
                    <span class="info-value"><%= user.getWantsUpdates() %></span>
                </div>
                <div class="info-item">
                    <span class="info-label">Contact Via:</span>
                    <span class="info-value"><%= user.getContactVia() %></span>
                </div>
            </div>
        </div>

        <p class="return-message">
            To enter another email address, click Back in your browser or the Return button below.
        </p>

        <form action="survey" method="get">
            <input type="hidden" name="action" value="join"/>
            <button type="submit" class="btn-return">Return to Survey</button>
        </form>
    </div>
</div>

<footer>
    <jsp:include page="includes/footer.jsp"/>
</footer>

</body>
</html>
