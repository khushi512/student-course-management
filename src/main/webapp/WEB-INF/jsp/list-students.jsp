<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Students</title>
    <style>
        body {
            font-family: 'Segoe UI', Arial;
            background-color: #eef2f7;
        }

        .container {
            width: 85%;
            margin: 40px auto;
            background: white;
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
        }

        h2 { text-align: center; }

        .top-bar {
            display: flex;
            justify-content: flex-end;
            margin-top: -10px;
            margin-bottom: 20px;
        }

        .btn {
            padding: 8px 15px;
            border-radius: 5px;
            text-decoration: none;
            color: white;
        }

        .btn-add {
            background: linear-gradient(135deg, #43a047, #66bb6a);
            color: white;
            font-weight: bold;
            border-radius: 20px;
            padding: 10px 18px;
            transition: 0.3s;
        }

        .btn-add:hover {
            background: linear-gradient(135deg, #388e3c, #4caf50);
            transform: translateY(-1px);
        }
        .btn-edit { background-color: #2196F3; }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th {
            background-color: #4CAF50;
            color: white;
        }

        th, td {
            padding: 12px;
            border-bottom: 1px solid #ddd;
            text-align: center;
        }

        tr:hover { background-color: #f1f1f1; }
    </style>
</head>

<body>

<div class="container">

<h2>Student List</h2>

<div class="top-bar">
    <a href="/students/new" class="btn btn-add">+ Add Student</a>
</div>

<table>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Courses</th>
        <th>Action</th>
    </tr>

    <c:forEach items="${students}" var="student">
        <tr>
            <td>${student.id}</td>
            <td>${student.name}</td>
            <td>${student.email}</td>

            <td>
                <c:forEach items="${student.courses}" var="course">
                    ${course.courseName}<br/>
                </c:forEach>
            </td>

            <td>
                <a href="/students/edit/${student.id}" class="btn btn-edit">Edit</a>
            </td>
        </tr>
    </c:forEach>
</table>

</div>

</body>
</html>