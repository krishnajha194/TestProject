<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@page import="com.entities.*,com.factory.*,org.hibernate.* "%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="all_js_css.jsp" %>
</head>
<body>
 <div class="Container">
    <%@include file="navbar.jsp" %>
    <h1>Edit your note :</h1>
    <br>
    <%
    int NoteId=Integer.parseInt(request.getParameter("note_id").trim());
			Session s=FactoryProvider.getFactory().openSession();
			Transaction tx=s.beginTransaction();
			Note note=(Note)s.get(Note.class, NoteId);
     %>
     
     <form action="UpdateServlet" method="post">
     <input value="<%= note.getId() %>" name="noteId" type="hidden">
     
  <div class="form-group">
    <label for="title">Note title</label>
    <input name="title" required type="text" 
    class="form-control"
     id="title" 
     placeholder="Enter here.."   
     style="width:600px;"
     value="<%= note.getTitle() %>"
      >
  </div>
  <div class="form-group">
    <label for="content">Note content</label><br>
    <textarea
    name="content"
     required id="content" placeholder="Enter content.."
   
    style="height:300px;
    width:600px;"><%=note.getContent() %>
    </textarea>
  </div>
 <div class="container text-centre"> 
 <button type="submit" class="btn btn-success">Save your note</button>
 </div>
</form>   
    </div>
    
</body>
</html>