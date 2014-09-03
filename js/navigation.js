var aboutPath = "M 435.00,200.00 C 392.80,201.49 402.33,177.84 426.00,177.00 451.99,164.24 369.00,122.00 379.00,89.00 376.06,97.53 313.61,102.99 325.00,70.00 351.14,49.26 316.49,28.37 293.00,47.00 303.19,84.79 236.33,78.42 258.00,81.00";
var playPath = "M 248.00,128.00 C 248.00,128.00 215.00,129.00 215.00,129.00 191.58,124.04 183.38,149.73 213.00,156.00 226.50,134.47 262.00,151.06 252.00,167.00 253.04,189.57 316.94,195.32 316.00,175.00 345.39,145.69 366.62,177.39 368.00,183.00 331.08,218.20 427.34,204.54 433.00,200.00";
var skillsPath = "M 293.00,120.00 C 362.00,168.00 284.00,152.00 286.00,151.00 288.00,150.00 336.00,217.00 351.00,173.00 366.00,129.00 417.00,191.00 433.00,197.00M 433.00,198.00";
var projectsPath = "M 335.00,111.00 C 307.77,97.30 318.82,57.85 339.00,68.00 348.88,120.37 370.81,108.19 367.00,88.00 371.08,38.95 420.05,58.40 417.00,95.00 379.51,120.03 387.02,175.06 433.00,202.00";

function nav(navPath){
	var fromHome = false;
	if(!($('.navigation').hasClass('slideLeft'))){
		makeBall();
		moveContentToHome(true);
		fromHome = true;
	}
	
		switch(navPath){
			case 'skills': 
				addSelectedClass(1);
				movePath(skillsPath, 'skills', fromHome);
				$('.navInfo').text('Skills');
			break;
			
			case 'home':
				addSelectedClass(2);
				movePath(aboutPath, 'home', fromHome);
				$('.navInfo').text('About Me');
			break;
			
			case 'projects':
				addSelectedClass(3);
				movePath(projectsPath, 'projects', fromHome);
				$('.navInfo').text('Work Projects');
			break;
			
			case 'play':
				addSelectedClass(4);
				movePath(playPath, 'play', fromHome);
				$('.navInfo').text('Passions');
			break;
		}
	
	
}


function loadHome(){
	$.ajax({
		type:"GET",
		url: "index.php/personalPage/home",
		success: function(html){
			if($('.navigation').hasClass('slideLeft')){
				$('.navigation').removeClass('slideLeft');
				$('.navigation').animate({left:'30%'});
				$('.contentPanel').animate({left: '15',
											width: "400px"},function(){
												$('.contentPanel').css({"min-height": '10px'});
											});
				$('.projector').css({'visibility': 'hidden'});
				$('.contentPanel>div').remove();
				$('.contentPanel').append(html);
			}

		}
	});
}


function loadContent(pageFunction){
	var content = document.getElementById('contentPanel');
 	content.style.cssText = "min-height: 437px;";
	$.ajax({
		type:"GET",
		url: "index.php/personalPage/"+pageFunction,
		success: function(html){
			if(!($('.navigation').hasClass('slideLeft'))){
				
				$('.navigation').addClass('slideLeft');
				$('.navigation').animate({left:'-100'});
				$('.contentPanel').animate(
				{left: '500',
				width: '850px',
				padding: "30px"},
				function(){
					
					var cssObject = $('.contentPanel').prop('style');
					cssObject.removeProperty('height');
					cssObject.removeProperty('top');
					$('.contentPanel').addClass('contentRight');
					});
				
			}
			$('.contentPanel>div').remove();
			$('.contentPanel').append(html);
			$('.contentPanel').attr('hidden', false);
			flickerContent();
		}
	});
	setTimeout(function(){
			
			$('.projector').removeClass('flicker');
		},2000);
}

function addSelectedClass(pulseNumber){
	$('.brainMap a').removeClass('selected');
	$('.headings div').removeClass("selectedTag");
	$('.pulse'+pulseNumber+'Heading').addClass("selectedTag");
	$('.pulse'+pulseNumber).addClass('selected');
}
function makeBall(){
	$('.contentPanel').css({"min-height": '10px'});
	$('.contentPanel').animate({
		height: "5px",
		width: "10px",
		padding: "3px",
		top: '182px'
	}, 500, function(){
		$('.contentPanel').animate({
			
		}, 500, "swing");
		$('.contentPanel').attr('hidden', true);
	});
	
}
function flickerContent(){

	$('.content').addClass('flicker');
	setTimeout(function(){
		
		$('.content').removeClass('flicker');
	},2000);
	
}
