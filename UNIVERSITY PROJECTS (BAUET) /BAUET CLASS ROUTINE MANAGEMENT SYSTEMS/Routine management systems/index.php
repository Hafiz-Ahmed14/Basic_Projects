<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Home Page</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

<style>
  body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    background: url('https://bauet.ac.bd/wp-content/uploads/2020/11/image159-1024x655.jpg') center/cover;
    background-blur: 10px;
    background-color: rgba(255, 255, 255, 0.5);
  }
  .container {
    text-align: center;
    background-color: rgba(255, 255, 255, 0.8);
    padding: 60px; /* Increased padding */
    border-radius: 20px;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.5);
    max-width: 800px; /* Increased max-width */
  }
  .container button {
    text-decoration: none;
    background: #007bff;
    color: white;
    padding: 10px 20px;
    font-size: 14px;
    letter-spacing: 1px;
    display: inline-block;
    margin: 10px;
    border-radius: 15px;
    transition: background-color 0.3s;
    cursor: pointer;
    border: none;
    text-align: center;
    width: 150px;
  }

  .container button:hover {
    background: #0056b3;
  }

  h1 {
    font-weight: bold;
    color: #4d1f9d;
    margin-bottom: 20px;
  }
</style>
</head>
<body>
<div class="container">
  <h1>BAUET CSE Department<br>Schedule Creator</h1>
  <div>
    <button onclick="window.location.href='custlogin.php'">Login<br>As Committee</button>
    <button onclick="window.location.href='studentView.php'">View<br>As Student</button>
    <button onclick="window.location.href='teacherView.php'">View<br>As Teacher</button>
  </div>
</div>
</body>
</html>
