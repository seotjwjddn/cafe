<%@page import="org.apache.tomcat.util.descriptor.tld.TaglibXml"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 작성</title>
<style type="text/css">
	div.grid {
		display: grid;
		grid-template-columns: 80px 1fr;
		grid-template-rows: 28px 28px 28px 320px 1fr;
		row-gap: 10px;
	}

	div.grid > div.btn-group {
		display: grid;
		grid-column: 1 / 3;

	}

	div.grid div.right-align {
		text-align: right;
	}

	label {
		padding-left: 10px;
	}

	button, input, textarea {
		padding: 10px;
	}

	input[type=file] {
		padding: 0px;
	}
	
	div.errors {
		background-color:#FF00004A;
		opacity: 0.8;
		padding: 10px
		color: #333;
	}
	
	div.errors:last-child {
		margin-bottom: 15px;
	
	}
</style>
</head>
<body>
	<h1>게시글을 작성하는 페이지</h1>
	<form:form modelAttribute="boardVO" method="post" 
				enctype="multipart/form-data">
		<div>
			<form:errors path="subject" element="div" cssClass="errors"  />
			<form:errors path="email" element="div" cssClass="errors"  />
			<form:errors path="content" element="div" cssClass="errors"  />
		</div>	
		<div class="grid">
			<label for="subject">제목</label>
			<input type="text" name="subject" id="subject"
			value="${boardVO.subject}">

			<label for="email">이메일</label>
			<input type="email" name="email" id="email"
			value="${boardVO.email}">

			<label for="file">첨부파일</label>
			<input type="file" name="file" id="file">

			<label for="content">내용</label>
			<textarea id="content" name="content" style="height: 300px;">${boardVO.content}></textarea>
			
			<div class="btn-group">
				<div class="right-align">
					<input type="submit" value="저장" />
				</div>
			</div>
		</div>
	</form:form>
	</form>
</body>
</html>