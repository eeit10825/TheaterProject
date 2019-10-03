<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/main.css" />
<noscript>
	<link rel="stylesheet"
		href="${pageContext.request.contextPath}/assets/css/noscript.css" />
</noscript>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous">
	
</script>
<style>
.sv1 {
	width: 800px;
	border: 3px solid #AAAAAA;
	border-radius: 20px;
	margin: auto;
}

.sv3 {
	width: 640px;
	margin: auto;
}
</style>
<title>addArticle</title>
</head>
<body>
	<div id="page-wrapper">
		<div id="header1">
			<!-- Header -->
			<jsp:include page="header.jsp" />
		</div>
		<!-- Main -->
		<div class="wrapper style1">

			<div class="container">
				<article id="main" class="special">
					<h2>
						<a href="#">add Article</a>
					</h2>

					<form:form method='POST' modelAttribute="ArticleBean"
						class='form-horizontal' enctype="multipart/form-data">
						<fieldset>

							<form:input id="author" path="author" readonly="true"
								value='${ArticleBean.authorString=LoginOK.no}' type='hidden'
								class='form:input-large' />
							<form:input id="movie" path="movie" readonly="true"
								value='${MovieBean.no}' type='hidden' class='form:input-large' />
							<div class="form-group">
								<label class="control-label col-lg-2 col-lg-4" for='title'>
									<a>Title</a>
								</label>
								<div class="col-lg-10">
									<form:input id="title" path="title" type='text'
										class='form:input-large' />
								</div>
							</div>
							<c:choose>
								<c:when test="${LoginOK.no!=10}">
									<div class="form-group">
										<label class='control-label col-lg-2 col-lg-4' for="tag">
											<a>tag</a>
										</label>
										<div class='col-lg-10'>
											<form:select path="tag">
												<form:option value=" ">
													<a>select</a>
												</form:option>
												<form:options items="${tagList}" />
											</form:select>
										</div>
									</div>
								</c:when>
								<c:when test="${LoginOK.no==10}">
									<div class="form-group">
										<label class='control-label col-lg-2 col-lg-4' for="tag">
											<a>tag</a>
										</label>
										<div class='col-lg-10'>
											<form:select path="tag">
												<form:option value=" ">
													<a>select</a>
												</form:option>
												<form:options items="${systagList}" />
											</form:select>
										</div>
									</div>
								</c:when>
							</c:choose>
							<c:choose>
								<c:when test="${LoginOK.no!=10}">
									<div class='col-lg-10'>
											<form:select path="typeString">
												<form:option value="一般">
												</form:option>
											</form:select>
										</div>
								</c:when>
								<c:when test="${LoginOK.no==10}">
									<div class="form-group">
										<label class='control-label col-lg-2 col-lg-4' for="type">
											<a>type</a>
										</label>
										<div class='col-lg-10'>
											<form:select path="typeString">
												<form:option value=" ">
													<a>select</a>
												</form:option>
												<form:options items="${aTypeList}" />
											</form:select>
										</div>
									</div>
								</c:when>
							</c:choose>
							<div class="form-group">
								<label class="control-label col-lg-2 col-lg-4" for='content'>
									<a>Content</a>
								</label>
								<div class="col-lg-10">
									<form:textarea id="content" path="content" cols="80" rows="20"
										class='form:input-large' />
								</div>
							</div>


							<div class="form-group">
								<div class='col-lg-offset-2 col-lg-2'>
									<input id="btnAdd" type='submit' class='btn btn-primary'
										value="Submit" />
								</div>
							</div>
						</fieldset>
					</form:form>
				</article>
			</div>
		</div>
	</div>
	<!-- Footer -->
	<jsp:include page="footer.jsp" />
</body>
</html>
