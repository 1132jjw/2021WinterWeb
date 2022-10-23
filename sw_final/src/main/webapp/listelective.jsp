<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.ResultSet"%>
<%!// 변수 선언
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	String dbUser = "root";
	String dbPass = "u19166";
	String dbName = "uni";
	String jdbcDriver = "jdbc:mariadb://localhost:3306/" + dbName;
	String sql = "select * from elective where n=0 or o=0 or p=0 or q=0 or r=0 or s<2 or t=0 or u=0 or v=0;";%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>table_test</title>
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
	<%
		try {
		
		conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		stmt = conn.createStatement();
		rs = stmt.executeQuery(sql);
	%>
	<table border="1">
		<tr>
			<td>학번</td>
			<td>미적분학과벡터해석1</td>
			<td>미적분학과벡터해석2</td>
			<td>컴퓨터프로그래밍</td>
			<td>프로그래밍실습</td>
			<td>공업수학1</td>
			<td>공업수학2/이산구조/확률및통계</td>
			<td>일반물리학및실험1</td>
			<td>일반물리학및실험2</td>
			<td>일반화학및실험1/일반생물학및실험1</td>
		</tr>
		<p>*숫자는 수강횟수를 의미함.
		<%
			while (rs.next()) {
		%>
		<tr>
			<td><%=rs.getString("st_id")%></td>
			<td><%=rs.getString("n")%></td>
			<td><%=rs.getString("o")%></td>
			<td><%=rs.getString("p")%></td>
			<td><%=rs.getString("q")%></td>
			<td><%=rs.getString("r")%></td>
			<td><%=rs.getString("s")%></td>
			<td><%=rs.getString("t")%></td>
			<td><%=rs.getString("u")%></td>
			<td><%=rs.getString("v")%></td>
		</tr>
	

	<%
		}
	} catch (Exception e) {
	e.printStackTrace();
	} finally {
	try {
	if (rs != null) {
		rs.close();
	}
	if (stmt != null) {
		stmt.close();
	}
	if (conn != null) {
		conn.close();
	}
	} catch (Exception e) {
	e.printStackTrace();
	}
	}
	%>
	</table>
        </div>
    </div>
</div>
</body>
</html>