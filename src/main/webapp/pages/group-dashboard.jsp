<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Group Dashboard</title>
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
<br>
<div class="container mt-4">
   <center> <h2>Group Management</h2></center><br><br>

   <!-- Right-aligned button -->
    <div class="d-flex justify-content-end">
        <a href="/groups/add" class="btn btn-primary mb-3">Add New Group</a>
    </div>

    <c:if test="${not empty errorMessage}">
        <div class="alert alert-danger">${errorMessage}</div>
    </c:if>

    <table class="table table-bordered">
        <thead class="table-dark">
            <tr>
                <th>ID</th>
                <th>Group Name</th>
                <th>Created on</th>
                <th>Updated on</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="group" items="${groups}">
                <tr>
                    <td>${group.groupId}</td>
                    <td>${group.groupName}</td>
                    <td>${group.createdAt}</td>
                    <td>${group.updatedAt}</td>
                    <td>
                        <a href="/groups/edit/${group.groupId}" class="btn btn-warning btn-sm">Edit</a>
                        <a href="/groups/delete/${group.groupId}" class="btn btn-danger btn-sm"
                           onclick="return confirm('Are you sure you want to delete this group?');">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>

<!-- Bootstrap JS (for navbar toggling) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
