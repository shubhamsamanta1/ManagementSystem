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
            left: 20px;
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
        }
    </style>
</head>
<body>
    <div class="top-bar">
        <span class="current-time"><%= new java.util.Date() %></span>
        <span>Welcome, <%= request.getParameter("username") %>!</span>
        <a href="/login" class="Signout-btn">Signout</a>
    </div>
    <div class="page-content">
        <p>You are org user.</p>
    </div>
</body>
</html>
