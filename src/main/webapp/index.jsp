<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome Page</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            height: 100vh;
            font-family: "Segoe UI", Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            background: linear-gradient(135deg, #1e3c72, #2a5298);
            color: white;
        }
        .container {
            text-align: center;
            background: rgba(255,255,255,0.1);
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 8px 25px rgba(0,0,0,0.3);
        }
        h1 {
            font-size: 2.5rem;
            margin-bottom: 20px;
            background: linear-gradient(90deg, #ffcc70, #ff8177, #cf556c);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            animation: gradientShift 5s infinite alternate;
        }
        p {
            font-size: 1.2rem;
            margin: 10px 0;
            color: #f1f1f1;
        }
        @keyframes gradientShift {
            0% { background-position: 0%; }
            100% { background-position: 100%; }
        }
        .quote {
            font-style: italic;
            font-size: 1.4rem;
            margin-top: 20px;
            color: #ffeaa7;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Hi 👋</h1>
        <p>This web page is part of my <strong>DevOps Interview Task</strong></p>
        <p class="quote">“Hello Everyone... Have a nice day”</p>
            </div>
</body>
</html>
