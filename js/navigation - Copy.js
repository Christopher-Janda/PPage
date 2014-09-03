var aboutPath = "M 254.00,78.00 C 228.03,-28.67 463.87,105.06 435.00,195.00M 230.00,112.00";
var playPath = "M 248.00,128.00 C 248.00,128.00 215.00,129.00 215.00,129.00 191.58,124.04 183.38,149.73 213.00,156.00 226.50,134.47 262.00,151.06 252.00,167.00 253.04,189.57 316.94,195.32 316.00,175.00 345.39,145.69 366.62,177.39 368.00,183.00 331.08,218.20 427.34,204.54 433.00,200.00";
var skillsPath = "M 293.00,120.00 C 362.00,168.00 284.00,152.00 286.00,151.00 288.00,150.00 336.00,217.00 351.00,173.00 366.00,129.00 417.00,191.00 433.00,197.00M 433.00,198.00";
var projectsPath = "M 335.00,111.00 C 307.77,97.30 318.82,57.85 339.00,68.00 348.88,120.37 370.81,108.19 367.00,88.00 371.08,38.95 420.05,58.40 417.00,95.00 379.51,120.03 387.02,175.06 433.00,202.00";

function homePage(){
	addSelectedClass(2);
	movePath(aboutPath);
	$.ajax({
		type:"GET",
		url: "index.php/personalPage/home",
		success: function(html){
			if($('.navigation').hasClass('slideLeft')){
				$('.navigation').removeClass('slideLeft');
				$('.navigation').animate({left:'180'});
				$('.contentPanel').animate({left: '15',
											width: "300px"});
				$('.contentPanel>div').remove();
				$('.contentPanel').append(html);
			}
			
			
		}
	});
}

function skillsPage(){
	addSelectedClass(1);
	movePath(skillsPath);
	$.ajax({
		type:"GET",
		url: "index.php/personalPage/skills",
		success: function(html){
			
			if(!($('.navigation').hasClass('slideLeft'))){
				
				$('.navigation').addClass('slideLeft');
				$('.navigation').animate({left:'-400'});
				$('.contentPanel').animate({left: '500',
											width: "40%"});
			}
			$('.contentPanel>div').remove();
			$('.contentPanel').append(html);
			
		}
	});
}


function playPage(){
	addSelectedClass(4);
	movePath(playPath);
	$.ajax({
		type:"GET",
		url: "index.php/personalPage/play",
		success: function(html){
			if(!($('.navigation').hasClass('slideLeft'))){
				
				$('.navigation').addClass('slideLeft');
				$('.navigation').animate({left:'-400'});
				$('.contentPanel').animate({left: '500',
											width: "40%"});
			}
			$('.contentPanel>div').remove();
			$('.contentPanel').append(html);
		}
	});
}	

function projectsPage(){
	addSelectedClass(3);
	movePath(projectsPath);
	$.ajax({
		type:"GET",
		url: "index.php/personalPage/projects",
		success: function(html){
			if(!($('.navigation').hasClass('slideLeft'))){
				
				$('.navigation').addClass('slideLeft');
				$('.navigation').animate({left:'-400'});
				$('.contentPanel').animate({left: '500',
											width: "40%"});
			}
			$('.contentPanel>div').remove();
			$('.contentPanel').append(html);
		}
	});
}

function addSelectedClass(pulseNumber){
	$('.brainMap a').removeClass('selected');
	$('.headings div').removeClass("selectedTag");
	$('.pulse'+pulseNumber+'Heading').addClass("selectedTag");
	$('.pulse'+pulseNumber).addClass('selected');
}

