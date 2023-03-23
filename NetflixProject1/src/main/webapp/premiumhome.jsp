<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%

if(session!=null){
	
%>

<head>
<meta charset="UTF-8">
<title>Netflix</title>
<link style=width:56px;height:90px; rel="icon" href="images\nflogo.png">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
<style>




* {box-sizing:border-box}

/* Slideshow container */
.slideshow-container {
  max-width: 98%;
  position: relative;
  margin: auto;
}

/* Hide the images by default */
.mySlides {
  display: none;

}

/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  margin-top: 0px;
  padding: 16px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
  user-select: none;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  cursor: pointer;
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active, .dot:hover {
  background-color: #717171;
}

/* Fading animation */
.fade {
  animation-name: fade;
  animation-duration: 2.5s;
}

@keyframes fade {
  from {opacity: 0.4}
  to {opacity: 1}
}




.sign_out_btn {
	background-color: #B40719;
	color: white;
	float: right;
	padding: 12px;
	width: 122px;
	margin-top: 10px;
	margin-right: 35px;
	margin-bottom:18px;
	font-family: sans-serif;
	font-size: 18px;
	border: none;
	border-radius: 4px;
	transition: 0.4s;
	text-align: center;
	text-decoration: none;
}
.sign_out_btn:hover{
background-color:#880000;


}

body {
	background-color: black;
}

.head {
background-color:black;
width:100%;
height:auto;


}

.nflogo {
	float: left;
	height: 32px;
	width: 102px;
	margin-top: 0px;
	margin-left: 32px;
}

.lineinfo {
	margin-left: 220px;
	margin-top:42px;
}

.b1,.b2 {
	margin-left: 18px;
	margin-top: 40px;
	color: white;
	font-family: verdana;
	padding: 10px;
	text-decoration: none;
	transition:0.4s;
	font-weight:bold;
}
.b1:hover{ 
background-color:#cc0000;
border-radius:4px;
cursor:pointer;

}
.b2:hover{
border-radius:4px;
cursor:pointer;
background-color:white;
color:black;


}

.dc {
	margin-left: 40px;
	margin-top: 50px;
}

.watchnow {
	margin-top: 22px;
	color: white;
	font-family: verdana;
	padding: 8px;
	text-decoration: none;
	transition: 0.4s;
}

.watchnow:hover {
	opacity: 0.8;
}

.main_container {
	margin-top: 20px;
	height:auto;
}

.cover {
	width: 228px;
	height: 268px;
	margin-left: 22px;
	padding: 18px;
}

.movieview {
	padding: 12px;
}

.movielink {
	margin-top: 0px;
	}

.viewdetails {
	color: White;
	font-family: verdana;
	font-size: 18px;
	margin-left: 38px;
	text-decoration: none;
	
	
}

#ifrm1{

opacity:0;
transition:opacity 1.5s linear;
width:820px;
height:341px;
margin-left:182px;
margin-top:12px;


}


#trig1:hover + iframe {
	
	opacity:1;
	transition: opacity 1.5s linear;
	position:relative;
	
}





.main_head {
	margin-left: 52px;
	margin-top: none;
}

.embed {
	margin-left: 20px;
	padding: 6px;
	transition: 0.4s;
}

.embed:hover {
	border-radius: 4px;
	box-shadow: 2px 2px 4px #CD0800;
}

.newlaunched_section {
	width: 100%;
}

.footerdiv {
	height: 300px;
	background-color: #161616;
}

.footerinfo{
background-color:#222222;
height:350px;
width:100%;





}

</style>


<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">

</head>
<body>

	
	<div class=head>
		<img class=nflogo src="images\premiumimages\ntlogo.png">

<div>	<a href=netflixlogout class=sign_out_btn>Sign Out</a></div>


		<nav class=lineinfo>
			<a class= b1 id=firstb1 href=premiumhome><i class="bi bi-house" style="margin-right:3px;"></i><b>Home</b></a>
			 <a class=b1>Tv Shows</a> <a class=b1>Movies</a>
			<a class=b1>New & Popular</a> <a class=b1>My List</a> 
			<a class="b2" href="premiumlight">Light Mode&nbsp;<i class=" bi bi-brightness-high"></i></a>
		
		</nav>
		</div>
	<hr style="margin-top:62px;">	
		

