<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>

	<head>
	
		<meta charset="UTF-8">
		<title>${info.title}</title>
		
		<c:import url="../../template/bootstrap.jsp"></c:import>
		<link rel="stylesheet" href="/css/common.css">
		<link rel="stylesheet" href="/css/reward/second-navbar.css">
		<link rel="stylesheet" href="/css/detail/select.css">
		
		<style type="text/css">

		</style>
		
	</head>
	
	<body>
	
		<c:import url="../../template/header.jsp"></c:import>
		
		<main>
	
			<c:import url="../common/select-second-navbar.jsp"></c:import>
			<div class="container">
				
				<div class="contents-area left-contents">
				
				</div>
				
				<div class="contents-area right-contents">
					<c:import url="./common/detail_right_contents.jsp"></c:import>
				</div>
				
			</div>
		
		</main>
	
	</body>
	
	<script type="text/javascript">
		
	</script>
	
	<script type="text/javascript" src="/js/detail/select.js"></script>
	<script type="text/javascript" src="/js/detail/detail_right_contents.js"></script>
	
</html>