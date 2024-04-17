<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/bootstrap.min_4.5.0.css">
<script src="./js/jquery-3.5.1.min.js" type="text/javascript"></script>
<script src="./js/bootstrap.min_a4.5.0.js" type="text/javascript"></script>
<title>글 내용</title>
</head>
<body>
<section>
<h3 class="text-muted">
    <i class="fas fa-sticky-note mr-sm-1"></i>글 내용
</h3>
     
<div class="card-body">
    <div class="row pl-1 pr-1">
        <div class="col col-md-10">
            <input type="hidden" name="num" value="${qnaDTO.num}">
            <div class="form-group row border-bottom pb-2 mb-2">
                <label for="qna_id" class="col-2 col-form-label pr-0 border-right">
                    <i class="fas fa-portrait mr-sm-1"></i>작성자
                </label>
                <div class="col-10 pl-0 py-1">
                    ${qnaDTO.qna_id}
                </div>
            </div>
            <div class="form-group row border-bottom pb-2 mb-2">
                <label for="qna_title" class="col-2 col-form-label pr-0 border-right">
                    <i class="fas fa-pen-alt mr-sm-1"></i>제목
                </label>
                <div class="col-10 pl-0  py-1">
                    ${qnaDTO.qna_title}
                </div>
            </div>
            <div class="form-group row">
                <label for="qna_content" class="col-2 col-form-label pr-0 border-right">
                    <i class="fas fa-edit mr-sm-1"></i>내용
                </label>
                <div class="col-10 pl-0  py-1">
                    ${qnaDTO.qna_content}
                </div>
            </div>
        </div>
    </div>
</div>
      
<nav class="navbar justify-content-end">    
    <button type="button" class="btn btn-outline-secondary mr-sm-1" onclick="location.href='./QnaUpdateDetail.qb?num=${qnaDTO.num}'">
        <i class="fas fa-upload mr-sm-1"></i>글 수정
    </button>
    <button type="button" class="btn btn-outline-danger mr-sm-1" onclick="location.href='./QnaDeleteView.qb?num=${qnaDTO.num}'">
        <i class="fas fa-trash mr-sm-1"></i>글 삭제
    </button>
    <button type="button" class="btn btn-outline-success mr-sm-1" onclick="location.href='./QnaSelect.qb'">
        <i class="fas fa-file-alt mr-sm-1"></i>글 목록
    </button>
</nav>
</section>
</body>
</html>
