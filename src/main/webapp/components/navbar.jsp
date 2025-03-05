<%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 2/20/2025
  Time: 12:15 PM
  To change this template use File | Settings | File Templates.
--%>
<!-- Navbar -->
<head>
    <nav class="navbar navbar-expand-md navbar-dark"
         style="background-color: navy">
        <div>
            <a href="student/list" class="navbar-brand"> SmartRecrute
                 </a>
        </div>
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="/Candidat">Candidat <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/Offre d'emploie">Offre d'emploie</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/Candidature/list">Candidature</a>
            </li>
        </ul>
        <c:if test="${not empty sessionScope.user}">
            <div class="ml-auto text-white">
                <c:out value="${sessionScope.user.email}" />(
                <a href="/user/logout" >Disconnect</a>
                )
            </div>

        </c:if>
    </nav>
</head>