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
<div class="container-fluid">
    <div class="row flex-nowrap">
        <div class="col-auto col-md-3 col-xl-2 px-sm-2 px-0 bg-dark">
            <div class="d-flex flex-column align-items-center align-items-sm-start px-3 pt-2 text-white min-vh-100">
                <a href="#" class="d-flex align-items-center pb-3 mb-md-0 me-md-auto text-white text-decoration-none">
                    <span class="fs-5 d-none d-sm-inline">Menu</span>
                </a>
                <ul class="nav nav-pills flex-column mb-sm-auto mb-0 align-items-center align-items-sm-start" id="menu">
                    <li>
                        <a href="#submenu1" data-bs-toggle="collapse" class="nav-link px-0 align-middle">
                            <i class="fs-4 bi-speedometer2"></i> <span class="ms-1 d-none d-sm-inline">Home</span> </a>
                        <ul class="collapse show nav flex-column ms-1" id="submenu1" data-bs-parent="#menu">
                            <li class="w-100">
                                <a href="https://it.yonsei.ac.kr/index.php?mid=curi" class="nav-link px-0"> <span class="d-none d-sm-inline">전공필수</span></a>
                            </li>
                            <li>
                                <a href="./common.jpg" class="nav-link px-0"> <span class="d-none d-sm-inline">공통기초</span></a>
                            </li>
                            <li>
                                <a href="./elective.jpg" class="nav-link px-0"> <span class="d-none d-sm-inline">필수교양</span></a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#submenu2" data-bs-toggle="collapse" class="nav-link px-0 align-middle ">
                            <i class="fs-4 bi-bootstrap"></i> <span class="ms-1 d-none d-sm-inline">Calculator</span></a>
                        <ul class="collapse nav flex-column ms-1" id="submenu2" data-bs-parent="#menu">
                            <li class="w-100">
                                <a href="formcerti.jsp" class="nav-link px-0"> <span class="d-none d-sm-inline">학점계산기</span></a>
                            </li>
                            <li>
                                <a href="formcommon.jsp" class="nav-link px-0"> <span class="d-none d-sm-inline">공통기초 계산기</span></a>
                            </li>
                            <li>
                                <a href="formelective.jsp" class="nav-link px-0"> <span class="d-none d-sm-inline">필수교양 계산기</span></a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#submenu3" data-bs-toggle="collapse" class="nav-link px-0 align-middle">
                            <i class="fs-4 bi-grid"></i> <span class="ms-1 d-none d-sm-inline">Statistics</span> </a>
                            <ul class="collapse nav flex-column ms-1" id="submenu3" data-bs-parent="#menu">
                           <li class="w-100">
                                <a href="listcerti2.jsp" class="nav-link px-0"> <span class="d-none d-sm-inline">전체학점 완료</span></a>
                            </li>
                            <li>
                                <a href="listcerti3.jsp" class="nav-link px-0"> <span class="d-none d-sm-inline">전체학점</span></a>
                            </li>
                            <li>
                                <a href="listcommon.jsp" class="nav-link px-0"> <span class="d-none d-sm-inline">공통기초</span></a>
                            </li>
                            <li>
                                <a href="listlective.jsp" class="nav-link px-0"> <span class="d-none d-sm-inline">필수교양</span></a>
                            </li>
                            <li>
                                <a href="listlrank.jsp" class="nav-link px-0"> <span class="d-none d-sm-inline">누적등수</span></a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
        <div class="col py-3">
        	<header id="main_header">
		<%@include file="./myheader.jsp" %>
	</header>
<div class="container px-4 py-5" id="hanging-icons">
    <div class="row g-4 py-5 row-cols-1 row-cols-lg-3">
      <div class="col d-flex align-items-start">
        <div class="icon-square bg-light text-dark flex-shrink-0 me-3">
          <svg class="bi" width="1em" height="1em"><use xlink:href="#toggles2"></use></svg>
        </div>
        <div>
          <h2>학점 계산기</h2>
          <p>지금까지 수강한 학점과 졸업요건들을 계산해서 부족한 부분을 계산합니다.</p>
          <a href="formcerti.jsp" class="btn btn-primary">
            전체 학점
          </a>
        </div>
      </div>
      <div class="col d-flex align-items-start">
        <div class="icon-square bg-light text-dark flex-shrink-0 me-3">
          <svg class="bi" width="1em" height="1em"><use xlink:href="#cpu-fill"></use></svg>
        </div>
        <div>
          <h2>공통기초 계산기</h2>
          <p>공통기초만 따로 부족한 부분을 계산해봅니다.</p>
          <a href="formcommon.jsp" class="btn btn-primary">
            공통기초
          </a>
        </div>
      </div>
      <div class="col d-flex align-items-start">
        <div class="icon-square bg-light text-dark flex-shrink-0 me-3">
          <svg class="bi" width="1em" height="1em"><use xlink:href="#tools"></use></svg>
        </div>
        <div>
          <h2>필수교양 계산기</h2>
          <p>필수교양만 따로 부족한 부분을 계산해봅니다.</p>
          <a href="formelective.jsp" class="btn btn-primary">
            필수교양
          </a>
        </div>
      </div>
    </div>
  </div>
        </div>
    </div>
</div>
</body>
</html>