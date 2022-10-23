<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form</title>
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
		<div><h3>필수교양 계산기</h3><br></div>
		<form action='resultelective.jsp' method='get'>
<table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">본인 입력</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">학번</th>
      <td><input name="st_id" type="number" /></td>
    </tr>
    <tr>
      <th scope="row">미적분학과벡터해석1</th>
      <td><select name = "n">
			 	<option value="1">O</option>
			 	<option value="0">X</option>
			 </select></td>
    </tr>
    <tr>
      <th scope="row">미적분학과벡터해석2</th>
      <td><select name = "o">
			 	<option value="1">O</option>
			 	<option value="0">X</option>
			 </select></td>
    </tr>
    <tr>
      <th scope="row">컴퓨터프로그래밍</th>
      <td><select name = "p">
				<option value="0">0번</option>
			 	<option value="1">1번</option>
			 	<option value="2">2번</option>
			 	<option value="3">3번</option>
			 	<option value="4">4번</option>
			 </select> </td>
    </tr>
    <tr>
      <th scope="row">프로그래밍실습</th>
      <td><select name = "q">
			 	<option value="1">O</option>
			 	<option value="0">X</option>
			 </select>  </td>
    </tr>
    <tr>
    <tr>
      <th scope="row">공업수학1</th>
      <td><select name = "r">
			 	<option value="1">O</option>
			 	<option value="0">X</option>
			 </select>  </td>
    </tr>
  	<tr>
      <th scope="row">공업수학2/이산구조/확률및통계</th>
      <td><select name = "s">
			 	<option value="0">0개</option>
			 	<option value="1">1개</option>
			 	<option value="2">2개</option>
			 </select> </td>
    </tr>
    <tr>
      <th scope="row">일반물리학및실험1</th>
      <td><select name = "t">
			 	<option value="1">O</option>
			 	<option value="0">X</option>
			 </select>  </td>
    </tr>
    <tr>
      <th scope="row">일반물리학및실험2</th>
      <td><select name = "u">
			 	<option value="1">O</option>
			 	<option value="0">X</option>
			 </select>  </td>
    </tr>
    <tr>
      <th scope="row">일반화학및실험1/일반생물학및실험1</th>
      <td><select name = "v">
			 	<option value="0">0개</option>
			 	<option value="1">1개</option>
			 </select>  </td>
    </tr>
    <tr>
    <td colspan="2"><button type="Submit" class="btn btn-outline-secondary btn-lg px-3">전송</button></td>
    </tr>
  </tbody>
</table>
	</form>
				

        </div>
    </div>
</div>
</body>
</html>