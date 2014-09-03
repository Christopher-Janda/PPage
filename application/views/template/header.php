<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-type" content="text/html;charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" id = 'ieMode'>
	<meta charset="UTF-8">
	<title>Christopher Janda</title>

    <script src="/PPage/js/jquery-1.9.1.js"></script>
  	<script src="/PPage/js/jquery-ui.min.js"></script>
	<script src="/PPage/js/jquery.barousel.min.js"></script>
	<script src="/PPage/js/navigation.js"></script>
	<script src="/PPage/js/pulse.js"></script>
	<script src="/PPage/js/movePath.js"></script>
	<script src="/PPage/js/pathAnimator.js"></script>
	
  	<link rel = "stylesheet" type="text/css" href="/PPage/css/pageStyle.css"/>
  	<link rel = "stylesheet" type="text/css" href="/PPage/css/barousel.css"/>
  	<link rel = "stylesheet" type="text/css" href="/PPage/css/progress.css"/>
  	<link rel = "stylesheet" type="text/css" href="/PPage/css/contentPanel.css"/>
  	<link rel = "stylesheet" type="text/css" href="/PPage/css/pulseEffect.css"/>
  	<link rel = "stylesheet" type="text/css" href="/PPage/css/brainMap.css"/>
  	<link rel = "stylesheet" type="text/css" href="/PPage/css/flicker.css"/>
  	
</head>

<body>
	<header>
		<div class = "navInfo">About</div>
		<div class = "media">
			<ul>
				<li>
				<a href = "http://www.linkedin.com/pub/christopher-janda/90/4a1/337" target = "_blank" id = "linkedinLink">
					<img src = 'img/linkedin-128px.png' alt = "Linkedin Profile"></a>
				</li>
				
				<li>
				<a href = "https://www.facebook.com/csjanda" target = "_blank" id = "facebookLink">
					<img src = 'img/facebook-128px.png' alt = "Facebook Profile"></a>
				</li>
			</ul>
		</div>
		
	</header>
	
	<div id = "infoBox">
		
		<div class = "navigation">
			<div class = "headings">
				<div class = "pulse1Heading">Skills</div>
				<div class = "pulse2Heading selectedTag">About Me</div>
				<div class = "pulse3Heading">Projects</div>
				<div class = "pulse4Heading">Play</div>
			</div>
			<div class="brainMap" >
				<div class = "brain">
					<div id = "neuron" class = "neuron"></div>
					<a class="map_link pulse1 " id="skills" title="Skills" href="#nogo" onclick ="nav('skills')"></a>
					<a class="map_link pulse2 " id="about" onclick ="nav('home')" title="About" href="#nogo"></a>
					<a class="map_link pulse3 " id="projects" onclick ="nav('projects')" title="Projects" href="#nogo"></a>
					<a class="map_link pulse4 " id="play" title="Play" href="#nogo" onclick ="nav('play')"></a>
				</div>
				
			</div>
			<div class = "projector" id = "projector"></div>	
		</div>
	
	<div class = "contentPanel" id = "contentPanel">

		