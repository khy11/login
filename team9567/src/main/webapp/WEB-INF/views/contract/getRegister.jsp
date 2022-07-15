<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../includes/header.jsp"%>
        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                		<h2 class="page-header"> 계약 정보 등록 / 조회</h2>
                    </div>
                </div>
                <!-- /.row -->
                
                <div class="row">
	                <div class="col-lg-6">
	                    <div class="panel panel-default">
	                        <div class="panel-heading">
								<b>발주처</b>
	                        </div>
	                        <!-- /.panel-heading -->
	                        
	                        <div class="panel-body">
	                            <div class="table-responsive">
	                                <table class="table table-striped table-bordered table-hover">
	                                    <tbody>
	                                        <tr>
	                                            <th class="text-center" style="width:20%">업체명</th>
	                                            <td><input type="text" class="form-control input-sm" value="${getReg.name}" readonly></td>
	                                        </tr>
	                                        <tr>
	                                            <th class="text-center" style="width:20%">사업자번호</th>
	                                            <td><input type="text" class="form-control input-sm" value="${getReg.business_Number}" readonly></td>
	                                        </tr>
	                                        <tr>
	                                            <th class="text-center" style="width:20%">대표자</th>
	                                            <td><input type="text" class="form-control input-sm" value="${getReg.owner}" readonly></td>
	                                        </tr>
	                                        <tr>
	                                            <th class="text-center" style="width:20%">주소</th>
	                                            <td><input type="text" class="form-control input-sm" value="${getReg.address}" readonly></td>
	                                        </tr>
	                                        <tr>
	                                            <th class="text-center" style="width:20%">연락처</th>
	                                            <td><input type="text" class="form-control input-sm" value="${getReg.contact}" readonly></td>
	                                        </tr>
	                                    </tbody>
	                                </table>
	                            </div>
	                            <!-- /.table-responsive -->
	                        </div>
	                        <!-- /.panel-body -->
	                    </div>
	                    <!-- /.panel -->
	                </div>
	                <!-- /.col-lg-6 -->
	                
					
	                <div class="col-lg-6">
	                    <div class="panel panel-default">
	                        <div class="panel-heading">
								<b>수주처</b>
	                        </div>
	                        <!-- /.panel-heading -->
	                        
	                        <div class="panel-body">
	                        	<form action="/contract/getRegister" method="get">
		                        	<div class="col-lg-2">
				                    	<div class="form-group">
				                    		<select id="Select1" class="form-control input-sm" name="ctype">
					                            <option ${pageMaker.cri.ctype == "C"? "selected" : ""} value="C">업체코드</option>
				                        	</select>
				                   		</div>
			                   		</div>
	                   		
			                   		<div class="col-lg-3">
			                   			<div class="form-group">
											<input type="text" class="form-control input-sm" name="ckeyword" value="${pageMaker.cri.ckeyword}">
										</div>
									</div>
			                   		<button class="btn btn-default btn-sm" type="submit"><i class="fa fa-search"></i></button><br><br>
			                   		
		                            <div class="table-responsive">
		                                <table class="table table-striped table-bordered table-hover">
		                                    <tbody>
		                                        <tr>
		                                            <th class="text-center" style="width:20%">업체명</th>
		                                            <td><input type="text" class="form-control input-sm" value="${getCom.name}" readonly></td>
		                                        </tr>
		                                        <tr>
		                                            <th class="text-center" style="width:20%">사업자번호</th>
		                                            <td><input type="text" class="form-control input-sm" value="${getCom.business_Number}" readonly></td>
		                                        </tr>
		                                        <tr>
		                                            <th class="text-center" style="width:20%">대표자</th>
		                                            <td><input type="text" class="form-control input-sm" value="${getCom.owner}" readonly></td>
		                                        </tr>
		                                        <tr>
		                                            <th class="text-center" style="width:20%">주소</th>
		                                            <td><input type="text" class="form-control input-sm" value="${getCom.address}" readonly></td>
		                                        </tr>
		                                        <tr>
		                                            <th class="text-center" style="width:20%">연락처</th>
		                                            <td><input type="text" class="form-control input-sm" value="${getCom.contact}" readonly></td>
		                                        </tr>
		                                    </tbody>
		                                </table>
		                            </div>
	                           		<!-- /.table-responsive -->
	                           	</form>	
	                        </div>
	                        <!-- /.panel-body -->
	                    </div>
	                    <!-- /.panel -->
	                </div>
	                <!-- /.col-lg-6 -->
	                
	                <form action="/contract/register" method="post">
					    <div class="col-lg-12">
							<div class="panel panel-default">
	            				<div class="panel-heading">
									<b>항목별 세부사항</b>
								</div>
								<!-- /.panel-heading -->
								
								<input type="hidden" name="Code" value="${criteria.ckeyword}">
								<div class="panel-body">
									<div class="table-responsive">
						                <table class="table table-striped table-bordered table-hover">
						                	<tbody>
						                        <tr>
						                            <th class="text-center" style="width:10%">품목코드</th>
						                            <td><input type="text" class="form-control input-sm" name="PartCode"></td>
						                            
						                            <th class="text-center" style="width:10%">부품공급 L/T</th>
						                            <td><input type="text" class="form-control input-sm" name="PartsSupply"></td>
						                        </tr>
						                        
						                        <tr>
						                            <th class="text-center" style="width:10%">단가</th>
						                            <td><input type="text" class="form-control input-sm" name="UnitPrice"></td>
						                            
						                            <th class="text-center" style="width:10%">양도/양수조건</th>
						                            <td><input type="text" class="form-control input-sm" name="TransferConditions"></td>
						                        </tr>
						                    </tbody>
						                </table>
						            </div>
						            <!-- /.table-responsive -->
						        </div>
						        <!-- /.panel-body -->
							    
						    </div>
						    <!-- /.panel -->
						</div>
						<!-- /.col-lg-12 -->
					
						<div class="col-lg-2" style="float:right">
							<button type="submit" class="btn btn-success">계약</button>
							<button type="button" class="btn btn-warning" style="float:right" onclick="location.href='/contract/contractList?&pageNum=${pageMaker.cri.pageNum}&amount=${pageMaker.cri.amount}&type=${pageMaker.cri.type}&keyword=${pageMaker.cri.keyword}'">취소</button>
						</div>
					</form>
				</div>
				<!-- /.row -->
                
			</div>
            <!-- /.container-fluid -->
        </div>
        <!-- /#page-wrapper -->
    </div>
    <!-- /#wrapper -->
	
	
	
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
