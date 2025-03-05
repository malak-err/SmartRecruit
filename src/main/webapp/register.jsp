<%--
  Created by IntelliJ IDEA.
  User: malak
  Date: 05/03/2025
  Time: 11:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login</title>
    <link  rel="stylesheet"
           href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
           href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"

           integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
           crossorigin="anonymous">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Connexion - EduManage</title>

    <style>
        body {
            background-color: #f1f3f5;
            height: 100vh;

        }
        .login-container {
            background-color: #ffffff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
        }
        .login{
            display: flex;
            justify-content: center;
            margin-top: 100px;
            align-items: center;
        }
        h2 {
            color: #007bff;
            margin-bottom: 25px;
            font-size: 24px;
            text-align: center;
        }
        .form-label {
            font-weight: 600;
        }
        .form-control {
            border-radius: 8px;
            height: 40px;
            font-size: 16px;
        }
        .btn-primary {
            width: 100%;
            padding: 12px;
            font-size: 16px;
            border-radius: 8px;
            background-color: #007bff;
            border: none;
        }
        .btn-primary:hover {
            background-color: #0056b3;
        }
        .text-center a {
            color: #007bff;
            text-decoration: none;
        }
        .text-center a:hover {
            text-decoration: underline;
        }

    </style>





</head>
<body>

<%@ include file="/components/navbar.jsp" %>

<div class="login">

    <div class="login-container">
        <h2>Connexion</h2>
        <form action="<%= request.getContextPath() %>/login" method="post">

            <div class="mb-3">
                <label class="form-label">Nom </label>
                <input type="text" class="form-control" id="nom" name="nom" placeholder="Entrez votre Nom " required>
            </div>
            <div class="mb-3">
                <label for="prénom" class="form-label">prénom</label>
                <input type="text" class="form-control" id="prénom" name="prénom" placeholder="Entrez votre prénom" required>
            </div>
            <div class="mb-3">
                <label for="émail" class="form-label">émail</label>
                <input type="text" class="form-control" id="émail" name="émail" placeholder="Entrez votre émail" required>
            </div>
            <div class="mb-3">
                <label for="mot de passe" class="form-label">mot de passe</label>
                <input type="password" class="form-control" id="mot de passe" name="mot de passe" placeholder="Entrez votre mot de passe" required>
            </div>



                <button type="submit" class="btn btn-primary">Register</button>
        </form>
    </div>
</div>
</body>
</html>

</body>
</html>
