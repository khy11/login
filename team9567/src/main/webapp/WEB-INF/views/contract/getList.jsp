<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
	
	<title>team967</title>
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	
	<!-- Bootstrap Core CSS -->
	<link href="/resources/vendor/bootstrap/css/bootstrap.min.css"
		rel="stylesheet">
	
	<!-- MetisMenu CSS -->
	<link href="/resources/vendor/metisMenu/metisMenu.min.css"
		rel="stylesheet">
	
	<!-- DataTables CSS -->
	<link
		href="/resources/vendor/datatables-plugins/dataTables.bootstrap.css"
		rel="stylesheet">
	
	<!-- DataTables Responsive CSS -->
	<link
		href="/resources/vendor/datatables-responsive/dataTables.responsive.css"
		rel="stylesheet">
	
	<!-- Custom CSS -->
	<link href="/resources/dist/css/sb-admin-2.css" rel="stylesheet">
	
	<!-- Custom Fonts -->
	<link href="/resources/vendor/font-awesome/css/font-awesome.min.css"
		rel="stylesheet" type="text/css">
	
</head>

<body>
	<div class="wrapper">
	    <div class="container-fluid">
	    	<div class="row col-md-8 col-md-offset-2">
	    		<br>
	    		<div class="col-lg-12">
	    			<button type="button" class="btn btn-warning" style="float:right" onclick="location.href='/contract/contractList?&pageNum=${pageMaker.cri.pageNum}&amount=${pageMaker.cri.amount}&type=${pageMaker.cri.type}&keyword=${pageMaker.cri.keyword}'">목록</button>
	    		</div>
	    	</div>
	    	<!-- /.row -->
	    	
	    	<div class="row col-md-4 col-md-offset-4">
	            <div class="col-lg-12">
	                <h1 class="text-center"><b>물품구매계약서</b></h1>
	            </div>
	            <!-- /.col-lg-12 -->
	        </div>
	        <!-- /.row -->
	        
	        <div class="col-md-6 col-md-offset-3">
	        	<br><br><br>
	            <div class="col-lg-12">
	                <p class="text-left"><b>계약 번호: </b>제  ${get.contractNo}호</p>
					<p class="text-left"><b>품&nbsp;&nbsp;목&nbsp;&nbsp;명: </b> ${get.partName}(${get.partCode})</p>
					<p class="text-left"><b>부품 공급 L/T: </b> ${get.partsSupply}</p>
					<p class="text-left"><b>단&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;가: </b>${get.unitPrice}</p>
					<p class="text-left"><b>양도/양수조건: </b> ${get.transferConditions}</p>
					<p class="text-left"><b>기타 사항: </b></p>
				</div>
	            <!-- /.col-lg-12 -->
	        </div>
	        <!-- /.row -->
	        
	       	<div class="col-md-6 col-md-offset-3">
	        	<br><br><br>
	            <div class="col-lg-12">
	                <p class="text-center">&nbsp;&nbsp;&nbsp;&nbsp;위의  물품구매 계약을  체결함에  있어 계약자는  물품공급에  필요한  모든  조건을  구비하고  물품</p>
					<p class="text-center">구매입찰유의서, 물품구매계약  일반조건  및  기타  계약서상의  모든  조건이  이  계약서의  일부가  됨</p>
					<p class="text-center">을  수락하고  계약상의  의무이행을  완수할  것을  확약합니다.</p>
				</div>
	            <!-- /.col-lg-12 -->
	        </div>
	        <!-- /.row -->
	        
	        <div class="col-md-6 col-md-offset-3">
	        	<br><br><br>
	            <div class="col-lg-12">
	                <p class="text-center"><b><fmt:formatDate pattern="yyyy년 MM월 dd일" value="${get.contractDate}"/></b></p>
				</div>
	            <!-- /.col-lg-12 -->
	        </div>
	        <!-- /.row -->
	        
	        <div class="col-md-6 col-md-offset-3">
	        	<br><br><br>
	            <div class="col-lg-12">
	            	<p class="text-left"><b>발 주 자</b></p>
					<p class="text-left"><b>주&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;소: </b>${getReg.address}</p>
					<p class="text-left"><b>상&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;호: </b>${getReg.name}</p>
					<p class="text-left"><b>대 표 자: </b>${getReg.owner}</p><br>
				</div>
	            <!-- /.col-lg-12 -->
	        </div>
	        <!-- /.row -->
	        
	        <div class="col-md-6 col-md-offset-3">
	            <div class="col-lg-12">
	            	<p class="text-left"><b>계 약 자</b></p>
					<p class="text-left"><b>주&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;소: </b>${getCom.address}</p>
					<p class="text-left"><b>상&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;호: </b>${getCom.name}</p>
					<p class="text-left"><b>대 표 자: </b>${getCom.owner}</p>
				</div>
	            <!-- /.col-lg-12 -->
	        </div>
	        <!-- /.row -->
	        
	    </div>
	    <!-- /.container-fluid -->
	</div>
	<!-- /.wrapper -->
	
    
	<!-- jQuery -->
    <script src="/resources/vendor/jquery/jquery.min.js"></script>
	
    <!-- Bootstrap Core JavaScript -->
    <script src="/resources/vendor/bootstrap/js/bootstrap.min.js"></script>
	
    <!-- Metis Menu Plugin JavaScript -->
    <script src="/resources/vendor/metisMenu/metisMenu.min.js"></script>
	
    <!-- Custom Theme JavaScript -->
    <script src="/resources/dist/js/sb-admin-2.js"></script>
    
</body>

</html>
