<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<script type="text/javascript">
</script>

<div class="container-fluid">
	<div class="row">
    	<div class="col-md-6">
        	<div class="card">
            	<div class="header">
                       	수업 과정별 수강자 통계
                	<p class="category">Hanq Pie Chart</p>
                </div>
                <div class="content">
                	<div id="chartPreferences" class="ct-chart "></div>
                </div>
                <div class="footer">
                	<h6>Legend</h6>
                    <i class="fa fa-circle text-warning"></i>
                    <i class="fa fa-circle text-danger"></i>
                    <i class="fa fa-circle text-info"></i>
                </div>
            </div>
        </div>
        <div class="col-md-12">
           	<div class="card">
               	<div class="header">
                   	<h4 class="title">테이블도 뭐 그렇게 어렵진 않아요</h4>
                   	<p class="category">기본 확실하게 다져서 갑시다~</p>
               	</div>
				<div class="content table-responsive table-full-width">
                   	<table class="table table-hover table-striped">
                       	<thead>
	                       	<c:forEach items="${selectColumn}" var="selectColumn" varStatus="status">
	                       		<c:if test="${selectCountList[status.index] eq '2'}">
	                       			<th><c:out value="${selectColumn}"></c:out></th>
	                       		</c:if>
	                       		<th><c:out value="${selectColumn}"></c:out></th>
	                       	</c:forEach>
                       	</thead>
                       	<tbody>
                       	<c:forEach items="${selectSeqNo}" var="selectSeqNo">
		                       	<c:forEach items="${welcomeWebList}" var="welcomeWebVar" varStatus="status">
		                       		<c:if test="${selectSeqNo eq welcomeWebVar.num}">
			                       		<tr>
				                       		<c:forEach items="${selectColumn}" var="selectColumn" varStatus="status">
			                       				<c:if test="${selectCountList[status.index] eq '2'}">
			                       					<td><c:out value="${welcomeWebVar[selectColumn]}"></c:out></td>
				                       			</c:if>
				                       			<td><c:out value="${welcomeWebVar[selectColumn]}"></c:out></td>
				                       		</c:forEach>
			                       		</tr>
		                       		</c:if>
		                       	</c:forEach>
                       		</c:forEach>
                       	</tbody>
                   	</table>
               	</div>
           	</div>
       	</div>
   	</div>
</div>
