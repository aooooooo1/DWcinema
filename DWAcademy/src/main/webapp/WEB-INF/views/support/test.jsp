<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="utf-8">
<head>
	<meta charset="utf-8">
    <title> 3dw 메일보내기 입니다. </title>
	<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/NewFile.css">
</head>

<body data-spy="scroll" data-target=".navbar" data-offset="40" id="home" class="dark-theme">
        <a href="#"> html 파일로 보냅니다. <i class="ti-angle-double-right angle"></i></a>
        <a href="#"> 폴더파일로 보냅니다. <i class="ti-angle-double-right angle"></i></a>
   
    <div class="contact-section"> 
        <div class="overlay"></div>
        <!-- container -->
        <div class="container">
            <div class="col-md-10 col-lg-8 m-auto">
                <h6 class="title mb-2"> dw 메일 보내기 홈페이지 </h6><br><br>
                <form action="/mailingTest/SendMailServlet.do" class="form-group" >
                    <input type="text" size="50" class="form-control" placeholder="보내는 분의 이름을 적어주세요 " name="senderName" required>
                    <input type="email" class="form-control2" placeholder="보내는 분의 이메일주소를 적어주세요.  " name="senderEmail" requried> @
                    <select name="mail" class="form-control3">
				        <option value="gmail">gmail.com</option>
				        <option value="naver">naver.com</option>
				    </select> <br> <br>
				    <input type="password" class="form-control" placeholder="비밀번호를 입력주세요.  " name="senderPwd" requried>
				    <input type="comment" class="form-control" placeholder="제목을 적어주세요.  " name="emailSubject" requried>
                    <textarea id="comment" rows="6" class="form-control" placeholder="내용을 적어주세요. " name="emailContent" ></textarea> <br>
<!--                     <input type="text" name="comment" id="comment" rows="6"   class="form-control" placeholder="내용을 적어주세요. " dddddddd name="emailContent" ><br> -->
                    <input type="text" size="50" class="form-control" placeholder="받는 분의 이름을 적어주세요 " name="receiverName" required>
                    <input type="email" class="form-control" placeholder="받는 분의 이메일주소를 적어주세요.  " name="receiverEmail" requried>
                     <br> <br>
                    <input type="submit" value="Send Message" class="form-control">
                </form>
            </div>

            <!-- footer -->
            <footer class="footer">
                <p class="infos">&copy; <script>document.write(new Date().getFullYear())</script>, Made with <i class="ti-heart text-danger"></i> by dw아카데미  </p>       
            </footer>
            
        </div>
    </div>
</body>
</html> 