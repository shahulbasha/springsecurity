<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />

    <link
      rel="stylesheet"
      href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
    />
    <link
      href="https://fonts.googleapis.com/css?family=Lato"
      rel="stylesheet"
    />
    <title>Sign In</title>
    <style type="text/css">
		.errorMsg {
		color:red;
		}
	</style>
  </head>
  <body id="bodyImg">
    <div class="overlay"></div>
    <div class="wrapper">
      <h2 class="header">
        Sign In!!
      </h2>
      <div class="form-wrapper">
        <form:form action="${pageContext.request.contextPath}/authenticateUser" method="POST">
        	<c:if test="${param.error!=null}">
				<i class="errorMsg">Sorry! You entered an invalid user name or password..</i>
			</c:if>
		 <c:if test="${param.logout!=null}">
				<i class="errorMsg">You have been logged out!!</i>
			</c:if>
          <input type="text" class="text" placeholder="Username" name="username" />
          <input type="password" class="text" placeholder="password"  name="password"/>
          <input type="submit" class="submit" value="Login" />
        </form:form>
        <div class="icons">
          <i class="fab fa-twitter fa-2x"></i>
          <i class="fab fa-medium fa-2x"></i>
          <i class="fab fa-facebook fa-2x"></i>
          <i class="fab fa-github fa-2x"></i>
        </div>
      </div>
    </div>
    <div class="overlay"></div>
  </body>
</html>
