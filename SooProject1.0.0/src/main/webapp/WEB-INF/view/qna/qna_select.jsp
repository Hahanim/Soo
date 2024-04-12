<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BOARD</title>
</head>
<body>
<header id="main-header" class="py-2 btn-dark text-white"> 
<div class="container"> 
<div class="row"> 
<div class="col-md-6"> <h1> QnA 게시판 </h1> 
</div> </div> </div> </header> 
<section class="py-4 mb-4 bg-light"> </section> 
<section id="department"> <div class="container"> 
<div class="row"> 
<div class="col-md-12"> 
<div class="card"> 
<div class="card-header"> 
<h5> QnA 목록 </h5> </div> 
<div class="card-body"> 
<table class="table table-hover"> 
<thead class="thead-light"> 
<tr class="text-center"> <th> 번호 </th> <th> 작성자 </th> <th> 제목 </th> <th> 작성일 </th>  </tr> </thead>
<tbody>
<%--객체를 호출하고 파라미터에 저장하여 반복한다.--%>
<c:forEach var="arrayList" items="${arrayList}"> 
<tr class="text-center"> 
<td>${arrayList.num}</td>
<td>${arrayList.qna_id}</td>
<td>
<a href="./QnaSelectDetail.qb?num=${arrayList.num}">${arrayList.qna_title}</a>
</td>
<td>${arrayList.qna_regisdate}</td> 
</tr> 
</c:forEach>
<%--객체값이 null일 경우에 반환한다.--%>
<c:if test="${empty arrayList}"> 
<tr> 
<td colspan="4"> 등록된 글이 없습니다. </td> </tr> </c:if> </tbody> </table> 
<div> <a href="./QnaInsertView.qb" class="btn btn-success btn-block"> 글 등록 </a> 
</div> </div> </div> </div> </div> </div> </section>
</body>
</html>