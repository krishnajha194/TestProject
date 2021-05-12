<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title>
<%@include file="all_js_css.jsp" %>
</head>
<body>
   <div class="Container">
    <%@include file="navbar.jsp" %>
    </div>
    <h1>Please fill your note details</h1>
    <br>
    <form action="SaveNoteServlet" method="post">
  <div class="form-group">
    <label for="title">Note title</label>
    <input 
    name="title"
    required type="text" 
    class="form-control"
     id="title" 
     placeholder="Enter here.."   
     style="width:600px;
    "
      >
  </div>
  <div class="form-group">
    <label for="content">Note content</label><br>
    <textarea
    name="content"
     required id="content" placeholder="Enter content.."
   
    style="height:300px;
    width:600px;
    "
    ></textarea>
  </div>
 <div class="container text-centre"> 
 <button type="submit" class="btn btn-primary">Add</button>
 </div>
</form>
</body>
</html>