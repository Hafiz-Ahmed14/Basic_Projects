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
    background: white;/* Blue-purple shade color gradient */
    display: flex;
    justify-content: center;
    align-items: flex-start; /* Align items to the top */
    height: 100vh;
  }
  .container {
    position: absolute; /* Use absolute positioning */
    top: 20px; /* Adjust top position */
    left: 50%; /* Center horizontally */
    transform: translateX(-50%); /* Center horizontally */
    max-width: 800px;
    padding: 20px;
    text-align: center;
    color: #060606; /* White text color */
    background-color: white (248, 248, 246, 0.3); /* Transparent white background color */
    border-radius: 10px;
    background: linear-gradient(135deg, #6f7bff, #c97bff);
    
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
    background-color: #e4480f; /* Yellowish-orange background color */
    color: #fff; /* White text color */
    font-size: 16px;
    cursor: pointer;
  }
  select:hover {
    background-color:#e4480f; /* Lighter yellowish-orange background color on hover */
  }
</style>
</head>
<body>
<div class="container">
  <h1>BAUET CSE Department Schedule Creator</h1>
  <select>
    <option selected disabled>Search Teacher</option>
    <option value="batch1">Irin Sultana</option>
    <option value="batch2">Rakhi Rani Paul</option>
    <option value="batch3">Shubrata Kumar Paul</option>
    <option value="batch3">Md Al-Amin</option>
    <option value="batch3">Bristy Rani Roy</option>
    <option value="batch3">MD Atikur Rahman</option>
    <option value="batch3">Muhtasim</option>
    <option value="batch3">Must. Asma Yasmin</option>
    <!-- Add more batch options as needed -->
  </select>
</div>
</body>
</html>

