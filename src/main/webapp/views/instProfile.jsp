<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
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
          <option value="Student" selected>Student</option>
          <option value="Staff">Staff</option>
        </select>
      </div>

      <div id="Student" class="form-group" style="display: block;">
        <h3>Student Details</h3>
        <div class="form-group">
          <label for="firstName">First Name:</label>
          <input type="text" id="firstName" name="firstName" required />
        </div>
        <div class="form-group">
          <label for="lastName">Last Name:</label>
          <input type="text" id="lastName" name="lastName" required />
        </div>
        <div class="form-group">
          <label for="middleName">Middle Name:</label>
          <input type="text" id="middleName" name="middleName" />
        </div>
        <div class="form-group">
          <label for="address">Address:</label>
          <input type="text" id="address" name="address" required />
        </div>
        <div class="form-group">
          <label for="pincode">Pincode:</label>
          <input type="text" id="pincode" name="pincode" required />
        </div>
        <div class="form-group">
          <label for="email">Email:</label>
          <input type="email" id="email" name="email" required />
        </div>
        <div class="form-group">
          <label for="contact">Contact:</label>
          <input type="text" id="contact" name="contact" required />
        </div>
        <div class="form-group">
          <label for="guardianName">Guardian Name:</label>
          <input type="text" id="guardianName" name="guardianName" required />
        </div>
        <div class="form-group">
          <label for="dob">Date of Birth:</label>
          <input type="date" id="dob" name="dob" required />
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
          <label for="level">Level:</label>
          <select id="level" name="level">
            <option value="default">Choose one</option>
            <option value="PlayGroup">Play Group</option>
            <option value="PrePrimary">Pre-Primary</option>
            <option value="Primary">Primary</option>
            <option value="Secondary">Secondary</option>
            <option value="HigherSecondary">Higher Secondary</option>
          </select>
        </div>
        <div class="form-group">
          <label for="standard">Standard:</label>
          <select id="standard" name="standard">
            <option value="default">Choose one</option>
            <option value="kinderGarden">Kinder Garden</option>
            <option value="nursery">Nursery</option>
            <option value="jrKg">Jr. Kg.</option>
            <option value="srKg">Sr. Kg.</option>
            <option value="1st">1st</option>
            <option value="2nd">2nd</option>
            <option value="3rd">3rd</option>
            <option value="4th">4th</option>
            <option value="5th">5th</option>
            <option value="6th">6th</option>
            <option value="7th">7th</option>
            <option value="8th">8th</option>
            <option value="9th">9th</option>
            <option value="10th">10th</option>
            <option value="11SI">11th - science & IT</option>
            <option value="11SC">11th - science & CS</option>
            <option value="11S">11th - science</option>
            <option value="11CI">11th - Commerce & IT</option>
            <option value="11C">11th - Commerce</option>
            <option value="11AI">11th - Arts & IT</option>
            <option value="11A">11th - Arts</option>
            <option value="12SI">12th - science & IT</option>
            <option value="12SC">12th - science & CS</option>
            <option value="12S">12th - science</option>
            <option value="12CI">12th - Commerce & IT</option>
            <option value="12C">12th - Commerce</option>
            <option value="12AI">12th - Arts & IT</option>
            <option value="12A">12th - Arts</option>
          </select>
        </div>
        <div class="form-group">
          <label for="doa">Date of Admission:</label>
          <input type="date" id="doa" name="doa" required />
        </div>
      </div>

      <div id="Staff" class="form-group" style="display: none;">
        <h3>Staff Details</h3>
        <div class="form-group">
          <label for="firstName">First Name:</label>
          <input type="text" id="firstName" name="firstName" required />
        </div>
        <div class="form-group">
          <label for="lastName">Last Name:</label>
          <input type="text" id="lastName" name="lastName" required />
        </div>
        <div class="form-group">
          <label for="middleName">Middle Name:</label>
          <input type="text" id="middleName" name="middleName" />
        </div>
        <div class="form-group">
          <label for="address">Address:</label>
          <input type="text" id="address" name="address" required />
        </div>
        <div class="form-group">
          <label for="pincode">Pincode:</label>
          <input type="text" id="pincode" name="pincode" required />
        </div>
        <div class="form-group">
          <label for="email">Email:</label>
          <input type="email" id="email" name="email" required />
        </div>
        <div class="form-group">
          <label for="contact">Contact:</label>
          <input type="text" id="contact" name="contact" required />
        </div>
        <div class="form-group">
          <label for="dob">Date of Birth:</label>
          <input type="date" id="dob" name="dob" required />
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
          <input type="text" id="adhar" name="adhar" required />
        </div>
        <div class="form-group">
          <label for="pan">Pancard Number:</label>
          <input type="text" id="pan" name="pan" required />
        </div>
        <div class="form-group">
          <label for="Qualification">Highest Qualification:</label>
          <input type="text" id="Qualification" name="Qualification" required />
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
          <label for="level">Section:</label>
          <select id="level" name="level">
            <option value="default">Choose one</option>
            <option value="KinderGarden">Kinder Garden</option>
            <option value="PrePrimary">Pre-Primary</option>
            <option value="Primary">Primary</option>
            <option value="Secondary">Secondary</option>
            <option value="HigherSecondary">Higher Secondary</option>
          </select>
        </div>
        <div class="form-group">
          <label for="type">Staff Type:</label>
          <select id="type" name="type">
            <option value="default">Choose one</option>
            <option value="teaching">Teaching Staff</option>
            <option value="non_teaching">Non - Teaching staff</option>
          </select>
        </div>
        <div class="form-group">
          <label for="doj">Date of Joining:</label>
          <input type="date" id="doj" name="doj" required />
        </div>
        <div class="form-group">
          <label for="salary">Salary package:</label>
          <input type="text" id="salary" name="salary" required />
        </div>
      </div>

      <div class="button-container">
        <button type="submit">Submit</button>
      </div>
    </form>

    <script>
      function changeForm() {
          var profileType = document.getElementById("profileType").value;
          var studentDiv = document.getElementById("Student");
          var staffDiv = document.getElementById("Staff");

          if (profileType === "Student") {
              studentDiv.style.display = "block";
              staffDiv.style.display = "none";
          } else if (profileType === "Staff") {
              studentDiv.style.display = "none";
              staffDiv.style.display = "block";
          }
      }

      function submitForm() {
          var profileType = document.getElementById("profileType").value;
          var form = document.getElementById("staffForm");

          if (profileType === "Student") {
              form.action = "/submitStudent";
          } else if (profileType === "Staff") {
              form.action = "/submitStaff";
          }
      }
    </script>
  </body>
</html>
