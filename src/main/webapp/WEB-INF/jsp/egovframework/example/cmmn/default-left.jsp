<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script>
	var arrayLiteral = ["a", "b", "c"];
	
	var leftChk = {

		pageSubmitFn : function(menuStr) {
			$("#leftFrm").attr("action", menuStr + ".do");
			
			$("#pageName").val(menuStr);
			
			$("#leftFrm").submit();
		}		
	}
	
	$(function() {		
		
		var pageName 	= "${param.pageName}",
			$liTarget 	=  $("#leftUl > li");
		
		$liTarget.removeClass("active");
		
		$("#" + pageName).addClass("active");
		
		$liTarget.click(function() {

			leftChk.pageSubmitFn($(this).attr("id"));
		});
	});	
</script>

<form id="leftFrm">
	<input type="hidden" id="pageName" name="pageName"/>
</form>

<div class="sidebar" data-color="orange" data-image="img/full-screen-image-3.jpg">
    <div class="logo">
        <a href="https://hanqea.co.kr/" class="logo-text">
            한큐에자바
        </a>
    </div>
	<div class="logo logo-mini">
		<a href="https://hanqea.co.kr/" class="logo-text">
			한큐에자바
		</a>
	</div>
  	<div class="sidebar-wrapper">
        <div class="user">
            <div class="photo">
                <img src="img/default-avatar.png" />
            </div>
            <div class="info">
                <a data-toggle="collapse" href="#collapseExample" class="collapsed">
                    Hanqea
                    <b class="caret"></b>
                </a>
                <div class="collapse" id="collapseExample">
                    <ul class="nav">
                        <li><a href="#">My Profile</a></li>
                        <li><a href="#">Edit Profile</a></li>
                        <li><a href="#">Settings</a></li>
                    </ul>
                </div>
            </div>
        </div>

        <ul id="leftUl" class="nav">
            <li id="main">
                <a href="#">
                    <i class="pe-7s-graph"></i>
                    <p>main</p>
                </a>
            </li>
            <li id="array">
                <a href="#">
                    <i class="pe-7s-graph"></i>
                    <p>게시글 조회</p>
                </a>
            </li>
        </ul>
  	</div>
</div>
