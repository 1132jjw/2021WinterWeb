<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body>
<div class="px-4 py-5 my-5 text-center">
    <img class="d-block mx-auto mb-4" src="./calculator.jpg" alt="" width="72" height="80">
    <h1 class="display-5 fw-bold">졸업요건</h1>
    <div class="col-lg-6 mx-auto">
      <div class="d-grid gap-2 d-sm-flex justify-content-sm-center">
        <button type="button" class="btn btn-primary btn-lg px-4 gap-3" onclick = "location.href = 'https://sw.yonsei.ac.kr/outline'; ">전공필수</button>
        <button type="button" class="btn btn-outline-secondary btn-lg px-4" onclick = "location.href = './common.jpg'; ">공통기초</button>
        <button type="button" class="btn btn-outline-secondary btn-lg px-4" onclick = "location.href = './elective.jpg'; ">필수교양</button>
      </div>
    </div>
  </div>

</body>
</html>