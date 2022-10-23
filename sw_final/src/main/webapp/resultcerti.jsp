<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>입력 결과</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</head>
<body>
	<%try {
			int st_id = Integer.parseInt(request.getParameter("st_id"));
			int lang = Integer.parseInt(request.getParameter("lang"));
			int license = Integer.parseInt(request.getParameter("license"));
			int threethou = Integer.parseInt(request.getParameter("threethou"));
			int common = Integer.parseInt(request.getParameter("common"));
			int elective = Integer.parseInt(request.getParameter("elective"));
			int etc = Integer.parseInt(request.getParameter("etc"));
			int grade = Integer.parseInt(request.getParameter("grade"));
			
			String dbName = "uni";
			String jdbcDriver = "jdbc:mariadb://localhost:3306/" + dbName;
			String dbUser = "root";
			String dbPass = "u19166";
			
			Connection conn = null;
			Statement stmt = null;
			
			String insert_value_single = "insert into certi(st_id, lang, license, threethou, common, elective, etc, grade) values('"
											+st_id+"','"+lang+"','"+license+"','"+threethou+"','"+common+"','"+elective+"','"+etc+"','"+grade+"');";
						String driver = "org.mariadb.jdbc.Driver";
			
			conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
			stmt = conn.createStatement();
			stmt.executeUpdate(insert_value_single);
	%>
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
        	<h1>결과</h1>
		<p>전송된 내용은 다음과 같습니다.</p>
		<table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">본인 입력</th>
      <th scope="col">요구 조건</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">학번</th>
      <td><%=st_id %></td>
      <td>8학기 이상</td>
    </tr>
    <tr>
      <th scope="row">외국어인증</th>
      <td><%=lang %></td>
      <td>토익 650점</td>
    </tr>
    <tr>
      <th scope="row">정보인증</th>
      <td><%=license %></td>
      <td>자격증 하나 이상 취득</td>
    </tr>
    <tr>
      <th scope="row">3000단위</th>
      <td><%=threethou %></td>
      <td>45학점 이상 취득</td>
    </tr>
    <tr>
      <th scope="row">공통기초</th>
      <td><%=common %></td>
      <td>23학점 이상 취득</td>
    </tr>
    <tr>
      <th scope="row">필수교양</th>
      <td><%=elective %></td>
      <td>39학점 이상 취득</td>
    </tr>
    <tr>
      <th scope="row">기타학점</th>
      <td><%=etc %></td>
      <td>총학점 135점 이상 취득</td>
    </tr>
    <tr>
      <th scope="row">평균학점</th>
      <td><%=grade %></td>
      <td></td>
    </tr>
  </tbody>
</table>
	<%} catch (NumberFormatException e){%>
		<h1>이런 !</h1>
		<p>올바른 정보를 입력해주세요...</p> <%
		}%>								
	}
        </div>
    </div>
</div>

</body>
</html>