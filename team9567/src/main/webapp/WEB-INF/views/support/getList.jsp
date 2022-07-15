<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../includes/header.jsp"%>

		<div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                		<h2 class="page-header"> 조달계획 등록 / 조회</h2>
                    </div>
                </div>
                <!-- /.row -->
                
                <div class="row">
                	<div class="col-lg-6">
                		<form action="/support/supportList" method="get">
	                    	<div class="col-lg-2">
		                    	<div class="form-group">
		                    		<select id="Select" class="form-control input-sm" name="type">
			                            <option ${pageMaker.cri.type == "C"? "selected" : ""} value="C">조달코드</option>
			                            <option ${pageMaker.cri.type == "W"? "selected" : ""} value="W">품목명</option>
		                        	</select>
		                   		</div>
	                   		</div>
	                   		
	                   		<div class="col-lg-4">
	                   			<div class="form-group">
									<input type="text" class="form-control input-sm" name="keyword" value="${pageMaker.cri.keyword}">
								</div>
							</div>
	                   		<button class="btn btn-default btn-sm" type="submit"><i class="fa fa-search"></i></button>
	                   	</form>
                   	</div>
                </div>
                <!-- /.row -->
                
                <div class="row">
                	<div class="col-lg-12">
						<form action="/support/modify" method="post">
							<div class="col-lg-2" style="float:right">
								<button type="submit" class="btn btn-info">수정</button>
								<button type="button" class="btn btn-warning" style="float:right" 
									onclick="location.href='/support/supportList?pageNum=${criteria.pageNum}&amount=${criteria.amount}&type=${pageMaker.cri.type}&keyword=${pageMaker.cri.keyword}'">취소</button>
							</div><br><br>
							
							<input type="hidden" name="SupportNo" value="${get.supportNo}">
							<input type="hidden" value="${criteria.pageNum}" name="pageNum">
							<input type="hidden" value="${criteria.amount}" name="amount">
							<input type="hidden" value="${criteria.type}" name="type">
							<input type="hidden" value="${criteria.keyword}" name="keyword">
							
							<div class="table-responsive" style="width:100%">
		                        <table class="table table-bordered table-hover table-striped">
		                        	<tbody>
		                                <tr>
		                                    <th class="text-center">품목코드</th>
		                                    <td><input type="text" class="form-control input-sm" name="PartCode" value="${get.partCode}"></td>
		                                    
		                                    <th class="text-center">소요량</th>
		                                    <td><input type="text" class="form-control input-sm" name="Requirement" value="${get.requirement}"></td>
		                                    
		                                    <th class="text-center">자재소요공정</th>
		                                    <td><input type="text" class="form-control input-sm" name="MaterialProcess" value="${get.materialProcess}"></td>
		                                </tr>
		                                
										<tr>
		                        			<th class="text-center">소요일정</th>
		                        			<td><input type="date" class="form-control input-sm" name="DaySchedule" value="${get.daySchedule}"></td>
		                        			
											<th class="text-center">조달납기</th>
											<td><input type="date" class="form-control input-sm" name="DeliveryDate" value="${get.deliveryDate}"></td>	
		                                    
		                                    <td colspan="2"></td>
		                                </tr>
		                            </tbody>
		                        </table>
		                    </div>
		                    <!-- /.table-responsive -->
						</form>
					</div>
				</div>
                <!-- /.row -->
				
                <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header">조달계획 리스트</h3>
                    </div>
                </div>
                <!-- /.row -->
                
                <div class="row">
	                <div class="col-lg-12">
	                    <div class="table-responsive">
	                        <table class="table table-striped table-bordered table-hover" id="dataTables-example">
	                        	<thead>
	                                <tr>
	                                	<th class="text-center"><input type="checkbox"></th>
	                                	<th class="text-center">조달코드</th>
	                                    <th class="text-center">품목명</th>
	                                    <th class="text-center">소요량</th>
	                                    <th class="text-center">자재소요공정</th>
	                                    <th class="text-center">소요일정</th>
	                                    <th class="text-center">조달납기</th>
	                                </tr>
	                            </thead>
	                            
	                            <tbody>
		                            <c:forEach var="support" items="${list}">
		                                <tr class="select_subject">
		                                	<td class="text-center"><input type="checkbox"></td>
		                                	
		                                	<td>${support.supportNo}</td>
		                                    
		                                    <td><a href="/support/getList?supportNo=${support.supportNo}&pageNum=${pageMaker.cri.pageNum}&amount=${pageMaker.cri.amount}&type=${pageMaker.cri.type}&keyword=${pageMaker.cri.keyword}">${support.partName}(${support.partCode})</a></td>
		                                    
		                                    <td>${support.requirement}</td>
		                                    
		                                    <td>${support.materialProcess}</td>
		                                    
		                                    <td><fmt:formatDate pattern="yyyy-MM-dd" value="${support.daySchedule}"/></td>
		                                    
		                                    <td><fmt:formatDate pattern="yyyy-MM-dd" value="${support.deliveryDate}"/></td>
		                                </tr>
		                            </c:forEach>
	                         	</tbody>
							</table>
						</div>
						<!-- /.table-responsive -->
					</div>
				</div>
				<!-- /.row -->
				
				<div class="text-center">
					<ul class="pagination justify-content-center">
						<c:if test="${pageMaker.prev}">
							<li class="page-item"><a class="page-link" href="/support/supportList?pageNum=${pageMaker.startPage-1}&amount=${pageMaker.cri.amount}&type=${pageMaker.cri.type}&keyword=${pageMaker.cri.keyword}"> << </a></li>
						</c:if>
						
						<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="num">	
							<li class="page-item">
								<a class="page-link" href="/support/supportList?supportNo=${support.supportNo}&pageNum=${num}&amount=${pageMaker.cri.amount}&type=${pageMaker.cri.type}&keyword=${pageMaker.cri.keyword}">
									<c:if test="${pageMaker.cri.pageNum == num}">
										<b>${num}</b>
									</c:if>
									
									<c:if test="${pageMaker.cri.pageNum != num}">
										${num}
									</c:if>
								</a>
							</li>
						</c:forEach>
						
						<c:if test="${pageMaker.next}">
							<li class="page-item"><a href="/support/supportList?pageNum=${pageMaker.endPage+1}&amount=${pageMaker.cri.amount}&type=${pageMaker.cri.type}&keyword=${pageMaker.cri.keyword}"> >> </a></li>
						</c:if>
					</ul>
				</div>
				
			</div>
            <!-- /.container-fluid -->
        </div>
        <!-- /#page-wrapper -->
    </div>
    <!-- /#wrapper -->
	
	<!-- 전체 품목 체크 -->
	<script>
		function checkAll() {
			if($("#checkAll").is(':checked')) {
				$("input[name=checkRow]").prop("checked", true);
			} else {
				$("input[name=checkRow]").prop("checked", false);
			}
		}
	</script>
	
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
