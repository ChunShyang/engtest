<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
</head>
<body>
    <h2>Login</h2>
    <form onsubmit="return loginUser(event)">
        <label for="username">Username:</label>
        <input type="text" id="username" required>
        <br><br>
        <label for="password">Password:</label>
        <input type="password" id="password" required>
        <br><br>
        <button type="submit">Login</button>
    </form>

    <script>
        function loginUser(event) {
            event.preventDefault(); // Prevent page reload

            const username = document.getElementById("username").value;
            const password = document.getElementById("password").value;

            // Simple authentication (Replace with actual backend check)
            if (username === "admin" && password === "password") {
                alert("Login successful!");
                window.opener.document.body.innerHTML += "<p>User logged in: " + username + "</p>";
                window.close(); // Close the pop-up window after login
            } else {
                alert("Invalid credentials!");
            }
        }
    </script>
</body>
</html>
