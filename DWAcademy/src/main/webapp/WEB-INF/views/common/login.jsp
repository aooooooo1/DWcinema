<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<script>
	alert('로그인 하세여');
// 	if(window.opener){
// 		window.close();
// 	}else{
		location.href="<%=request.getContextPath()%>/main.do?login=loginNeed";
// 	}
</script>