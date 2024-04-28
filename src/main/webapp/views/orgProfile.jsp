<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Data Entry Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        form {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        form h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
            color: #666;
        }

        .form-group input,
        .form-group select {
            width: 90%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }

        .button-container {
            text-align: center;
        }

        .button-container button {
            padding: 12px 20px;
            background-color: #007bff;
            border: none;
            border-radius: 5px;
            color: #fff;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .button-container button:hover {
            background-color: #0056b3;
        }
    </style>
</head>

<body>
    <form id="staffForm" method="post" onsubmit="submitForm()">
        <h2>Add Profile</h2>
        <div class="form-group">
            <label for="profileType">Select Profile Type:</label>
            <select id="profileType" onchange="changeForm()">
                <option value="Staff" selected>Staff</option>
                <option value="Client">Client</option>
            </select>
        </div>

        <div id="Staff" class="form-group" style="display: block;">
            <h3>Staff Details</h3>
            <div class="form-group">
                <label for="firstName">First Name:</label>
                <input type="text" id="firstName" name="firstName" required>
            </div>
            <div class="form-group">
                <label for="lastName">Last Name:</label>
                <input type="text" id="lastName" name="lastName" required>
            </div>
            <div class="form-group">
                <label for="middleName">Middle Name:</label>
                <input type="text" id="middleName" name="middleName">
            </div>
            <div class="form-group">
                <label for="address">Address:</label>
                <input type="text" id="address" name="address" required>
            </div>
            <div class="form-group">
                <label for="pincode">Pincode:</label>
                <input type="text" id="pincode" name="pincode" required>
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="contact">Contact:</label>
                <input type="text" id="contact" name="contact" required>
            </div>
            <div class="form-group">
                <label for="dob">Date of Birth:</label>
                <input type="date" id="dob" name="dob" required>
            </div>
            <div class="form-group">
                <label for="gender">Gender:</label>
                <select id="gender" name="gender">
                                <option value="default">Choose one</option>
                                <option value="male">Mail</option>
                                <option value="female">Female</option>
                                <option value="others">Others</option>
                            </select>
            </div>
            <div class="form-group">
                <label for="adhar">Adhar Number:</label>
                <input type="text" id="adhar" name="adhar" required>
            </div>
            <div class="form-group">
                <label for="pan">Pancard Number:</label>
                <input type="text" id="pan" name="pan" required>
            </div>
            <div class="form-group">
                <label for="Qualification">Highest Qualification:</label>
                <input type="text" id="Qualification" name="Qualification" required>
            </div>
            <div class="form-group">
                <label for="exp">Experience level:</label>
                <select id="exp" name="type">
                                <option value="default">Choose one</option>
                                <option value="0-1">0-1 year</option>
                                <option value="1-2">1-2 years</option>
                                <option value="2-3">2-3 years</option>
                                <option value="3-4">3-4 years</option>
                                <option value="5_&_above">5 & above years</option>
                            </select>
            </div>
            <div class="form-group">
                <label for="role">Staff Role:</label>
                <select id="role" name="role">
                                <option value="default">Choose one</option>
                                <option value="Software Developer">Software Developer</option>
                                <option value="Software Engineer">Software Engineer</option>
                                <option value="Systems Analyst">Systems Analyst</option>
                                <option value="Database Administrator">Database Administrator</option>
                                <option value="Network Engineer">Network Engineer</option>
                                <option value="Quality Assurance Engineer">Quality Assurance Engineer</option>
                                <option value="IT Project Manager">IT Project Manager</option>
                                <option value="Business Analyst">Business Analyst</option>
                                <option value="UI/UX Designer">UI/UX Designer</option>
                                <option value="Technical Support Specialist">Technical Support Specialist</option>
                                <option value="Cybersecurity Analyst">Cybersecurity Analyst</option>
                                <option value="DevOps Engineer">DevOps Engineer</option>
                                <option value="Data Scientist">Data Scientist</option>
                                <option value="Cloud Architect">Cloud Architect</option>
                                <option value="Systems Administrator">Systems Administrator</option>
                                <option value="Human Resources Manager">Human Resources Manager</option>
                                <option value="Finance Manager">Finance Manager</option>
                                <option value="Accountant">Accountant</option>
                                <option value="Marketing Specialist">Marketing Specialist</option>
                                <option value="Sales Representative">Sales Representative</option>
                                <option value="Customer Success Manager">Customer Success Manager</option>
                                <option value="Project Coordinator">Project Coordinator</option>
                                <option value="Cleaner">Cleaner</option>
                                <option value="Security Staff">Security Staff</option>
                                <option value="Premises Maintenance Staff">Premises Maintenance Staff</option>
                                </select>
                    </div>
                                               <div class="form-group">
                                                    <label for="salary">Salary package:</label>
                                                    <input type="text" id="salary" name="salary" required>
                                                </div>
            <div class="form-group">
                <label for="doj">Date of Joining:</label>
                <input type="date" id="doj" name="doj" required>
            </div>
        </div>

        <div id="Client" class="form-group" style="display: none;">
            <h3>Client Details</h3>
             <div class="form-group">
                            <label for="CompanyName">Company Name:</label>
                            <input type="text" id="CompanyName" name="CompanyName" required>
                        </div>
                        <div class="form-group">
                            <label for="address">Address:</label>
                            <input type="text" id="address" name="address" required>
                        </div>
                        <div class="form-group">
                            <label for="pincode">Pincode:</label>
                            <input type="text" id="pincode" name="pincode" required>
                        </div>
                        <div class="form-group">
                            <label for="email">Email:</label>
                            <input type="email" id="email" name="email" required>
                        </div>
                        <div class="form-group">
                            <label for="contact">Contact:</label>
                            <input type="text" id="contact" name="contact" required>
                        </div>
                        <div class="form-group">
                            <label for="reg">Registration Number:</label>
                            <input type="text" id="reg" name="reg" required>
                        </div>
                        <div class="form-group">
                            <label for="sub">Subscription Type:</label>
                            <select id="sub" name="sub">
                                <option value="default">Choose one</option>
                                <option value="Web Development">Web Development</option>
                                  <option value="Mobile App Development">Mobile App Development</option>
                                  <option value="Custom Software Development">Custom Software Development</option>
                                  <option value="UI/UX Design">UI/UX Design</option>
                                  <option value="Cloud Computing Services">Cloud Computing Services</option>
                                  <option value="Database Management">Database Management</option>
                                  <option value="IT Consulting">IT Consulting</option>
                                  <option value="Cybersecurity Solutions">Cybersecurity Solutions</option>
                                  <option value="Network Infrastructure Setup">Network Infrastructure Setup</option>
                                  <option value="IT Support and Maintenance">IT Support and Maintenance</option>
                                  <option value="Data Analytics and Business Intelligence">Data Analytics and Business Intelligence</option>
                                  <option value="Quality Assurance and Testing">Quality Assurance and Testing</option>
                                  <option value="Project Management">Project Management</option>
                                  <option value="Digital Marketing">Digital Marketing</option>
                                  <option value="E-commerce Solutions">E-commerce Solutions</option>
                            </select>
            </div>
            <div class="form-group">
                <label for="doe">Date of Enrollment:</label>
                <input type="date" id="doe" name="doe" required>
            </div>
            <div class="form-group">
                <label for="charges">Service Charges:</label>
                <input type="text" id="charges" name="charges" required>
            </div>
        </div>

        <div class="button-container">
            <button type="submit">Submit</button>
        </div>
    </form>

    <script>
        function changeForm() {
            var profileType = document.getElementById("profileType").value;
            var staffDiv = document.getElementById("Staff");
            var clientDiv = document.getElementById("Client");

            if (profileType === "Staff") {
                staffDiv.style.display = "block";
                clientDiv.style.display = "none";
            } else if (profileType === "Client") {
                staffDiv.style.display = "none";
                clientDiv.style.display = "block";
            }
        }

        function submitForm() {
            var profileType = document.getElementById("profileType").value;
            var form = document.getElementById("staffForm");

            if (profileType === "Staff") {
                form.action = "/submitStaff";
            } else if (profileType === "Client") {
                form.action = "/submitClient";
            }
        }
    </script>
</body>

</html>