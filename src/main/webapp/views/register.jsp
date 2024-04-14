<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration</title>
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

        input[type="text"],
        input[type="email"],
        input[type="password"] {
            width: calc(100% - 22px);
            padding: 8px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        button[type="submit"] {
            width: 100%;
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
                    .userType1 {
                            display: inline-block;
                            width: 150px;
                            text-align: left;
                            margin-right: 20px;
                        }

                        .userType {
                            width: 200px;
                            padding: 8px;
                            align:right;
                            border: 1px solid #ccc;
                            border-radius: 5px;
                            appearance: none;
                            -webkit-appearance: none;
                            background-color: #fff;
                            background-repeat: no-repeat;
                            background-image: url('data:image/svg+xml;utf8,<svg fill="%23333" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="18px" height="18px"><path d="M7 10l5 5 5-5z" /><path d="M0 0h24v24H0z" fill="none" /></svg>');
                            background-position: right 8px top 50%;
                            cursor: pointer;
                        }


                        .userType:hover, .userType:focus {
                            border-color: #999;
                        }

                         .group {
                                margin-bottom: 20px;
                            }



    </style>
</head>
<body>
    <form id="registrationForm" action="/createUser" method="POST">

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


        <h2>Registration Page</h2>
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required>
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required>
        <div class="group">
        <label for="userType1" class="userType1">Select user type:</label>
            <select id="userType" name="userType" class="userType">
                <option value="none">Choose one</option>
                <option value="Org_user">Co-operate User</option>
                <option value="Inst_user">Educational User</option>
            </select>
         </div>
        <button type="submit">Save User</button>
    </form>
</body>
</html>
