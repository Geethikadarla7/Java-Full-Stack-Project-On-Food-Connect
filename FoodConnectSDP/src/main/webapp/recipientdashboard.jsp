<%@page import="com.klef.jfsd.springboot.model.Recipient"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    Recipient r = (Recipient) session.getAttribute("recipient");

    if (r == null) {
        response.sendRedirect("recipientsessionexpiry");
        return;
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Recipient Dashboard</title>
    <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
    
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap');
        
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        :root {
            --body-color: #E4E9F7;
            --sidebar-color: #FFF;
            --primary-color: #695CFE;
            --primary-color-light: #F6F5FF;
            --toggle-color: #DDD;
            --text-color: #707070;

            --tran-05: all 0.3s ease;
        }

        body {
            min-height: 100vh;
            background-color: var(--body-color);
            transition: var(--tran-05);
        }

        .main-content {
            padding: 20px;
        }

        .food-section {
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
            gap: 20px;
        }

        .food-card {
            background-color: #81C784;
            background-image: linear-gradient(180deg, #F1F8E9 0%, #81C784 100%);
            border-radius: 8px;
            padding: 15px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            width: calc(30.33% - 20px);
            text-align: center;
            transition: transform 0.3s ease;
        }

        .food-card:hover {
            transform: translateY(-10px);
        }

        .food-img {
            width: 100%;
            height: 150px;
            object-fit: cover;
            border-radius: 8px;
        }

        .food-card h3 {
            margin: 10px 0;
            font-size: 18px;
        }

        .food-card p {
            font-size: 13px;
            margin-bottom: 10px;
        }

        .food-btn {
            background-color: #DCE775;
            color: black;
            border: none;
            padding: 10px 15px;
            font-size: 14px;
            cursor: pointer;
            border-radius: 5px;
        }

        .food-btn:hover {
            background-color: red;
            color: white;
        }
    </style>
</head>
<body>
    <jsp:include page="recipienthome.jsp" />

    <section class="home">
        <h2 align="center">Welcome <%= r.getname() %> </h2>

        <div class="main-content">
            <div class="food-section">

                <!-- Card 1 -->
                <div class="food-card">
                    <img src="https://images.pexels.com/photos/1132047/pexels-photo-1132047.jpeg?auto=compress&cs=tinysrgb&h=350" alt="Fruits and Vegetables" class="food-img">
                    <h3>Fruits and Vegetables</h3>
                    <p>Fruits are sweet, edible parts of plants containing seeds, while vegetables are typically savory or less sweet.</p>
                    <a href="foodrequest.jsp"><button class="food-btn">Pickup Request</button></a>
                </div>

                <!-- Card 2 -->
                <div class="food-card">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHfcbgeqBNsc9PkjFBg2UtESB1nAz287hOx0XNxlaDZHkTKP_7YSPkAsQqXhZ6_5uX7I8&usqp=CAU" alt="Non-Perishable Items" class="food-img">
                    <h3>Non-Perishable Surplus Items</h3>
                    <p>Non-perishable food items are long-lasting foods that don’t require refrigeration or special handling, making them ideal for donation and storage.</p>
                    <a href="foodrequest.jsp"><button class="food-btn">Pickup Request</button></a>
                </div>

                <!-- Card 3 -->
                <div class="food-card">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAJhJbmiEcgXqEfSMzuBEfsKqQGntntZTVvQ&s" alt="View Donations" class="food-img">
                    <h3>View Surplus Inventory</h3>
                    <p>Check the status of available surplus items, view details of past pickups, and track your contribution to reducing food waste.</p>
                    <a href="viewdonations"><button class="food-btn">View Inventory</button></a>
                </div>

            </div>
        </div>
    </section>
</body>
</html>
