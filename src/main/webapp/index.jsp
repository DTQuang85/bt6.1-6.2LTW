<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<jsp:useBean id="user" class="vn.edu.hcmute.fit.demo1.User" scope="request" />
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Murach's Java Servlets and JSP</title>
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            font-size: 16px;
            line-height: 1.6;
            color: #333;
            background: linear-gradient(135deg, #f5f7fa 0%, #e4e8f0 100%);
            padding: 20px;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }

        .container {
            width: 100%;
            max-width: 600px;
            background: white;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.05);
            margin: 20px 0;
        }

        h1 {
            color: #2c3e50;
            text-align: center;
            margin-bottom: 15px;
            font-weight: 600;
            font-size: 28px;
            position: relative;
            padding-bottom: 15px;
        }

        h1:after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 50%;
            transform: translateX(-50%);
            width: 60px;
            height: 4px;
            background: #3498db;
            border-radius: 2px;
        }

        p {
            text-align: center;
            margin-bottom: 25px;
            color: #666;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-weight: 500;
            color: #2c3e50;
        }

        input[type="text"],
        input[type="email"],
        select {
            width: 100%;
            padding: 14px 16px;
            border: 1px solid #ddd;
            border-radius: 8px;
            font-size: 15px;
            transition: all 0.3s ease;
            background-color: #f9fafb;
        }

        input[type="text"]:focus,
        input[type="email"]:focus,
        select:focus {
            outline: none;
            border-color: #3498db;
            box-shadow: 0 0 0 3px rgba(52, 152, 219, 0.2);
            background-color: #fff;
        }

        .checkbox-group, .radio-group {
            margin: 15px 0;
        }

        .checkbox-group label, .radio-group label {
            display: inline;
            font-weight: normal;
            margin-right: 15px;
        }

        input[type="checkbox"], input[type="radio"] {
            margin-right: 8px;
            transform: scale(1.2);
        }

        .btn {
            background: #3498db;
            color: white;
            border: none;
            padding: 14px 24px;
            border-radius: 8px;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s ease;
            display: block;
            width: 100%;
            margin-top: 20px;
        }

        .btn:hover {
            background: #2980b9;
            transform: translateY(-2px);
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .btn:active {
            transform: translateY(0);
        }

        footer {
            text-align: center;
            margin-top: 30px;
            color: #7f8c8d;
            font-size: 14px;
        }

        @media (max-width: 576px) {
            .container {
                padding: 20px;
            }

            input[type="text"],
            input[type="email"],
            select {
                padding: 12px;
            }
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Survey</h1>
    <p>Please fill out this survey to help us improve.</p>

    <form action="survey" method="post">
        <div class="form-group">
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required/>
        </div>

        <div class="form-group">
            <label for="firstName">First Name:</label>
            <input type="text" id="firstName" name="firstName" required/>
        </div>

        <div class="form-group">
            <label for="lastName">Last Name:</label>
            <input type="text" id="lastName" name="lastName" required/>
        </div>

        <div class="form-group">
            <label for="heardFrom">Heard From:</label>
            <select id="heardFrom" name="heardFrom">
                <option value="Search Engine">Search Engine</option>
                <option value="Friend or Colleague">Friend or Colleague</option>
                <option value="Social Media">Social Media</option>
            </select>
        </div>

        <div class="checkbox-group">
            <input type="checkbox" id="wantsUpdates" name="wantsUpdates" value="Yes"/>
            <label for="wantsUpdates">Receive Updates</label>
        </div>

        <div class="form-group">
            <label>Contact Via:</label>
            <div class="radio-group">
                <input type="radio" id="contactEmail" name="contactVia" value="Email" checked/>
                <label for="contactEmail">Email</label>

                <input type="radio" id="contactPhone" name="contactVia" value="Phone"/>
                <label for="contactPhone">Phone</label>

                <input type="radio" id="contactMail" name="contactVia" value="Mail"/>
                <label for="contactMail">Mail</label>
            </div>
        </div>

        <input type="submit" value="Submit" class="btn"/>
    </form>
</div>

<footer>
    <jsp:include page="includes/footer.jsp"/>
</footer>
</body>
</html>