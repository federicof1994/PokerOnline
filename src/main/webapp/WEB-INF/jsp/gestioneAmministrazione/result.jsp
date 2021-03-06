<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Risultati Ricerca</title>
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/favicon.ico"
	type="image/x-icon" />
</head>
<body>

	<div class="container">

		<%@ include file="../header.jsp"%>
		<div class="page-header">
			<h3>Pagina dei Risultati</h3>
		</div>

		<%-- alert conferma --%>
		<div
			class="alert alert-success ${messaggioConferma!=null?'':'d-none' }"
			role="alert">${messaggioConferma }</div>

		<table class="table table-striped">
			<thead>
				<tr>
					<th>Username</th>
					<th>Action</th>
				</tr>
			</thead>
			
			<tbody>
			
				<c:forEach var="utenteItem" items="${listaUtentiAttr }">
					<tr>
						<td>
						<c:if test="${utenteItem.stato == 'CREATO' }"><font color="gray"><i>${utenteItem.username}</i></font></c:if>
						<c:if test="${utenteItem.stato == 'ATTIVO' }">${utenteItem.username}</c:if>
						<c:if test="${utenteItem.stato == 'DISABILITATO' }"><font color="gray"><del>${utenteItem.username}</del></font></c:if>
						
						
						</td>
						<td><a
							href="/gestioneAmministrazione/${utenteItem.id}/ExecuteDettaglio"
							class="btn btn-info">Dettaglio</a> <a
							href="/gestioneAmministrazione/${utenteItem.id}/PrepareModifica"
							class="btn btn-info">Modifica</a> 
					</tr>
				</c:forEach>
			</tbody>

		</table>
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
		
				<a href="/gestioneAmministrazione" class="btn btn-primary btn-md">Nuova Ricerca</a>
			</div>
		</div>

		<%@ include file="../footer.jsp"%>

	</div>
</body>
</html>