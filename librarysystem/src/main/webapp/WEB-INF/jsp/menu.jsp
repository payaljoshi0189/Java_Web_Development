<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div style="border: 1px solid #ccc; padding: 5px; margin-bottom: 20px;">

	<a href="${pageContext.request.contextPath}/welcome">Home</a> | &nbsp;

	<u><h2 style="color: red;">
    <a onclick="document.forms['logoutForm'].submit()">Logout</a>
    </h3></u>

    <form id="logoutForm" method="POST" action="${pageContext.request.contextPath}/logout">
    </form>

</div>