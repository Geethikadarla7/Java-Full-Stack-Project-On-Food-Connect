<%@page import="com.klef.jfsd.springboot.model.FoodDonor"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    FoodDonor d = (FoodDonor) session.getAttribute("donor");
    if (d == null) {
        response.sendRedirect("donorsessionexpiry.jsp"); // Optional: add .jsp
        return;
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Inventory</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" />
    <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>

    <style>
        @import url('https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;500;600;700&display=swap');
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap');

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Open Sans', sans-serif;
        }

        :root {
            --body-color: #E6F7F1;
            --sidebar-color: #FFF;
            --primary-color: #695CFE;
            --primary-color-light: #F6F5FF;
            --toggle-color: #DDD;
            --text-color: #707070;
            --tran-05: all 0.3s ease;
        }

        html, body {
            height: 100%;
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        body {
            transition: var(--tran-05);
        }

        .home {
            width: 100%;
            padding: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .form-container {
            padding: 10px;
            max-width: 600px;
            width: 100%;
            background-image: linear-gradient(180deg, #F1F8E9 0%, #81C784 100%);
            border-radius: 7px;
            box-shadow: 0 10px 15px rgba(0, 0, 0, 0.2);
            margin: 20px;
        }

        form {
            padding: 15px;
            width: 100%;
        }

        form h2 {
            font-size: 24px;
            text-align: center;
            margin-bottom: 20px;
        }

        .form-group {
            margin-bottom: 12px;
        }

        label {
            display: block;
            font-size: 14px;
            margin-bottom: 5px;
        }

        input, textarea, select {
            width: 100%;
            padding: 8px;
            font-size: 14px;
            border-radius: 3px;
            border: 1px solid #bfbfbf;
        }

        textarea {
            resize: none;
            height: 60px;
        }

        .submit-btn {
            text-align: center;
            margin-top: 20px;
        }

        .submit-btn input {
            background: #DCE775;
            color: black;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            font-weight: 500;
            cursor: pointer;
            transition: 0.2s;
        }

        .submit-btn input:hover {
            background: darkred;
            color: white;
        }

        @media only screen and (max-width: 600px) {
            form h2 {
                font-size: 20px;
            }

            input, textarea, select {
                font-size: 12px;
            }

            .submit-btn input {
                font-size: 12px;
                padding: 7px 14px;
            }
        }
    </style>
</head>
<body>
    <jsp:include page="donorhome.jsp" />

    <section class="home">
        <div class="form-container">
            <form action="adddonation" method="post" enctype="multipart/form-data">
                <h2>Add Surplus Inventory</h2>

                <div class="form-group">
                    <label for="donor-name">Organization/Individual Name</label>
                    <input type="text" id="donor-name" name="dname" required>
                </div>

                <div class="form-group">
                    <label for="contact">Contact</label>
                    <input type="text" id="contact" name="dcontact" placeholder="e.g., 9876543210" required>
                </div>

                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" id="email" name="demail" placeholder="example@gmail.com" required>
                </div>

                <div class="form-group">
                    <label for="donation-frequency">Inventory Frequency</label>
                    <select id="donation-frequency" name="dfrequency" required>
                        <option value="" disabled selected>Select Frequency</option>
                        <option value="one-time">One-time</option>
                        <option value="daily">Daily</option>
                        <option value="weekly">Weekly</option>
                        <option value="monthly">Monthly</option>
                    </select>
                </div>

                <div class="form-group">
                    <label for="food-category">Food Category</label>
                    <select id="food-category" name="dcategory" required>
                        <option value="" disabled selected>Select Food Category</option>
                        <option value="produce">Fresh Produce</option>
                        <option value="meals">Meals</option>
                        <option value="bakery">Bakery Items</option>
                        <option value="meat">Meat</option>
                        <option value="dairy">Dairy</option>
                        <option value="canned">Canned Goods</option>
                    </select>
                </div>

                <div class="form-group">
                    <label for="pickup-location">Pickup Location</label>
                    <input type="text" id="pickup-location" name="dpickuplocation" placeholder="Enter pickup address" required>
                </div>

                <div class="form-group">
                    <label for="description">Description of Surplus Food</label>
                    <textarea id="description" name="ddesc" placeholder="E.g., 10 loaves of bread, 3kg rice" required></textarea>
                </div>

                <div class="form-group">
                    <label for="fimage">Upload Image of Surplus Item</label>
                    <input type="file" id="fimage" name="foodimage" required>
                </div>

                <div class="form-group">
                    <label for="pickup-date">Preferred Pickup Date/Time</label>
                    <input type="datetime-local" id="pickup-date" name="dpickupdate" required>
                </div>

                <div class="form-group">
                    <label for="expiry-date">Surplus Expiry Date</label>
                    <input type="date" id="expiry-date" name="dexpirydate" required>
                </div>

                <div class="submit-btn">
                    <input type="submit" value="Submit Donation">
                </div>
            </form>
        </div>
    </section>
</body>
</html>
