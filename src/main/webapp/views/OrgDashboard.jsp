<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            overflow: hidden;
        }
        .top-bar {
            background-color: #333;
            color: #fff;
            padding: 20px;
            text-align: center;
            position: relative;
        }
        .current-time {
            position: absolute;
            top: 50%;
            left: 10px;
            transform: translateY(-50%);
        }
        .Signout-btn {
            padding: 8px 20px;
            background-color: #ADD8E6;
            color: #333;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 14px;
            transition: background-color 0.3s ease;
            position: absolute;
            top: 50%;
            right: 20px;
            transform: translateY(-50%);
        }

            .page-content {
                padding: 20px;
                border: 1px solid #ccc;
                border-radius: 8px;
                background-color: #f9f9f9;
                max-width: 900px;
                position: absolute;
                left: 50%;
                transform: translateX(-50%);
            }

                .tab-icon {
                    cursor: pointer;
                    margin-right: 50px;
                }


           .container {
               display: flex;
               flex-direction: column;
               align-items: center;
               justify-content: center;
               text-align: center;
           }

.page-content {
            padding: 5px;
            border: 5px solid #ccc;
            border-radius: 8px;
            background-color: #f9f9f9;
            max-width: 900px;
            position: absolute;
            top: 110px;
            left: 50%;
            transform: translateX(-50%);
            animation: colorFlash 2s infinite alternate;
        }

           .dashboard-heading {
                       font-size: 28px;
                       margin-bottom: 20px;
                       position: absolute;
                       top: 100px;
                       left: 120px;
                       transform: translate(-50%, -50%);
                       text-decoration: underline;
                       font-style: italic;
                       color: #333;
                   }
                    .services-heading {
                               font-size: 26px;
                               margin-top: 160px;
                               transform: translate(45%);
                               text-decoration: underline;
                               font-style: italic;
                               color: #00008B;

                           }

   @keyframes colorFlash {
             25% {
                 color: #ff0000;
             }
             50% {
                 color: #008000;
             }
             100% {
                 color: #00008B
             }
         }

         .tab-icons {
             display: flex;
             justify-content: center;
             margin-top: 50px;
         }

         .tab-icon {
             width: 100px;
             height: 100px;
             margin: 0 10px;
             cursor: pointer;
             border: 2px solid #800000;
         }

         .tab-icon img {
             width: 100%;
             height: 100%;
             object-fit: cover;
         }

                  .success-message {
                     width: 20%;
                     margin-top:10px;
                     margin-left:40%;
                     text-color: red;
                     text-align: center;
                     margin-bottom: 10px;
                     background-color: #ccffcc;
                     border: 1px solid #66ff66;
                     border-radius: 10px;
                         }

                  .error-message{
                     width: 20%;
                     margin-top:10px;
                     margin-left:40%;
                     text-color: red;
                     text-align: center;
                     margin-bottom: 10px;
                     background-color: #ffcccc;
                     border: 1px solid #ff6666;
                     border-radius: 10px;

                         }

    </style>
</head>
<body>
    <div class="top-bar">
        <span class="current-time"><%= new java.util.Date() %></span>
        <span>Welcome, <%= request.getParameter("username") %>!</span>
        <a href="/login" class="Signout-btn">Signout</a>
    </div>
       <div class="container">
           <h1 class="dashboard-heading">DASHBOARD:</h1>
           <div class="page-content">
               <p style="font-size: 16px;">Currently this system has <%= request.getParameter("count") %> active users. - org</p>
           </div>
       </div>
           <h3 class="services-heading">Our Services</h3>
           <div class="tab-icons">
                <a href="/orgProfile" class="tab-link">
                       <img src="images/addProfile.jpg" class="tab-icon">
                       <p style= "margin-left:21px; margin-top:2px">Add Profile</p>
                </a>
                <a href="/register" class="tab-link">
                       <img src="images/searchProfile.jpg" class="tab-icon">
                       <p style= "margin-left:11px; margin-top:2px">Search Profile</p>
                </a>
                <a href="/register" class="tab-link">
                       <img src="images/notifyPayment.jpg" class="tab-icon">
                       <p style= "margin-left:10px; margin-top:2px">Notify Payment</p>
                </a>
                <a href="/register" class="tab-link">
                       <img src="images/paydue.jpg" class="tab-icon">
                       <p style= "margin-left:22px; margin-top:2px">Notify Due</p>
                </a>
                <a href="/register" class="tab-link">
                       <img src="images/analytics.jpg" class="tab-icon">
                       <p style= "margin-left:27px; margin-top:2px">Analytics</p>
                </a>
           </div>
                    <%-- Check for error message and display below the form --%>
                    <% if (request.getAttribute("errorMessage") != null) { %>
                        <div class="error-message">
                            <%= request.getAttribute("errorMessage") %>
                        </div>
                    <% } else if (request.getAttribute("successMessage") != null) { %>
                        <div class="success-message">
                            <%= request.getAttribute("successMessage") %>
                        </div>
                    <% } %>

</body>
</html>
