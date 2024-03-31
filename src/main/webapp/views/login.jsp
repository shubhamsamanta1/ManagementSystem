<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <style>
        /* Center the form on the page */
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        /* Style for the form */
        form {
            width: 300px;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #f9f9f9;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        form h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 10px;
        }

        input[type="email"],
        input[type="password"] {
            width: calc(100% - 22px);
            padding: 8px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

         button[type="submit"] {
                    width: calc(45% - 4px);
                    padding: 10px;
                    background-color: #007bff;
                    border: none;
                    border-radius: 3px;
                    color: white;
                    cursor: pointer;
                }

        button[type="submit"]:hover {
            background-color: #0056b3;
         }

        .button-container {
                display: flex;
                justify-content: space-between;

            }

                  .register-button {
                      width: calc(40% - 4px);
                      padding: 10px;
                      background-color: #007bff;
                      border: none;
                      border-radius: 3px;
                      color: white;
                      cursor: pointer;
                      text-decoration: none;
                      text-align: center;
                  }

           .register-button:hover {
                         background-color: #0056b3;
                     }

         .success-message {
            width: 100%;
            margin-top:10px;
            text-color: red;
            text-align: center;
            margin-bottom: 10px;
            background-color: #ccffcc;
            border: 1px solid #66ff66;
            border-radius: 10px;
                }

         .error-message{
            width: 100%;
            margin-top:10px;
            text-color: red;
            text-align: center;
            margin-bottom: 10px;
            background-color: #ffcccc;
            border: 1px solid #ff6666;
            border-radius: 10px;

                }

          .register-button:hover {
              background-color: #0056b3;
          }

    </style>
</head>
<body>

    <form id="loginForm" action="/SignIn" method="POST">

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

        <h2>Login Page</h2>
        <label for="email">Email ID:</label>
        <input type="email" id="email" name="email" required>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required>

         <div class="button-container">
                <button type="Submit" id="loginButton">Login</button>
                <a href="/register" class="register-button">Register</a>
            </div>
    </form>


</body>
</html>
