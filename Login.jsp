<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
	<meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free Website Template" name="keywords">
    <meta content="Free Website Template" name="description">
	<title>登入</title> 
	<!--參考testv0.4的CreatorLogin.jsp檔，但是還沒弄CreatorLogin_DBSelect.jsp 所以還不能成功測試 -->
		<!-- CSS Libraries -->
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="lib/animate/animate.min.css" rel="stylesheet">
        <link href="lib/flaticon/font/flaticon.css" rel="stylesheet"> 
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
        <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="css/style.css" rel="stylesheet">
	</head>
	<body>
	<%request.setCharacterEncoding("UTF-8"); %>
	<div class="container-fluid">
        <main class="tm-main">
            <div class="row tm-row tm-mb-45">
                <div class="col-12">
                    <hr class="tm-hr-primary tm-mb-55">
                </div>
            </div>
	<!-- 註冊帳號輸入區 -->
            <form method="POST" style="text-align:center" action="CreatorLogin_DBSelect.jsp">
				<div><h1><b>使用者登入</b></h1></div>
				<br/>
				
				<div class="container">
					<label for="creatorEmail"><b><h3>帳&nbsp;&nbsp;號:&nbsp;</h3></b></label>
				    <input type="text" placeholder="輸入您的Gmail帳號..." name="creatorEmail" required>
						<br/>
						<br/>
				    <label for="creatorPwd"><b><h3>密&nbsp;&nbsp;碼:&nbsp;</h3></b></label>
				    <input type="password" placeholder="輸入您的密碼..." name="creatorPwd" required>
				        <br/>
				        <br/>
						    &nbsp;&nbsp;<button type="submit" name="loginBtn" >登入</button>
						    </div>
						    <br/><br/>   
						<h4>  
							 還沒有帳號？請點選<a href="SignUp.jsp" class="signbtn">註冊</a>			
					    </h4>
				</div>
		   </form>
		</main>
		</div>
	</body>

</html>