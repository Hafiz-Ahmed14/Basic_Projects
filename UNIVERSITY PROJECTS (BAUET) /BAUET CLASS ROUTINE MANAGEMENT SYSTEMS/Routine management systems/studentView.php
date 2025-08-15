<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>BAUET CSE Department Schedule Creator</title>
<style>
  body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
  }
  .container {
    position: absolute;
    top: 20px;
    left: 50%;
    transform: translateX(-50%);
    max-width: 800px;
    padding: 20px;
    text-align: center;
    color: #000;
    background-color: #fff;
    border-radius: 10px;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.3);
    background: linear-gradient(135deg, #6f7bff, #c97bff); /* Blue-purple shade color gradient */
  }
  h1 {
    font-size: 36px;
    font-weight: bold;
    margin-bottom: 20px;
  }
  select {
    padding: 10px;
    border: none;
    border-radius: 5px;
    background-color: #4d1f9d; /* Blue-purple shade color */
    color: #fff; /* White text color */
    font-size: 16px;
    cursor: pointer;
    width: 200px;
    margin-right: 10px;
  }
  select:hover {
    background-color: #354dc3; /* Lighter blue-purple shade color on hover */
  }
  .display-btn {
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    background-color: #4d1f9d; /* Purple button color */
    color: #fff; /* White text color */
    font-size: 16px;
    cursor: pointer;
    transition: background-color 0.3s;
  }
  .display-btn:hover {
    background-color: #6839ac; /* Darker purple color on hover */
  }
</style>
</head>
<body>
<div class="container">
  <h1>BAUET CSE Department Schedule Creator</h1>
  <select>
    <option selected disabled hidden>Select Batch</option>
    <option value="CSE-11">CSE-11</option>
    <option value="CSE-12">CSE-12</option>
    <option value="CSE-13">CSE-13</option>
    <option value="CSE-14">CSE-14</option>
    <option value="CSE-15">CSE-15</option>
    <option value="CSE-16">CSE-16</option>
    <option value="CSE-17">CSE-17</option>
    <option value="CSE-18">CSE-18</option>
    <!-- Add more batch options as needed -->
  </select>
  <button class="display-btn">Display</button>
</div>
</body>
</html>
