<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../includes/header.jsp"%>

		<div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                		<h2 class="page-header"> 품목 정보 등록 / 조회</h2>
                    </div>
                </div>
                <!-- /.row -->
                
                <div class="row">
                	<div class="col-lg-6">
                		<form action="/part/partList" method="get">
	                    	<div class="col-lg-2">
		                    	<div class="form-group">
		                    		<select id="Select" class="form-control input-sm" name="type">
			                            <option ${pageMaker.cri.type == "C"? "selected" : ""} value="C">품목코드</option>
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
						<form action="/part/modify" method="post">
							<div class="col-lg-2" style="float:right">
								<button type="submit" class="btn btn-info">수정</button>
								<button type="button" class="btn btn-warning" style="float:right" 
									onclick="location.href='/part/partList?pageNum=${criteria.pageNum}&amount=${criteria.amount}&type=${pageMaker.cri.type}&keyword=${pageMaker.cri.keyword}'">취소</button>
							</div><br><br>
							
							<input type="hidden" name="PartCode" value="${get.partCode}">
							<input type="hidden" value="${criteria.pageNum}" name="pageNum">
							<input type="hidden" value="${criteria.amount}" name="amount">
							<input type="hidden" value="${criteria.type}" name="type">
							<input type="hidden" value="${criteria.keyword}" name="keyword">
							
							<div class="table-responsive" style="width:100%">
		                        <table class="table table-bordered table-hover table-striped">
		                        	<tbody>
		                                <tr>
		                                    <th class="text-center">품목명</th>
		                                    <td><input type="text" class="form-control input-sm" name="PartName" value="${get.partName}"></td>
		                                    
		                                    <th class="text-center">약칭</th>
		                                    <td><input type="text" class="form-control input-sm" name="NickName" value="${get.nickName}"></td>
		                                    
		                                    <th class="text-center">품목구분</th>
		                                    <td><select id="Select2" class="form-control input-sm" name="Library">
		                            				<option value="0" <c:if test="${get.library == 0}"> selected</c:if>>대분류</option>
		                            				<option value="1" <c:if test="${get.library == 1}"> selected</c:if>>중분류</option>
		                            				<option value="2" <c:if test="${get.library == 2}"> selected</c:if>>소분류</option>
		                        				</select></td>
		                        			
		                        			<th class="text-center">품목설명</th>
		                                    <td><input type="text" class="form-control input-sm" name="Remark" value="${get.remark}"></td>
		                                </tr>
		                                
										<tr>
											<th class="text-center">공용여부</th>
		                                    <td><select id="Select3" class="form-control input-sm" name="Common">
		                            				<option value="0" <c:if test="${get.common == 0}"> selected</c:if>>공용</option>
		                            				<option value="1" <c:if test="${get.common == 1}"> selected</c:if>>전용</option>
		                        				</select></td>
											
		                                    <th class="text-center">도면번호</th>
		                                    <td><input type="text" class="form-control input-sm" name="Drw_No" value="${get.drw_No}"></td>
		                                    
		                                    <th class="text-center">도면 IMG</th>
		                                    <td><input type="text" name="Drw_Img"></td>
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
                        <h3 class="page-header">품목 정보 리스트</h3>
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
	                                	<th class="text-center">품목코드</th>
	                                    <th class="text-center">품목명</th>
	                                    <th class="text-center">약칭</th>
	                                    <th class="text-center">품목구분</th>
	                                    <th class="text-center">품목설명</th>
	                                    <th class="text-center">공용여부</th>
	                                    <th class="text-center">도면번호</th>
	                                    <th class="text-center">도면 IMG</th>
	                                </tr>
	                            </thead>
	                            
	                            <tbody>
		                            <c:forEach var="part" items="${list}">
		                                <tr class="select_subject">
		                                	<td class="text-center"><input type="checkbox"></td>
		                                	
		                                	<td>${part.partCode}</td>
		                                	
		                                    <td><a href="/part/getList?partCode=${part.partCode}&pageNum=${pageMaker.cri.pageNum}&amount=${pageMaker.cri.amount}&type=${pageMaker.cri.type}&keyword=${pageMaker.cri.keyword}">${part.partName}</a></td>
		                                    
		                                    <td>${part.nickName}</td>
		                                    
		                                    <td><c:if test="${part.library == 0}">
		                                    		대분류
		                                    	</c:if>
		                                    	
		                                    	<c:if test="${part.library == 1}">
		                                    		중분류
		                                    	</c:if>
		                                    	
		                                    	<c:if test="${part.library == 2}">
		                                    		소분류
		                                    	</c:if></td>
		                                    
		                                    <td>${part.remark}</td>
		                                    
		                                    <td><c:if test="${part.common == 0}">
		                                    		공용
		                                    	</c:if>
		                                    	
		                                   		<c:if test="${part.common == 1}">
		                                    		전용
		                                    	</c:if></td>
		                                    
		                                    <td>${part.drw_No}</td>
		                                    
		                                    <td>${part.drw_Img}</td>
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
							<li class="page-item"><a class="page-link" href="/part/partList?pageNum=${pageMaker.startPage-1}&amount=${pageMaker.cri.amount}&type=${pageMaker.cri.type}&keyword=${pageMaker.cri.keyword}"> << </a></li>
						</c:if>
						
						<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="num">	
							<li class="page-item">
								<a class="page-link" href="/part/partList?partCode=${part.partCode}&pageNum=${num}&amount=${pageMaker.cri.amount}&type=${pageMaker.cri.type}&keyword=${pageMaker.cri.keyword}">
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
							<li class="page-item"><a href="/part/partList?pageNum=${pageMaker.endPage+1}&amount=${pageMaker.cri.amount}&type=${pageMaker.cri.type}&keyword=${pageMaker.cri.keyword}"> >> </a></li>
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
