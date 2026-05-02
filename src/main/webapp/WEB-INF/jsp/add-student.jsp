<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Add Student</title>
    <style>
        body {
            font-family: 'Segoe UI', Arial;
            background-color: #eef2f7;
        }

        .form-container {
            width: 350px;
            margin: 60px auto;
            background: white;
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
        }

        h2 { text-align: center; }

        input, select {
            width: 100%;
            padding: 8px;
            margin: 10px 0;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        button {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
        }

        a {
            display: block;
            text-align: center;
            margin-top: 10px;
        }
    </style>
</head>

<body>

<div class="form-container">

<h2>Add Student</h2>

<form action="/students" method="post">

    Name:
    <input type="text" name="name" required />

    Email:
    <input type="email" name="email" required />

    Courses:
    <select name="courses" multiple>
        <c:forEach items="${courses}" var="course">
            <option value="${course.id}">
                ${course.courseName}
            </option>
        </c:forEach>
    </select>

    <button type="submit">Save</button>
</form>

<a href="/students">Back to List</a>

</div>

</body>
</html>