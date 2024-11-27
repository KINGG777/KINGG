#!/bin/bash
yum update -y
yum install -y httpd php
systemctl start httpd
systemctl enable httpd

echo "<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            color: #333;
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            text-align: center;
            background: linear-gradient(to bottom right, #3498db, #9b59b6);
            color: white;
        }

        .welcome-box {
            background-color: rgba(255, 255, 255, 0.1);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
        }

        h1 {
            font-size: 2.5em;
            margin-bottom: 20px;
        }

        p {
            font-size: 1.2em;
            margin-bottom: 30px;
        }

        a {
            text-decoration: none;
            color: white;
            background-color: #2980b9;
            padding: 15px 25px;
            border-radius: 50px;
            font-size: 1em;
            transition: background-color 0.3s ease;
        }

        a:hover {
            background-color: #1c5980;
        }
    </style>
</head>

<body>
    <div class="container">
        <div class="welcome-box">
            <h1>Welcome To DevOps By VeeraBabu Sir</h1>
            <p>This Server Created Using Terraform </p>
            <a href="#"> $(hostname -I)</a>
        </div>
    </div>
</body>

</html>"> /var/www/html/index.html