<div class="slideshow-container">

    <!-- Full-width images with number and caption text -->
    <div class="mySlides fade style=">
        <img style="max-width:100%;height:80%;" src=images/premiumimages/img3.jpg>
              <div class="numbertext"></div>
      <div class="text"><i class="fa fa-play-circle-o"
        style="margin-top: 12px; margin-left: 32px; color: white; font-size: 22px"><a
        class=watchnow href=https://youtu.be/_InqQJRqGW4>Watch
            Now</a></i></div>
    </div>
  
    <div class="mySlides fade">
        <img style="max-width:100%;height:80%;" src="images/premiumimages/img1.jpg">
      <div class="numbertext"></div>
      <div class="text"><i class="fa fa-play-circle-o"
        style="margin-top: 12px; margin-left: 32px; color: white; font-size: 22px"><a
        class=watchnow href=https://youtu.be/jAy6NJ_D5vU>Watch
            Now</a></i></div>
    </div>
  
    <div class="mySlides fade">
        <img style="max-width:100%;height:80%" src="images/premiumimages/img2.jpg">
      <div class="numbertext"></div>
      <div class="text"><i class="fa fa-play-circle-o"
        style="margin-top: 12px; margin-left: 32px; color: white; font-size: 22px"><a
        class=watchnow href=https://www.youtube.com/watch?v=mVsJXiI60a0>Watch
            Now</a></i></div>
    </div>
  
    <!-- Next and previous buttons -->
    <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
    <a class="next" onclick="plusSlides(1)">&#10095;</a>
  </div>
  <br>
  
  <!-- The dots/circles -->
  <div style="text-align:center">
    <span class="dot" onclick="currentSlide(1)"></span>
    <span class="dot" onclick="currentSlide(2)"></span>
    <span class="dot" onclick="currentSlide(3)"></span>
  </div>
<hr style="margin-top:12px;margin-bottom:22px;">	

	<div class="newlaunched_section">

		<h3 class="viewdetails"
			style="font-family: sans-serif; font-size: 28px; box-shadow: 2px 2px 2px #E5E5E5; margin-left: 18px">
			<i class="bi bi-calendar" style="margin-right: 5px;"></i>New Launched
		</h3>
		  <iframe class="embed" width="415" height="306" src="https://www.youtube.com/embed/_X7xl1_C3c8" title="Call Me Chihiro | Official Trailer | Netflix" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

        <iframe class="embed" width="415" height="306" src="https://www.youtube.com/embed/P-E-IGQCsPo" title="The Sea Beast | Official Trailer | Netflix" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>



        <iframe class="embed" width="415" height="306" src="https://www.youtube.com/embed/coD54N5F61U" title="RRR Teaser | Ram Charan, Jr. NTR, S. S. Rajamouli | Netflix India" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
  <hr style="color:white;margin-top:12px;margin-bottom:12px;width:90%">
       
		<iframe class="embed" width="415" height="306"
			src="https://www.youtube.com/embed/ofYNrO77clY"
			title="Imperial Dreams | Official Trailer [HD] | Netflix"
			frameborder="0"
			allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
			allowfullscreen></iframe>
		<iframe class="embed" width="415" height="306"
			src="https://www.youtube.com/embed/JvNuYOR7b4w"
			title="The Magician’s Elephant | Official Trailer | Netflix"
			frameborder="0"
			allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
			allowfullscreen></iframe>
		<iframe class="embed" width="415" height="306"
			src="https://www.youtube.com/embed/wbEWbAKo29Q"
			title="Rana Naidu | Official Trailer | Rana Daggubati, Venkatesh Daggubati, Surveen Chawla | Netflix India"
			frameborder="0"
			allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
			allowfullscreen></iframe>
	</div>
	<div style="width: 100%; height: auto">
		<h2 class="viewdetails"
			style="font-family: sans-serif; font-size: 28px; box-shadow: 1px 2px 2px #E5E5E5; margin-left: 18px">
			<i class="bi bi-person-heart" style="margin-right: 7px;"></i>Popular
		</h2>
		</div>
		<div class="main_container">
			<div class="card-group">

				<div class="row">
					<div class="card col-md-4 movieview">
						<a id='trig1' class="card-title viewdetails"
								href='https://youtu.be/2g2sXGixh3w'><img class="card-img-top cover" src="images\moviesimages\Qala.png">
                       </a>
                       
                       <iframe id='ifrm1' class='ifrm_sideplay' name='ifrm1' src="images/premiumimages/qalaframe.png" scrolling="no"></iframe>
                             
                       
                       
                       
						<div class="card-body">
							<a class="card-title viewdetails"
								href="https://youtu.be/2g2sXGixh3w"> <i
								class="bi bi-play-circle" style="margin-right: 4px;"></i>Qala
								Hindi (2022)
							</a>
						</div>
					</div>
