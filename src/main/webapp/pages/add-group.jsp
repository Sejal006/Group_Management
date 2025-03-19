<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Group</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <!-- Custom CSS -->
    <style>
        body {
            background-color: #f4f4f9; /* Light background for the page */
        }

        .navbar-custom {
            background-color: #004d99; /* A new blue color for the navbar */
        }

        .navbar-custom .navbar-brand {
            color: #ffcc00; /* Yellow brand color */
        }

        .navbar-custom .nav-link {
            color: #ffffff; /* White text for links */
        }

        .navbar-custom .nav-link:hover {
            color: #ffcc00; /* Yellow hover effect for links */
        }

        .btn-primary {
            background-color: #007bff; /* Custom blue for buttons */
            border-color: #007bff;
        }

        .btn-primary:hover {
            background-color: #0056b3; /* Darker blue for hover effect */
        }

        .table-dark th {
            background-color: #343a40; /* Dark gray background for table header */
            color: #ffffff; /* White text for headers */
        }

        .table-bordered {
            border: 1px solid #dee2e6; /* Border color for table */
        }

        .alert-danger {
            background-color: #ff4d4d; /* Light red background for error alerts */
            color: #ffffff;
        }
    </style>
</head>
<body>

<!-- Admin Navbar -->
<nav class="navbar navbar-expand-lg navbar-custom">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Group_Dashboard</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link active" href="/groups">Manage Groups</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/users">Manage Users</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/reports">Reports</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-danger" href="/logout">Logout</a>
                </li>
            </ul>
        </div>
    </div>
</nav>





<div class="container mt-4">
    <h2>Add New Group</h2>

    <c:if test="${not empty errorMessage}">
        <div class="alert alert-danger">${errorMessage}</div>
    </c:if>

    <form action="add" method="post">
        <div class="mb-3">
            <label for="groupName" class="form-label">Group Name</label>
            <input type="text" id="groupName" name="groupName" class="form-control" required>
        </div>
        <button type="submit" class="btn btn-success">Save Group</button>
        <a href="/groups" class="btn btn-secondary">Cancel</a>
    </form>
</div>

</body>
</html>