<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='application' class='hitstd.group.tool.database.DBConfig' />    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>YOOGA - Free Yoga Website Template</title>
	<meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free Website Template" name="keywords">
    <meta content="Free Website Template" name="description">
        
        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Font -->
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;600;700;800&display=swap" rel="stylesheet">

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
	<style>
	  	aside {
	    float:left;
	    height:200px;
    	padding:5px;
	  	}
	</style>
<body>
	<%request.setCharacterEncoding("UTF-8"); %>
	<%
		Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
		Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
		//out.println("Con= "+con);
		Statement smt= con.createStatement();
		String sql = "SELECT * FROM creator left join eventInformation on creator.creatorName=eventInformation.host WHERE creatorEmail ='" +session.getAttribute("accessID")+"'";
		ResultSet rs = smt.executeQuery(sql);
		rs.next();
	%>
	<!-- Top Bar Start -->
        <div class="top-bar d-none d-md-block">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-8">
                        <div class="top-bar-left">
                            &emsp;&emsp;&emsp;&nbsp;
                            <div class="text">
                                <i class="far fa-clock"></i>
                                <h2>8:00 - 21:30</h2>
                                <p>Mon - Sun</p>
                            </div>
                            <div class="text">
                                <i class="fa fa-envelope"></i>
                                <h2>ustar@gmail.com</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
      <!-- Top Bar End -->
	<aside>
		<h4><b>功能選單</b></h4> <br>
		<h6><a href="AboutMe.html">　個人資料</a></h6> <br>
		<h6><a href="HealthRecord.html">　健康測量記錄</a></h6> <br>
		<h6><a href="BabyOnline.html">　寶寶線上探視</a></h6> <br>
		<h6><a href="BabyHealthRecord.html">　寶寶健康測量紀錄</a></h6> <br>
		<h6><a href="#">　院內活動資訊</a></h6> <br>
		<h6><a href="#">　活動預約紀錄</a></h6> <br>
		<h6><a href="MoonMeal.html">　月子餐點內容</a></h6> <br>
	</aside>
	<aside>
			<p>
			<h2><b>個人資料</b></h2>
			<h4>關於我</h4>
			<h4 style="color:MidnightBlue;"><b>　姓名</b>　　　　楊曉琪</h4>
			<h4 style="color:MidnightBlue;"><b>　血型</b>　　　　O型</h4>
			<h4 style="color:MidnightBlue;"><b>　身份證字號</b>　S112345678</h4>
			<h4 style="color:MidnightBlue;"><b>　出生年月日</b>　1997/12/30</h4>
			
			<h4>聯絡資訊</h4>
			<h4 style="color:MidnightBlue;"><b>　行動電話</b>　　0912456789</h4>
			<h4 style="color:MidnightBlue;"><b>　電子郵件</b>　　a123456@gmail.com</h4>
			<h4 style="color:MidnightBlue;"><b>　聯絡地址</b>　　台北市北投區明德路365號</h4>
			
			<h4>緊急聯絡人</h4>
			<h4 style="color:MidnightBlue;"><b>　關係</b>　　　　夫妻</h4>
			<h4 style="color:MidnightBlue;"><b>　聯絡電話</b>　　0973456789</h4>
			
			<h4>注意事項</h4>
			<h4 style="color:MidnightBlue;"><b>　生產方式</b>　　自然產</h4>
			<h4 style="color:MidnightBlue;"><b>　飲食方面</b>　　葷食</h4>
			
	</aside>
		
</body>
</html>