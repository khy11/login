<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../includes/header.jsp"%>
        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                		<h2 class="page-header"> 회사 정보 등록 / 조회</h2>
                    </div>
                </div>
                <!-- /.row -->
                
                <div class="row">
                	<div class="col-lg-6">
                		<form action="/company/companyList" method="get">
	                    	<div class="col-lg-2">
		                    	<div class="form-group">
		                    		<select id="Select" class="form-control input-sm" name="type">
			                            <option ${pageMaker.cri.type == "C"? "selected" : ""} value="C">업체코드</option>
			                            <option ${pageMaker.cri.type == "W"? "selected" : ""} value="W">업체명</option>
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
						<form action="/company/register" method="post">
							<div class="col-lg-2" style="float:right">
								<button type="submit" class="btn btn-success">등록</button>
								<button type="button" class="btn btn-warning" style="float:right" onclick="deleteValue();">삭제</button>
							</div><br><br>
							
							<div class="table-responsive" style="width:100%">
		                        <table class="table table-bordered table-hover table-striped">
		                        	<tbody>
		                                <tr>
		                                    <th class="text-center">업체명</th>
		                                    <td><input type="text" class="form-control input-sm" name="Name" ></td>
		                                    
		                                    <th class="text-center">사업자번호</th>
		                                    <td><input type="text" class="form-control input-sm" name="Business_Number"></td>
		                                    
		                                    <th class="text-center">세무코드</th>
		                                    <td><input type="text" class="form-control input-sm" name="Taxcode"></td>
		                                    
		                                    <th class="text-center">대표자</th>
		                                    <td><input type="text" class="form-control input-sm" name="Owner"></td>
		                                    
		                                    <th class="text-center">연락처</th>
		                                    <td><input type="text" class="form-control input-sm" name="Contact"></td>
		                                    
		                                    <th class="text-center">회사정보</th>
		                                    <td><input type="text" class="form-control input-sm" name="Address"></td>		                                    
										</tr>
										
										<tr>
											<th class="text-center">계좌정보</th>
		                                    <td><input type="text" class="form-control input-sm" name="Account"></td>
											
		                                    <th class="text-center">업체규모</th>
		                                    <td><select id="Select1" class="form-control input-sm" name="Company_Size">
		                            				<option value="대기업">대기업</option>
		                            				<option value="중소기업">중소기업</option>
		                        				</select></td>
		                        			
		                        			<th class="text-center">업태분류</th>
		                                    <td><select id="Select2" class="form-control input-sm" name="Category">
		                            				<option value="도매">도매</option>
		                            				<option value="소매">소매</option>
		                        				</select></td>
		                        			
		                        			<th class="text-center">매출액</th>
		                                    <td><input type="text" class="form-control input-sm" name="Sales"></td>
		                                    
		                                    <th class="text-center">거래형태</th>
		                                    <td><input type="text" class="form-control input-sm" name="Deal_Type"></td>
		                                    
											<th class="text-center">내외자구분</th>
		                                    <td><select id="Select3" class="form-control input-sm" name="Domestic_Foreign">
		                            				<option value="국내">국내</option>
		                            				<option value="해외">해외</option>
		                        				</select></td>
										</tr>
		                                
										<tr>  
											<th class="text-center">결제통화</th>
		                                    <td><select id="Select4" class="form-control input-sm" name="Currency">
		                            				<option value="달러">달러</option>
		                            				<option value="원">원</option>
		                        				</select></td>
		                        			
		                        			<th class="text-center">거래개시일</th>
											<td><input type="date" class="form-control input-sm" name="Start_Date"></td>
											
											<th class="text-center">거래종료일</th>
											<td><input type="date" class="form-control input-sm" name="End_Date"></td>
											
											<th class="text-center">계산서발행</th>
		                                    <td><select id="Select5" class="form-control input-sm" name="Invoice_Issue">
		                            				<option value="발행">발행</option>
		                            				<option value="미발행">미발행</option>
		                        				</select></td>
		                                    
		                                    <td colspan="4"></td>
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
                        <h3 class="page-header">회사 정보 리스트</h3>
                    </div>
                </div>
                <!-- /.row -->
                
                <div class="row">
	                <div class="col-lg-12">
	                    <div class="table-responsive">
	                        <table class="table table-striped table-bordered table-hover" id="dataTables-example">
	                        	<thead>
	                                <tr>
	                                	<th class="text-center"><input type="checkbox" name="checkAll" id="checkAll"></th>
	                                	<th class="text-center">업체코드</th>
	                                    <th class="text-center">업체명</th>
	                                    <th class="text-center">사업자번호</th>
	                                    <th class="text-center">세무코드</th>
	                                    <th class="text-center">대표자</th>
	                                    <th class="text-center">연락처</th>
	                                    <th class="text-center">회사정보</th>
	                                    <th class="text-center">계좌정보</th>
	                                    <th class="text-center">업체규모</th>
	                                    <th class="text-center">업태분류</th>
	                                    <th class="text-center">매출액</th>
	                                    <th class="text-center">거래형태</th>
	                                    <th class="text-center">내외자구분</th>
	                                    <th class="text-center">결제통화</th>
	                                    <th class="text-center">거래개시일</th>
	                                    <th class="text-center">거래종료일</th>
	                                    <th class="text-center">계산서발행</th>
	                                </tr>
	                            </thead>
	                            
	                            <tbody>
		                            <c:forEach var="company" items="${list}">
		                                <tr class="select_subject">
		                                	<td class="text-center"><input type="checkbox" name="checkRow" value="${company.code}"></td>
		                                	
		                                	<td>${company.code}</td>
		                                	
		                                    <td><a href="/company/getList?code=${company.code}&pageNum=${pageMaker.cri.pageNum}&amount=${pageMaker.cri.amount}&type=${pageMaker.cri.type}&keyword=${pageMaker.cri.keyword}">${company.name}</a></td>
		                                    
		                                    <td>${company.business_Number}</td>
		                                    
		                                    <td>${company.taxcode}</td>
		                                    
		                                    <td>${company.owner}</td>
		                                    
		                                    <td>${company.contact}</td>
		                                    
		                                    <td>${company.address}</td>
		                                    
		                                    <td>${company.account}</td>
											        
		                                    <td><c:if test="${company.company_Size == '대기업'}">
		                                    		대기업
		                                    	</c:if>
		                                    	
		                                    	<c:if test="${company.company_Size == '중소기업'}">
		                                    		중소기업
		                                    	</c:if></td>
		                                    
		                                    <td><c:if test="${company.category == '도매'}">
		                                    		도매
		                                    	</c:if>
		                                    	
		                                   		<c:if test="${company.category == '소매'}">
		                                    		소매
		                                    	</c:if></td>
		                                    
		                                    <td>${company.sales}</td>
		                                    
		                                    <td>${company.deal_Type}</td>
		                                    
		                                    <td><c:if test="${company.domestic_Foreign == '국내'}">
		                                    		국내
		                                    	</c:if>
		                                    	
		                                    	<c:if test="${company.domestic_Foreign == '해외'}">
		                                    		해외
		                                    	</c:if></td>
		                                    
		                                    <td><c:if test="${company.currency == '달러'}">
		                                    		달러
		                                    	</c:if>
		                                    	
		                                    	<c:if test="${company.currency == '원'}">
		                                    		원
		                                    	</c:if></td>
		                                    
		                                    <td><fmt:formatDate pattern="yyyy-MM-dd" value="${company.start_Date}"/></td>
		                                    
		                                    <td><fmt:formatDate pattern="yyyy-MM-dd" value="${company.end_Date}"/></td>
		                                    
		                                    <td><c:if test="${company.invoice_Issue == '발행'}">
		                                    		발행
		                                    	</c:if>
		                                    	
		                                    	<c:if test="${company.invoice_Issue == '미발행'}">
		                                    		미발행
		                                    	</c:if></td>
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
							<li class="page-item"><a class="page-link" href="/company/companyList?pageNum=${pageMaker.startPage-1}&amount=${pageMaker.cri.amount}&type=${pageMaker.cri.type}&keyword=${pageMaker.cri.keyword}"> << </a></li>
						</c:if>
						
						<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="num">
							<li class="page-item">
								<a class="page-link" href="/company/companyList?pageNum=${num}&amount=${pageMaker.cri.amount}&type=${pageMaker.cri.type}&keyword=${pageMaker.cri.keyword}">
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
							<li class="page-item"><a href="/company/companyList?pageNum=${pageMaker.endPage+1}&amount=${pageMaker.cri.amount}&type=${pageMaker.cri.type}&keyword=${pageMaker.cri.keyword}"> >> </a></li>
						</c:if>
					</ul>
				</div>
				
			</div>
            <!-- /.container-fluid -->
        </div>
        <!-- /#page-wrapper -->
    </div>
    <!-- /#wrapper -->
	
	<!-- 선택 품목 삭제 -->
	<script type="text/javascript">
		$(function() {
			var chkObj = document.getElementsByName("checkRow");
			var rowCnt = chkObj.length;
			
			$("input[name='checkAll']").click(function() {
				var chk_listArr = $("input[name='checkRow']");
				for(var i = 0; i < chk_listArr.length; i++) {
					chk_listArr[i].checked = this.checked;
				}
			});
			
			$("input[name='checkRow']").click(function() {
				if($("input[name='checkRow']:checked").length == rowCnt) {
					$("input[name='checkAll']")[0].checked = true;
				} else {
					$("input[name='checkAll']")[0].checked = false;
				}
			});
		});
		
		function deleteValue() {
			var url = "/company/remove";
			var valueArr = new Array();
			var list = $("input[name='checkRow']");
			
			for(var i = 0; i < list.length; i++) {
				if(list[i].checked) {
					valueArr.push(list[i].value);
				}
			}
			
			if(valueArr.length == 0) {
				
			} else {
				$.ajax({
					url: url,
					type: 'POST',
					traditional: true,
					data: {
						valueArr: valueArr
					},
					success: function() {
						location.replace("/company/companyList?pageNum=${pageMaker.cri.pageNum}&amount=${pageMaker.cri.amount}&type=${pageMaker.cri.type}&keyword=${pageMaker.cri.keyword}");
					}
				});
			}
		}
	</script>
	
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
