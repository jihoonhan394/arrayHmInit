<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script>
	
	var arrayCt = {
			
			arrayCtInit : function() {
				var j = 0;		
					$chkBox = $("input[name='selectColumn']");
					
					$chkBox.each(function() {
					var htmlVal = "<div class='col-sm-1 arrayLabel'>";
						classChk = "",
						inputChk = "",
							  i = 1;
					for (; i < 3; i++) {
						classChk = (i === 1) ? "checked":"";
						inputChk = (i === 1) ? "checked='checked'":"";
						
						htmlVal +=	"<label class='radio " + classChk + " disabled" +"'>" +
										"<span class='icons'>" +
											"<span class='first-icon fa fa-circle-o'></span>" +
											"<span class='second-icon fa fa-dot-circle-o'></span>" +
										"</span>" +
										"<input type='radio' data-toggle='radio' name='selectCount" + j +"' value='" + i + "'" + inputChk + " disabled" +">" +
										"<span class='labelText'>" + i + "</span>" +
									"</label>"
					}
					
					htmlVal += "</div>";
        						
					j++;
					
        			$(".form-group:eq(2)").append(htmlVal);
				});
			}
	}
	
	$(function() {
		
		arrayCt.arrayCtInit();
		
		$chkBox.change(function() {
			var labelIdx = $(this).parents("label").index();
			var $label = $(".form-group:eq(2) > div:eq(" + labelIdx +") > label ");
			
			if ($(this).parents("label").hasClass("checked")) {
				$label.removeClass("disabled");
				$label.children("input").prop("disabled", false);
			} else {
				$label.addClass("disabled");
				$label.children("input").prop("disabled", true);
			};
		});
	});
</script>

<div class="content">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<div class="card ">
					<div class="header">
						<h4 class="title">게시글 조회</h4>
					</div>
					<div class="content">
						<form id="selectSeqNoFrm" class="form-horizontal" action="welcomeWeb.do">
							<div class="row">
                                <div class="form-group">
                                   	<label class="col-sm-2 control-label">글 번호 선택</label>
                                   	<div class="col-sm-8 arrayLabel">
                                   		<c:forEach items="${seqNoList}" var="seqNoList" varStatus="status">
	                                        <label class="checkbox checkbox-inline">
	                                            <input type="checkbox" data-toggle="checkbox" name="selectSeqNo" value="${seqNoList.num}" />
	                                            <span class="labelText">${seqNoList.num}</span>
	                                        </label>
                                        </c:forEach>
                                   	</div>
                                </div>
                        	</div>
							<div class="row">
                                <div class="form-group">
                                	<label class="col-sm-2 control-label">컬럼 선택</label>
                                	<div class="col-sm-8 arrayLabel">
                                        <label class="checkbox checkbox-inline">
                                            <input type="checkbox" data-toggle="checkbox" name="selectColumn" value="userId" />
                                            <span class="labelText">아이디</span>
                                        </label>
                                        <label class="checkbox checkbox-inline">
                                            <input type="checkbox" data-toggle="checkbox" name="selectColumn" value="userNm" />
                                            <span class="labelText">이름</span>
                                        </label>
                                        <label class="checkbox checkbox-inline">
                                            <input type="checkbox" data-toggle="checkbox" name="selectColumn" value="age" />
                                            <span class="labelText">나이</span>
                                        </label>
                                        <label class="checkbox checkbox-inline">
                                            <input type="checkbox" data-toggle="checkbox" name="selectColumn" value="cafeNick" />
                                            <span class="labelText">별명</span>
                                        </label>
                                        <label class="checkbox checkbox-inline">
                                            <input type="checkbox" data-toggle="checkbox" name="selectColumn" value="phone" />
                                            <span class="labelText">핸드폰번호</span>
                                        </label>
                                   	</div>
                                </div>
                            </div>
							<div class="row">
                                <div class="form-group">
                                	<label class="col-sm-2 control-label">출력횟수 선택</label>
                                </div>
                            </div>
							<div class="row">
                        		<div class="col-md-2 col-md-offset-5">
                        			<input type="hidden" id="pageName" name="pageName" value="array"/>
                               		<input type="submit" class="btn btn-wd btn-success" value="검색하기">
                                </div>
                        	</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>