<hr style="margin:12px 12px;color:#222222;">

					<div class="card col-md-4 movieview">

						<a class="card-title viewdetails" id="trig1"
								href=https://youtu.be/ofYNrO77clY><img class="card-img-top cover"
							src="https://www.indiewire.com/wp-content/uploads/2017/09/imperial-dreams-2014.jpg?w=426">
</a>
						
						
						 <iframe id='ifrm1' class='ifrm_sideplay' name='ifrm1' src="images/premiumimages/impdrframe.png" scrolling="no"></iframe>
                        
						
						
						<div class="card-body">
							<a class="card-title viewdetails"
								href=https://youtu.be/ofYNrO77clY><i
								class="bi bi-play-circle" style="margin-right: 4px;"></i>Imperial
								Dreams (2014)</a>
						</div>
					</div>
					
								
					
<hr style="margin:12px 12px;color:#222222;">

					<div class="card col-md-4 movieview">

						<a class="card-title viewdetails" id="trig1"
								href=https://youtu.be/Quo-Oen1wkY><img class="card-img-top cover"
							src="https://www.indiewire.com/wp-content/uploads/2017/09/pee-wees-big-holiday-2016.jpg?w=674">
                          </a>
                          
                          
						 <iframe id='ifrm1' class='ifrm_sideplay' name='ifrm1' src="images/premiumimages/peeweeframe.png" scrolling="no"></iframe>
                        
						
                          
                          
						<div class="card-body">
							<a class="card-title viewdetails"
								href=https://youtu.be/Quo-Oen1wkY><i
								class="bi bi-play-circle" style="margin-right: 4px;"></i>Pee
								wees Big Holiday</a>
						</div>
					</div>

<hr style="margin:12px 12px;color:#222222;">
					<div class="card col-md-4 movieview">

						<a class="card-title viewdetails"id='trig1'
								href=https://youtu.be/JY0DGLrd9GY><img class="card-img-top cover"
							src="https://www.indiewire.com/wp-content/uploads/2017/09/arq-2016.jpg?w=674">
                        </a>
                        
                        <iframe id='ifrm1' class='ifrm_sideplay' name='ifrm1' src="images/premiumimages/arqframe.png" scrolling="no"></iframe>
                        
                        
                        
                        
						<div class="card-body">
							<a class="card-title viewdetails"
								href=https://youtu.be/JY0DGLrd9GY><i
								class="bi bi-play-circle" style="margin-right: 4px;"></i>Arq
								2016</a>
						</div>
					</div>
<hr style="margin:12px 12px;background-color:#222222;">
                   </div>
			</div>
			</div>
		
	
<footer>
<div class="footerinfo">

</div>
</footer>


<script>



let slideIndex = 0;
showSlides();

function showSlides() {
  let i;
  let slides = document.getElementsByClassName("mySlides");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}
  slides[slideIndex-1].style.display = "block";
  setTimeout(showSlides, 3000); // Change image every 2 seconds
}


</script>


</body>
<%
}else{ 
session.invalidate();
response.sendRedirect("SessionExpired.jsp");
%>

<%
}

%>
</html>
