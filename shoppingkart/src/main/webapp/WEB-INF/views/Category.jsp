<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en-US">
<head><title>Admin</title>
<script src="${pageContext.request.contextPath}/app-resources/js/lib/jquery-2.2.3.min.js"></script>
  <script src="${pageContext.request.contextPath}/app-resources/js/myapp.js"></script>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/app-resources/css/style.css"/>
</head>
<body>
  <c:url var="addAction" value="addCategory" ></c:url> <!-- //jstl tag available in core tag library// -->

<form:form action="${addAction}" modelAttribute="category" id="btn-add"><!-- wen ever we click botton it should perform some Action -->
   <h3>
                    <c:if test="${category.id==0}"></c:if>
	            <c:if test="${!empty category.id}">
		      <c:out value="${category.id}"/>
		      <form:hidden path="id"/>
	            </c:if>
         </h3>
	  <table>
	  
	  <tr>  <c:if test="${category.id!=0}">
	  </tr>
	   <td> Id:</td> <td><form:input  path="id"/></td> 
	    </c:if>
	 
	<!--  <tr>
	 <div class="container"> 
	 <div class="form-group"> 
	<label class="control-label col-sm-2" for="Category">CategoryName:</label>
	<input type="text" class="form-control" style=width:20% name="CategoryName" placeholder="name"> 
	</div> 
	
	</tr> -->
	 
	    <tr> <td> Name:</td> <td><form:input  path="name"/></td>  
	    <tr> 
	    
	   <!--  <div class="container"> 
	 <div class="form-group"> 
	<label class="control-label col-sm-2" for="Category">CategoryDescription:</label>
	<input type="text" class="form-control" style=width:20% name="CategoryDescription" placeholder="Description"> 
	</div>
	
	</tr> -->
	    
	    
	    
	    
	    
	    
	     <td>Description:</td> <td><form:input path="description"/> </td>  
	     
		
  
	    <tr> <td colspan="2">
    	        <c:if test="${category.id==0}">
			     
			     <div class="form-group"> 
    <div class="col-sm-offset-80 col-sm-200">
      <button type="submit" class="btn btn-default">Add</button>
    </div>
  </div>
			     
			     
			     
			     
			     
			      <!-- <input type="submit" value="Add" id="btn-add"> --> 
	         </c:if>
	         <c:if test="${category.id!=0}">
			      <input type="submit" value="Update" id="btn-update"> 
	         </c:if>
		</td> 
		<tr> <td colspan="2" class="success-msg">
		   <c:out value="${msg}"/>
		</td> 
	  </table>

	  <table> 
	  
	   <div class="container"></div>
	  <div class="row col-md-6 col-md-offset-2 custyle"></div>
	  <table class="table table-striped custab" style="margin-left:-115px">  
			
			 <thead>
			 
      <tr>
        <th>Id</th>
        <th>name</th>
        <th>description</th>
      </tr>
    </thead>
    
    <td colspan="2"> Action </td>
	      	</tr>
    	      <c:forEach var="obj" items="${allCategory}">
		      <tr>
		                 <td> <c:out value="${obj.id}"/> </td>
		                 <td> <c:out value="${obj.name}"/> </td>
				 <td> <c:out value="${obj.description}"/> </td>
			
				
				 <td> <a href="deleteCategoryById/${obj.id}">Delete </a> /
				     <a href="CategoryById/${obj.id}">Edit</a> 
				 </td>
		      </tr>
	      </c:forEach>
          </table> 
 </form:form>
</body>
</html>   