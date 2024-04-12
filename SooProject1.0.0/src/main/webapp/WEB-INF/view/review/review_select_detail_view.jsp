<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<section>
<h3 class="text-muted">
        <i class="fas fa-sticky-note mr-sm-1"></i>글 내용
       </h3>
     
      <div class="card-body">
       
       <div class="row pl-1 pr-1">
        <div class="col col-md-10">
          <input type="hidden" name="num" value="${reviewDTO.num}">
         <div class="form-group row">
          <label for="review_id" class="col-2 col-form-label pr-0"><i class="fas fa-portrait mr-sm-1"></i>작성자</label>
          <div class="col-2 pl-0 py-1">
           ${reviewDTO.review_id}
          </div>
         </div>
          <div class="form-group row">
          <label for="review_title" class="col-2 col-form-label pr-0"><i class="fas fa-pen-alt mr-sm-1"></i>제목</label>
          <div class="col-6 pl-0  py-1">
           	${reviewDTO.review_title}
          </div>
         </div>
         <div class="form-group row">
          <label for="review_content" class="col-2 col-form-label pr-0"><i class="fas fa-edit mr-sm-1"></i>내용</label>
          <div class="col-10 pl-0  py-1">
           <textarea name="review_content" id="review_content" class="form-control ckeditor">${reviewDTO.review_content}</textarea>
          </div>
         </div>
         
       </div>
          </div>
      </div>
      
      
       <nav class="navbar justify-content-end">    
        <button type="button" class="btn btn-outline-secondary mr-sm-1" onclick="location.href='./ReviewUpdateDetail.rb?num=${reviewDTO.num}'">
         <i class="fas fa-upload mr-sm-1"></i>글 수정
        </button>
        <button type="button" class="btn btn-outline-danger mr-sm-1" onclick="location.href='./ReviewDeleteView.rb?num=${reviewDTO.num}'">
         <i class="fas fa-trash mr-sm-1"></i>글 삭제
        </button>
        <button type="button" class="btn btn-outline-success mr-sm-1" onclick="location.href='./ReviewSelect.rb'">
         <i class="fas fa-file-alt mr-sm-1"></i>글 목록
        </button>
       </nav>
    
 </section>
</body>
</html>